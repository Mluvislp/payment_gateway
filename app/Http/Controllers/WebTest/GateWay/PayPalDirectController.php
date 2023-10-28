<?php

namespace App\Http\Controllers\WebTest\GateWay;

use App\Http\Controllers\Controller;
use App\Http\Requests\Web\Payment\CreatePaymentPayPalDirectRequest;
use App\Services\PaymentGateway\GatewayTransactionService;
use App\Traits\CreditCardTrait;
use App\Traits\JWTTokenTrait;
use Illuminate\Http\Request;
use \App\Services\PaymentGateway\PayPalDirectService;

class PayPalDirectController extends Controller
{
    use JWTTokenTrait, CreditCardTrait;

    private $payPalDirectService;
    private $gatewayTransactionService;

    public function __construct(PayPalDirectService $payPalDirectService, GatewayTransactionService $gatewayTransactionService)
    {
        $this->payPalDirectService       = $payPalDirectService;
        $this->gatewayTransactionService = $gatewayTransactionService;
    }

    public function createPayment3DS(CreatePaymentPayPalDirectRequest $req)
    {
        $validated   = $req->validated();
        $token       = $req->input('token');
        $decodeValue = $this->decode($token);
        $orderData   = $decodeValue['data'];

        $data['card_number']       = $validated['card_number'];
        $data['card_expiry_year']  = $validated['card_expiry_year'];
        $data['card_expiry_month'] = $validated['card_expiry_month'];
        $data['card_cvv']          = $validated['card_cvv'];
        $data['card_first_name']   = $validated['card_first_name'];
        $data['card_last_name']    = $validated['card_last_name'];

        $data['address_line_1'] = "address 1";
        $data['address_line_2'] = "address 2";
        $data['admin_area_1']   = 'area1';
        $data['admin_area_2']   = 'area2';
        $data['postal_code']    = 700000;
        $data['country_code']   = 'VN';

        $data['type_payment']         = $decodeValue['type'];
        $data['currency']             = config('gateway.currency.default');
        $data['total']                = $orderData['total'];
        $data['order_id']             = $orderData['orderID'];
        $data['order_f_id']           = formatOrderID($orderData['orderInsertTime'], $orderData['orderID'], ReturnSiteNumber($decodeValue['site_id']));
        $data['payment_gateway_id']   = 1;
        $data['payment_gateway_name'] = 'Credit/Debit Card (2C2P)';

        $data['site_id']    = $decodeValue['site_id'];
        $data['ip']         = $req->ip();
        $data['site_code']  = ReturnSiteCode($decodeValue['site_id']);
        $data['return_url'] = route('test.payment.handle.capturepaypaldirect') . '?token=' . $validated['token'];
        $data['cancel_url'] = route('test.payment.handle.capturepaypaldirect') . '?token=' . $validated['token'];

        $create = $this->payPalDirectService->createOrder3Ds($data);

        if($create['status']){
            $path          = $create['data']['link_otp'];
            $this->gatewayTransactionService->createGatewayTransaction($data, $create['data']['paypal_order_id']);

            return redirect()->to($path);
        }

        return redirect()->route('payment',  ['token' => $token])->withErrors($create['message']);
    }

    public function capturePayPalDirect(Request $req){
        $token         = $req->input('token');
        $decodeValue   = $this->decode($token);
        $orderData     = $decodeValue['data'];

        $findCondition = [
            'transaction_site_id'  => $decodeValue['site_id'],
            'transaction_order_id' => $orderData['orderID'],
            'transaction_type'     => $decodeValue['type'],
        ];

        $findTransaction = $this->gatewayTransactionService->findFirstTransaction($findCondition);

        if(!$findTransaction){

            dd(1);
        }

        $payPalOrderId = $findTransaction->transaction_reference;
        $getOrder      = $this->payPalDirectService->getOrder($payPalOrderId);

        if($getOrder['status'] && $getOrder['threeDSupport']){
            $orderDataInput = [
                'order_insert_time' => $orderData['orderInsertTime'],
                'order_id'          => $orderData ['orderID'],
                'order_f_id'        => formatOrderID($orderData['orderInsertTime'], $orderData['orderID'], ReturnSiteNumber($decodeValue['site_id'])),
            ];

            $authorizeAndCapture = $this->payPalDirectService->authorizeAndCapture($payPalOrderId, $decodeValue['site_id'] , $orderDataInput);

            if($authorizeAndCapture['status']){
                $dataInput = [
                    'transaction_status' => 'Success',
                    'transaction_response' => json_encode($authorizeAndCapture['api_response']),
                    'transaction_pay_date' => time(),
                ];
            }else{
                $dataInput = [
                    'transaction_fail_reason' => $findTransaction->transaction_fail_reason.$authorizeAndCapture['message'],
                    'transaction_fail_count'  => $findTransaction->transaction_fail_count + 1,
                ];

                $findTransaction = $this->gatewayTransactionService->findFirstTransaction($findCondition);

                if ($findTransaction->transaction_status !== "Success") {
                    $dataInput['transaction_status'] = 'Fail';
                }
            }

            $this->gatewayTransactionService->updateTransaction($findCondition, $dataInput);

            return redirect()->route('test.create',  ['token' => $token]);
        }else{
            return redirect()->route('test.payment',  ['token' => $token])->withErrors($getOrder['message']);
        }
    }
}
