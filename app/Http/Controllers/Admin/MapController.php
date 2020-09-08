<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Map\City;
use App\Map\CityObject;
use App\Map\Region;
use Illuminate\Http\Request;

class MapController extends Controller
{
    public function regions()
    {
        $regions = Region::all();

        return view('admin.map.regions',[
            'regions'=>$regions
        ]);
    }
    public function cities()
    {
        $city = City::all();
        $regions = Region::all();

        return view('admin.map.city',[
            'city'=>$city,
            'region'=>$regions
        ]);
    }

    public function objects()
    {
        $objects = CityObject::all();
        $city = City::all();
        return view('admin.map.cityobjects',[
            'objects'=>$objects,
            'city'=>$city
        ]);
    }

    public function editRegions($id)
    {
        $region = Region::find($id);

        return view('admin.map.edit_region',[
            'region'=>$region
        ]);
    }

    public function editCity($id)
    {
        $city = City::find($id);

        return view('admin.map.edit_city',[
            'city'=>$city
        ]);
    }

    public function editObject($id)
    {
        $cityObject = CityObject::find($id);

        return view('admin.map.edit_city',[
            'cityObject'=>$cityObject
        ]);
    }

    public function addRegion(Request $request)
    {
        if ($this->mapHandle($request)) {
            return redirect()->back()->with('success','Успешно добавлено');
        }
        return redirect()->back()->with('error','Повторите еще раз');
    }

    public function addCity(Request $request)
    {
        if ($this->mapHandle($request)) {
            return redirect()->back()->with('success','Успешно добавлено');
        }
        return redirect()->back()->with('error','Повторите еще раз');
    }

    public function addObjects(Request $request)
    {
        if ($this->mapHandle($request)) {
            return redirect()->back()->with('success','Успешно добавлено');
        }
        return redirect()->back()->with('error','Повторите еще раз');
    }

    public function updateRegion(Request $request)
    {
        if ($this->mapUpdateHandle($request)) {
            return redirect()->back()->with('success','Успешно добавлено');
        }
        return redirect()->back()->with('error','Повторите еще раз');
    }

    public function updateCity(Request $request)
    {
        if ($this->mapUpdateHandle($request)) {
            return redirect()->back()->with('success','Успешно добавлено');
        }
        return redirect()->back()->with('error','Повторите еще раз');
    }

    public function updateObjects(Request $request)
    {
        if ($this->mapUpdateHandle($request)) {
            return redirect()->back()->with('success','Успешно добавлено');
        }
        return redirect()->back()->with('error','Повторите еще раз');
    }


}
