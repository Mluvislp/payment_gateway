<?php


namespace App\Libraries\PayPalRestApi;

/**
 * Class Authentication
 * @package Paypal
 * @property $liability_shift
 * @property $three_d_secure
 */
class Authentication extends Obj
{
    const liability_shift_yes = 'YES';
    const liability_shift_no = 'NO';
    const liability_shift_possible = 'POSSIBLE';
    const liability_shift_unknown = 'UNKNOWN';
    const order_already_authorized = 'ORDER_ALREADY_AUTHORIZED';
}
