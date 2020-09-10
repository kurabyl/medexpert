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
					<div class="gos-uslugi__item">
						<div class="title small_title">Аккредитация Институтов</div>
						<div class="gos-list">
							<div class="gos-list_item">
								<div class="gos-list__heading">Присвоение квалификации судебного эксперта</div>
					            <ul class="gos-list__content">
									<li>
		                           	<a class="npa_list_link" href="http://adilet.zan.kz/kaz/docs/V1700015031" target="_blank">Біліктілік емтиханын өткізу қағидалары</a>
		                         	</li>
		                         	<li>
		                           	<a class="npa_list_link" href="/files/gosservices/kval/kval_sheme_kaz.pptx" download>Мемлекеттік қызметті алу сызбасы</a>
		                         	</li>
		                         	<li>
		                           	<a class="npa_list_link" href="/files/gosservices/kval/kval_form_kaz.docx" download>Өтініш нысаны</a>
		                         	</li>
		                        </ul>
						    </div>
						</div>
					</div>
					<div class="gos-uslugi__item">
						<div class="title small_title">Аккредитация Институтов</div>
						<div class="gos-list">
							<div class="gos-list_item">
								<div class="gos-list__heading">Присвоение квалификации судебного эксперта</div>
					            <ul class="gos-list__content">
									<li>
		                           	<a class="npa_list_link" href="http://adilet.zan.kz/kaz/docs/V1700015031" target="_blank">Біліктілік емтиханын өткізу қағидалары</a>
		                         	</li>
		                         	<li>
		                           	<a class="npa_list_link" href="/files/gosservices/kval/kval_sheme_kaz.pptx" download>Мемлекеттік қызметті алу сызбасы</a>
		                         	</li>
		                         	<li>
		                           	<a class="npa_list_link" href="/files/gosservices/kval/kval_form_kaz.docx" download>Өтініш нысаны</a>
		                         	</li>
		                        </ul>
						    </div>
						</div>
					</div>
				</div>
				@include('include.partner')
			</div>
			@include('include.sidebar')
		</div>
	</div>
</section>
@endsection