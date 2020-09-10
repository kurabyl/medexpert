<?php

namespace App\Http\Controllers;

use App\GosService;
use Illuminate\Http\Request;

class GosServicesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function list()
    {
        $list = GosService::parentId(0);

        return view('admin.humans.gosuslugi',[
            'list'=>$list
        ]);
    }
    public function viewList($id)
    {
        $list = GosService::parentId($id)->get();

        return view('admin.humans.viewgos',[
            'list'=>$list
        ]);
    }

    public function addGosUslugi(Request $request)
    {
        if ($this->handler($request)) {
            return redirect()->back()->with('success','Успешно добавлено');
        }
        return redirect()->back()->with('error','Повторите еще раз');
    }

    private function handler($request)
    {
        switch ($request->type)
        {
            case 1:
                $post = new GosService();
                $post->title = $request->title;
                if ($post->save()) {
                    return true;
                }
            break;
        }
        return false;
    }
}
