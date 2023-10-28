<?php

namespace App\Http\Controllers\WebTest\GateWay;

use App\Http\Controllers\Controller;
use App\Http\Requests\Web\Payment\CreatePaymentAmericanExpressRequest;
use App\Services\PaymentGateway\AmericanExpressService;
use App\Services\PaymentGateway\GatewayTransactionService;
use App\Traits\JWTTokenTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class AmericanExpressController extends Controller
{
    use JWTTokenTrait;

    private $amexService;
    private $gatewayTransactionService;

    public function __construct(AmericanExpressService $amexService, GatewayTransactionService $gatewayTransactionService)
    {
        $this->amexService = $amexService;
        $this->gatewayTransactionService = $gatewayTransactionService;
    }

    public function createPayment(CreatePaymentAmericanExpressRequest $req)
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
        $data['reference_code']       = formatOrderID($orderData['orderInsertTime'], $orderData['orderID'], ReturnSiteNumber($decodeValue['site_id']));
        $data['payment_gateway_id']   = 1;
        $data['payment_gateway_name'] = 'Credit/Debit Card (2C2P)';

        $data['site_id']       = $decodeValue['site_id'];
        $data['ip']            = $req->ip();
        $data['site_code']     = ReturnSiteCode($decodeValue['site_id']);
        $data['process3d_url'] = route('test.payment.amex.process3d', [ 'token' => $validated['token'] ]);

        $create = $this->amexService->createOrder($data);

        if($create['status']){
            $this->gatewayTransactionService->createGatewayTransaction($data, $create['data']['amex_order_id']);
            $create['data']['payment_data'] = $data;

            return redirect()
                ->route('test.payment.amex.process3d', ['token' => $token])
                ->with('amexSessionData-'.$create['data']['amex_order_id'], $create['data']);
        }

        return redirect()->route('notfound');
    }

    public function process3d(Request $req){
        $terminalUrl  = null;
        $redirectHtml = null;

        $token       = $req->input('token');
        $decodeValue = $this->decode($token);
        $orderData   = $decodeValue['data'];

        $findCondition = [
            'transaction_site_id'  => $decodeValue['site_id'],
            'transaction_order_id' => $orderData['orderID'],
            'transaction_type'     => $decodeValue['type'],
        ];
        $findTransaction = $this->gatewayTransactionService->findFirstTransaction($findCondition);

        if(!$findTransaction){
            dd(1);
        }

        $amexOrderId = $findTransaction->transaction_reference;

        if($req->method() == "POST"){
            $terminalUrl = route('test.payment.amex.validate3d', ['token' => $token]);
        }else{
            if(!$req->session()->has('amexSessionData-'.$amexOrderId)){
                dd(2);
            }

            $amexSessionData = $req->session()->get('amexSessionData-' . $amexOrderId);
            $redirectHtml    = $amexSessionData['redirect_html'];
            unset($amexSessionData['redirect_html']);

            Session::put('paymentData-'.$amexOrderId, $amexSessionData);
        }

        return view('Test.Gateway.Authen.process3damex', compact(['redirectHtml' ,'terminalUrl']));
    }

    public function validate3d(Request $req){
        $token = $req->input('token');
        $decodeValue = $this->decode($token);
        $orderData   = $decodeValue['data'];

        $findCondition = [
            'transaction_site_id'  => $decodeValue['site_id'],
            'transaction_order_id' => $orderData['orderID'],
            'transaction_type'     => $decodeValue['type'],
        ];

        $findTransaction = $this->gatewayTransactionService->findFirstTransaction($findCondition);

        $amexOrderId   = $findTransaction->transaction_reference;
        $paymentData = Session::get('paymentData-' . $amexOrderId);
        dd($paymentData);

    }
}
