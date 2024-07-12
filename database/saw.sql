-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2024 at 12:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saw`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessments`
--

CREATE TABLE `assessments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employe_id` bigint(20) UNSIGNED NOT NULL,
  `criteria_id` bigint(20) UNSIGNED NOT NULL,
  `weight` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assessments`
--

INSERT INTO `assessments` (`id`, `employe_id`, `criteria_id`, `weight`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, '2024-05-31 05:26:34', '2024-05-31 05:26:34'),
(2, 1, 2, 5, '2024-05-31 05:26:34', '2024-05-31 05:26:34'),
(3, 1, 3, 4, '2024-05-31 05:26:34', '2024-05-31 05:26:34'),
(4, 2, 1, 1, '2024-05-31 05:26:41', '2024-05-31 05:26:41'),
(5, 2, 2, 3, '2024-05-31 05:26:41', '2024-05-31 05:26:41'),
(6, 2, 3, 1, '2024-05-31 05:26:41', '2024-05-31 05:26:41'),
(7, 3, 1, 5, '2024-05-31 05:30:56', '2024-05-31 05:30:56'),
(8, 3, 2, 3, '2024-05-31 05:30:56', '2024-05-31 05:30:56'),
(9, 3, 3, 4, '2024-05-31 05:30:57', '2024-05-31 05:30:57'),
(10, 3, 4, 5, '2024-05-31 05:30:57', '2024-05-31 05:30:57'),
(11, 2, 4, 5, '2024-05-31 05:31:00', '2024-05-31 05:31:00'),
(12, 1, 4, 1, '2024-05-31 05:31:05', '2024-05-31 05:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `criterias`
--

CREATE TABLE `criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `criteria_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('benefit','cost') COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criterias`
--

INSERT INTO `criterias` (`id`, `criteria_code`, `name`, `type`, `weight`, `created_at`, `updated_at`) VALUES
(1, 'C1', 'C1', 'benefit', 2, '2024-05-31 05:22:58', '2024-05-31 05:22:58'),
(2, 'C2', 'C2', 'cost', 5, '2024-05-31 05:23:09', '2024-05-31 05:23:09'),
(3, 'C3', 'C3', 'benefit', 4, '2024-05-31 05:23:22', '2024-05-31 05:23:22'),
(4, 'C4', 'C4', 'cost', 3, '2024-05-31 05:29:40', '2024-05-31 05:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `employes`
--

CREATE TABLE `employes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employes`
--

INSERT INTO `employes` (`id`, `full_name`, `gender`, `birth_place`, `birth_date`, `address`, `position`, `created_at`, `updated_at`) VALUES
(1, 'A1', 'Male', 'A1', '2024-05-31', 'A1', 'A1', '2024-05-31 05:23:45', '2024-05-31 05:23:45'),
(2, 'A2', 'Male', 'A2', '2024-05-31', 'A2', 'A2', '2024-05-31 05:23:59', '2024-05-31 05:23:59'),
(3, 'A3', 'Male', 'A3', '2024-05-31', 'A3', 'A3', '2024-05-31 05:30:32', '2024-05-31 05:30:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(4, '2020_10_06_145808_create_criterias_table', 1),
(5, '2020_10_06_145833_create_sub_criterias_table', 1),
(6, '2020_10_07_094305_create_employes_table', 1),
(7, '2020_10_07_094525_create_assessments_table', 1);

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
-- Table structure for table `sub_criterias`
--

CREATE TABLE `sub_criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `criteria_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_criterias`
--

INSERT INTO `sub_criterias` (`id`, `criteria_id`, `name`, `weight`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sangat Baik', 5, '2024-05-31 05:25:10', '2024-05-31 05:25:10'),
(2, 1, 'Cukup', 4, '2024-05-31 05:25:19', '2024-05-31 05:25:19'),
(3, 1, 'Kurang', 1, '2024-05-31 05:25:27', '2024-05-31 05:25:27'),
(4, 2, 'Sangat Baik', 5, '2024-05-31 05:25:39', '2024-05-31 05:25:39'),
(5, 2, 'Cukup', 3, '2024-05-31 05:25:49', '2024-05-31 05:25:49'),
(6, 2, 'Kurang', 1, '2024-05-31 05:25:56', '2024-05-31 05:25:56'),
(7, 3, 'Sangat Baik', 5, '2024-05-31 05:26:04', '2024-05-31 05:26:04'),
(8, 3, 'Cukup', 4, '2024-05-31 05:26:13', '2024-05-31 05:26:13'),
(9, 3, 'Kurang', 1, '2024-05-31 05:26:19', '2024-05-31 05:26:19'),
(10, 4, 'Sangat Baik', 5, '2024-05-31 05:29:51', '2024-05-31 05:29:51'),
(11, 4, 'Cukup', 3, '2024-05-31 05:29:58', '2024-05-31 05:29:58'),
(12, 4, 'Kurang', 1, '2024-05-31 05:30:05', '2024-05-31 05:30:05');

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
(1, 'kasep12345', 'kasep@mail.com', NULL, '$2y$10$n6YnzXyJGU0M9eTsEfSi2OkF3i35WwQg50x7dtv0.mkPkzKW8HkUe', NULL, '2024-05-31 05:22:27', '2024-05-31 05:22:27'),
(2, 'kasepo12345', 'kasepo@mail.com', NULL, '$2y$10$Pi8ssmk5H29eLG9bYMqKvelRsLYVsm8Kde5t7Vh2/8pttJ1z8HwOa', NULL, '2024-05-31 05:29:19', '2024-05-31 05:29:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessments`
--
ALTER TABLE `assessments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assessments_employe_id_foreign` (`employe_id`),
  ADD KEY `assessments_criteria_id_foreign` (`criteria_id`);

--
-- Indexes for table `criterias`
--
ALTER TABLE `criterias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `criterias_criteria_code_unique` (`criteria_code`);

--
-- Indexes for table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `sub_criterias`
--
ALTER TABLE `sub_criterias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_criterias_criteria_id_foreign` (`criteria_id`);

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
-- AUTO_INCREMENT for table `assessments`
--
ALTER TABLE `assessments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `criterias`
--
ALTER TABLE `criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employes`
--
ALTER TABLE `employes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_criterias`
--
ALTER TABLE `sub_criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assessments`
--
ALTER TABLE `assessments`
  ADD CONSTRAINT `assessments_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assessments_employe_id_foreign` FOREIGN KEY (`employe_id`) REFERENCES `employes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_criterias`
--
ALTER TABLE `sub_criterias`
  ADD CONSTRAINT `sub_criterias_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
