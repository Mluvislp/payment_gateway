<?php

namespace App\Services\PaymentGateway;

use Stripe\Exception\CardException;
use Stripe\PaymentMethod;
use Stripe\PaymentIntent;

class StripeService
{
    const logDirPath = '../stripe_logs';

    public function __construct()
    {
        \Stripe\Stripe::setApiKey(config('gateway.stripe.secret_key'));
    }

    public function createPaymentIntent($data){
        try {
            $cardDetails = PaymentMethod::retrieve($data['payment_method_id']);

            if (!$cardDetails->card->three_d_secure_usage->supported) {
                return [
                    'status'  => false,
                    'message' => 'Card not support 3d secure, please try user another card.'
                ];
            }

            if (!in_array($cardDetails->card->brand, config('gateway.card_type.accept'))) {
                return [
                    'status'  => false,
                    'message' => 'Card is not supported.'
                ];
            }

            $paymentIntent = PaymentIntent::create([
                'amount'                 => $data['total_f'],
                'currency'               => $data['currency'],
                'payment_method'         => $data['payment_method_id'],
                'payment_method_options' => [
                    'card' => [
                        'request_three_d_secure' => 'any'
                    ]
                ],
                "metadata"               => [
                    'firstName'   => $data['card_first_name'],
                    'lastName'    => $data['card_last_name'],
                    'countryCode' => $data['country'],
                    'countryName' => $data['country_name'],
                    'address'     => $data['address'],
                    'city'        => $data['city'],
                    'state'       => $data['state'],
                    'zip'         => $data['zipcode'],
                ],
                'confirm'                => false,
                "description"            => $data['site_code'] . '_Order #' . $data['order_f_id'],
                'confirmation_method'    => PaymentIntent::CAPTURE_METHOD_AUTOMATIC,
                'setup_future_usage'     => PaymentIntent::SETUP_FUTURE_USAGE_OFF_SESSION,
            ]);

            switch ($paymentIntent->status) {
                case PaymentIntent::STATUS_SUCCEEDED:
                    $payIID = $paymentIntent->id;

                    return [
                        'status'  => true,
                        'message' => 'Payment successful',
                        'data'    => [
                            'redirect_link'     => route('test.stripe.hook', [
                                'token'          => $data['token'],
                                'payment_intent' => $payIID,
                            ]),
                            'client_secret'     => $paymentIntent->client_secret,
                            'payment_intent_id' => $payIID,
                        ],
                    ];
                    break;
                case PaymentIntent::STATUS_REQUIRES_ACTION:
                case PaymentIntent::STATUS_REQUIRES_CONFIRMATION:
                case 'requires_source_action':
                    $payIID = $paymentIntent->id;

                    return [
                        'status'  => true,
                        'message' => 'Need verification',
                        'data'    => [
                            'redirect_link'     => route('test.stripe.hook', [
                                'token'          => $data['token'],
                                'payment_intent' => $payIID,
                            ]),
                            'client_secret'     => $paymentIntent->client_secret,
                            'payment_intent_id' => $payIID
                        ],
                    ];
                    break;
                default :
                    return [
                        'status'  => false,
                        'message' => 'Payment failed.'
                    ];
                    break;
            }
        } catch (CardException $e) {
           return [
               'status' => false,
               'message' => $e->getMessage()
           ];
        } catch (\Exception $e) {
           return [
               'status' => false,
               'message' => 'An error occurred while processing your payment.'
           ];
        }
    }
    public function retrieveHook($payment_intent_id, $order_data){
        try {
            $paymentIntent = \Stripe\PaymentIntent::retrieve($payment_intent_id);
            $status        = $paymentIntent->status;
            $lastError     = '';

            switch ($status) {
                case 'requires_source_action':
                case PaymentIntent::STATUS_REQUIRES_CONFIRMATION :
                case PaymentIntent::STATUS_REQUIRES_ACTION:
                case PaymentIntent::STATUS_REQUIRES_PAYMENT_METHOD :
                    //Authentication failed, prompt the customer to enter another payment method
                    $lastError = 'The provided PaymentMethod has failed authentication';

                    if ($paymentIntent->last_payment_error) {
                        if ($paymentIntent->last_payment_error->code !== \Stripe\ErrorObject::CODE_PAYMENT_INTENT_AUTHENTICATION_FAILURE) {
                            $lastError = $paymentIntent->last_payment_error->message;
                        }
                    }

                    $paymentIntent->cancel([ 'cancellation_reason' => PaymentIntent::CANCELLATION_REASON_ABANDONED ]);

                    $status = false;

                    break;
                case PaymentIntent::STATUS_SUCCEEDED  :
                    //PaymentIntent successfully
                    $this->saveLog($order_data['orderID'], $paymentIntent->toJSON(), 'order_success');
                    $status = true;

                    break;
                default :
                    $lastError = 'Transaction could not be confirmed';
                    $status = false;

                    break;
            }

            if (!$status) {
                return [
                    'status'  => false,
                    "message" => $lastError
                ];
            } else {
                $paymentMethod = \Stripe\PaymentMethod::retrieve($paymentIntent->payment_method);

                return [
                    'status'  => true,
                    'api_response' => $paymentIntent,
                    'data'=> [
                        'status'          => $status,
                        'transactionID'   => $paymentIntent->id,
                        'transactionDate' => date("Y-m-d\TH:i:s\Z", $paymentIntent->created),
                        "cardLastNumber"  => $paymentMethod->card->last4,
                        "isEnrolled"      => true,
                        "isPassed3d"      => true,
                        "cardType"        => ucfirst($paymentMethod->card->brand)
                    ]
                ];
            }
        } catch (\Exception $e) {
            $logMessage = "ID: " . $order_data['orderID'] . " - LOG FAIL CONFIRM INTENT - " . $e->getMessage();
            $this->saveLog($order_data['orderID'], $logMessage, 'fail');

            return [
                'status'  => false,
                "message" => $e->getMessage()
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
            $fileName = $logDirPath . '/order' . $order_id . '_' . time() . '_' . $suffixes . '.json';
            file_put_contents($fileName, $order_data . '-' . $_SERVER['HTTP_USER_AGENT']);
        }
    }
}
