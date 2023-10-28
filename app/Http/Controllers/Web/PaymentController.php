<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Traits\JWTTokenTrait;
use Illuminate\Http\Request;

class PaymentController extends Controller
{
    use JWTTokenTrait;

    public function payment(Request $request)
    {
        $token       = $request->input('token');
        $decodeValue = $this->decode($token);
        $viewData    = $decodeValue['data'];
        return view('Payment.payment', compact('viewData', 'token'));
    }
}
