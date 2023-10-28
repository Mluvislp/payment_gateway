<?php
    return [
        'paypal_direct'    => [
            'client_id'     => env('PAYPAL_CLIENT_ID'),
            'client_secret' => env('PAYPAL_CLIENT_SECRET'),
            'environment'   => env('PAYPAL_ENVIRONMENT'),
        ],
        'american_express' => [
            'merchant_id'  => env('AMEX_MERCHANT_ID'),
            'api_password' => env('AMEX_API_PASSWORD'),
            'environment'  => env('AMEX_ENVIRONMENT'),
        ],
        'stripe'           => [
            'secret_key'      => env('STRIPE_SECRET_KEY'),
            'publishable_key' => env('STRIPE_PUBLISHABLE_KEY'),
            'environment'     => env('STRIPE_ENVIRONMENT'),
        ],
        'currency' => [
            'default'      => 'USD',
            'default_rate' => 1
        ],
        'card_type'         => [
            'accept' => [
                'mastercard',
                'visa',
            ]
        ],
    ];
?>
