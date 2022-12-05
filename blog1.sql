-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2022 at 08:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog1`
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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '16701594013.jpg', 1, '2022-12-04 07:40:01', '2022-12-04 07:40:01'),
(2, '167015940140.jpg', 1, '2022-12-04 07:40:01', '2022-12-04 07:40:01'),
(3, '167016098216.jpg', 2, '2022-12-04 08:06:22', '2022-12-04 08:06:22'),
(4, '167016098280.jpg', 2, '2022-12-04 08:06:22', '2022-12-04 08:06:22'),
(5, '167016119971.png', 3, '2022-12-04 08:09:59', '2022-12-04 08:09:59'),
(6, '167016152827.jpg', 4, '2022-12-04 08:15:28', '2022-12-04 08:15:28'),
(7, '167016152848.jpg', 4, '2022-12-04 08:15:28', '2022-12-04 08:15:28'),
(8, '167016165387.jpg', 5, '2022-12-04 08:17:33', '2022-12-04 08:17:33'),
(9, '167016230444.jpg', 6, '2022-12-04 08:28:24', '2022-12-04 08:28:24'),
(10, '167016282779.png', 7, '2022-12-04 08:37:07', '2022-12-04 08:37:07'),
(11, '167016297368.jpg', 8, '2022-12-04 08:39:33', '2022-12-04 08:39:33'),
(12, '167016328922.jpg', 9, '2022-12-04 08:44:49', '2022-12-04 08:44:49'),
(13, '167016337950.jpg', 10, '2022-12-04 08:46:19', '2022-12-04 08:46:19'),
(14, '167016405151.jpg', 11, '2022-12-04 08:57:31', '2022-12-04 08:57:31'),
(15, '167021742286.png', 12, '2022-12-04 23:47:02', '2022-12-04 23:47:02'),
(16, '167021747575.png', 13, '2022-12-04 23:47:55', '2022-12-04 23:47:55'),
(17, '167021770753.png', 14, '2022-12-04 23:51:47', '2022-12-04 23:51:47'),
(18, '167021770743.jpg', 14, '2022-12-04 23:51:48', '2022-12-04 23:51:48'),
(19, '167021774077.png', 15, '2022-12-04 23:52:20', '2022-12-04 23:52:20'),
(20, '167021774014.jpg', 15, '2022-12-04 23:52:20', '2022-12-04 23:52:20'),
(21, '167021776060.png', 16, '2022-12-04 23:52:40', '2022-12-04 23:52:40'),
(22, '167021776018.jpg', 16, '2022-12-04 23:52:40', '2022-12-04 23:52:40'),
(23, '167021783658.png', 17, '2022-12-04 23:53:56', '2022-12-04 23:53:56'),
(24, '167021783691.jpg', 17, '2022-12-04 23:53:56', '2022-12-04 23:53:56'),
(25, '167021797265.png', 18, '2022-12-04 23:56:12', '2022-12-04 23:56:12'),
(26, '167021797253.jpg', 18, '2022-12-04 23:56:12', '2022-12-04 23:56:12'),
(27, '167021809121.png', 19, '2022-12-04 23:58:11', '2022-12-04 23:58:11'),
(28, '16702180918.jpg', 19, '2022-12-04 23:58:11', '2022-12-04 23:58:11'),
(29, '16702183166.jpg', 20, '2022-12-05 00:01:56', '2022-12-05 00:01:56'),
(30, '167021831627.jpg', 20, '2022-12-05 00:01:56', '2022-12-05 00:01:56'),
(31, '167021858029.png', 21, '2022-12-05 00:06:20', '2022-12-05 00:06:20'),
(32, '167021868720.png', 22, '2022-12-05 00:08:07', '2022-12-05 00:08:07'),
(33, '167021912634.png', 23, '2022-12-05 00:15:26', '2022-12-05 00:15:26'),
(34, '167021922281.png', 24, '2022-12-05 00:17:02', '2022-12-05 00:17:02'),
(35, '16702193567.png', 25, '2022-12-05 00:19:16', '2022-12-05 00:19:16'),
(36, '167021949671.png', 26, '2022-12-05 00:21:36', '2022-12-05 00:21:36'),
(37, '167021955111.png', 27, '2022-12-05 00:22:31', '2022-12-05 00:22:31'),
(38, '167021970427.jpg', 28, '2022-12-05 00:25:04', '2022-12-05 00:25:04'),
(39, '167021975055.png', 29, '2022-12-05 00:25:50', '2022-12-05 00:25:50'),
(40, '167021982875.png', 30, '2022-12-05 00:27:08', '2022-12-05 00:27:08'),
(41, '167021982841.jpg', 30, '2022-12-05 00:27:08', '2022-12-05 00:27:08'),
(42, '16702198286.png', 30, '2022-12-05 00:27:08', '2022-12-05 00:27:08'),
(43, '167021982896.jpg', 30, '2022-12-05 00:27:08', '2022-12-05 00:27:08'),
(44, '167021994240.jpg', 31, '2022-12-05 00:29:02', '2022-12-05 00:29:02'),
(45, '167021994287.jpg', 31, '2022-12-05 00:29:02', '2022-12-05 00:29:02'),
(46, '167022004460.jpg', 32, '2022-12-05 00:30:44', '2022-12-05 00:30:44'),
(47, '167022060981.jpg', 33, '2022-12-05 00:40:09', '2022-12-05 00:40:09'),
(48, '167022239546.jpg', 34, '2022-12-05 01:09:55', '2022-12-05 01:09:55'),
(49, '167022239590.png', 34, '2022-12-05 01:09:55', '2022-12-05 01:09:55'),
(50, '167022267042.png', 35, '2022-12-05 01:14:30', '2022-12-05 01:14:30'),
(51, '167022307470.jpg', 36, '2022-12-05 01:21:14', '2022-12-05 01:21:14'),
(52, '167022376982.jpg', 37, '2022-12-05 01:32:49', '2022-12-05 01:32:49'),
(53, '167022376934.jpg', 37, '2022-12-05 01:32:49', '2022-12-05 01:32:49'),
(54, '167022385319.jpg', 38, '2022-12-05 01:34:14', '2022-12-05 01:34:14'),
(55, '167022385474.png', 38, '2022-12-05 01:34:14', '2022-12-05 01:34:14'),
(56, '167022385465.jpg', 38, '2022-12-05 01:34:14', '2022-12-05 01:34:14'),
(57, '16702238544.jpg', 38, '2022-12-05 01:34:14', '2022-12-05 01:34:14'),
(58, '16702238542.jpg', 38, '2022-12-05 01:34:14', '2022-12-05 01:34:14');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_02_061344_create_posts_table', 2),
(6, '2022_12_04_114101_create_images_table', 3);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `product_name`, `product_price`, `product_description`, `product_image`, `created_at`, `updated_at`) VALUES
(1, 'tets', 12, 'body', NULL, '2022-12-04 07:40:00', '2022-12-04 07:40:00'),
(2, 'tests 2', 12, 'herhr', NULL, '2022-12-04 08:06:22', '2022-12-04 08:06:22'),
(3, 'test3', 45, 'test', NULL, '2022-12-04 08:09:58', '2022-12-04 08:09:58'),
(4, 'test 3', 33, 'gereh', NULL, '2022-12-04 08:15:28', '2022-12-04 08:15:28'),
(5, 'ewew', 33, 'gerg', NULL, '2022-12-04 08:17:33', '2022-12-04 08:17:33'),
(6, 'test 4', 34, 'fdbdf', NULL, '2022-12-04 08:28:23', '2022-12-04 08:28:23'),
(7, 'test 6', 100, 'test body', NULL, '2022-12-04 08:37:07', '2022-12-04 08:37:07'),
(8, 'test 7', 78, 'hii', NULL, '2022-12-04 08:39:33', '2022-12-04 08:39:33'),
(9, 'test 8', 78, 'tesr', NULL, '2022-12-04 08:44:48', '2022-12-04 08:44:48'),
(10, 'test hh', 67, 'test', NULL, '2022-12-04 08:46:19', '2022-12-04 08:46:19'),
(11, 'tre', 56, 'gh', NULL, '2022-12-04 08:57:30', '2022-12-04 08:57:30'),
(12, 'test 11', 111, 'hh', NULL, '2022-12-04 23:47:02', '2022-12-04 23:47:02'),
(13, 'tyjtyj', 55, 'fbdf', NULL, '2022-12-04 23:47:55', '2022-12-04 23:47:55'),
(14, 'rthrtj', 5656, 'fgjfj', NULL, '2022-12-04 23:51:47', '2022-12-04 23:51:47'),
(15, 'yjtyjtyk', 56, 'kkk', NULL, '2022-12-04 23:52:20', '2022-12-04 23:52:20'),
(16, 'jtjg', 66, 'fjfj', NULL, '2022-12-04 23:52:40', '2022-12-04 23:52:40'),
(17, 'test 11', 45, 'rtjrtj', NULL, '2022-12-04 23:53:56', '2022-12-04 23:53:56'),
(18, 'tyuty', 66, 'rtfjrtj', NULL, '2022-12-04 23:56:12', '2022-12-04 23:56:12'),
(19, 'rtjj', 67, 'gkgk', NULL, '2022-12-04 23:58:11', '2022-12-04 23:58:11'),
(20, 'rtyrtr', 55, 'rthjrtj', NULL, '2022-12-05 00:01:56', '2022-12-05 00:01:56'),
(21, 'fbdf', 55, 'fjg', NULL, '2022-12-05 00:06:20', '2022-12-05 00:06:20'),
(22, 'dfhfg', 55, 'jhrtfj', NULL, '2022-12-05 00:08:07', '2022-12-05 00:08:07'),
(23, 'test 11', 56, 'yjtyjty', NULL, '2022-12-05 00:15:26', '2022-12-05 00:15:26'),
(24, 'jytgj', 55, 'gkjgh', NULL, '2022-12-05 00:17:02', '2022-12-05 00:17:02'),
(25, 'hrtfh', 55, 'bdfb', NULL, '2022-12-05 00:19:16', '2022-12-05 00:19:16'),
(26, 'rtyrt', 44, 'fghnfg', NULL, '2022-12-05 00:21:36', '2022-12-05 00:21:36'),
(27, 'test 11', 55, 'fjgfj', NULL, '2022-12-05 00:22:31', '2022-12-05 00:22:31'),
(28, 'highi', 11, 'jh', NULL, '2022-12-05 00:25:04', '2022-12-05 00:25:04'),
(29, 'gjgjg', 77, 'gkiggki', NULL, '2022-12-05 00:25:50', '2022-12-05 00:25:50'),
(30, 'hkhjkhjlj', 900, 'bhkbhkbhk', NULL, '2022-12-05 00:27:08', '2022-12-05 00:27:08'),
(31, 'ashu', 8765, 'ndasbmasbdhj jabdasbklj', NULL, '2022-12-05 00:29:02', '2022-12-05 00:29:02'),
(32, 'test 11', 231, 'test', NULL, '2022-12-05 00:30:44', '2022-12-05 00:30:44'),
(33, 'test 11', 55, 'test', NULL, '2022-12-05 00:40:09', '2022-12-05 00:40:09'),
(34, 'lalit', 55, 'hth', NULL, '2022-12-05 01:09:55', '2022-12-05 01:09:55'),
(35, 'lalit test', 22, 'test', NULL, '2022-12-05 01:14:30', '2022-12-05 01:14:30'),
(36, 'tyjtyj', 55, 'jtjtj', NULL, '2022-12-05 01:21:14', '2022-12-05 01:21:14'),
(37, 'test 11', 11, 'hjh', NULL, '2022-12-05 01:32:49', '2022-12-05 01:32:49'),
(38, 'test lalit', 12, 'httjt', NULL, '2022-12-05 01:34:13', '2022-12-05 01:34:13');

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
(1, 'lalit', 'lalit@gmail.com', NULL, '706d2aa68ad7bb6946ffc43b98992b2e', NULL, '2022-12-02 00:41:27', '2022-12-02 00:41:27'),
(2, 'lalit', 'lalitchhimwal4@gmail.com', NULL, '$2y$10$8I2S4nYp4qSUScCfqiCbA.LioXjxU64WmPohZf9blPbSFZEJ33xeu', NULL, '2022-12-04 05:40:59', '2022-12-04 05:40:59');

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
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
