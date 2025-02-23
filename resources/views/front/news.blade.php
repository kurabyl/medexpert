@extends('layout.index')
@section('content')
<section class="page page_heading">
    <img class="page_heading_img" src="img/page_heading.jpg" alt=""></img>
    <div class="container">
        <div class="title">Новости</div>
        <ul class="breadcrumbs">
            <li><a href="index.html">Главная</a></li>
            <li><a>Новости</a></li>
        </ul>
    </div>
</section>

<section class="light_blue">
    <div class="container">
        <div class="title title_left">Новости</div>
        <div class="news news_inner">
            @if($news->count() > 0)
                @foreach($news as $item)
                        <div class="news_item">
                            <a class="news_img" href="/news/view/{{ $item->id }}">
                                <img src="{{  asset('news/'.$item->image)}}" alt="">
                            </a>
                            <div class="about_news">
                                <div class="news_date">{{date('d.m.Y',strtotime($item->created_at ))}}</div>
                                <a class="news_name" href="/news/view/{{ $item->id }}">{{ $item->title }}</a>
                                <div class="news_text text_item">{!! $item->text !!}</div>
                            </div>
                        </div>
                @endforeach
            @endif
        </div>
 
        <!-- <div class="pagination">
            <a class="pag pag_btn pag_first hide" href="javascript:;"></a>
            <a class="pag pag_btn pag_prev" href="javascript:;"></a>
            <a class="pag active" href="javascript:;">1</a>
            <a class="pag" href="javascript:;">2</a>
            <a class="pag" href="javascript:;">3</a>
            <a class="pag" href="javascript:;">4</a>
            <a class="pag pag_btn pag_next" href="javascript:;"></a>
            <a class="pag pag_btn pag_last" href="javascript:;"></a>
        </div> -->
    </div>
</section>

@endsection