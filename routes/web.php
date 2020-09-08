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

Route::get('/expertise_type', 'ActivityController@expertise');
Route::get('/work_plan', 'ActivityController@planWork');
Route::get('/npa_base', 'ActivityController@npaBase');
Route::get('/npa_project', 'ActivityController@npaProjects');
Route::get('/science_activity', 'ActivityController@scienceActivity');
Route::get('/news-all', 'NewsController@index');
Route::get('/news/view/{id}', 'NewsController@view');
Route::get('/cert_standart', function () {
    return view('front.cert_standart');
});

Auth::routes();

Route::prefix('admin')->group(function () {
    Route::get('planwork','Admin\ActivityController@planWork');
    Route::post('uploadWorkPlan','Admin\ActivityController@postWorkPlan')->name('uploadWorkPlan');
    Route::get('news','Admin\NewsController@list');
    Route::get('addnews','Admin\NewsController@addNews');
    Route::get('/news/editnews/{id}','Admin\NewsController@editNews');
    Route::post('postAddNews','Admin\NewsController@postAddNews')->name('postAddNews');
    Route::post('/news/editnews/{id}','Admin\NewsController@postUpdateNews')->name('postUpdateNews');
     Route::get('/news/remove/{id}','Admin\NewsController@removeNews')->name('removeNews');

    Route::get('npabase','Admin\ActivityController@NpaBase');
    Route::post('uploadNpaBase','Admin\ActivityController@postNpaBase')->name('uploadNpaBase');
     Route::get('/npabase/remove/{id}','Admin\ActivityController@removeNpaBase')->name('removeNpaBase');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
