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

Route::get('/', 'AboutController@map');

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
Route::get('/goszakup', 'ActivityController@gosZakup');
Route::get('/statistic', 'ActivityController@analytics');
Route::get('/news-all', 'NewsController@index');
Route::get('/news/view/{id}', 'NewsController@view');
Route::get('/cert_standart', function () {
    return view('front.cert_standart');
});
Route::get('/gos_services', function () {
    return view('front.gos_services');
});
Route::get('/staticpage/{slug}','StaticPageController@show');
Route::get('/vacancy', 'VacancyController@index');
Route::get('/faqs', 'FaqsController@index');
Auth::routes();

Route::prefix('admin')->group(function () {
    Route::get('expertise','Admin\ActivityController@expertise');
    Route::get('view/expertise/{id}','Admin\ActivityController@viewExpertise');
    Route::get('planwork','Admin\ActivityController@planWork');
    Route::get('projectnpa','Admin\ActivityController@npaProjects');
    Route::get('activites','Admin\ActivityController@activities');
    Route::get('statics','Admin\ActivityController@statics');

    Route::get('goszakup','Admin\ActivityController@goszakup');
    Route::post('addUploadData','Admin\ActivityController@addUploadData')->name('addUploadData');

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


     /* ---- MAP ------- */
    Route::post('addRegion','Admin\MapController@addRegion')->name('addRegion');
    Route::post('addCity','Admin\MapController@addCity')->name('addCity');
    Route::post('addObjects','Admin\MapController@addObjects')->name('addObjects');

    Route::get('map/regions','Admin\MapController@regions');
    Route::get('map/cities','Admin\MapController@cities');
    Route::get('map/objects','Admin\MapController@objects');

    /* ---- Vacancies ------- */
     //Route::get('vacancy','Admin\VacancyController@index');
    Route::group(["namespace" => "Admin","prefix" => 'vacancy'],function(){
        Route::get('/','VacancyController@index');
        Route::get('/create','VacancyController@create')->name('create_vacancy');
        Route::post('/create','VacancyController@store')->name('store_vacancy');
        Route::get('/delete/{id}','VacancyController@delete');
        Route::get('/{item}','VacancyController@edit')->name('edit_vacancy');
        Route::post('/{item}','VacancyController@update');
    });
    Route::group(["namespace" => "Admin","prefix" => 'staticpage'],function(){
        Route::get('/','StaticPageController@index');
        Route::get('/create','StaticPageController@create')->name('create_staticpage');
        Route::post('/create','StaticPageController@store')->name('store_staticpage');
        Route::get('/delete/{id}','StaticPageController@delete');
        Route::get('/{item}','StaticPageController@edit')->name('edit_staticpage');
        Route::post('/{item}','StaticPageController@update');
    });
    Route::group(["namespace" => "Admin","prefix" => 'partners'],function(){
        Route::get('/','PartnersController@index');
        Route::get('/create','PartnersController@create')->name('create_partner');
        Route::post('/create','PartnersController@store')->name('store_partner');
        Route::get('/delete/{id}','PartnersController@delete');
        Route::get('/{item}','PartnersController@edit')->name('edit_partner');
        Route::post('/{item}','PartnersController@update');
    });
    Route::group(["namespace" => "Admin","prefix" => 'faqs'],function(){
        Route::get('/','FaqsController@index');
        Route::get('/create','FaqsController@create')->name('create_faq');
        Route::post('/create','FaqsController@store')->name('store_faq');
        Route::get('/delete/{id}','ParFaqsControllertnersController@delete');
        Route::get('/{item}','FaqsController@edit')->name('edit_faq');
        Route::post('/{item}','FaqsController@update');
    });
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('lang/{lang}', function($lang){
    Session::put('locale', $lang);
    return redirect()->back();
});

