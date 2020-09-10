@extends('layout.index')
@section('content')
<section class="page page_heading">
	<img class="page_heading_img" src="img/page_heading.jpg" alt=""></img>
	<div class="container">
		<div class="title">{{$item->title}}</div>
		<ul class="breadcrumbs">
			<li><a href="/">Главная</a></li>
			<li><a>О нас</a></li>
			<li><a>{{$item->title}}</a></li>
		</ul>
	</div>
</section>

@if($item->type_id = 0)
<section class="page_section">
	<div class="container">
		<div class="page_block">
			<div class="page_content histoty_content">
				<div class="title">{{$item->title}}</div>
						<div class="page_text">
							{!!$item->text!!}
						</div>
				
				@include('include.partner')
			</div>
			@include('include.sidebar')
		</div>
	</div>
</section>
@else
<section >
	<div class="container">
				<div class="title">{{$item->title}}</div>
						<div class="page_text">
							{!!$item->text!!}
						</div>
				
				@include('include.partner')
			
	</div>
</section>
@endif
@endsection