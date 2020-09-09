<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LocalizationController extends Controller
{
    public function index(Request $request,$lang)
    {
        session()->put('locale', $lang);

        echo session('locale');
    }
}
