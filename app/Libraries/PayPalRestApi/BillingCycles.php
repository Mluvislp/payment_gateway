<?php
namespace App\Libraries\PayPalRestApi;
/**
 * Class PaymentDefinitions
 * @property $frequency
 * @property $tenure_type
 * @property $sequence
 * @property object $pricing_scheme
 * @property $total_cycles
 * @property object $payment_preferences
 */
class BillingCycles extends Obj
{
    const TYPE_REGULAR = 'REGULAR';
    const TYPE_TRIAL= 'TRIAL';
}
