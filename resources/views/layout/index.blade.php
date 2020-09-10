<!DOCTYPE html>
<html lang="ru">

    <head>
        <meta charset="utf-8">
        <title>
           Центр судебных экспертиз
        </title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <link rel="shortcut icon" href="/img/favicon.png" type="image/png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="shortcut icon" href="img/favicon.png" />
        <link rel="stylesheet" href="/css/style.css?v=1.16" />
        <link rel="stylesheet" href="/css/slick.css" />
        <link rel="stylesheet" href="/css/jquery.fancybox.css" />
    </head>
    <body >

        <header>
            <div class="header_fixed">
                <div class="container">
                    <div class="header_top">
                        <a class="logo" href="index"></a>
                        <form class="search_block" action="">
                            <input class="search_input" type="text" placeholder="Поиск по сайту...">
                            <button class="search_btn" type="submit"></button>
                        </form>
                        <div class="head_right">
                            <a class="search_show" href="javascript:;"></a>
                            <div class="spec_block">
                                <a class="eye_btn" href="javascript:;">Версия для слабовидящих</a>
                                <div class="spec_block_list">
                                    <div class="size_block">
                                        <div class="size_text">Размер шрифта:</div>
                                        <div class="size_list">
                                            <div class="size_list_item size_small">A</div>
                                            <div class="size_list_item size_middle active">A</div>
                                            <div class="size_list_item size_big">A</div>
                                        </div>
                                    </div>
                                    <div class="size_block">
                                        <div class="size_text">Изображения:</div>
                                        <div class="image_check">X</div>
                                    </div>
                                    <a class="normal_view" href="javascript:;">Обычная версия сайта</a>
                                </div>
                            </div>
                            <div class="lang_block">
                                <div class="lang_choice">ru</div>
                                <div class="other_lang">
                                    <a class="lang active" href="{{ url('lang/ru') }}">ru</a>
                                    <a class="lang" href="{{ url('lang/kk') }}">kz</a>
                                    <a class="lang" href="{{ url('lang/en') }}">en</a>
                                </div>
                            </div>
                            <div class="mob_menu">
                           <span class="menu_btn">
                              <span class="menu_btn_span menu1"></span>
                              <span class="menu_btn_span menu2"></span>
                              <span class="menu_btn_span menu3"></span>
                           </span>
                        </div>
                        <div class="under_nav"></div>
                        </div>
                    </div>
                    <div class="header_bottom">
                        <ul class="menu">
                            <li><a class="menu_link active" href="/">Главная</a></li>
                            <li class="sub_menu_link">
                                <a class="menu_link" href="javascript:;">О нас</a>
                                <div class="sub_menu">
                                    <div class="sub_menu_list">
                                        <a class="sub_link" href="/staticpage/about">История центра</a>
                                        <a class="sub_link" href="/staticpage/ustav">Устав</a>
                                        <a class="sub_link" href="/staticpage/struktura">Структура</a>
                                    </div>
                                </div>
                            </li>
                            <li class="sub_menu_link">
                                <a class="menu_link" href="javascript:;">Деятельность</a>
                                <div class="sub_menu">
                                    <div class="sub_menu_list">
                                        <a class="sub_link" href="/expertise_type">Виды проводимых экспертиз</a>
                                        <a class="sub_link" href="/work_plan">План работы</a>
                                        <a class="sub_link" href="/npa_base">База НПА</a>
                                        <a class="sub_link" href="/npa_project">Проекты НПА</a>
                                        <a class="sub_link" href="/science_activity">Научная деятельность</a>
                                        <a class="sub_link" href="/staticpage/akkreditaciya-institutov">Аккредитация Институтов</a>
                                        <a class="sub_link" href="/statistic">Аналитика и статистика</a>
                                        <a class="sub_link" href="/goszakup">Государственные закупки</a>
                                        <a class="sub_link" href="/vacancy">Вакансии</a>
                                    </div>
                                </div>
                            </li>
                            <li class="sub_menu_link">
                                <a class="menu_link" href="javascript:;">Гражданам</a>
                                <div class="sub_menu">
                                    <div class="sub_menu_list">
                                        <a class="sub_link" href="/staticpage/grafik-priem-grazhdan-fizicheskih-i-yuridicheskih-lic-rukovodstvom-centra-sudebnyh-ekspertiz-ministerstva-yusticii-rk">График приема граждан</a>
                                        <a class="sub_link" href="/staticpage/prejskurant-cen-platnyh-uslug-centra-sudebnyh-ekspertiz">Платные услуги</a>
                                        <a class="sub_link" href="gos_services">Государственные услуги</a>
                                        <a class="sub_link"  href="/faqs">Часто задаваемые вопросы</a>
                                    </div>
                                </div>
                            </li>
                            <li><a class="menu_link" href="/staticpage/proekt-vsemirnogo-banka">Проект Всемирного Банка</a></li>
                            <li><a class="menu_link" href="/staticpage/mezhdunarodnoe-sotrudnichestvo">Международное сотрудничество</a></li>
                            <li><a class="menu_link" href="/news-all">Новости</a></li>
                            <li><a class="menu_link" href="/staticpage/kontakty">Контакты</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <div class="popup" id="alert_popup">
            <div class="alert ">
                <div class="container">

                    <div class="my-alert__close"></div>
                </div>
            </div>
        </div>
        @yield('content')
        <footer>
            <div class="container">
                <div class="footer_top">
                    <a class="foot_logo" href="javascript:;">
                        <div class="logo"></div>
                    </a>
                    <div class="share_block">
                        <div class="share_text">Поделиться в соц. сетях:</div>
                        <script src="https://yastatic.net/es5-shims/0.0.2/es5-shims.min.js"></script>
                        <script src="https://yastatic.net/share2/share.js"></script>
                        <div class="ya-share2" data-services="vkontakte,facebook,odnoklassniki,whatsapp,telegram"></div>
                    </div>
                </div>
                <div class="foot_menu">
                    <ul class="menu">
                        <li><a class="menu_link active" href="javascript:;">Главная</a></li>
                        <li class="sub_menu_link">
                            <a class="menu_link" href="javascript:;">О нас</a>
                            <!-- <div class="sub_menu">
                                <div class="sub_menu_list">
                                    <a class="sub_link" href="javascript:;">Название страницы 1</a>
                                    <a class="sub_link" href="javascript:;">Название страницы 2</a>
                                    <a class="sub_link" href="javascript:;">Название страницы 3</a>
                                    <a class="sub_link" href="javascript:;">Название страницы 4</a>
                                </div>
                            </div> -->
                        </li>
                        <li><a class="menu_link" href="javascript:;">Международное сотрудничество</a></li>
                        <li class="sub_menu_link">
                            <a class="menu_link" href="javascript:;">Гражданам</a>
                            <!-- <div class="sub_menu">
                                <div class="sub_menu_list">
                                    <a class="sub_link" href="javascript:;">Название страницы 1</a>
                                    <a class="sub_link" href="javascript:;">Название страницы 2</a>
                                    <a class="sub_link" href="javascript:;">Название страницы 3</a>
                                    <a class="sub_link" href="javascript:;">Название страницы 4</a>
                                </div>
                            </div> -->
                        </li>
                        <li><a class="menu_link" href="javascript:;">Проект Всемирного Банка</a></li>
                        <li><a class="menu_link" href="javascript:;">Международная конференция</a></li>
                        <li><a class="menu_link" href="javascript:;">Новости</a></li>
                        <li><a class="menu_link" href="javascript:;">Контакты</a></li>
                    </ul>
                </div>
                <div class="foot_bottom">
                    <div class="copyright">© 2020 Центр Судебных Экспертиз</div>
                    <div class="created">Разработка сайта <a href="https://astanacreative.kz/" target="_blank">AstanaCreative</a></div>
                </div>
            </div>
        </footer>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="/js/jquery-3.0.0.min.js"></script>
        <script src="/js/slick.min.js"></script>
        <script src="/js/script.js?v=1.14"></script>
        <script src="/js/jquery.fancybox.min.js"></script>
        <!--[if lt IE 9]>
        <script src="/libs/html5shiv/es5-shim.min.js"></script>
        <script src="/libs/html5shiv/html5shiv.min.js"></script>
        <script src="/libs/html5shiv/html5shiv-printshiv.min.js"></script>
        <script src="/libs/respond/respond.min.js"></script>
        <![endif]-->
    </body>
</html>
