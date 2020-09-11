<?php

namespace App\Map;

use Illuminate\Database\Eloquent\Model;

class CityObject extends Model
{
    protected $table = 'city_objects';

    public static function remove($id)
    {
        $self = self::find($id);
        if ($self) {
            ObjectDetails::where('object_id',$self->id)->delete();
            $self->delete();
            return true;
        }
        return false;
    }

    public function city()
    {
        return $this->belongsTo(City::class);
    }

    public function details()
    {
        return $this->belongsTo(ObjectDetails::class,'id','object_id');
    }
}
