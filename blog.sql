-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 17 2021 г., 20:00
-- Версия сервера: 5.7.33-0ubuntu0.16.04.1
-- Версия PHP: 7.2.33-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'cat 1', 'cat-1', '2021-01-13 20:52:01', '2021-01-13 20:52:01'),
(2, 'Cat 2', 'cat-2', '2021-01-13 20:52:12', '2021-01-13 20:52:12'),
(3, 'cat 3', 'cat-3', '2021-01-13 20:52:19', '2021-01-13 20:52:19'),
(4, 'beatae', 'beatae', '2021-01-20 17:54:35', '2021-01-20 17:54:35'),
(5, 'qui', 'qui', '2021-01-20 18:02:24', '2021-01-20 18:02:24'),
(6, 'et', 'et', '2021-01-20 18:05:24', '2021-01-20 18:05:24');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `text`, `user_id`, `post_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Second comment!', 13, 34, 1, '2021-02-03 19:16:46', '2021-02-03 19:16:46');

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
(33, '2014_10_12_000000_create_users_table', 1),
(34, '2014_10_12_100000_create_password_resets_table', 1),
(35, '2021_01_05_215831_create_categories_tabel', 1),
(36, '2021_01_05_220405_create_tags_table', 1),
(37, '2021_01_05_220542_create_comments_table', 1),
(38, '2021_01_05_220612_create_posts_table', 1),
(39, '2021_01_05_220649_create_subscriptions_table', 1),
(40, '2021_01_05_221832_create_posts_tags_table', 1),
(41, '2021_01_13_184440_make_password_nullable', 2),
(42, '2021_01_14_195515_add_date_to_posts', 3),
(43, '2021_01_14_202508_add_image_to_posts', 4),
(44, '2021_01_20_192730_add_discription_to_posts', 5);

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
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `is_featured` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `user_id`, `status`, `views`, `is_featured`, `created_at`, `updated_at`, `date`, `image`, `description`) VALUES
(34, '444new title', '222new-title', '<p>gggg1111</p>', NULL, 9, 1, 10000, 1, '2021-01-18 22:07:23', '2021-01-20 19:39:47', '2021-01-26', 'cllkL9BNA3.jpg', '<p>Description</p>'),
(35, 'Quisquam molestias natus est debitis maiores.', 'quisquam-molestias-natus-est-debitis-maiores', '<p>Illum quod eaque asperiores asperiores nihil in est.</p>', 3, 13, 1, 3925, 0, '2021-01-20 18:05:41', '2021-01-20 18:54:02', '2010-09-08', 'thQPfRJtQf.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s'),
(36, 'Molestiae iste et commodi eos vitae quam magni.', 'molestiae-iste-et-commodi-eos-vitae-quam-magni', '<p>Amet molestiae blanditiis ut aut fugit facilis vitae aut.</p>', 2, 13, 1, 4052, 0, '2021-01-20 18:06:40', '2021-01-20 18:54:14', '2010-09-08', 'aBhtfC5Xc1.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s'),
(37, 'Dolore accusantium molestiae nulla amet dicta qui eius in.', 'dolore-accusantium-molestiae-nulla-amet-dicta-qui-eius-in', '<p>Aut ipsum aut quia.</p>', 5, 13, 0, 2103, 1, '2021-01-20 18:06:41', '2021-01-20 18:54:29', '2010-09-08', 'kWbZA6usbh.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s'),
(38, 'Et nobis alias dolores impedit ut.', 'et-nobis-alias-dolores-impedit-ut', '<p>Ea qui est expedita.</p>', 3, 9, 0, 3261, 0, '2021-01-20 18:06:42', '2021-01-20 18:55:49', '2010-09-08', 'o1nWOwYLUl.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s'),
(39, 'Fugit beatae quas laboriosam magni eos cumque est vel.', 'fugit-beatae-quas-laboriosam-magni-eos-cumque-est-vel', '<p>Et quasi rem sapiente est sit ipsam exercitationem.</p>', 1, 9, 1, 4737, 0, '2021-01-20 18:06:42', '2021-01-20 18:56:31', '2010-09-08', '3qtN69v8Xt.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s'),
(40, 'Consequatur consequatur voluptate rerum pariatur suscipit.', 'consequatur-consequatur-voluptate-rerum-pariatur-suscipit', '<p>Natus autem enim tempora pariatur dolor voluptatum.</p>', 2, 9, 1, 2375, 0, '2021-01-20 18:06:42', '2021-01-20 18:56:42', '2010-09-08', 'G9dJEaYxiF.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s'),
(41, 'Sed sit veritatis aperiam.', 'sed-sit-veritatis-aperiam', 'In debitis quia ut aspernatur ullam aut reprehenderit.', 2, 13, 1, 2867, 0, '2021-01-20 18:06:43', '2021-01-20 18:06:43', '2010-09-08', 'photo1.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s'),
(42, 'Incidunt quae ipsum consequatur in.', 'incidunt-quae-ipsum-consequatur-in', 'Nesciunt maiores cupiditate quasi non sed minus velit non.', 3, 13, 1, 584, 1, '2021-01-20 18:06:43', '2021-01-20 18:06:43', '2010-09-08', 'photo1.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s'),
(43, 'Excepturi eius tempore doloribus sed assumenda.', 'excepturi-eius-tempore-doloribus-sed-assumenda', 'Distinctio optio mollitia nihil et omnis velit.', 3, 9, 0, 3943, 0, '2021-01-20 18:06:43', '2021-01-20 18:06:43', '2010-09-08', 'photo1.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s'),
(44, 'Praesentium iste nostrum doloribus a et rerum.', 'praesentium-iste-nostrum-doloribus-a-et-rerum', 'Est quis tempore accusantium perspiciatis aliquam inventore et nesciunt.', 1, 13, 1, 2005, 1, '2021-01-20 18:06:44', '2021-01-20 18:06:44', '2010-09-08', 'photo1.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s'),
(45, 'Magnam delectus sed qui omnis molestias quod corporis harum.', 'magnam-delectus-sed-qui-omnis-molestias-quod-corporis-harum', 'Aut fugit temporibus cupiditate dolorem animi commodi.', 4, 13, 1, 4847, 0, '2021-01-20 18:06:44', '2021-01-20 18:06:44', '2010-09-08', 'photo1.png', 'Quaerat quae necessitatibus est.'),
(46, 'Atque est qui vitae quasi iure dicta.', 'atque-est-qui-vitae-quasi-iure-dicta', 'Quaerat quae necessitatibus est.', 1, 13, 0, 1748, 0, '2021-01-20 18:06:44', '2021-01-20 18:06:44', '2010-09-08', 'photo1.png', 'Quaerat quae necessitatibus est.'),
(47, 'Excepturi omnis quo corrupti ea qui molestiae rerum.', 'excepturi-omnis-quo-corrupti-ea-qui-molestiae-rerum', 'Ut esse similique quia mollitia ipsa quaerat dolor excepturi.', 2, 9, 1, 993, 0, '2021-01-20 18:06:45', '2021-01-20 18:06:45', '2010-09-08', 'photo1.png', 'Quaerat quae necessitatibus est.'),
(48, 'Architecto id eveniet ad accusamus eligendi.', 'architecto-id-eveniet-ad-accusamus-eligendi', 'Et nam praesentium quia.', 3, 9, 1, 1545, 0, '2021-01-20 18:06:45', '2021-01-20 18:06:45', '2010-09-08', 'photo1.png', 'Quaerat quae necessitatibus est.'),
(49, 'Sint dolor nesciunt quidem voluptatem.', 'sint-dolor-nesciunt-quidem-voluptatem', 'Et non nulla ea odit natus laboriosam.', 3, 13, 1, 293, 0, '2021-01-20 18:06:46', '2021-01-20 18:06:46', '2010-09-08', 'photo1.png', 'Quaerat quae necessitatibus est.');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(4, 35, 1, NULL, NULL),
(5, 36, 1, NULL, NULL),
(6, 37, 1, NULL, NULL),
(8, 22, 2, NULL, NULL),
(9, 22, 3, NULL, NULL),
(10, 23, 2, NULL, NULL),
(11, 24, 2, NULL, NULL),
(12, 25, 2, NULL, NULL),
(13, 26, 2, NULL, NULL),
(14, 27, 2, NULL, NULL),
(15, 28, 2, NULL, NULL),
(16, 29, 2, NULL, NULL),
(17, 29, 3, NULL, NULL),
(18, 34, 2, NULL, NULL),
(19, 30, 3, NULL, NULL),
(20, 31, 2, NULL, NULL),
(21, 31, 3, NULL, NULL),
(22, 32, 2, NULL, NULL),
(23, 32, 3, NULL, NULL),
(24, 34, 3, NULL, NULL),
(25, 34, 1, NULL, NULL),
(27, 34, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(14, 'test@mail.com', NULL, '2021-02-04 19:11:42', '2021-02-04 19:16:29');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Tag 1', 'tag-1', '2021-01-13 20:52:37', '2021-01-13 20:52:37'),
(2, 'Tag 2', 'tag-2', '2021-01-13 20:52:46', '2021-01-13 20:52:46'),
(3, 'Tag 15', 'tag-15', '2021-01-13 20:52:55', '2021-01-13 20:52:55'),
(4, 'Tag 4', 'tag-4', '2021-01-14 21:23:08', '2021-01-14 21:23:08'),
(5, 'incidunt', 'incidunt', '2021-01-20 18:07:53', '2021-01-20 18:07:53'),
(6, 'optio', 'optio', '2021-01-20 18:07:59', '2021-01-20 18:07:59'),
(7, 'non', 'non', '2021-01-20 18:07:59', '2021-01-20 18:07:59'),
(8, 'magni', 'magni', '2021-01-20 18:07:59', '2021-01-20 18:07:59'),
(9, 'aut', 'aut', '2021-01-20 18:07:59', '2021-01-20 18:07:59');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `is_admin`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'user', 'user@mail.com', 'MkFhM1arfD.png', NULL, '$2y$10$eBRRE/Ixeu/FlYoR8AL4l.jAsgvrr2Ef7udJqu6hgayFsj8YRYdo.', 0, 0, NULL, '2021-01-13 19:34:07', '2021-01-13 19:39:28'),
(13, 'admin1', 'admin1@mail.com', 'X3rMzHPbA0.jpg', NULL, '$2y$10$m1CuPPGPNTtbERU.uK.Nn.tiPbONJKeY2Jm4Dgz3VRMvF43acOVQy', 1, 0, NULL, '2021-02-02 17:26:10', '2021-02-02 19:01:14');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT для таблицы `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
