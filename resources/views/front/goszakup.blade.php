@extends('layout.index')
@section('content')
<section class="page page_heading">
	<img class="page_heading_img" src="img/page_heading.jpg" alt=""></img>
	<div class="container">
		<div class="title">Государственные закупки</div>
		<ul class="breadcrumbs">
			<li><a href="/">Главная</a></li>
			<li><a>Деятельность</a></li>
			<li><a>Государственные закупки</a></li>
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
				<div class="title small_title">Государственные закупки</div>
				<div class="npa_list">
                    @if($goszakup->count() > 0)
                        @foreach($goszakup as $item)
                            <div class="npa_list_item">
                                <a class="npa_list_link" href="{{ $item->link }}" target="_blank">{{ $item->title }}</a>
                            </div>
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
