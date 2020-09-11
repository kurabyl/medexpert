<?php

namespace App\Providers;

use App\Map\CityObject;
use App\News;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $city = CityObject::all();
        $news = News::all();
        config(['map.list' => $city]);
        config(['news' => $news]);
    }
}
