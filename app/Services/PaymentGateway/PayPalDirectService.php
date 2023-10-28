<?php

namespace App\Services\PaymentGateway;

use App\Libraries\PayPalRestApi\Authentication;
use App\Repositories\PaymentGateway\GatewayTransactionRepository;
use App\Libraries\PayPalRestApi\Order;
use App\Libraries\PayPalRestApi\Response;
use App\Libraries\PayPalRestApi\CaptureStatus;
use PayPalCheckoutSdk\Core\PayPalHttpClient;
use PayPalCheckoutSdk\Core\ProductionEnvironment;
use PayPalCheckoutSdk\Core\SandboxEnvironment;
use PayPalCheckoutSdk\Orders\OrdersAuthorizeRequest;
use PayPalCheckoutSdk\Orders\OrdersCreateRequest;
use PayPalCheckoutSdk\Orders\OrdersGetRequest;
use PayPalCheckoutSdk\Payments\AuthorizationsCaptureRequest;
use PayPalCheckoutSdk\Payments\CapturesGetRequest;
use PayPalHttp\HttpException;

class PayPalDirectService
{
    const logDirPath = '../paypal_logs';

    private $client;
    private $gatewayTransactionRepository;

    public function __construct(GatewayTransactionRepository $gatewayTransactionRepository)
    {
        $mode         = config('gateway.paypal_direct.environment');
        $clientId     = config('gateway.paypal_direct.client_id');
        $clientSecret = config('gateway.paypal_direct.client_secret');

        if($mode == 'sandbox'){
            $environment = new SandboxEnvironment($clientId, $clientSecret);
        }else{
            $environment = new ProductionEnvironment($clientId, $clientSecret);
        }

        $this->client                       = new PayPalHttpClient($environment);
        $this->gatewayTransactionRepository = $gatewayTransactionRepository;
    }

    public function getOrder($order_id){
        $request = new OrdersGetRequest($order_id);
        try {
            $response = $this->client->execute($request);

            $result = [
                'status' => false,
                'threeDSupport' => false,
                'data' => [],
                'message' => []
            ];

            if($response->statusCode == Response::OK){
                $order            = new Order($response->result);
                $card             = $order->payment_source->card;
                $result['status'] = true;
                $result['data']   = $order;

                if($card->authentication_result->liability_shift == Authentication::liability_shift_possible){
                    $result['threeDSupport'] = true;
                }else{
                    $result['message'][] = 'Card not support 3d secure, please try user another card.';
                }
            }else{
                $result['message'][] = "Can't get order !";
            }

            return $result;
        }catch (HttpException $ex) {
            $getMessage = json_decode($ex->getMessage());

            return [
                'status' => false,
                'message' => $getMessage->message
            ];
        }
    }

    public function CreateOrder3Ds($data){
        $PayPalRequestId = salt() . '-' . salt() . '-' . salt();

        $request = new OrdersCreateRequest();

        $request->headers["PayPal-Request-Id"] = $PayPalRequestId;
        $request->prefer("return=representation");
        $request->body = [
            "intent" => "AUTHORIZE",
            "purchase_units" => [
                [
                    'description' => $data['site_code'] . '_Order #' . $data['order_f_id'],
                    "amount"      => [
                        "currency_code" => $data['currency'],
                        'value'         => '' . (float)$data['total']
                    ]
                ]
            ],
            "application_context" => [
                "return_url" => $data['return_url'],
                "cancel_url" => $data['cancel_url'],
            ],
            "payment_source" => [
                "card" => [
                    "number"          => $data['card_number'],
                    "expiry"          => $data['card_expiry_year'] . '-' . $data['card_expiry_month'],
                    "security_code"   => $data['card_cvv'],
                    "name"            => $data['card_first_name'] . ' ' . $data['card_last_name'],
                    "billing_address" => [
                        "address_line_1" => $data['address_line_1'],
                        "address_line_2" => $data['address_line_2'],
                        "admin_area_1"   => $data['admin_area_1'],
                        "admin_area_2"   => $data['admin_area_2'],
                        "postal_code"    => $data['postal_code'],
                        "country_code"   => $data['country_code']
                    ],
                    "attributes" => [
                        "verification" => [
                            "method" => "SCA_ALWAYS"
                        ]
                    ]
                ]
            ]
        ];

        try {
            $response = $this->client->execute($request);

            if($response->statusCode == Response::CREATED){
                $order = $response->result;

                $linkOTP = array_search([
                    'rel' => 'payer-action'
                ], $order->links);

                foreach ($order->links as $item) {
                    if($item->rel == 'payer-action') {
                        $linkOTP = $item->href;
                    }
                }

                if($linkOTP){
                    return [
                        'status' => true,
                        'data' => [
                            'link_otp'       => $linkOTP,
                            'paypal_order_id' => $order->id,
                        ]
                    ];
                }

                $message = "Can't get link authorize";
            }else{
                $message = "Create payment fail";
            }

            return [
                'status' => false,
                'message' => $message
            ];
        } catch (HttpException $ex) {
            $getMessage = json_decode($ex->getMessage());

            return [
                'status' => false,
                'message' => $getMessage->message
            ];
        }
    }

    public function authorizeAndCapture($order_id, $site_id, $order_data){
        //Authorize
        $requestAuthorize = new OrdersAuthorizeRequest($order_id);

        try {
            $responseAuthorize = $this->client->execute($requestAuthorize);

            if($responseAuthorize->statusCode !== Response::CREATED){
                return [
                    'status' => false,
                    'message' => "Authorize payment fail"
                ];
            }

            $resultResponseAuthorize            = new Order($responseAuthorize->result);
            $authorizationID = $resultResponseAuthorize->purchase_units[0]->payments->authorizations[0]->id;

            //Capture
            $requestAuthorizeCapture = new AuthorizationsCaptureRequest($authorizationID);
            $requestAuthorizeCapture->body = [
                'invoice_id' => ReturnSiteCode($site_id) . '_Order #' . $order_data['order_f_id'],
                'final_capture' => true
            ];
            $responseAuthorizeCapture = $this->client->execute($requestAuthorizeCapture);

            if ($responseAuthorizeCapture->statusCode !== Response::CREATED){
                return [
                    'status' => false,
                    'message' => "Capture payment fail"
                ];
            }

            $responseAuthorizeCapture = new Order($responseAuthorizeCapture->result);

            if($responseAuthorizeCapture->status !== CaptureStatus::complete){
                return [
                    'status' => false,
                    'message' => "Payment has not been processed yet"
                ];
            }

            //Check status payment
            $requestCaptureGet = new CapturesGetRequest($responseAuthorizeCapture->id);
            $responseCaptureGet = $this->client->execute($requestCaptureGet);

            if($responseCaptureGet->statusCode !== Response::OK){
                return [
                    'status' => false,
                    'message' => "Error when get capture information"
                ];
            }

            $responseCaptureGet = new Order($responseCaptureGet->result);

            $this->saveLog($order_data['order_id'], json_encode($responseCaptureGet), 'capture');

            return [
                'status'       => true,
                'message'      => '',
                'api_response' => $responseCaptureGet
            ];

        } catch (HttpException $ex) {
            return [
                'status' => false,
                'message' => $ex->getMessage()
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
