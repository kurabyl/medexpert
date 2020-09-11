-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 11 2020 г., 12:54
-- Версия сервера: 5.7.23
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sudmedexpert`
--

-- --------------------------------------------------------

--
-- Структура таблицы `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_more` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `analytics`
--

CREATE TABLE `analytics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `certificate_standart`
--

CREATE TABLE `certificate_standart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `city_objects`
--

CREATE TABLE `city_objects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `city_objects`
--

INSERT INTO `city_objects` (`id`, `city_id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 'Тестовый', '31313', '2020-09-09 22:35:09', '2020-09-09 22:35:09'),
(2, 2, 'Тестовый 2', '31313', '2020-09-10 22:24:24', '2020-09-10 22:24:24');

-- --------------------------------------------------------

--
-- Структура таблицы `expertise`
--

CREATE TABLE `expertise` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `text` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ru',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `text`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Сколько длится производство судебной экспертизы? 222', '<p>В соответствии со ст. 34 Закона Республики Казахстан &laquo;О судебно-экспертной деятельности&raquo; (далее &ndash; Закон), срок производства судебной экспертизы исчисляется со дня принятия к производству постановления, определения о назначении судебной экспертизы и ее объектов органом судебной экспертизы либо лицом, осуществляющим судебно-экспертную деятельность в соответствии с пп. 2) и пп. 3) п. 1ст. 19 Закона. Срок производства судебной экспертизы не должен превышать тридцать суток,кроме исключительных случаев, предусмотренных законодательством Республики Казахстан. При этом продление срока производства судебной экспертизы осуществляется органом (лицом), назначившим судебную экспертизу, по мотивированному ходатайству руководителя органа судебной экспертизы либо судебного эксперта (судебных экспертов), осуществляющего судебно-экспертную деятельность в соответствии спп. 2) и пп. 3) п. 1 ст. 19 Закона. Порядок продления срока пребывания лиц, подвергающихся судебной экспертизе в добровольном порядке или принудительно помещенных в медицинскую организацию для производства судебной экспертизы, осуществляется в соответствии с п. 2 и п.3 ст. 47 Закона. В случаях необходимости для дачи заключения дополнительных материалов руководителем органа судебной экспертизы либо судебным экспертом (судебными экспертами), осуществляющим судебно-экспертную деятельность в соответствии спп. 2) и пп. 3) п. 1 ст. 19 Закона, направляется мотивированное ходатайство в адрес органа (лица), назначившего судебную экспертизу. При этом производство судебной экспертизы приостанавливается, но не более чем на десять рабочих дней. Если обстоятельства, явившиеся основанием для приостановления производства судебной экспертизы, не устраняются, судебная экспертиза проводится в объеме представленных материалов либо, в случае невозможности такового, материалы,представленные для производства экспертизы, возвращаются органу (лицу), ее назначившему, без исполнения. После проведения исследований и составления заключения эксперта либо сообщения о невозможности дать заключение в течение трех суток сообщается об окончании судебной экспертизы, либо заключение эксперта (сообщение о невозможности дать заключение), объекты исследований и другие материалы выдаются (направляются) орган (лицу), назначившему судебную экспертизу.</p>', 'ru', '2020-09-10 03:29:45', '2020-09-10 03:31:51');

-- --------------------------------------------------------

--
-- Структура таблицы `gosservices`
--

CREATE TABLE `gosservices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gosservices`
--

INSERT INTO `gosservices` (`id`, `title`, `parent_id`, `data`, `type`, `created_at`, `updated_at`) VALUES
(1, '123', 0, NULL, 0, '2020-09-10 22:24:54', '2020-09-10 22:24:54');

-- --------------------------------------------------------

--
-- Структура таблицы `goszakup`
--

CREATE TABLE `goszakup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `map_city`
--

CREATE TABLE `map_city` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `map_city`
--

INSERT INTO `map_city` (`id`, `region_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Астана', '2020-09-09 22:34:59', '2020-09-09 22:34:59'),
(2, 2, 'Семей', '2020-09-10 22:24:01', '2020-09-10 22:24:01');

-- --------------------------------------------------------

--
-- Структура таблицы `map_region`
--

CREATE TABLE `map_region` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `keys` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `map_region`
--

INSERT INTO `map_region` (`id`, `name`, `created_at`, `updated_at`, `keys`) VALUES
(1, '123123', '2020-09-09 03:16:33', '2020-09-09 03:16:33', ''),
(2, 'Тестовый', '2020-09-10 22:23:52', '2020-09-10 22:23:52', 'vko_oblast');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_07_193226_create_activity_table', 1),
(5, '2020_09_07_193551_create_plan_jobs_table', 1),
(6, '2020_09_07_193626_create_npas_table', 1),
(7, '2020_09_07_193642_create_npaprojects_table', 1),
(8, '2020_09_07_193708_create_activies_table', 1),
(9, '2020_09_07_193759_create_certificate_standar_table', 1),
(10, '2020_09_07_193821_create_certificate_analytics_table', 1),
(11, '2020_09_07_193843_create_certificate_goszakup_table', 1),
(12, '2020_09_07_193913_create_certificate_vacancies_details_table', 1),
(13, '2020_09_07_194018_create_links_table', 1),
(14, '2020_09_08_075310_create_news_table', 1),
(15, '2020_09_08_192301_create_map_table', 1),
(16, '2020_09_08_192744_create_map_details_table', 1),
(17, '2020_09_08_192938_create_city_objects_table', 1),
(18, '2020_09_08_193023_create_objects_details_table', 1),
(19, '2020_09_08_193236_create_obj_detail_expertise_type_table', 1),
(20, '2020_09_09_055704_create_vacancies_table', 1),
(22, '2020_09_09_114356_create_static_pages_table', 2),
(23, '2020_09_09_202555_add_paid_to_news_lang', 3),
(24, '2020_09_09_210427_add_paid_to_map_region', 3),
(25, '2020_09_10_063743_add_columns_to_statipage_table', 4),
(27, '2020_09_10_080307_create_partners_table', 5),
(28, '2020_09_10_082002_create_todos_table', 6),
(29, '2020_09_10_092349_create_faqs_table', 6),
(30, '2020_09_10_100749_create_teams_table', 7),
(32, '2020_09_10_120024_create_slides_table', 8),
(33, '2020_09_10_102010_create_gosservices_table', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ru'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `text`, `created_at`, `updated_at`, `lang`) VALUES
(1, 'НЕЗАВИСИМОЕ КЗ', '0', '<p>НЕЗАВИСИМОЕ КЗ</p>', '2020-09-09 22:49:19', '2020-09-09 22:49:19', 'kk'),
(2, '123', '0', '<p>123123</p>', '2020-09-11 02:08:49', '2020-09-11 02:08:49', 'ru');

-- --------------------------------------------------------

--
-- Структура таблицы `npaprojects`
--

CREATE TABLE `npaprojects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `npas`
--

CREATE TABLE `npas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `objects_details`
--

CREATE TABLE `objects_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacts` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_priem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `obj_detail_expertise_type`
--

CREATE TABLE `obj_detail_expertise_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `objectdetail_id` int(11) NOT NULL,
  `type_expertise` blob NOT NULL,
  `type_isled` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ru',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `partners`
--

INSERT INTO `partners` (`id`, `title`, `link`, `image`, `lang`, `created_at`, `updated_at`) VALUES
(1, '123 31', '1312', '1599727397.jpeg', 'ru', '2020-09-10 02:43:17', '2020-09-10 03:32:03');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `plan_jobs`
--

CREATE TABLE `plan_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `slides`
--

INSERT INTO `slides` (`id`, `image`, `type_id`, `created_at`, `updated_at`) VALUES
(1, '1599741672.jpeg', 0, '2020-09-10 06:41:12', '2020-09-10 06:41:12'),
(2, '1599742075.jpeg', 1, '2020-09-10 06:47:55', '2020-09-10 06:47:55'),
(3, '1599742164.jpeg', 1, '2020-09-10 06:49:24', '2020-09-10 06:49:24');

-- --------------------------------------------------------

--
-- Структура таблицы `static_pages`
--

CREATE TABLE `static_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `text` text COLLATE utf8mb4_unicode_ci,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ru'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `static_pages`
--

INSERT INTO `static_pages` (`id`, `title`, `slug`, `image`, `text`, `type_id`, `created_at`, `updated_at`, `lang`) VALUES
(4, 'Устав', 'ustav', '0', '<h3><strong>Общие положения</strong></h3>\r\n\r\n<p>1. Государственное учреждение &laquo;Центр судебной экспертизы Министерства юстиции Республики Казахстан&raquo; (далее - Центр) является некоммерческой организацией, обладающей статусом юридического лица, созданной в организационно-правовой форме учреждения для осуществления функций по производству судебной экспертизы по уголовным, гражданским делам и делам об административных правонарушениях, проведению научных исследований, научно - методического и учебно-методического обеспечения судебной экспертизы, а также координации судебно-экспертной деятельности с негосударственным сектором судебной экспертизы.</p>\r\n\r\n<p>2. Вид государственного учреждения: Республиканское.</p>\r\n\r\n<p>3. Государственное учреждение &laquo;Центр судебной экспертизы Министерства юстиции Республики Казахстан&raquo; создано постановлением Правительства Республики Казахстан &laquo;О создании Государственного учреждения &laquo;Центр судебной экспертизы Министерства юстиции Республики Казахстан&raquo; от 11 августа 1997 года № 1245.</p>\r\n\r\n<p>4. Уполномоченным органом государственного управления по отношению к Центру является Министерство юстиции Республики Казахстан (далее - Уполномоченный орган).</p>\r\n\r\n<p>5. Полное наименование Центра на государственном языке: &laquo;Қазақстан Республикасы Әділет министрлігінің Сот сараптамасы орталығы&raquo; Мемлекеттік Мекемесі. Полное наименование Центра на русском языке: Государственное учреждение &laquo;Центр судебной экспертизы Министерства юстиции Республики Казахстан&raquo;.</p>\r\n\r\n<p>6. Место нахождения государственного учреждения: Республика Казахстан, индекс 010000, город Астана, район Есиль, улица Орынбор, дом 8, подъезд 13.</p>\r\n\r\n<p>12. Гражданско-правовые сделки Центра вступают в силу после их обязательной регистрации в территориальных подразделениях казначейства Министерства финансов Республики Казахстан.</p>\r\n\r\n<h3>Юридический статус Центра</h3>\r\n\r\n<p>7. Центр приобретает право юридического лица с момента его государственной регистрации.</p>\r\n\r\n<p>8. Центр имеет самостоятельный баланс, счета в банках, бланки, печать с изображением Государственного герба Республики Казахстан с указанием своего наименования на государственном языке.</p>\r\n\r\n<p>9. Центр не может создавать, а также выступать учредителем (участником) другого юридического лица.</p>\r\n\r\n<p>10. Центр имеет территориальные подразделения в виде филиалов. Структурно Центр состоит из Аппарата управления и территориальных подразделений.</p>\r\n\r\n<p>11. Центр отвечает по своим обязательствам находящимися в его распоряжении деньгами.</p>\r\n\r\n<p>12. Гражданско-правовые сделки Центра вступают в силу после их обязательной регистрации в территориальных подразделениях казначейства Министерства финансов Республики Казахстан.</p>\r\n\r\n<h3>Предмет деятельности Центра</h3>\r\n\r\n<p>13. Государственное учреждение &laquo;Центр судебной экспертизы Министерства юстиции Республики Казахстан&raquo; (далее - Центр) является некоммерческой организацией, обладающей статусом юридического лица, созданной в организационно-правовой форме учреждения для осуществления функций по производству судебной экспертизы по уголовным, гражданским делам и делам об административных правонарушениях, проведению научных исследований, научно - методического и учебно-методического обеспечения судебной экспертизы, а также координации судебно-экспертной деятельности с негосударственным сектором судебной экспертизы.</p>\r\n\r\n<p>14. Вид государственного учреждения: Республиканское.</p>\r\n\r\n<p>15. Государственное учреждение &laquo;Центр судебной экспертизы Министерства юстиции Республики Казахстан&raquo; создано постановлением Правительства Республики Казахстан &laquo;О создании Государственного учреждения &laquo;Центр судебной экспертизы Министерства юстиции Республики Казахстан&raquo; от 11 августа 1997 года № 1245.</p>\r\n\r\n<p>16. Уполномоченным органом государственного управления по отношению к Центру является Министерство юстиции Республики Казахстан (далее - Уполномоченный орган).&nbsp;</p>', 0, '2020-09-10 00:42:38', '2020-09-10 05:47:47', 'ru'),
(5, 'Структура', 'struktura', '0', '<p>Структура РГКП &ldquo;Центр судебных экспертиз Министерства юстиции Республики Казахстан&rdquo;</p>\r\n\r\n<p><img src=\"/img/structure_main.png\" /></p>', 1, '2020-09-10 05:17:19', '2020-09-10 05:17:19', 'ru'),
(6, 'Прейскурант цен платных услуг Центра судебных экспертиз', 'prejskurant-cen-platnyh-uslug-centra-sudebnyh-ekspertiz', '0', '<p>Платные услуги могут получить физические и юридические лица (далее &ndash; Заказчик).</p>\r\n\r\n<p>Заказчик обращается в территориальное подразделение (далее &ndash; Исполнитель) для заключения договора на оказание платных услуг.</p>\r\n\r\n<p>В договоре, заключаемом между Исполнителем и Заказчиком, определяется наименование и объем оказываемых платных услуг, условия и сроки их получения, порядок расчетов, права, обязанности и ответственность сторон, также стоимость платных услуг в соответствии с Прейкурантом цен на платные услуги Центра.</p>\r\n\r\n<p>Для получения подробной информации можете обратиться по контактным телефонам территориальных подразделений, указанных здесь.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"table_block\">\r\n<table class=\"page_table\">\r\n	<thead>\r\n		<tr>\r\n			<th class=\"table_serv__name\">Наименование услуг (продукции)</th>\r\n			<th class=\"table_serv__count\">Единица измерения</th>\r\n			<th class=\"table_serv__price\">Цена</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Заключение специалиста с описанием телесных повреждений</td>\r\n			<td>1 заключение</td>\r\n			<td>11 230 тенге</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Заключение специалиста связанное с изучением медицинских документов</td>\r\n			<td>1 заключение</td>\r\n			<td>17 723 тенге</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Исследование одного объекта на наличие накротических и психотропных веществ ВЭЖХ МС методом (в том числе кровь или волосы или ногтевые срезы)</td>\r\n			<td>1 объект</td>\r\n			<td>41 297 тенге</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Услуга номер 4</td>\r\n			<td>&nbsp;</td>\r\n			<td>5 000 тенге</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Услуга номер 5</td>\r\n			<td>&nbsp;</td>\r\n			<td>5 000 тенге</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 0, '2020-09-10 05:38:08', '2020-09-10 05:42:25', 'ru'),
(7, 'График прием граждан, физических и юридических лиц Руководством Центра судебных экспертиз Министерства юстиции РК', 'grafik-priem-grazhdan-fizicheskih-i-yuridicheskih-lic-rukovodstvom-centra-sudebnyh-ekspertiz-ministerstva-yusticii-rk', '0', '<div class=\"table_block\">\r\n<table class=\"page_table reception_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>Должность</th>\r\n			<th>Ф.И.О.</th>\r\n			<th>День недели и время</th>\r\n			<th>Контактный телефон</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Директор</td>\r\n			<td>Умбеталиев Аскар Ерболатович</td>\r\n			<td>Четверг 16:00-18:00 ч.</td>\r\n			<td>+7(7172) 54-10-05&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Заместитель директора по судебно-экспертным вопросам</td>\r\n			<td>Исмаилов Ильяс Жумагалиевич</td>\r\n			<td>Понедельник 16:00-18:00 ч.</td>\r\n			<td>+7(7172) 54-10-05&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Заместитель директора по судебно-медицинским вопросам</td>\r\n			<td>Имамбаева Назгуль Ермековна</td>\r\n			<td>Вторник 16:00-18:00 ч.</td>\r\n			<td>+7(7172) 54-10-05&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Заместитель директора по общим вопросам</td>\r\n			<td>Орманов Дастан Сарсебаевич</td>\r\n			<td>Вторник 16:00-18:00 ч.</td>\r\n			<td>+7(7172) 54-10-05&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Заместитель директора по научной работе</td>\r\n			<td>Жуманбаева Бакыткуль Айтмухамбетовна</td>\r\n			<td>Пятница 16:00-18:00 ч.</td>\r\n			<td>+7(7172) 54-10-05&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 0, '2020-09-10 05:44:22', '2020-09-10 05:44:22', 'ru'),
(8, 'Международное сотрудничество', 'mezhdunarodnoe-sotrudnichestvo', '0', '<div class=\"page_text\">\r\n<p>Развитие науки и техники, высокий научно-технический уровень современной преступности усиливают значение судебной экспертизы в обеспечении деятельности правоохранительных органов и судов качественным заключением эксперта, и требуют постоянной модернизации подходов управления судебно-экспертной деятельностью.</p>\r\n\r\n<p>В данном ключе, необходимо подчеркнуть, что судебная экспертиза в Казахстане, будучи неотъемлимым компонентом правовой системы государства, на современном этапе поступательно развивается под эгидой мировой тенденции.</p>\r\n\r\n<p>Необходимо отметить, что развитие, расширение и использование возможностей современной судебной экспертологии путем установления и укрепления партнерских отношений представляется одним из важных шагов по защите интересов, как государства, так и прав и свобод граждан.</p>\r\n\r\n<p>В 2019 году Центр вступил в Азиатское сообщество судебной экспертизы (Asian Forensic Science Network), являющегося одним из ведущих сообществ мира в сфере судебной экспертизы и дает возможность обменяется опытом, проводить совместные научные исследования со странами Сообщества.</p>\r\n\r\n<p><img alt=\"\" src=\"/img/inter_5.png\" /></p>\r\n\r\n<p><b>Азиатское сообщество судебной экспертизы</b> - <a href=\"https://www.asianforensic.net\" target=\"_blank\">https://www.asianforensic.net.</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>По инициативе Казахстана создана рабочая группа экспертов по судебно-экспертной деятельности Совещания министров юстиции государств-членов Шанхайской организации сотрудничества (2017 г.), включающая рпедставителей таких стран, как Индия, Казахстан, Кыргызстан, Китай, Пакистан, Россия, Таджикистан и Узбекистан.</p>\r\n\r\n<p><img alt=\"\" src=\"/img/inter_6.png\" /></p>\r\n\r\n<p><b>Шанхайская организация сотрудничества</b> - <a href=\"https://www.rus.sectsco.org\" target=\"_blank\">https://www.rus.sectsco.org</a></p>\r\n</div>\r\n\r\n<div class=\"inter_block\">\r\n<div class=\"text_block\">В настоящее время, Министерство юстиции РК (Центр судебных экспертиз) имеет двусторонние партнерские отношения в сфере судебной экспертизы с такими странами как Армения (2001 г., 2015 г., 2019 г.), Беларусь (2015 г., 2018 г.), Грузия (1998 г.) и Украина (2018 г.).</div>\r\n\r\n<div class=\"inter_list\">\r\n<div class=\"inter_item\">\r\n<div class=\"inter_img\"><img alt=\"\" src=\"/img/inter_1.png\" /></div>\r\n\r\n<div class=\"inter_text\">Национальное бюро экспертиз Национальной академии наук Республики Армения - <a href=\"http://nbe.am/\" target=\"_blank\">http://nbe.am/</a></div>\r\n</div>\r\n\r\n<div class=\"inter_item\">\r\n<div class=\"inter_img\"><img alt=\"\" src=\"/img/inter_2.png\" /></div>\r\n\r\n<div class=\"inter_text\">Государственный комитет судебных экспертиз Республики Беларусь - <a href=\"http://sudexpert.gov.by\" target=\"_blank\">http://sudexpert.gov.by</a></div>\r\n</div>\r\n\r\n<div class=\"inter_item\">\r\n<div class=\"inter_img\"><img alt=\"\" src=\"/img/inter_3.png\" /></div>\r\n\r\n<div class=\"inter_text\">Национальное бюро судебной экспертизы им. Левана Самхараули - <a href=\"http://www.expertiza.gov.ge\" target=\"_blank\">http://www.expertiza.gov.ge</a></div>\r\n</div>\r\n\r\n<div class=\"inter_item\">\r\n<div class=\"inter_img\"><img alt=\"\" src=\"/img/inter_4.png\" /></div>\r\n\r\n<div class=\"inter_text\">Харьковский научно-исследовательский институт судебной экспертизы - <a href=\"http://www.hniise.gov.ua/\" target=\"_blank\">http://www.hniise.gov.ua/</a></div>\r\n</div>\r\n</div>\r\n</div>', 0, '2020-09-10 05:49:03', '2020-09-10 05:49:03', 'ru'),
(9, 'Проект Всемирного Банка', 'proekt-vsemirnogo-banka', '0', '<p>В последнее время судебная экспертиза стала предметом активных дискуссий, особенно после публикации ряда известных исследований и аналитических обзоров, проводимых в США, начиная с 2009 года.</p>\r\n\r\n<p>Эти дискуссии зачастую были сосредоточены на научных вопросах, ставили под вопрос обоснованность заключений и документально фиксировали как она затрагивает жизни людей, сталкивающихся с системой правосудия. Необходимость реформ и более систематического подхода стала очевидной, однако не хватало нескольких решающих компонентов для того, чтобы произвести кардинальные изменения. Совместный проект Министерства Юстиции и Всемирного Банка нацелен на то, чтобы обратить внимание именно на эти недостающие составляющие и, в то же время, на всю систему в целом.</p>\r\n\r\n<p>С момента запуска в октябре прошлого года, проект &laquo;Усиление Судебной Экспертизы&raquo;, запланированный на два года, уже начал давать результаты, указав на ряд направлений для работы. &laquo;Мы сосредоточены на ключевых показателях эффективности на уровне лабораторий, законодательства и нормативно-правовых актов на системном уровне, и на повышении квалификации экспертов на уровне индивидуального подхода к кадрам&raquo;, сообщил Юрий Бикбаев, руководитель проекта, гражданин Великобритании родом из Санкт-Петербурга, с более чем 20-летним опытом работы в Великобритании и США. &laquo;Связать все воедино и предложить новую модель всего за два года может оказаться сложной задачей, но мы воодушевлены этой потрясающей перспективой&raquo;, добавил он.</p>\r\n\r\n<div class=\"advan_list bank_advan\">\r\n<div class=\"advan_item\">\r\n<div class=\"advan_img\"><img src=\"/img/advan_1.svg\" /></div>\r\n\r\n<div class=\"advan_name\">Займы и гранты всемирного банка</div>\r\n</div>\r\n\r\n<div class=\"advan_item\">\r\n<div class=\"advan_img\"><img src=\"/img/advan_2.svg\" /></div>\r\n\r\n<div class=\"advan_name\">Глобальное партнерство</div>\r\n</div>\r\n\r\n<div class=\"advan_item\">\r\n<div class=\"advan_img\"><img src=\"/img/advan_3.svg\" /></div>\r\n\r\n<div class=\"advan_name\">Оказание помощи и поддержки развитию</div>\r\n</div>\r\n</div>', 0, '2020-09-10 06:43:46', '2020-09-10 06:44:48', 'ru'),
(10, 'Аккредитация Институтов', 'akkreditaciya-institutov', '0', '<p>Стандартизация судебно-экспертной деятельности обеспечивает повышение качества научно-методического обеспечения судебно-экспертной деятельности, и соответственно повышение объективности, достоверности и обоснованности судебно-экспертных заключений. Изучив международный опыт стран ОЭСР, а также стран ЕврАзЭс, международных ассоциаций судебно-экспертных учреждений (см. отчет №KZJSISP/QCBS-06/D2), актуальность и необходимость развития стандартизации судебной экспертизы в Республике Казахстан неоспорима.</p>\r\n\r\n<p>В связи с чем, в рамках реализации Проекта приказом Председателя Комитета технического регулирования и метрологии Министерства идустрии и инфраструктурного развития Республики Казахстан от 01.11.2019 года № 9-од создан Технический комитет по стандартизации № 105 &laquo;Судебная экспертиза&raquo; (Далее ТК).</p>\r\n\r\n<p>В целях поддержки и развития указанного Технического комитета, согласно пункту 10.9 дополнительного соглашения от 9 № 24 декабря 2019 года к Контракту № KZJSISP/QCBS-06 экспертами АО &laquo;Университет КАЗГЮУ имени М.С. Нарикбаева&raquo; в период с 10 марта по 13 марта 2020 года проведено обучение принципам и положениям системы стандартизации, вопросам разработки стандартов для членов ТК по стандартизации &laquo;Судебная экспертиза&raquo; № 105, главных экспертов по направлениям РГКП &laquo;Центр судебных экспертиз Министерства юстиции Республики Казахстан&raquo;.</p>\r\n\r\n<p>В семинаре приняли участие представители всех заинтересованных сторон, в том числе Комитет национальной безопасности Республики Казахстан, Министерство внутренних дел Республики Казахстан, Генеральная прокуратура Республики Казахстан, Служба экономических расследований Комитета финансового мониторинга Министерства финансов Республики Казахстан, Министерство здравоохранения Республики Казахстан, Республиканская коллегия адвокатов, Высшие учебные заведения, Палата судебных экспертов Республики Казахстан, главные эксперты по направлениям и сотрудники Научно- исследовательского института судебных экспертиз РГКП &laquo;Центр судебных экспертиз Министерства юстиции Республики Казахстан&raquo;.</p>', 0, '2020-09-10 06:52:18', '2020-09-10 06:52:18', 'ru'),
(11, 'Контакты', 'kontakty', '0', '<div class=\"contact_block\">\r\n<div class=\"contact_name\">Центр Судебной Экспертизы</div>\r\n\r\n<ul class=\"contact_list\">\r\n	<li>г.Нур-Султан, проспект Сарыарка, 3/1, ВП 15</li>\r\n	<li>Тел.: <a href=\"tel:+77172540984\">+7 (7172) 54‒09‒84,</a> <a href=\"tel:+77172541005\">+7 (7172) 54‒10‒05</a></li>\r\n	<li>Общие вопросы: <a href=\"mailto:info@cse.kz\">info@cse.kz</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"contact_map\"><iframe frameborder=\"0\" height=\"400\" src=\"https://yandex.ru/map-widget/v1/?um=constructor%3Ac4305a1f6e1296b82f9a970df1a94694a7ba3dbdf31d4e60b901c69e86c21f9c&amp;source=constructor\" style=\"pointer-events: none;\" width=\"500\"></iframe></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align: center;\"><strong>Телефонный справочник Центрального аппарата РГКП &laquo;Центр судебных экспертиз Министерства юстиции</strong></p>\r\n\r\n<div class=\"table_block\">\r\n<table class=\"page_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n			<p style=\"text-align: left;\">№</p>\r\n			</th>\r\n			<th>\r\n			<p style=\"text-align: left;\"><strong>Ф.И.О.</strong></p>\r\n			</th>\r\n			<th>\r\n			<p style=\"text-align: left;\"><strong>Должность</strong></p>\r\n			</th>\r\n			<th>\r\n			<p style=\"text-align: left;\"><strong>Телефонный номер </strong></p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>1</p>\r\n			</td>\r\n			<td>\r\n			<p>Умбеталиев Аскар Ерболатович</p>\r\n			</td>\r\n			<td>\r\n			<p>Директор</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>2</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Приемная</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-05</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>3</p>\r\n			</td>\r\n			<td>\r\n			<p>Орманов Дастан Сарсебаевич</p>\r\n			</td>\r\n			<td>\r\n			<p>Зам.директора по общим вопросам</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-15</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>4</p>\r\n			</td>\r\n			<td>\r\n			<p>Исмаилов Ильяс Жумагалиевич</p>\r\n			</td>\r\n			<td>\r\n			<p>Зам.директора по судебно-экспертным вопросам</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-49</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>5</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>И.о. зам.директора по судебно-медицинским вопросам</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-31</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>6</p>\r\n			</td>\r\n			<td>\r\n			<p>Жуманбаева Бакытгуль Айтмухамбетовна</p>\r\n			</td>\r\n			<td>\r\n			<p>Зам.директора по научной работе</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-63</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>7</p>\r\n			</td>\r\n			<td>\r\n			<p>Байзолла Аслан Талғатұлы</p>\r\n			</td>\r\n			<td>\r\n			<p>Советник директора</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-31</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\" colspan=\"4\">\r\n			<p style=\"text-align: center;\"><strong><u>Управление по вопросам строительства</u></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>8</p>\r\n			</td>\r\n			<td>\r\n			<p>Шакиев Ержан Каирбергенович</p>\r\n			</td>\r\n			<td>\r\n			<p>Руководитель управления</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-74</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>9</p>\r\n			</td>\r\n			<td>\r\n			<p>Курманбаев Талгат Шакмуратович</p>\r\n			</td>\r\n			<td>\r\n			<p>Главный эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-74</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>10</p>\r\n			</td>\r\n			<td>\r\n			<p>Избасар Алмат Аскарович</p>\r\n			</td>\r\n			<td>\r\n			<p>Главный эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-74</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>11</p>\r\n			</td>\r\n			<td>\r\n			<p>Утепбергенова Тынымкуль Аралбаевна</p>\r\n			</td>\r\n			<td>\r\n			<p>Главный эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-74</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p style=\"text-align: center;\"><strong><u>Управление стратегического планирования, контроля и</u></strong></p>\r\n\r\n			<p style=\"text-align: center;\"><strong><u>координации экспертной деятельности</u></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>12</p>\r\n			</td>\r\n			<td>\r\n			<p>Ермагамбетова Гульназира Сапиевна</p>\r\n			</td>\r\n			<td>\r\n			<p>Руководитель управления</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-68</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>13</p>\r\n			</td>\r\n			<td>\r\n			<p>Темиржанова Меруерт Асылбековна</p>\r\n			</td>\r\n			<td>\r\n			<p>Заместитель управления</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-46</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p style=\"text-align: center;\"><strong><em>Отдел стратегического планирования и международного сотрудничества</em></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>14</p>\r\n			</td>\r\n			<td>\r\n			<p>Нурмуратова Альфия Бердикуловна</p>\r\n			</td>\r\n			<td>\r\n			<p>Руководитель отдела /главный эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-51</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>15</p>\r\n			</td>\r\n			<td>\r\n			<p>Агибаева Алма Айсановна</p>\r\n			</td>\r\n			<td>\r\n			<p>главный эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-51</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>16</p>\r\n			</td>\r\n			<td>\r\n			<p>Турганбаева Салтанат Таурбайқызы</p>\r\n			</td>\r\n			<td>\r\n			<p>главный эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-51</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>17</p>\r\n			</td>\r\n			<td>\r\n			<p>Палеева Виктория Владимировна</p>\r\n			</td>\r\n			<td>\r\n			<p>ведущий эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-51</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>18</p>\r\n			</td>\r\n			<td>\r\n			<p>Әбдіраман Нұрбол Жүнісәліұлы</p>\r\n			</td>\r\n			<td>\r\n			<p>консультант</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-51</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>19</p>\r\n			</td>\r\n			<td>\r\n			<p>Аушахманов Темиржан Жанатович</p>\r\n			</td>\r\n			<td>\r\n			<p>консультант (пресс-секретарь)</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-46</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p style=\"text-align: center;\"><strong><em>Отдел аналитики и координации производства судебных экспертиз </em></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>20</p>\r\n			</td>\r\n			<td>\r\n			<p>Султанова Назгуль Рашитовна</p>\r\n			</td>\r\n			<td>\r\n			<p>Руководитель отдела /главный эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-68</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>21</p>\r\n			</td>\r\n			<td>\r\n			<p>Аскарова Сымбат Молдахметовна</p>\r\n			</td>\r\n			<td>\r\n			<p>главный эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-68</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>22</p>\r\n			</td>\r\n			<td>\r\n			<p>Тугунбаева Алтынай Сериковна</p>\r\n			</td>\r\n			<td>\r\n			<p>статистик</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-68</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>23</p>\r\n			</td>\r\n			<td>\r\n			<p>Галеева Индира Зиядаевна</p>\r\n			</td>\r\n			<td>\r\n			<p>консультант</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-68</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p style=\"text-align: center;\"><strong><em>Отдел по контролю качества судебных экспертиз</em></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>24</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Вакансия</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Руководитель отдела / главный эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-46</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>25</p>\r\n			</td>\r\n			<td>\r\n			<p>Дербисбекова Айгуль Койшыбековна</p>\r\n			</td>\r\n			<td>\r\n			<p>главный эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-46</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>26</p>\r\n			</td>\r\n			<td>\r\n			<p>Мухамеджанова Айжан Оразхановна</p>\r\n			</td>\r\n			<td>\r\n			<p>главный эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-46</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>27</p>\r\n			</td>\r\n			<td>\r\n			<p>Исмаилова Әсем Мұхтарқызы</p>\r\n			</td>\r\n			<td>\r\n			<p>главный эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-46</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>28</p>\r\n			</td>\r\n			<td>\r\n			<p>Алитурлиев Аслан Сандыбайулы</p>\r\n			</td>\r\n			<td>\r\n			<p>главный эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-46</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>29</p>\r\n			</td>\r\n			<td>\r\n			<p>Дүйсенғали Айдос Нұратұлы</p>\r\n			</td>\r\n			<td>\r\n			<p>главный эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-46</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>30</p>\r\n			</td>\r\n			<td>\r\n			<p>Баекенова Гульмира Жаксылыковна</p>\r\n			</td>\r\n			<td>\r\n			<p>главный эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-46</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>31</p>\r\n			</td>\r\n			<td>\r\n			<p>Ақылбек Айдана Ақылбекқызы</p>\r\n			</td>\r\n			<td>\r\n			<p>главный эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-46</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>32</p>\r\n			</td>\r\n			<td>\r\n			<p>Сейфуллина Айгерим Берыковна</p>\r\n			</td>\r\n			<td>\r\n			<p>старший эксперт</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-68</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p style=\"text-align: center;\"><strong><u>Управление кадрового обеспечения и документооборота</u></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>33</p>\r\n			</td>\r\n			<td>\r\n			<p>Сашкен Асия Маратқызы</p>\r\n			</td>\r\n			<td>\r\n			<p>И.о. руководителя управления</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-73</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p style=\"text-align: center;\"><strong><em>Отдел кадрового обеспечения</em></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>34</p>\r\n			</td>\r\n			<td>\r\n			<p>Сашкен Асия Маратқызы</p>\r\n			</td>\r\n			<td>\r\n			<p>Руководитель отдела / главный инспектор по кадрам</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-73</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>35</p>\r\n			</td>\r\n			<td>\r\n			<p>Сарсенова Макпал Сейтхановна</p>\r\n			</td>\r\n			<td>\r\n			<p>главный инспектор по кадрам</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-73</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>36</p>\r\n			</td>\r\n			<td>\r\n			<p>Кусмиляқызы Жадыра</p>\r\n			</td>\r\n			<td>\r\n			<p>консультант</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-73</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p style=\"text-align: center;\"><strong><em>Отдел документооборота </em></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>37</p>\r\n			</td>\r\n			<td>\r\n			<p>Кушекбаева Эльвира</p>\r\n			</td>\r\n			<td>\r\n			<p>Руководитель отдела</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-84</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>38</p>\r\n			</td>\r\n			<td>\r\n			<p>Бозабаева Газиза Шаймуратовна</p>\r\n			</td>\r\n			<td>\r\n			<p>архивист</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-84</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>39</p>\r\n			</td>\r\n			<td>\r\n			<p>Аширова Айнур Усеновна</p>\r\n			</td>\r\n			<td>\r\n			<p>инспектор по делопроизводству</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-84</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>40</p>\r\n			</td>\r\n			<td>\r\n			<p>Ашықбай Алма Қалдығұлқызы</p>\r\n			</td>\r\n			<td>\r\n			<p>инспектор по делопроизводству</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-84</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p style=\"text-align: center;\"><strong><u>Управление финансового и материально-технического обеспечения</u></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>41</p>\r\n			</td>\r\n			<td>\r\n			<p>Дузенов Ибрай Байтугелович</p>\r\n			</td>\r\n			<td>\r\n			<p>Руководитель управления-главный бухгалтер</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-58</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p style=\"text-align: center;\"><strong><em>Отдел бухгалтерского учета и отчетности </em></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>42</p>\r\n			</td>\r\n			<td>\r\n			<p>Кулекешова Айымгуль Баянбаевна</p>\r\n			</td>\r\n			<td>\r\n			<p>Заместитель главного бухгалтера &ndash; руководитель отдела</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-58</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>43</p>\r\n			</td>\r\n			<td>\r\n			<p>Тергемесова Лаура Нұртайқызы</p>\r\n			</td>\r\n			<td>\r\n			<p>бухгалтер</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-58</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p style=\"text-align: center;\"><strong><em>Отдел планирования и экономического анализа</em></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>44</p>\r\n			</td>\r\n			<td>\r\n			<p>Нурболатов Даур</p>\r\n			</td>\r\n			<td>\r\n			<p>Руководитель отдела</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-58</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>45</p>\r\n			</td>\r\n			<td>\r\n			<p>Садвокасова Карлыгаш Жаксылыковна</p>\r\n			</td>\r\n			<td>\r\n			<p>главный экономист</p>\r\n			</td>\r\n			<td>\r\n			<p>54-09-32</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>46</p>\r\n			</td>\r\n			<td>\r\n			<p>Калиева Айнагуль Каиртасовна</p>\r\n			</td>\r\n			<td>\r\n			<p>главный экономист</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-42</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p style=\"text-align: center;\"><strong><em>Отдел государственных закупок</em></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>47</p>\r\n			</td>\r\n			<td>\r\n			<p>Кыланова Магира Куанышовна</p>\r\n			</td>\r\n			<td>\r\n			<p>Руководитель отдела</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-14</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>48</p>\r\n			</td>\r\n			<td>\r\n			<p>Кобетаев Бахадыр Нурмаханович</p>\r\n			</td>\r\n			<td>\r\n			<p>главный инженер</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-14</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>49</p>\r\n			</td>\r\n			<td>\r\n			<p>Куанышбаева Гульфайруз Бериковна</p>\r\n			</td>\r\n			<td>\r\n			<p>главный инженер</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-14</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p style=\"text-align: center;\"><strong><em>Отдел материально-технического снабжения</em></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>50</p>\r\n			</td>\r\n			<td>\r\n			<p>Бекишев Жандарбек Жайдарбекович</p>\r\n			</td>\r\n			<td>\r\n			<p>Руководитель отдела</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-13</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>51</p>\r\n			</td>\r\n			<td>\r\n			<p>Мырзалиева Жулдызай</p>\r\n			</td>\r\n			<td>\r\n			<p>главный инженер</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-13</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>52</p>\r\n			</td>\r\n			<td>\r\n			<p>Болысбекова Марзия Дулатовна</p>\r\n			</td>\r\n			<td>\r\n			<p>главный инженер</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-13</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>53</p>\r\n			</td>\r\n			<td>\r\n			<p>Абенов Данияр Канатович</p>\r\n			</td>\r\n			<td>\r\n			<p>главный инженер</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-13</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>54</p>\r\n			</td>\r\n			<td>\r\n			<p>Кабдулбариева Алия Хабаровна</p>\r\n			</td>\r\n			<td>\r\n			<p>заведующий складом</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-13</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>55</p>\r\n			</td>\r\n			<td>\r\n			<p>Қайыржан Руслан Болатбекұлы</p>\r\n			</td>\r\n			<td>\r\n			<p>водитель</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-13</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>56</p>\r\n			</td>\r\n			<td>\r\n			<p>Жолдаспаев Мурат Дакенович</p>\r\n			</td>\r\n			<td>\r\n			<p>сантехник</p>\r\n			</td>\r\n			<td>\r\n			<p>54-10-13</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 0, '2020-09-10 07:01:04', '2020-09-10 07:01:04', 'ru');

-- --------------------------------------------------------

--
-- Структура таблицы `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `type_id` int(11) NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ru',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `teams`
--

INSERT INTO `teams` (`id`, `name`, `position`, `text`, `image`, `type_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Умбеталиев Аскар Ерболатович', 'Директор Центра судебных экспертиз', '<p>Умбеталиев Аскар Ерболатович родился 11 апреля 1980 года в поселке Шиели Кызылординской области в многодетной семье. Отец работал в строительной отрасли инженером, а мать-учителем. В настоящее время родители пенсионеры.</p>\r\n\r\n<p><strong>Образование и карьера:</strong></p>\r\n\r\n<p>В 1986 году поступил в первый класс средней школы поселка Шиели. В связи с переездом родителей, среднее образование было получено в г. Шымкент. Будучи лучшим учеником, был занесен на доску почета. Учебу в школе окончил с отличием, получив красный аттестат.</p>\r\n\r\n<p>В 1998 году поступил на первый курс в Казахскую государственную юридическую академию, которую окончил в 2002 году. После окончания учебы трудовую деятельность начал в должности главного инспектора по раскрытию экономических и финансовых преступлений департамента финансовой полиции в городах Астана и Алматы, проработав 5 лет.</p>\r\n\r\n<p>В 2004-2006 годах обучался в Алматинском экономическом университете по заочной форме обучения по специальности &laquo;Финансы&raquo; и получил степень бакалавра финансов с отличием.</p>\r\n\r\n<p>С 2007 по 2009 годы работал главным экспертом, заместителем руководителя управления регулирования акцизов Налогового комитета Министерства финансов Республики Казахстан г. Астана.</p>\r\n\r\n<p>С 2009 по 2012 годы работал заместителем директора и руководителем Института судебных экспертиз по г.Алматы, Астана.</p>\r\n\r\n<p>С 2012 по 2016 годы занимал должность заместителя директора РГКП &laquo;Центр судебных экспертиз Министерства юстиции Республики Казахстан&raquo;</p>\r\n\r\n<p>В 2012-2014 годах по программе &laquo;Болашак&raquo; прошел стажировку в London School of Economics and Political Science, Лондон, Великобритания.</p>\r\n\r\n<p>2016-2020 гг.-директор департамента организации экспертной деятельности Министерства юстиции Республики Казахстан.</p>\r\n\r\n<p>С 2020 года по настоящее время является директором РГКП &laquo;Центр судебных экспертиз Министерства юстиции Республики Казахстан&raquo;.</p>\r\n\r\n<p>Награжден орденом &laquo;Кұрмет&raquo; (2019 г.), нагрудными знаками &laquo;Әділет органдарының үздігі&raquo; и &laquo;Заңгер&raquo; III степени.</p>\r\n\r\n<p>Женат, отец двоих детей.</p>', '1599735178.jpeg', 0, 'ru', '2020-09-10 04:52:58', '2020-09-10 04:54:24');

-- --------------------------------------------------------

--
-- Структура таблицы `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'nurzhananuarbek@mail.ru', NULL, '$2y$10$cX9DPDM8xovJEttk5dHBJug60NAq4uknthz6HnutGMZq/0dRsu/vq', NULL, '2020-09-09 03:03:14', '2020-09-09 03:03:14');

-- --------------------------------------------------------

--
-- Структура таблицы `vacancies`
--

CREATE TABLE `vacancies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `vacancies`
--

INSERT INTO `vacancies` (`id`, `region_id`, `text`, `created_at`, `updated_at`) VALUES
(2, 1, '<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:1009px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:46px\">\r\n			<p><strong>№</strong></p>\r\n			</td>\r\n			<td style=\"width:265px\">\r\n			<p><strong>Вакансии</strong></p>\r\n			</td>\r\n			<td style=\"width:151px\">\r\n			<p><strong>Количество</strong></p>\r\n			</td>\r\n			<td style=\"width:548px\">\r\n			<p><strong>Квалификационные требования</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:46px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"width:265px\">\r\n			<p>Директор</p>\r\n			</td>\r\n			<td style=\"width:151px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"width:548px\">\r\n			<p>Образование высшее, наличие ученой степени либо не менее восьми лет стажа работы по экспертной специальности, либо не менее пяти лет стажа работы на руководящих должностях в государственных или научно- исследовательских или образовательных организациях. Наличие научных трудов по судебно-экспертной деятельности или учебного процесса.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:46px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"width:265px\">\r\n			<p>Судебные эксперты</p>\r\n			</td>\r\n			<td style=\"width:151px\">\r\n			<p>2</p>\r\n			</td>\r\n			<td style=\"width:548px\">\r\n			<p>Образование высшее по экспертной специальности, владение квалификацией судебного эксперта.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:46px\">\r\n			<p>2</p>\r\n			</td>\r\n			<td style=\"width:265px\">\r\n			<p>Судебно-медицинские эксперты</p>\r\n			</td>\r\n			<td style=\"width:151px\">\r\n			<p>5</p>\r\n			</td>\r\n			<td style=\"width:548px\">\r\n			<p>Образование высшее медицинское с квалификацией &laquo;Врач&raquo; + интернатура (до 2014 года) по специальности &laquo;Психиатрия&raquo;</p>\r\n\r\n			<p>+ повышение квалификации в объеме не менее 108 (216) часов по специальности &laquo;Судебная психиатрия&raquo; + повышение квалификации в объеме не менее 108 (216) часов по специальности каждые 5 лет, владение квалификацией судебного эксперта.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:46px\">\r\n			<p>3</p>\r\n			</td>\r\n			<td style=\"width:265px\">\r\n			<p>Средний мед. персонал</p>\r\n			</td>\r\n			<td style=\"width:151px\">\r\n			<p>3</p>\r\n			</td>\r\n			<td style=\"width:548px\">\r\n			<p>Профессиональное (среднее специальное, среднее медицинское образование &quot;Сестринское дело&quot; (или &quot;Лечебное дело&quot;, &quot;Акушерское дело&quot;, сертификат специалиста по специальности &quot;Сестринское дело&quot; или &quot;Лечебное дело&quot;, а также по специальности &quot;Лабораторная диагностика&quot;, &quot;Фельдшер-лаборант&quot;, &quot;Гигиена, санитария и эпидемиология&quot;, &quot;Санитарный фельдшер&quot;,&quot;Стоматология&quot;, &quot;Зубной врач&quot; для лиц, приступивших к данной должности до 11 февраля 2003 года, переподготовка по специальности &quot;сестринское дело) или высшее медицинское образование по специальности &quot;Лечебное дело&quot;, &quot;Педиатрия&quot;, бакалавриат по специальности &quot;Общая медицина&quot;, &quot;Сестринское дело&quot; и сертификат специалиста со средним уровнем квалификации, стаж по специальности не менее 3 лет.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:46px\">\r\n			<p>4</p>\r\n			</td>\r\n			<td style=\"width:265px\">\r\n			<p>Младщий мед. персонал</p>\r\n			</td>\r\n			<td style=\"width:151px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"width:548px\">\r\n			<p>Техническое и профессиональное (среднее специальное, среднее профессиональное) образование или высшее специальное (профессиональное) образование, без предъявления требований к стажу работы</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:170px; width:46px\">\r\n			<p>5</p>\r\n			</td>\r\n			<td style=\"height:170px; width:265px\">\r\n			<p>Экономист</p>\r\n			</td>\r\n			<td style=\"height:170px; width:151px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"height:170px; width:548px\">\r\n			<p>Высшее (или послевузовское) образование по соответствующей специальности без предъявления требований к стажу работы или среднее техническое и профессиональное (среднее специальное, среднее профессиональное) образование по соответствующей специальности (квалификации) и стаж работы в должности техника I категории не менее 3 лет.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:46px\">\r\n			<p>6</p>\r\n			</td>\r\n			<td style=\"width:265px\">\r\n			<p>Системный администратор</p>\r\n			</td>\r\n			<td style=\"width:151px\">\r\n			<p>0,5</p>\r\n			</td>\r\n			<td style=\"width:548px\">\r\n			<p>Образование высшее (среднее) техническое, стаж аналогичной работы не менее года.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:46px; width:46px\">\r\n			<p>7</p>\r\n			</td>\r\n			<td style=\"height:46px; width:265px\">\r\n			<p>Рабочий по обслуживанию и текущему ремонту зданий, сооружений и оборудования</p>\r\n			</td>\r\n			<td style=\"height:46px; width:151px\">\r\n			<p>0,5</p>\r\n			</td>\r\n			<td style=\"height:46px; width:548px\">\r\n			<p>Требования: опыт работы по данной профессии, требований к стажу не имеется.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:46px\">\r\n			<p>8</p>\r\n			</td>\r\n			<td style=\"width:265px\">\r\n			<p>Водитель</p>\r\n			</td>\r\n			<td style=\"width:151px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"width:548px\">\r\n			<p>Лицо со средним образованием и удостоверением на право управления автомобилем соответствующей категории.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2020-09-09 04:52:20', '2020-09-09 04:52:20'),
(3, 2, '<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:1009px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:46px\">\r\n			<p><strong>№</strong></p>\r\n			</td>\r\n			<td style=\"width:237px\">\r\n			<p><strong>Вакансии</strong></p>\r\n			</td>\r\n			<td style=\"width:151px\">\r\n			<p><strong>Количество</strong></p>\r\n			</td>\r\n			<td style=\"width:577px\">\r\n			<p><strong>Квалификационные требования</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:46px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"width:237px\">\r\n			<p>Ведущий научный сотрудник</p>\r\n			</td>\r\n			<td style=\"width:151px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"width:577px\">\r\n			<p>Образование высшее, наличие ученой или академической степени, либо не менее трех лет стажа работы по экспертной специальности, либо не менее трех лет стажа педагогической работы. Имеющий научные труды по судебно-экспертной деятельности или учебному процессу.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:170px; width:46px\">\r\n			<p>2</p>\r\n			</td>\r\n			<td style=\"height:170px; width:237px\">\r\n			<p>Главный научный сотрудник</p>\r\n			</td>\r\n			<td style=\"height:170px; width:151px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"height:170px; width:577px\">\r\n			<p>Образование высшее, наличие ученой степени и не менее пяти лет стажа работы по экспертной специальности, либо не менее трех лет стажа работы на руководящих должностях в научно-исследовательских или образовательных организациях.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:96px; width:46px\">\r\n			<p>3</p>\r\n			</td>\r\n			<td style=\"height:96px; width:237px\">\r\n			<p>Менеджер</p>\r\n			</td>\r\n			<td style=\"height:96px; width:151px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"height:96px; width:577px\">\r\n			<p>Требования к квалификации: Высшее образование по соответствующей специальности.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:96px; width:46px\">\r\n			<p>4</p>\r\n			</td>\r\n			<td style=\"height:96px; width:237px\">\r\n			<p>Экономист</p>\r\n			</td>\r\n			<td style=\"height:96px; width:151px\">&nbsp;</td>\r\n			<td style=\"height:96px; width:577px\">\r\n			<p>Экономист: высшее (или послевузовское) образование по соответствующей специальности без предъявления требований к стажу работы или среднее техническое и профессиональное (среднее специальное, среднее профессиональное) образование по соответствующей специальности (квалификации) и стаж работы в должности техника I категории не менее 3 лет.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:96px; width:46px\">\r\n			<p>5</p>\r\n			</td>\r\n			<td style=\"height:96px; width:237px\">\r\n			<p>Инженер по гос.закупкам</p>\r\n			</td>\r\n			<td style=\"height:96px; width:151px\">&nbsp;</td>\r\n			<td style=\"height:96px; width:577px\">\r\n			<p>Требования к квалификации: образование высшее экономическое, юридическое или техническое, не менее трех лет стажа работы в государственных или иных учреждениях по специальности.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:96px; width:46px\">\r\n			<p>6</p>\r\n			</td>\r\n			<td style=\"height:96px; width:237px\">\r\n			<p>Водитель</p>\r\n			</td>\r\n			<td style=\"height:96px; width:151px\">&nbsp;</td>\r\n			<td style=\"height:96px; width:577px\">\r\n			<p>Требования к квалификации: образование высшее или среднее, удостоверение на право управления автомобилем соответствующей категории, стаж вождения от 2 лет.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2020-09-09 05:02:09', '2020-09-09 05:02:09');

-- --------------------------------------------------------

--
-- Структура таблицы `vacancies_details`
--

CREATE TABLE `vacancies_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vacancy_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `analytics`
--
ALTER TABLE `analytics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `certificate_standart`
--
ALTER TABLE `certificate_standart`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `city_objects`
--
ALTER TABLE `city_objects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `expertise`
--
ALTER TABLE `expertise`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gosservices`
--
ALTER TABLE `gosservices`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goszakup`
--
ALTER TABLE `goszakup`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `map_city`
--
ALTER TABLE `map_city`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `map_region`
--
ALTER TABLE `map_region`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `npaprojects`
--
ALTER TABLE `npaprojects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `npas`
--
ALTER TABLE `npas`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `objects_details`
--
ALTER TABLE `objects_details`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `obj_detail_expertise_type`
--
ALTER TABLE `obj_detail_expertise_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `plan_jobs`
--
ALTER TABLE `plan_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `static_pages`
--
ALTER TABLE `static_pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `vacancies`
--
ALTER TABLE `vacancies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `vacancies_details`
--
ALTER TABLE `vacancies_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `analytics`
--
ALTER TABLE `analytics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `certificate_standart`
--
ALTER TABLE `certificate_standart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `city_objects`
--
ALTER TABLE `city_objects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `expertise`
--
ALTER TABLE `expertise`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `gosservices`
--
ALTER TABLE `gosservices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `goszakup`
--
ALTER TABLE `goszakup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `map_city`
--
ALTER TABLE `map_city`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `map_region`
--
ALTER TABLE `map_region`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `npaprojects`
--
ALTER TABLE `npaprojects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `npas`
--
ALTER TABLE `npas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `objects_details`
--
ALTER TABLE `objects_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `obj_detail_expertise_type`
--
ALTER TABLE `obj_detail_expertise_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `plan_jobs`
--
ALTER TABLE `plan_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `static_pages`
--
ALTER TABLE `static_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `vacancies`
--
ALTER TABLE `vacancies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `vacancies_details`
--
ALTER TABLE `vacancies_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
