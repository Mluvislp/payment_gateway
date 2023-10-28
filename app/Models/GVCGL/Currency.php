<?php

namespace App\Models\GVCGL;

use App\Models\VisaCorp\Site;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Currency extends Model
{
    use HasFactory;

    public $table      = 'gvcgl_currency';
    public $primaryKey = 'currency_id';
    public $timestamps = false;
    protected $connection = 'mysql';

    protected $fillable = [
        'currency_id  ',
        'currency_title',
        'currency_code',
        'currency_symbol_left',
        'currency_symbol_right',
        'currency_value',
        'currency_is_sub',
        'currency_decimal',
        'currency_active',
        'currency_date_modified',
        'currency_order'
    ];

    public function site() {
        $pivot = new SiteCurrency();

        return $this->belongsToMany(Site::class, $pivot->getTable(), 'currency_id', 'site_id');
    }
}
