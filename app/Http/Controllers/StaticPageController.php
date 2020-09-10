<?php

namespace App\Http\Controllers;

use App\StaticPage;
use Illuminate\Http\Request;

class StaticPageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\StaticPage  $staticPage
     * @return \Illuminate\Http\Response
     */
    public function show($slug,StaticPage $staticPage)
    {
        $item = StaticPage::where('slug',$slug)->first();
        if(empty($item))
            return redirect()->to('/404');
        return view('front.staticpage',[
            'item' => $item,
        ]);
    }
   
    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\StaticPage  $staticPage
     * @return \Illuminate\Http\Response
     */
    public function edit(StaticPage $staticPage)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\StaticPage  $staticPage
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, StaticPage $staticPage)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\StaticPage  $staticPage
     * @return \Illuminate\Http\Response
     */
    public function destroy(StaticPage $staticPage)
    {
        //
    }
}
