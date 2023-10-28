<?php

namespace App\Http\Controllers\WebTest;
use App\Services\PaymentGateway\GatewayTransactionService;
use App\Services\PaymentGateway\PayPalDirectService;
use App\Traits\JWTTokenTrait;
use Firebase\JWT\JWT;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TestPaymentController extends Controller
{
    use JWTTokenTrait;

    private $payPalDirectService;
    private $gatewayTransactionService;

    public function __construct(PayPalDirectService $payPalDirectService, GatewayTransactionService $gatewayTransactionService)
    {
        $this->payPalDirectService       = $payPalDirectService;
        $this->gatewayTransactionService = $gatewayTransactionService;
    }
    public function createPayment(Request $request)
    {
        $status = null;
        $failReason = null;

        if($request->has('token')){
            $decodeValue = $this->decode($request->get('token'));

            $orderData     = $decodeValue['data'];
            $findCondition = [
                'transaction_site_id'  => $decodeValue['site_id'],
                'transaction_order_id' => $orderData['orderID'],
                'transaction_type'     => $decodeValue['type'],
            ];

            $findTransaction = $this->gatewayTransactionService->findFirstTransaction($findCondition);
            $status = $findTransaction->transaction_status;
            $failReason = $findTransaction->transaction_fail_reason;
        }

        return view('test.createpay', compact('status' , 'failReason'));
    }

    public function payment(Request $request)
    {
        $token       = $request->input('token');
        $decodeValue = $this->decode($token);
        $viewData    = $decodeValue['data'];

        $stripePKey = config('gateway.stripe.publishable_key');

        return view('test.payment', compact('viewData', 'token','stripePKey'));
    }

    public function handleCreateToken(Request $request)
    {
        $secret_key = config('paymentjwt.app_key');
        $token      = [
            "iss"                   => 'http://indianimmigrationorg.abc/',
            'data'                  => [
                'total' => $request->input('amount', '100'),
                'orderID' => rand(10,9999999),
                'orderInsertTime' => time(),
            ],
            'site_id'               => "49",
            'type'                  => 'ApplyVisa',
            'redirect_response_url' => 'http://127.0.0.1:8000/test',
            'hook_url'              => 'http://127.0.0.1:8000/test',
            "iat"                   => time(),
            "nbf"                   => time(),
            "exp"                   => time() + 60 * 60 * 24
        ];
        $ext        = JWT::encode($token, $secret_key, 'HS256', 'd2bdda59-867c-4be5-b428-b39b36656f64');

        return redirect()->route('test.payment',  ['token' => $ext]);
    }
}
