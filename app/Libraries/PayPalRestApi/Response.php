<?php


namespace App\Libraries\PayPalRestApi;

/**
 * Class Response
 * @package Paypal
 * @property $status_code
 */
class Response extends Obj
{
    const OK                   = 200;
    const CREATED              = 201;
    const ACCEPTED             = 202;
    const NO_CONTENT           = 204;
    const UNPROCESSABLE_ENTITY = 422;
}
