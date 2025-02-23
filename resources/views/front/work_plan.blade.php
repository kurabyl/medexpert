@extends('layout.index')
@section('content')
<section class="page page_heading">
			<img class="page_heading_img" src="img/page_heading.jpg" alt=""></img>
			<div class="container">
				<div class="title">План работы</div>
				<ul class="breadcrumbs">
					<li><a href="index.html">Главная</a></li>
					<li><a>Деятельность</a></li>
					<li><a>План работы</a></li>
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
					<div class="title small_title">План работы Центра Судебных Экспертиз</div>
					<div class="npa_list">
                        @if($workPlan->count() > 0)
                            @foreach($workPlan as $item)
                                    <div class="npa_list_item">
                                        <a class="npa_list_link" href="{{  Storage::url($item->files)}}" target="_blank" download>{{ $item->title }}</a>
                                    </div>
                                    <img src="{{  Storage::url($item->files)}}">
                            @endforeach
                        @endif

					</div>
				@include('include.partner')
			</div>
			@include('include.sidebar')
		</div>
	</div>
</section>
@endsection
