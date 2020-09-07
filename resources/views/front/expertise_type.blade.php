@extends('layout.index')
@section('content')
<section class="page page_heading">
	<img class="page_heading_img" src="img/page_heading.jpg" alt=""></img>
	<div class="container">
		<div class="title">Виды проводимых экспертиз</div>
		<ul class="breadcrumbs">
			<li><a href="index.html">Главная</a></li>
			<li><a>Деятельность</a></li>
			<li><a>Виды проводимых экспертиз</a></li>
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
				<div class="title small_title">Виды проводимых экспертиз</div>
						<div class="expertise_type">
							<div class="expertise-item">
                                <div class="expertise-item__heading">Судебная фототехническая экспертиза</div>
                             
                                    <ul class="iex-ul">
                                        <li>
                                            <a href="">Судебно-экспертное фототехническое исследование</a>
                                        </li>
                                     	<li>
                                            <a href="">Судебно-экспертное фототехническое исследование</a>
                                        </li>
                                        <li>
                                            <a href="">Судебно-экспертное фототехническое исследование</a>
                                        </li>
                                    </ul>
                            </div>
						</div>
				@include('include.partner')
			</div>
			@include('include.sidebar')
		</div>
	</div>
</section>
@endsection