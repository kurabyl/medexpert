<section class="page_section page_section_inner">
    <div class="container">
        <div class="page_block">
            <div class="page_content">
                <ul class="breadcrumbs">
                    <li><a href="/">Главная</a></li>
                    <li><a>Деятельность</a></li>
                    <li><a href="/">Виды проводимых экспертиз</a></li>
                    <li><a><?=$data['Expertise']['title']?></a></li>
                </ul>
                <div class="page_img">
                    <img src="/img/expertises/" alt="">
                </div>
                <div class="title small_title"><?=$data['Expertise']['title']?></div>
                <div class="page_text">
                    Текст тут
                </div>
                @include('include.partner')
            </div>
              @include('include.sidebar')
            
        </div>
    </div>
</section>