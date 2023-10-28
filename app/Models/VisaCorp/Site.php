<?php

namespace App\Models\VisaCorp;

use App\Models\GVCGL\Currency;
use App\Models\GVCGL\SiteCurrency;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Site extends Model
{
    use HasFactory;
    public $table      = 'site';
    public $primaryKey = 'user_id';
    public $timestamps = false;
    protected $connection = 'mysql';

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'site_id ',
        'site_name',
        'site_active',
    ];

    public function currency() {
        $pivot = new SiteCurrency();

        return $this->belongsToMany(Currency::class, $pivot->getTable(), 'currency_id', 'site_id');
    }
}
