<?php

namespace App\Http\Controllers;

use App\About;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function about()
    {
        $about = About::page(About::ABOUT);
    }

    public function charter()
    {
        $charter = About::page(About::CHARTER);
    }
}
