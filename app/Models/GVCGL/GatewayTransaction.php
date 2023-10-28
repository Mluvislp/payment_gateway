<?php

namespace App\Models\GVCGL;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GatewayTransaction extends Model
{
    use HasFactory;

    public $table      = 'gvcgl_gateway_transaction';
    public $primaryKey = 'transaction_id ';
    public $timestamps = false;
    protected $connection = 'mysql';

    protected $fillable = [
        'transaction_id  ',
        'transaction_site_id',
        'transaction_order_id',
        'transaction_reference',
        'transaction_amount',
        'transaction_currency',
        'transaction_payment_gateway_id',
        'transaction_payment_gateway_name',
        'transaction_type',
        'transaction_insert_date',
        'transaction_pay_date',
        'transaction_ipaddress',
        'transaction_response',
        'transaction_fail_reason',
        'transaction_fail_count',
        'transaction_status'
    ];
}
