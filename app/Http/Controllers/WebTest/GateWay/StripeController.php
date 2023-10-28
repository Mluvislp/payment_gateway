<?php

namespace App\Http\Controllers\WebTest\GateWay;

use App\Http\Controllers\BaseController;
use App\Http\Requests\Web\Payment\CreatePaymentIntentStripe;
use App\Services\PaymentGateway\GatewayTransactionService;
use App\Services\PaymentGateway\StripeService;
use App\Traits\JWTTokenTrait;
use Illuminate\Http\Request;

class StripeController extends BaseController
{
    use JWTTokenTrait;

    private $stripeService;
    private $gatewayTransactionService;

    public function __construct(StripeService $stripeService, GatewayTransactionService $gatewayTransactionService)
    {
        $this->stripeService       = $stripeService;
        $this->gatewayTransactionService = $gatewayTransactionService;
    }

    public function createPaymentIntent(CreatePaymentIntentStripe $req){
        $validated   = $req->validated();
        $token       = $validated['token'];
        $decodeValue = $this->decode($token);
        $orderData   = $decodeValue['data'];

        $data['card_first_name'] = $validated['card_first_name'];
        $data['card_last_name']  = $validated['card_last_name'];

        $data['country']      = "address 1";
        $data['country_name'] = "address 2";
        $data['address']      = 'area1';
        $data['city']         = 'area2';
        $data['state']        = 'area2';
        $data['zipcode']      = 700000;

        $data['type_payment']         = $decodeValue['type'];
        $data['currency']             = config('gateway.currency.default');
        $data['payment_method_id']    = $validated['payment_method_id'];
        $data['total']                = $orderData['total'];
        $data['total_f']              = round($orderData['total'] * config('gateway.currency.default_rate') * 100, 0);
        $data['order_id']             = $orderData['orderID'];
        $data['order_f_id']           = formatOrderID($orderData['orderInsertTime'], $orderData['orderID'], ReturnSiteNumber($decodeValue['site_id']));
        $data['payment_gateway_id']   = 1;
        $data['payment_gateway_name'] = 'Credit/Debit Card (2C2P)';

        $data['site_id']   = $decodeValue['site_id'];
        $data['ip']        = $req->ip();
        $data['site_code'] = ReturnSiteCode($decodeValue['site_id']);
        $data['token']     = $token;

        $create = $this->stripeService->createPaymentIntent($data);

        if($create['status']){
            $this->gatewayTransactionService->createGatewayTransaction($data, $create['data']['payment_intent_id']);

            return $this->sendResponse($create['data']);
        }

        return $this->sendError($create['message']);
    }

    public function retrievePaymentIntent(Request $request){
        if(!$request->has('payment_intent')){
            return redirect()->route('notfound');
        }
        $paymentIntent = $request->get('payment_intent');
        $token       = $request->input('token');
        $decodeValue = $this->decode($token);

        $findCondition = [
            'transaction_site_id'  => $decodeValue['site_id'],
            'transaction_order_id' => $decodeValue['data']['orderID'],
            'transaction_type'     => $decodeValue['type'],
        ];

        $transaction = $this->gatewayTransactionService->findFirstTransaction($findCondition);

        if(!$transaction){
            return redirect()->route('notfound');
        }

        if ($transaction->transaction_reference !== $paymentIntent){
            return redirect()->route('notfound');
        }

        $result = $this->stripeService->retrieveHook($paymentIntent, $decodeValue['data']);

        if($result['status']){
            $dataInput = [
                'transaction_status' => 'Success',
                'transaction_response' => json_encode($result['api_response']),
                'transaction_pay_date' => time(),
            ];
        }else{
            $dataInput = [
                'transaction_fail_reason' => $transaction->transaction_fail_reason.$result['message'],
                'transaction_fail_count'  => $transaction->transaction_fail_count + 1,
            ];

            $findTransaction = $this->gatewayTransactionService->findFirstTransaction($findCondition);

            if ($findTransaction->transaction_status !== "Success") {
                $dataInput['transaction_status'] = 'Fail';
            }
        }

        $this->gatewayTransactionService->updateTransaction($findCondition, $dataInput);

        return redirect()->route('test.create',  ['token' => $token]);
    }
}
