<?php

namespace App\Traits;

use Firebase\JWT\JWT;
use Firebase\JWT\Key;

trait JWTTokenTrait
{
    public function decode($token)
    {
        $secret_key     = config('paymentjwt.app_key');
        $decodeValue    = JWT::decode($token, new Key($secret_key, 'HS256'));

        return json_decode(json_encode($decodeValue), true);
    }
}
