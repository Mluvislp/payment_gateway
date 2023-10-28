<?php

namespace App\Http\Controllers\Web\Gateway;

use App\Http\Controllers\Controller;
use App\Http\Requests\Web\Payment\CreatePaymentAmericanExpressRequest;
use App\Services\PaymentGateway\AmericanExpressService;
use Illuminate\Support\Facades\Session;

class AmericanExpressController extends Controller
{
    private $amexService;

    public function __construct(AmericanExpressService $amexService)
    {
        $this->amexService = $amexService;
    }
    public function createPayment(CreatePaymentAmericanExpressRequest $req)
    {
        $validated = $req->validated();

        $orderData = Session::get('orderData');

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

        $data['total']     = $orderData['total'];
        $data['site_id']   = $orderData['site_id'];
        $data['site_code'] = ReturnSiteCode($orderData['site_id']);
        $data['order_id']  = salt();

        $create = $this->amexService->createOrder($data);

        if($create['status']){
            $path          = $create['data']['linkOTP'];
            $payPalOrderId = $create['data']['payPalOrderId'];

            Session::put('payPalOrderId', $payPalOrderId);

            return redirect()->to($path);
        }

        return redirect()->route('notfound');
    }
}
