<?php

namespace App\Http\Controllers;

use App\Map\CityObject;
use Illuminate\Http\Request;

class MapsController extends Controller
{
    public function view($id)
    {
        $city = CityObject::where('lang',app()->getLocale())->first();
        return view('front.map_view',[
            'maps'=>$city
        ]);
    }
}
