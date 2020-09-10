@extends('layout.index')
@section('content')
<section class="page page_heading">
			<img class="page_heading_img" src="img/page_heading.jpg" alt=""></img>
			<div class="container">
				<div class="title">Государственные услуги</div>
				<ul class="breadcrumbs">
					<li><a href="/">Главная</a></li>
					<li><a>Гражданам</a></li>
					<li><a>Государственные услуги</a></li>
				</ul>
			</div>
		</section>

<section class="page_section">
	<div class="container">
		<div class="page_block">
			<div class="page_content histoty_content">
				<div class="title small_title">Государственные услуги</div>
				<!-- <div class="history_img">
					<img src="img/history_img.jpg" alt="">
				</div> -->
				<div class="gos-uslugi">
                    @if($gosservices->count() > 0)
                        @foreach($gosservices as $item)
					<div class="gos-uslugi__item">
						<div class="title small_title">Аккредитация Институтов</div>
						<div class="gos-list">
							<div class="gos-list_item">
								<div class="gos-list__heading">{{ $item->title }}</div>

					            <ul class="gos-list__content">
                                    @foreach($item->list($item->id) as $items)
									<li>
		                           	<a class="npa_list_link" href="@if($items->type == 1) {{Storage::url($items->data) }} @else {{ $items->data }}@endif" target="_blank" >{{ $items->title }}</a>
		                         	</li>
                                    @endforeach
                                </ul>

						    </div>
						</div>
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
