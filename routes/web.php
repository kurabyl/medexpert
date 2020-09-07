<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('front.home');
});

Route::get('/about', function () {
    return view('front.about');
});
Route::get('/ustav', function () {
    return view('front.ustav');
});

Route::get('/structure', function () {
    return view('front.structure');
});

Route::get('/expertise_type', function () {
    return view('front.expertise_type');
});
Route::get('/work_plan', function () {
    return view('front.work_plan');
});
Route::get('/npa_base', function () {
    return view('front.npa_base');
});
Route::get('/npa_project', function () {
    return view('front.npa_project');
});

Route::get('/science_activity', function () {
    return view('front.science_activity');
});

Route::get('/cert_standart', function () {
    return view('front.cert_standart');
});
