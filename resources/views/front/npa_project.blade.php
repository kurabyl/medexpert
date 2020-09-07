@extends('layout.index')
@section('content')
<section class="page page_heading">
			<img class="page_heading_img" src="img/page_heading.jpg" alt=""></img>
			<div class="container">
				<div class="title">Проекты НПА</div>
				<ul class="breadcrumbs">
					<li><a href="index.html">Главная</a></li>
					<li><a>Деятельность</a></li>
					<li><a>Проекты НПА</a></li>
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
					<div class="title small_title">Проекты разрабатываемых нормативных правовых актов</div>
					<div class="npa_list">
						<div class="npa_list_item">
							<a class="npa_list_link" href="javascript:;" target="_blank">План работы 1.pdf</a>
						</div>
						<div class="npa_list_item">
							<a class="npa_list_link" href="javascript:;" target="_blank">План работы 2.pdf</a>
						</div>
						<div class="npa_list_item">
							<a class="npa_list_link" href="javascript:;" target="_blank">План работы 3.pdf</a>
						</div>
						<div class="npa_list_item">
							<a class="npa_list_link" href="javascript:;" target="_blank">План работы 4.pdf</a>
						</div>
						<div class="npa_list_item">
							<a class="npa_list_link" href="javascript:;" target="_blank">План работы 5.pdf</a>
						</div>
						<div class="npa_list_item">
							<a class="npa_list_link" href="javascript:;" target="_blank">План работы 6.pdf</a>
						</div>
						<div class="npa_list_item">
							<a class="npa_list_link" href="javascript:;" target="_blank">План работы 7.pdf</a>
						</div>
						<div class="npa_list_item">
							<a class="npa_list_link" href="javascript:;" target="_blank">План работы 8.pdf</a>
						</div>
						<div class="npa_list_item">
							<a class="npa_list_link" href="javascript:;" target="_blank">План работы 9.pdf</a>
						</div>
						<div class="npa_list_item">
							<a class="npa_list_link" href="javascript:;" target="_blank">План работы 10.pdf</a>
						</div>
						<div class="npa_list_item">
							<a class="npa_list_link" href="javascript:;" target="_blank">План работы 11.pdf</a>
						</div>
					</div>
				@include('include.partner')
			</div>
			@include('include.sidebar')
		</div>
	</div>
</section>
@endsection