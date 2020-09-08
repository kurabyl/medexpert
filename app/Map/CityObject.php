<?php

namespace App\Map;

use Illuminate\Database\Eloquent\Model;

class CityObject extends Model
{
    protected $table = 'city_objects';

    public function city()
    {
        return $this->belongsTo(City::class);
    }
}
