<?php

namespace App\Models\GVCGL;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gateway extends Model
{
    use HasFactory;

    public $table      = 'gvcgl_gateway';
    public $primaryKey = 'gateway_id  ';
    public $timestamps = false;
    protected $connection = 'mysql';

    protected $fillable = [
        'gateway_id   ',
        'gateway_name',
        'gateway_key',
        'gateway_symbol',
        'gateway_is_direct',
        'gateway_is_offline',
        'gateway_type',
        'gateway_content',
        'gateway_title',
        'gateway_version',
        'gateway_end_point',
        'gateway_icon',
        'gateway_icon_thumbnail'
    ];
}
