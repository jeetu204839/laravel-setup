-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 27, 2021 at 07:59 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gazingde_laravelsenctum`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'my-app-token', 'f88338cda542923ad3e9b7ee218a71b9a1234d6066e72a3d02906fae9d1b3dc2', '[\"*\"]', NULL, '2021-07-11 04:43:36', '2021-07-11 04:43:36'),
(2, 'App\\Models\\User', 1, 'my-app-token', '9fd4c09ace23ae894593dcb3e7e37833f35b1ea99607372925c11b9909b048b7', '[\"*\"]', NULL, '2021-07-11 04:44:03', '2021-07-11 04:44:03'),
(3, 'App\\Models\\User', 1, 'my-app-token', '2c1fd4fe2a09904996adc59f276dea56afd7423d21ef70eaf151db2f8a19bfb1', '[\"*\"]', NULL, '2021-07-11 04:44:05', '2021-07-11 04:44:05'),
(4, 'App\\Models\\User', 1, 'my-app-token', 'dee76fff9ec96211812c81b19d2f7125f5aa47741491b332b339e69e77df9cc5', '[\"*\"]', NULL, '2021-07-11 04:44:06', '2021-07-11 04:44:06'),
(5, 'App\\Models\\User', 1, 'my-app-token', '226255721026fc46c19023e75f91390a25265fdd6a72ffd26af85deebaa688dd', '[\"*\"]', NULL, '2021-07-11 04:44:08', '2021-07-11 04:44:08'),
(6, 'App\\Models\\User', 1, 'my-app-token', '215433820aba4993ecd2ae37b6d650f2db6d8f04d6cdb90624ade75e9c50771a', '[\"*\"]', NULL, '2021-07-11 04:44:10', '2021-07-11 04:44:10'),
(7, 'App\\Models\\User', 1, 'my-app-token', '9e0b01b0c493279c308d645c0c1cbee1843bd385f2d78b8e7514ddd954014525', '[\"*\"]', '2021-07-11 05:51:12', '2021-07-11 05:05:52', '2021-07-11 05:51:12'),
(8, 'App\\Models\\User', 1, 'my-app-token', 'c902982388372b5159fc60ae7de3413347836b4a38f40101fc41ba66738f76a3', '[\"*\"]', '2021-07-12 05:53:37', '2021-07-11 11:33:05', '2021-07-12 05:53:37'),
(10, 'App\\Models\\User', 1, 'my-app-token', '6b7fce2da5c5bea06a6280253c0c74a953ba803b50259c190ec984fbe29db224', '[\"*\"]', NULL, '2021-07-12 05:53:12', '2021-07-12 05:53:12'),
(11, 'App\\Models\\User', 1, 'my-app-token', 'c4fc17761b7067da62180295352523d48768c1f35dbdf8a330d3348ad87287f5', '[\"*\"]', '2021-07-15 04:32:28', '2021-07-12 05:53:26', '2021-07-15 04:32:28'),
(12, 'App\\Models\\User', 1, 'my-app-token', '3f19c9a0af0b2b55d0feeea0ab99dc824c2569137c32098ebaaa34a22c9f5d81', '[\"*\"]', '2021-07-17 00:23:24', '2021-07-14 15:57:59', '2021-07-17 00:23:24'),
(14, 'App\\Models\\User', 2, 'my-app-token', '4f11532ff33d15c92652aa50ac26f9116fd3ff63fdb166752d80983037555d3a', '[\"*\"]', '2021-07-20 06:32:41', '2021-07-15 04:33:52', '2021-07-20 06:32:41'),
(15, 'App\\Models\\User', 1, 'my-app-token', '06c21f201af69a1fad8ac9544f257d0254da625e6411ecd0670878b5db474cb4', '[\"*\"]', NULL, '2021-07-17 00:15:07', '2021-07-17 00:15:07'),
(18, 'App\\Models\\User', 1, 'my-app-token', 'cc00c9c4751176aababff46990a96e7fb797ba21844e065c04656d49b6516a13', '[\"*\"]', '2021-07-20 06:38:08', '2021-07-20 06:35:25', '2021-07-20 06:38:08'),
(19, 'App\\Models\\User', 2, 'my-app-token', '7e6d5a18875cb494ad491df9cb08a436cec3813fcd6da4f59eb956055da2e431', '[\"*\"]', '2021-07-20 06:43:15', '2021-07-20 06:41:12', '2021-07-20 06:43:15'),
(21, 'App\\Models\\User', 13, 'my-app-token', '0a7bef83071e6b7ffdde9c2581c26a567543df86752d502ce935ee621acb4db0', '[\"*\"]', '2021-07-21 11:05:56', '2021-07-21 11:04:21', '2021-07-21 11:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'jeetu', 'jeetu@gmail.com', NULL, '$2y$10$mb8fOE2lJsRsJqanKLixZuRb593BOFdLQJ2NnoRHv7CyN4RtknVHO', NULL, '2021-07-11 04:58:16', '2021-07-11 04:58:16'),
(6, 'amrit 5', 'amrit4@gmail.com', NULL, '$2y$10$akaCFsQ60KavjQ0S2qZCvuy/cynZBzqhVH..lZJyoyvtiR8GTHpAW', NULL, '2021-07-11 11:55:30', '2021-07-11 11:58:45'),
(11, 'amrit 5', 'amrit4dd@gmail.com', NULL, '$2y$10$FYziynDxSaV9Ch468ZuY7eF891FyifRPDF5haIDL5YymWGVGerNQ.', NULL, '2021-07-20 06:42:05', '2021-07-20 06:42:05'),
(13, 'meera', 'meera@gmail.com', NULL, '$2y$10$.j3Rdj.7WBrYQuSf2KCTve57vGMue1cM90YT8DRk6q2wGa1XxM1eq', NULL, '2021-07-21 11:02:18', '2021-07-21 11:02:18'),
(14, 'meera', 'neha@gmail.com', NULL, '$2y$10$9qbwC456CiNd4pOYqjbkEeYbGXclWGhuJg7YRZMiw9twdBOJgJKXW', NULL, '2021-07-21 11:05:02', '2021-07-21 11:05:02');

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
