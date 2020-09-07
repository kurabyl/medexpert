@extends('layout.index')
@section('content')

<section class="page main_section">
	<div class="container">
		<div class="main_block">
			<div class="main_title">Центр Судебных Экспертиз</div>
			<a class="btn blue_btn" href="javascript:;">Подробнее</a>
		</div>
	</div>
	<video src="video/bg_video_3.mp4" muted autoplay loop poster="img/main_bg.jpg"></video>
</section>

<section class="about_section">
	<div class="container">
		<div class="about">
			<div class="about_text">
				<div class="title title_long">Центр судебных экспертиз</div>
				<div class="text_item">
					<p>Также как синтетическое тестирование напрямую зависит от благоприятных перспектив. Банальные, но неопровержимые выводы, а также интерактивные прототипы, инициированные исключительно синтетически, объявлены нарушающими общечеловеческие нормы этики и морали. Для современного мира современная методология разработки требует анализа первоочередных требований.</p>
				</div>
				<a class="btn blue_btn" href="about.html">Подробнее</a>
			</div>
			<div class="about_img">
				<!-- <img src="img/about_img.jpg" alt=""> -->
				<video src="video/main_video.mp4" controls="true" poster="img/poster.jpg"></video>
			</div>
		</div>
	</div>
</section>

<section>
	<div class="container">
		<div class="title title_long">Блог Руководителя</div>
		<div class="dir_block">
			<div class="dir_img">
				<img src="img/dir_img.jpg" alt="">
			</div>
			<div class="dir_text">
				<div class="dir_name">Кайратов Серик Арманович</div>
				<div class="dir_position">Руководитель Центра Судебно-Медицинской Экспертизы</div>
				<a class="btn blue_btn" href="dir_blog.html">Подробнее</a>
			</div>
		</div>
	</div>
</section>

@include('include.map');
<section class="news_section">
	<div class="container">
		<div class="title">Новости</div>
		<div class="news">
			<div class="news_item">
				<a class="news_img" href="news_inner.html">
					<img src="img/news_1.jpg" alt="">
				</a>
				<div class="about_news">
					<div class="news_date">30.07.2020</div>
					<a class="news_name" href="news_inner.html">Пример новости судмедэкспертизы</a>
					<div class="news_text text_item">Также как синтетическое тестирование напрямую зависит от благоприятных перспектив.</div>
				</div>
			</div>
			<div class="news_item">
				<a class="news_img" href="news_inner.html">
					<img src="img/news_2.jpg" alt="">
				</a>
				<div class="about_news">
					<div class="news_date">30.07.2020</div>
					<a class="news_name" href="news_inner.html">Пример новости судмедэкспертизы</a>
					<div class="news_text text_item">Также как синтетическое тестирование напрямую зависит от благоприятных перспектив.</div>
				</div>
			</div>
			<div class="news_item">
				<a class="news_img" href="news_inner.html">
					<img src="img/news_3.jpg" alt="">
				</a>
				<div class="about_news">
					<div class="news_date">30.07.2020</div>
					<a class="news_name" href="news_inner.html">Пример новости судмедэкспертизы</a>
					<div class="news_text text_item">Также как синтетическое тестирование напрямую зависит от благоприятных перспектив.</div>
				</div>
			</div>
			<div class="news_item">
				<a class="news_img" href="news_inner.html">
					<img src="img/news_4.jpg" alt="">
				</a>
				<div class="about_news">
					<div class="news_date">30.07.2020</div>
					<a class="news_name" href="news_inner.html">Пример новости судмедэкспертизы</a>
					<div class="news_text text_item">Также как синтетическое тестирование напрямую зависит от благоприятных перспектив.</div>
				</div>
			</div>
		</div>
		<a class="btn blue_btn" href="news.html">Все новости</a>
	</div>
</section>
<section>
	<div class="container">
		@include('include.partner');
	</div>
</section>
@endsection