<?php

namespace App\Models\GVCGL;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SiteCurrency extends Model
{
    use HasFactory;
    public $table      = 'gvcgl_site_currency';
    public $timestamps = false;
    protected $connection = 'mysql';

    protected $fillable = [
        'site_id',
        'currency_id'
    ];
}
