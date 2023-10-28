<?php

namespace App\Http\Requests\Web\Payment;

use Illuminate\Foundation\Http\FormRequest;

class CreatePaymentIntentStripe extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'token' => [
                'required',
            ],
            'payment_method_id' => [
                'required',
            ],
//            'card_number' => [
//                'required',
//            ],
//            'card_expiry_year' => [
//                'required',
//            ],
//            'card_expiry_month' => [
//                'required',
//            ],
//            'card_cvv' => [
//                'required',
//            ],
            'card_first_name' => [
                'required',
            ],
            'card_last_name' => [
                'required',
            ],
            //             'country' => [
            //                 'required',
            //             ],
                         'address' => [
                            'required',
                         ],
            //             'city' => [
            //                'required',
            //             ],
            //             'state' => [
            //                'required',
            //             ],
            //             'zipcode' => [
            //                'required',
            //             ],
        ];
    }
}
