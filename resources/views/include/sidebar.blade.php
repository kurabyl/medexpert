<div class="page_sidebar">
	<div class="title">Новости</div>
	<div class="news">
		@foreach(\App\News::where('id','>',0)->orderBy('created_at')->get() as $news)
            <div class="news_item">
				<a class="news_img" href="/news/view/{{ $news->id }}">
					<img src="{{asset('news/'.$news->image)}}" alt="">
				</a>
				<div class="about_news">
					<div class="news_date">{{date('d.m.Y',strtotime($news->created_at ))}}/div>
					<a class="news_name" href="/news/view/{{ $news->id }}">{{ $news->title }}</a>
					<div class="news_text text_item">{!! $news->text !!}</div>
				</div>
			</div>
        @endforeach
	</div>
</div>