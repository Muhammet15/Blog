-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 20 Tem 2022, 14:45:07
-- Sunucu sürümü: 10.4.21-MariaDB-log
-- PHP Sürümü: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`) VALUES
(2, 'Muhammmet', 'muhammedkayacan3@gmail.com', '$2y$10$lllZ/rVtcnsW/haSjHHrmuf33aBSJEcTu.IpB1TH10y7En4qA5ZNq');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `title`, `content`, `image`, `hit`, `slug`, `created_at`, `updated_at`) VALUES
(9, 6, 'Dicta rem corrupti rerum consectetur fugit qui labore.', 'Autem et qui ut excepturi. Odit totam aut nostrum ut. Qui natus ullam voluptates magni quos vitae. Possimus rerum voluptatem vitae veniam ex. Ipsum repellendus a est. Vel qui voluptas repellendus nihil ut.', 'https://via.placeholder.com/800x400.png/000088?text=cats+Laravel+ba%C5%9Flang%C4%B1%C3%A7+alias', 2, 'dicta-rem-corrupti-rerum-consectetur-fugit-qui-labore', '2000-04-08 12:00:31', '2022-07-20 09:40:07'),
(10, 5, 'What is Lorem Ipsum? Why do we use it?', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32', 'https://via.placeholder.com/800x400.png/00ddbb?text=cats+Laravel+ba%C5%9Flang%C4%B1%C3%A7+et', 36, 'voluptatem-minus-non-libero-autem', '2018-09-16 11:47:41', '2021-11-25 08:49:22'),
(11, 1, 'Ad doloremque asperiores sint nemo.', 'Inventore rerum voluptate temporibus nulla. Molestias veniam doloribus doloribus labore. Aut laborum ex cupiditate accusamus doloremque cupiditate earum magnam. Ut inventore totam voluptatem officia ex laboriosam. Optio inventore rerum quis sunt consequatur aut.', 'https://via.placeholder.com/800x400.png/00bb77?text=cats+Laravel+ba%C5%9Flang%C4%B1%C3%A7+aliquam', 9, 'ad-doloremque-asperiores-sint-nemo', '2012-11-16 05:03:28', '2021-11-23 09:56:10'),
(12, 5, 'Facilis porro similique a dolores unde ea quos', 'Et quo necessitatibus aliquid in. Suscipit eius doloremque impedit ut facere quisquam. Veniam et quas inventore libero quo commodi minus. Officiis aspernatur necessitatibus adipisci cupiditate omnis nobis quo eos. Nobis facere expedita beatae molestiae. Delectus ullam autem laborum sed temporibus culpa.', 'https://via.placeholder.com/800x400.png/007733?text=cats+Laravel+ba%C5%9Flang%C4%B1%C3%A7+dolores', 3, 'facilis-porro-similique-a-dolores-unde-ea-quos', '1993-01-09 03:02:01', '2021-11-24 04:26:54'),
(13, 5, 'Yeni yazı güncellendi', 'Yeni yazılan bir yazı ve bla bla bla Yeni yazılan bir yazı ve bla bla bla  Yeni yazılan bir yazı ve bla bla bla  Yeni yazılan bir yazı ve bla bla bla  Yeni yazılan bir yazı ve bla bla bla  Yeni yazılan bir yazı ve bla bla bla', 'https://via.placeholder.com/800x400.png/', 4, 'yeni-yazi-guncellendi', '2021-11-25 08:45:50', '2021-11-25 10:38:35');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Eğlence', 'eglence', '2021-11-22 10:37:32', '2021-11-22 10:37:32'),
(2, 'Bilişim', 'bilisim', '2021-11-22 10:37:32', '2021-11-22 10:37:32'),
(3, 'Teknoloji', 'teknoloji', '2021-11-22 10:37:32', '2021-11-22 10:37:32'),
(4, 'Spor', 'spor', '2021-11-22 10:37:32', '2021-11-22 10:37:32'),
(5, 'Gündem', 'gundem', '2021-11-22 10:37:32', '2021-11-22 10:37:32'),
(6, 'Yaşam', 'yasam', '2021-11-22 10:37:32', '2021-11-22 10:37:32');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `topic`, `message`, `created_at`, `updated_at`) VALUES
(1, 'asdasd', 'asda@gmail.com', 'Destek', 'asd', '2021-11-24 04:28:07', '2021-11-24 04:28:07'),
(2, 'asd', 'asda@gmail.com', 'Laravel', 'asdasda', '2021-11-24 04:28:22', '2021-11-24 04:28:22'),
(3, 'asd', 'asdas@gmail.com', 'Laravel', 'asd', '2021-11-24 04:38:13', '2021-11-24 04:38:13'),
(4, 'asd', 'asda@gmail.com', 'Destek', 'asdasd', '2021-11-24 05:32:06', '2021-11-24 05:32:06'),
(5, 'asdss', 'asda@gmail.com', 'Genel', 'tyrytryrtyry', '2021-11-24 05:44:56', '2021-11-24 05:44:56'),
(6, 'asdasd', 'asda@gmail.com', 'Genel', 'sasasasa', '2021-11-24 08:47:07', '2021-11-24 08:47:07'),
(7, 'John Clark', 'johnclark@gmail.com', 'Genel', 'Bla bla bla blaaaa', '2021-11-29 06:42:07', '2021-11-29 06:42:07'),
(8, 'Yüksek Sadakat', 'muhammedkayacan3@gmail.com', 'Destek', 'Haydi gel içelim', '2021-11-29 08:19:09', '2021-11-29 08:19:09'),
(9, 'sssddd', 'jj@gmail.com', 'Genel', 'aaasd', '2021-11-29 08:38:48', '2021-11-29 08:38:48'),
(10, 'erwerwer', 'asda@gmail.com', 'Laravel', 'werwerwer', '2021-11-29 08:41:38', '2021-11-29 08:41:38'),
(11, 'asdasd', 'asdasd@gmail.com', 'Genel', 'asdasdasd', '2021-11-29 08:42:49', '2021-11-29 08:42:49'),
(12, 'asdasd', 'asda@gmail.com', 'Genel', 'asdasdad', '2021-11-29 08:43:56', '2021-11-29 08:43:56'),
(13, 'Denemelik', 'muhammedkayacan3@gmail.com', 'Genel', 'Denemelik şeylerrrrrr', '2021-11-29 08:51:53', '2021-11-29 08:51:53'),
(14, 'Muhammet Ali', 'muhammedkayacan3@gmail.com', 'Genel', 'sdfgsdfsdf', '2021-12-01 09:53:53', '2021-12-01 09:53:53'),
(15, 'Muhammet Ali', 'muhammedkayacan3@gmail.com', 'Destek', 'ssssdsd', '2021-12-01 09:55:44', '2021-12-01 09:55:44'),
(16, 'Muhammet Ali', 'muhammedkayacan3@gmail.com', 'Destek', 'dfgdfg', '2021-12-01 09:57:44', '2021-12-01 09:57:44'),
(17, 'admin1', 'jj@gmail.com', 'Genel', 'hnnnnnnnn', '2021-12-01 10:07:14', '2021-12-01 10:07:14'),
(18, 'aasaa', 'asdasd@gmail.com', 'Laravel', 'asdasdasd', '2021-12-01 10:18:51', '2021-12-01 10:18:51');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2021_11_22_132502_articles', 1),
(14, '2021_11_23_114852_pages', 2),
(19, '2021_11_24_070147_contacts', 3),
(20, '2021_11_24_073140_categories', 6),
(21, '2021_11_24_110654_admin', 7),
(22, '2021_11_24_113631_admin', 8);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `title`, `image`, `content`, `slug`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Hakkımızda', 'https://cdn.brandfolder.io/XG3NESCC/at/7w3n3bbh84w7h2z5bcp443/circuit-board-header.jpg?quality=85', 'HLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do\r\n         eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad\r\n         minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip\r\n         ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate\r\n         velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\r\n        cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet,       consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et\r\n         dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation\r\n         ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolo\r\n         r in reprehenderit in voluptate velit esse crunt mollit anim id est laborum.', 'hakkimizda', 1, '2021-11-23 09:03:58', '2021-11-23 09:03:58'),
(2, 'Kariyer', 'https://cdn.brandfolder.io/XG3NESCC/at/7w3n3bbh84w7h2z5bcp443/circuit-board-header.jpg?quality=85', 'kLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do\r\n         eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad\r\n         minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip\r\n         ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate\r\n         velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\r\n        cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet,       consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et\r\n         dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation\r\n         ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolo\r\n         r in reprehenderit in voluptate velit esse crunt mollit anim id est laborum.', 'kariyer', 2, '2021-11-23 09:03:58', '2021-11-23 09:03:58'),
(3, 'Vizyonumuz', 'https://cdn.brandfolder.io/XG3NESCC/at/7w3n3bbh84w7h2z5bcp443/circuit-board-header.jpg?quality=85', 'vLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do\r\n         eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad\r\n         minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip\r\n         ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate\r\n         velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\r\n        cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet,       consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et\r\n         dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation\r\n         ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolo\r\n         r in reprehenderit in voluptate velit esse crunt mollit anim id est laborum.', 'vizyonumuz', 3, '2021-11-23 09:03:58', '2021-11-23 09:03:58'),
(4, 'Misyonumuz', 'https://cdn.brandfolder.io/XG3NESCC/at/7w3n3bbh84w7h2z5bcp443/circuit-board-header.jpg?quality=85', 'MLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do\r\n         eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad\r\n         minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip\r\n         ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate\r\n         velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\r\n        cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet,       consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et\r\n         dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation\r\n         ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolo\r\n         r in reprehenderit in voluptate velit esse crunt mollit anim id est laborum.', 'misyonumuz', 4, '2021-11-23 09:03:58', '2021-11-23 09:03:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
