@extends('layout.index')
@section('content')
<section class="page page_heading">
	<img class="page_heading_img" src="img/page_heading.jpg" alt=""></img>
	<div class="container">
		<div class="title">База НПА</div>
		<ul class="breadcrumbs">
			<li><a href="index.html">Главная</a></li>
			<li><a>Деятельность</a></li>
			<li><a>База НПА</a></li>
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
				<div class="title small_title">Нормативно-правовая база обеспечения деятельности по производству судебных экспертиз</div>
				<div class="npa_list">
					<div class="npa_list_item">
						<span>Уголовно-процессуальный кодекс Республики Казахстан.</span>
						<a class="npa_list_link" href="http://adilet.zan.kz/rus/docs/K1400000231" target="_blank">http://adilet.zan.kz/rus/docs/K1400000231</a>
					</div>
					<div class="npa_list_item">
						<span>Гражданский процессуальный кодекс Республики Казахстан.</span>
						<a class="npa_list_link" href="http://adilet.zan.kz/rus/docs/K1500000377" target="_blank">http://adilet.zan.kz/rus/docs/K1500000377</a>
					</div>
					<div class="npa_list_item">
						<span>Кодекс РК об административных правонарушениях.</span>
						<a class="npa_list_link" href="http://adilet.zan.kz/rus/docs/K1400000235" target="_blank">http://adilet.zan.kz/rus/docs/K1400000235</a>
					</div>
					<div class="npa_list_item">
						<span>Закон РК «О судебно-экспертной деятельности».</span>
						<a class="npa_list_link" href="http://adilet.zan.kz/rus/docs/Z1700000044" target="_blank">http://adilet.zan.kz/rus/docs/Z1700000044</a>
					</div>
					<div class="npa_list_item">
						<span>Правила организации и производства судебных экспертиз и исследований в органах судебной экспертизы, утвержденных Приказом Министра юстиции Республики Казахстан от 27 апреля 2017 года №484.</span>
						<a class="npa_list_link" href="http://adilet.zan.kz/rus/docs/V1700015180" target="_blank">http://adilet.zan.kz/rus/docs/V1700015180</a>
					</div>
					<div class="npa_list_item">
						<span>Кодекс этики судебного эксперта, утвержденного Приказом Министра юстиции Республики Казахстан от 27 марта 2017 года №304.</span>
						<a class="npa_list_link" href="http://adilet.zan.kz/rus/docs/V1700014957" target="_blank">http://adilet.zan.kz/rus/docs/V1700014957</a>
					</div>
					<div class="npa_list_item">
						<span>Правила определения категорий сложности судебных экспертиз, порядка исчисления сроков производства судебных экспертиз в зависимости от категории их сложности, а также оснований и порядка приостановления и продления срока производства судебных экспертиз, утвержденного Приказом Министра юстиции Республики Казахстан от 27 марта 2017 года № 303.</span>
						<a class="npa_list_link" href="http://adilet.zan.kz/rus/docs/V1700014961" target="_blank">http://adilet.zan.kz/rus/docs/V1700014961</a>
					</div>
				</div>
				@include('include.partner')
			</div>
			@include('include.sidebar')
		</div>
	</div>
</section>
@endsection