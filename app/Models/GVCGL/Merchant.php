<?php

namespace App\Models\GVCGL;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Merchant extends Model
{
    use HasFactory;

    public $table      = 'gvcgl_merchant';
    public $primaryKey = 'merchant_id';
    public $timestamps = false;
    protected $connection = 'mysql';

    protected $fillable = [
        'merchant_id  ',
        'merchant_gateway_id',
        'merchant_type',
        'merchant_mid',
        'merchant_secret_key',
        'merchant_accesscode',
        'merchant_username',
        'merchant_url',
        'merchant_currency',
        'merchant_markup',
        'merchant_min',
        'merchant_max',
        'merchant_statement',
        'merchant_description',
        'merchant_order',
        'merchant_active',
    ];
}
