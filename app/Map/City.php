<?php

namespace App\Map;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $table = 'map_city';

    public function region()
    {
        return $this->belongsTo(Region::class);
    }
}
