<?php

namespace App\Http\Controllers;

use App\All;
use Illuminate\Http\Request;

class AllController extends Controller
{
    public function info($id)
    {
        $allInfo = All::find($id);
    }
}
