<?php

    namespace App\Services\PaymentGateway;

    use App\Libraries\AmericanExpress\AmericanExpressApi;
    use App\Libraries\AmericanExpress\models\Transaction;
    use Illuminate\Support\Facades\Session;

    class AmericanExpressService
    {
        const logDirPath = '../americanExpress_logs';

        public function createOrder($data)
        {
            $err_msg         = '';
            $americanExpress = new AmericanExpressApi();
            $amexOrderId     = gen_uuid();
            $transactionUrl  = 'order/' . $amexOrderId . '/transaction/' . $data['order_id'];
            $resAuthentication = $americanExpress->put($transactionUrl, [
                'apiOperation'   => Transaction::OPERATION_INITIATE_AUTHENTICATION,
                'order'          => [
                    'currency' => $data['currency'],
                ],
                'authentication' => [
                    'acceptVersions' => '3DS1,3DS2',
                    'channel'        => 'PAYER_BROWSER',
                    'purpose'        => 'PAYMENT_TRANSACTION'
                ],
                'sourceOfFunds'  => [
                    'type'     => 'CARD',
                    'provided' => [
                        'card' => [
                            'number' => $data['card_number']
                        ]
                    ]
                ]
            ]
            );
            if ($resAuthentication->isSuccess) {
                /**
                 * @var Transaction $authentication
                 */
                $authentication = json_decode($resAuthentication->data);
                if ($authentication->response->gatewayRecommendation == 'PROCEED') {
                    /**
                     * Card can process transaction with 3ds
                     */
                    $redirectUrl   = $data['process3d_url'];
                    $sourceOfFunds = [
                        'provided' => [
                            'card' => [
                                'number'       => $data['card_number'],
                                'securityCode' => $data['card_cvv'],
                                'expiry'       => [
                                    'month' => $data['card_expiry_month'],
                                    'year'  => mb_substr($data['card_expiry_year'], -2, 2)
                                ]
                            ]
                        ]
                    ];
                    /**
                     * Create payer_authentication
                     */
                    $resAuthPayer = $americanExpress->put($transactionUrl, [
                        'apiOperation'   => Transaction::OPERATION_AUTHENTICATE_PAYER,
                        'order'          => [
                            'currency' => $data['currency'],
                            'amount'   => '' . $data['total'],
                        ],
                        'sourceOfFunds'  => $sourceOfFunds,
                        'authentication' => [
                            'redirectResponseUrl' => $redirectUrl
                        ],
                        'device'         => [
                            'browser'        => $_SERVER['HTTP_USER_AGENT'],
                            'browserDetails' => [
                                'javaEnabled'                 => true,
                                'language'                    => 'en',
                                'screenHeight'                => '731',
                                'screenWidth'                 => '1519',
                                'timeZone'                    => '0',
                                'colorDepth'                  => '24',
                                '3DSecureChallengeWindowSize' => '500_X_600'
                            ]
                        ]
                    ]
                    );
                    if ($resAuthPayer->isSuccess) {
                        $authentication = json_decode($resAuthPayer->data);
                        $this->saveLog($data['order_id'], $resAuthPayer->data, 'createAuthentication');
                        /**
                         * Process 3ds
                         */
                        if ($authentication->result == 'PENDING') {
                            $amexResponseData['isEnrolled']    = true;
                            $amexResponseData['amexOrderId']   = $amexOrderId;
                            $amexResponseData['sourceOfFunds'] = encryptData(json_encode($sourceOfFunds));
                            $amexResponseData['redirectHtml']  = $authentication->authentication->redirectHtml;
                            return [
                                'status' => true,
                                'data'   => [
                                    'is_enrolled'     => true,
                                    'amex_order_id'   => $amexOrderId,
                                    'source_of_funds' => encryptData(json_encode($sourceOfFunds)),
                                    'redirect_html'   => $authentication->authentication->redirectHtml,
                                ]
                            ];
                        } else {
                            $reasonCode = isset($authentication->response->acquirerMessage) ? $authentication->response->acquirerMessage : '000';
                            if ($reasonCode != 000) {
                                $message = "Reason Code: " . $reasonCode . ", Message: " . $authentication->response->acquirerMessage;
                            } else {
                                $reasonCode     = $authentication->response->gatewayCode;
                                $message        = "Reason Code: $reasonCode.";
                                $reasonCodeText = AmericanExpressApi::getErrorMsg($reasonCode);
                                $message        .= ", Message: $reasonCodeText.";
                            }
                            $err_msg = $message;
                        }
                    } else {
                        $err_msg = $resAuthPayer->error;
                    }
                } else {
                    $err_msg = 'Card holder is not enrolled in 3D Secure';
                }
            } else {
                $err_msg = $resAuthentication->error;
            }
            return [
                "status"  => false,
                "message" => $err_msg
            ];
        }

        public function captureOrder($data, $payment_data)
        {
            $americanExpress   = new AmericanExpressApi();
            $transactionUrl    = 'order/' . $payment_data['amex_order_id'] . '/transaction/' . $data['order_id'];
            $getAuthentication = $americanExpress->get($transactionUrl);

            $orderData['isPassed3d'] = false;

            if ($getAuthentication->isSuccess) {
                $authentication = json_decode($getAuthentication->data);
                /**
                 * @var Transaction $authentication
                 */

                $this->saveLog($data['order_id'], $getAuthentication->data, 'getAuthentication');
                $payTime = null;

                if ($authentication->result == 'SUCCESS') {
                    $orderData['isPassed3d'] = true;
                    $sourceOfFunds = json_decode(decryptData($payment_data['source_of_funds']), true);
                    $transactionAuthUrl = 'order/' . $orderData['amexOrderId'] . '/transaction/' . $orderData['amexOrderId'];
                    $captureTransaction = $americanExpress->put($transactionAuthUrl, [
                        'apiOperation'   => Transaction::OPERATION_PAY,
                        'authentication' => [
                            'transactionId' => $data['order_id']
                        ],
                        'order'          => [
                            'currency'  => $payment_data['currency'],
                            'amount'    => '' . $data['total'],
                            'reference' => $referenceCode
                        ],
                        'sourceOfFunds'  => array_merge($sourceOfFunds, [ 'type' => 'CARD' ]),
                        'transaction'    => [
                            'reference' => $orderId
                        ]
                    ]
                    );
                    $this->saveAmexReplyLog($captureTransaction->data, 'order_' . $orderId . '_pay');
                    if ($captureTransaction->isSuccess) {
                        $captureTransaction = json_decode($captureTransaction->data);
                        $cardNumber         = $authentication->sourceOfFunds->provided->card->number;
                        if ($captureTransaction->result == 'SUCCESS') {
                            $payTime = $captureTransaction->timeOfLastUpdate;
                            $param   = array (
                                "resArray"           => array (
                                    'status'          => VisaOrder::STATUS_SUCCESS,
                                    'transactionID'   => $orderData['amexOrderId'],
                                    'transactionDate' => $payTime,
                                ),
                                "billingCountryName" => $countryName,
                                "billingCountryCode" => $countryCode,
                                "cardName"           => $firstName . " " . $lastName,
                                "cardFirstNumber"    => substr($cardNumber, 0, 4),
                                "cardMiddleNumber"   => substr($cardNumber, 4, 2),
                                "cardLastNumber"     => substr($cardNumber, strlen($cardNumber) - 4),
                            );
                        } else {
                            $reasonCode = $captureTransaction->response->gatewayCode;
                            $message    = "Reason Code: $reasonCode.";
                            if (isset($captureTransaction->response->cardSecurityCode->acquirerCode) && $captureTransaction->response->cardSecurityCode->acquirerCode != 'Y') {
                                $message .= ", CSC: " . $captureTransaction->response->cardSecurityCode->gatewayCode;
                            }
                            $reasonCodeText = AmericanExpressApi::getErrorMsg($reasonCode);
                            $message        .= ", Message: $reasonCodeText.";
                            return [
                                "status"  => false,
                                "message" => $message
                            ];
                        }
                    } else {
                        return [
                            "status"  => false,
                            "message" => $captureTransaction->error
                        ];
                    }
                } else {
                    return [
                        "status"  => false,
                        "message" => 'Card not enrolled: The card is not enrolled / the cardholder is not participating in the 3D Secure program.'
                    ];
                }
            } else {
                return [
                    "status"  => false,
                    "message" => $getAuthentication->error
                ];
            }
        }

        private function saveLog($order_id, $order_data, $suffixes)
        {
            $logDirPath = self::logDirPath;
            if (!is_dir($logDirPath)) {
                mkdir($logDirPath);
            }
            if (is_dir($logDirPath)) {
                $fileName = $logDirPath . '/transaction_' . $order_id . '_' . time() . '_' . $suffixes . '.json';
                file_put_contents($fileName, $order_data . '-' . $_SERVER['HTTP_USER_AGENT']);
            }
        }
    }
