-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2023 at 05:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbnews`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_04_141109_create_students_table', 1),
(6, '2023_11_17_012527_create_news_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `published_at` datetime NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `judul`, `penulis`, `deskripsi`, `konten`, `url`, `url_image`, `published_at`, `category`, `created_at`, `updated_at`) VALUES
(1, 'israel serang palestina', 'BBC Indonesia', 'Menteri Kesehatan Palestina, Mai Al-Kaila, mengatakan kepada BBC bahwa dia belum melihat bukti adanya pusat komando Hamas di Rumah Sakit Al-Shifa di Gaza. Dia menegaskan bahwa pasukan Israel \"perlu menunjukkan\" bukti.', 'Mai Al-Kaila berbicara sehari setelah pasukan Israel menyerbu gedung RS Al-Shifa pada Rabu (15/11) dengan dalih bahwa Hamas memiliki basis besar di sana.\r\n\r\nSerbuan Israel telah memasuki hari kedua, sebagaimana dikemukakan Direktur Rumah Sakit Al-Shifa, Muhammad Abu Salmiya.\r\n\r\nDia mengatakan pihaknya kini kehabisan oksigen dan air sehingga pasien “menjerit karena haus”.', 'https://www.bbc.com/indonesia/articles/c72dq2e9vzlo', 'https://ichef.bbci.co.uk/news/800/cpsprodpb/b3f2/live/cc74b1f0-84de-11ee-a2d9-11346f9c0880.jpg', '2023-11-17 02:42:00', 'politik', NULL, '2023-11-16 19:39:41'),
(2, 'Mobil Listrik', 'Fathur Rochman.', 'Menteri Kesehatan Palestina, Mai Al-Kaila, mengatakan kepada BBC bahwa dia belum melihat bukti adanya pusat komando Hamas di Rumah Sakit Al-Shifa di Gaza. Dia menegaskan bahwa pasukan Israel \"perlu menunjukkan\" bukti.', 'Tangerang (ANTARA) - Wuling Motors resmi memperkenalkan mobil listrik terbaru mereka, Wuling Binguo di Indonesia, hadir dalam dua pilihan jarak tempuh yakni 333 km dan 410 km.Hari ini kami dengan bangga menampilkan kendaraan listrik terbaru Wuling yang akan meramaikan pasar otomotif Indonesia dalam waktu dekat, Wuling Binguo EV, ujar Brand and Marketing Director Wuling Motors Dian Asmahani di Tangerang, Banten, Kamis. Dian menjelaskan nama Binguo terinspirasi dari bahasa Mandarin, yaitu Bin yang memiliki arti banyak dan guo yang bermakna hasil. Selain itu, Binguo terdengar seperti Bingo dalam bahasa Inggris yang memiliki arti ekspresi kebahagiaan dan kepuasan atas keberhasilan yang dicapai.', 'Mobil listrik Wuling Binguo resmi diperkenalkan di Indonesia', 'https://img.antaranews.com/cache/1200x800/2023/11/16/IMG-20231116-WA0011_copy_1596x1196-01.jpeg.webp', '2023-11-17 02:42:00', 'automotive', '2023-11-16 19:19:16', '2023-11-16 19:19:16'),
(3, 'Portugal vs Liechtenstein di Kualifikasi Euro 2024, Cristiano Ronaldo Diragukan Main?', 'Rizki A. Tiara', 'im nasional Portugal yang dikapteni Cristiano Ronaldo bersiap kembali menjalani laga kualifikasi Euro 2024 dalam jeda internasional November 2023 ini.”.', 'Perjalanan timnas yang berjuluk A Seleção das Quinas itu di kualifikasi Euro 2024 begitu mulus.Menurut Eurosport, Portugal sudah mengamankan tempat di Euro 2024 Jerman dengan kemenangan kandang 3-2 atas Slovakia pada Jumat (13/10/2023).Adapun Portugal sudah meraih rekor kemenangan 100 persen dalam 8 pertandingan kualifikasi Euro 2024 yang telah mereka lakoni.Meski sudah pasti lolos ke Euro 2024, Portugal tetap harus melakoni dua pertandingan kualifikasi yang tersisa di babak fase grup,yaknimelawan Liechtenstein dan Islandia.', 'https://ternate.tribunnews.com/2023/11/16/portugal-vs-liechtenstein-di-kualifikasi-euro-2024-cristiano-ronaldo-diragukan-main', 'https://asset-2.tstatic.net/ternate/foto/bank/images/cr7-portugal-dkmkf.jpg', '2022-11-16 01:32:00', 'sport', '2023-11-16 20:07:16', '2023-11-16 20:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '779bba68c8da4e7a092e01461fbd4ebf915bd4db2d088ce9578d15c352fad0b5', '[\"*\"]', '2023-11-16 19:32:49', NULL, '2023-11-16 19:31:35', '2023-11-16 19:32:49'),
(2, 'App\\Models\\User', 3, 'auth_token', '79f5d74c70ad8950715ca898b2dfd22fb21bab47dbc78598f9216cb8f3efacf7', '[\"*\"]', '2023-11-16 20:42:18', NULL, '2023-11-16 19:34:12', '2023-11-16 20:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'faiz', 'faiz@gmail.com', NULL, '$2y$10$YuoBQmc0k7wQV9PR9LhY/OGhNGH1LIiQMmFLzuYzgwMEZUEHWsaEW', NULL, '2023-11-16 19:31:19', '2023-11-16 19:31:19'),
(3, 'faiz2', 'faiz2@gmail.com', NULL, '$2y$10$uodhJTQRNXOwZ5kM6F.KLezR2SCKI4vtPPHqpCIZxJf9UHxDry53a', NULL, '2023-11-16 19:33:56', '2023-11-16 19:33:56'),
(5, 'faiz232', 'faiz3232@gmail.com', NULL, '$2y$10$TsNI3Svnawi3GcUaCejh.uTNJ0ECzsPnDhhcWe.HbgtIqjKFHKhl2', NULL, '2023-11-16 20:55:04', '2023-11-16 20:55:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
