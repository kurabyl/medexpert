@extends('layout.index')
@section('content')
<section class="page page_heading">
			<img class="page_heading_img" src="img/page_heading.jpg" alt=""></img>
			<div class="container">
				<div class="title">Аккредитация Институтов</div>
				<ul class="breadcrumbs">
					<li><a href="index.html">Главная</a></li>
					<li><a>Деятельность</a></li>
					<li><a>Аккредитация Институтов</a></li>
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
					<div class="title small_title">Аккредитация Институтов</div>
					<div class="page_text">
							<p>Стандартизация судебно-экспертной деятельности обеспечивает повышение качества научно-методического обеспечения судебно-экспертной деятельности, и соответственно повышение объективности, достоверности и обоснованности судебно-экспертных заключений. Изучив международный опыт стран ОЭСР, а также стран ЕврАзЭс, международных ассоциаций судебно-экспертных учреждений (см. отчет №KZJSISP/QCBS-06/D2), актуальность и необходимость развития стандартизации судебной экспертизы в Республике Казахстан неоспорима.</p>
							<p>В связи с чем, в рамках реализации Проекта приказом Председателя Комитета технического регулирования и метрологии Министерства идустрии и инфраструктурного развития Республики Казахстан от 01.11.2019 года № 9-од создан Технический комитет по стандартизации № 105 «Судебная экспертиза» (Далее ТК).</p>
							<p>В целях поддержки и развития указанного Технического комитета, согласно пункту 10.9 дополнительного соглашения от 9 № 24 декабря 2019 года к Контракту № KZJSISP/QCBS-06 экспертами АО «Университет КАЗГЮУ имени М.С. Нарикбаева» в период с 10 марта по 13 марта 2020 года проведено обучение принципам и положениям системы стандартизации, вопросам разработки стандартов для членов ТК по стандартизации «Судебная экспертиза» № 105, главных экспертов по направлениям РГКП «Центр судебных экспертиз Министерства юстиции Республики Казахстан».</p>
							<p>В семинаре приняли участие представители всех заинтересованных сторон, в том числе Комитет национальной безопасности Республики Казахстан, Министерство внутренних дел Республики Казахстан, Генеральная прокуратура Республики Казахстан, Служба экономических расследований Комитета финансового мониторинга Министерства финансов Республики Казахстан, Министерство здравоохранения Республики Казахстан, Республиканская коллегия адвокатов, Высшие учебные заведения, Палата судебных экспертов Республики Казахстан, главные эксперты по направлениям и сотрудники Научно- исследовательского института судебных экспертиз РГКП «Центр судебных экспертиз Министерства юстиции Республики Казахстан». Читать больше...</p>
						</div>
					<div class="cert_block history_block_list">
							<div class="cert_block_title">Сертификаты</div>
							<div class="cert_list">
								<div class="cert_item" data-fancybox="certificates" data-src="img/cert_img.jpg">
									<img src="img/cert_img.jpg" alt="">
								</div>
								<div class="cert_item" data-fancybox="certificates" data-src="img/cert_img.jpg">
									<img src="img/cert_img.jpg" alt="">
								</div>
								<div class="cert_item" data-fancybox="certificates" data-src="img/cert_img.jpg">
									<img src="img/cert_img.jpg" alt="">
								</div>
								<div class="cert_item" data-fancybox="certificates" data-src="img/cert_img.jpg">
									<img src="img/cert_img.jpg" alt="">
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