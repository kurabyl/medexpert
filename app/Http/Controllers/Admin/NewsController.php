<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\NewsRequest;
use App\News;
use App\Traits\Uploader;
use Illuminate\Http\Request;

class NewsController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function list()
    {
        $news = News::all();
        return view('admin.news.news',[
            'news'=>$news
        ]);
    }

    public function addNews()
    {
        return view('admin.news.add-news');
    }

    public function postAddNews(NewsRequest $request)
    {
        $news = new News;
        $news->title = $request->title;
        $news->image = $this->uploadPublic($request,'news') ?? '';
        $news->text = $request->text;

        if ($news->save()) {
            return redirect()->back()->with('success','Успешно добавлено');
        }
        return redirect()->back()->with('error','Повторите еще раз');

    }
}
