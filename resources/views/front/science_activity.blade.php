@extends('layout.index')
@section('content')
<section class="page page_heading">
			<img class="page_heading_img" src="img/page_heading.jpg" alt=""></img>
			<div class="container">
				<div class="title">Научная деятельность</div>
				<ul class="breadcrumbs">
					<li><a href="index.html">Главная</a></li>
					<li><a>Деятельность</a></li>
					<li><a>Научная деятельность</a></li>
				</ul>
			</div>
		</section>

<section class="page_section">
	<div class="container">
		<div class="page_block">
			<div class="page_content histoty_content">
				<!-- <div class="history_img">
					<img src="img/history_img.jpg" alt="">
				</div> -->
					<div class="title small_title">Научная деятельность</div>
					<div class="science_item">
	                    	                    <div class="science_text">
	                        <div class="science_name">О внесении изменения в приказ Председателя Комитета технического регулирования от 11 января 2019 года</div>
	                        <div class="text_item"> </div>
	                        <a class="science_more" href="/files/activities/fb42b96c362e84a9ed67cfe5f79c7fc0.pdf">№131-од от 29.03.2019г. изменение приложение 1</a>
	                    </div>
	                </div>
				@include('include.partner')
			</div>
			@include('include.sidebar')
		</div>
	</div>
</section>
@endsection