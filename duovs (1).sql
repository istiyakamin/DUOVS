-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2018 at 07:12 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duovs`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(10) UNSIGNED NOT NULL,
  `election_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `election_id`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 1, 1, NULL, '2018-04-12 13:57:18', '2018-04-12 13:57:18'),
(4, 3, 3, NULL, '2018-04-16 11:27:02', '2018-04-16 11:27:02'),
(5, 5, 9, NULL, '2018-04-17 05:37:25', '2018-04-17 05:37:25'),
(6, 5, 7, NULL, '2018-04-17 05:37:51', '2018-04-17 05:37:51'),
(7, 5, 4, NULL, '2018-04-17 13:54:18', '2018-04-17 13:54:18'),
(8, 7, 7, NULL, '2018-04-17 14:38:35', '2018-04-17 14:38:35'),
(9, 1, 8, NULL, '2018-04-17 14:39:05', '2018-04-17 14:39:05'),
(10, 2, 5, NULL, '2018-04-17 14:39:29', '2018-04-17 14:39:29'),
(11, 2, 6, NULL, '2018-04-17 14:39:37', '2018-04-17 14:39:37'),
(12, 3, 2, NULL, '2018-04-17 14:40:09', '2018-04-17 14:40:09');

-- --------------------------------------------------------

--
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `election_category_id` int(11) NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `elections`
--

INSERT INTO `elections` (`id`, `name`, `description`, `election_category_id`, `start`, `end`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Tresurer', 'dsfas agg', 1, '2018-04-03 00:00:00', '2018-04-20 00:00:00', 1, NULL, '2018-04-12 13:45:56', '2018-04-12 13:45:56'),
(2, 'Member Election', 'this is member election', 1, '2018-04-17 00:00:00', '2018-04-26 00:00:00', 1, NULL, '2018-04-16 11:24:08', '2018-04-16 11:24:08'),
(3, 'Joint Secretary', 'this is jjoint secretary', 1, '2018-04-13 00:00:00', '2018-04-19 00:00:00', 1, NULL, '2018-04-16 11:25:27', '2018-04-17 14:31:40'),
(4, 'President', 'this is president', 1, '2018-04-14 00:00:00', '2018-04-19 00:00:00', 1, NULL, '2018-04-16 18:02:46', '2018-04-17 14:31:23'),
(5, 'Professor', 'this is professor', 2, '2018-04-17 00:00:00', '2018-05-04 00:00:00', 1, NULL, '2018-04-16 18:03:13', '2018-04-17 14:32:22'),
(6, 'Assistant Professor', 'this is the assistant professor election', 2, '2018-04-17 00:00:00', '2018-04-20 00:00:00', 1, NULL, '2018-04-16 18:04:20', '2018-04-17 14:32:34'),
(7, 'Vice President', 'this is vice president', 1, '2018-04-17 00:00:00', '2018-04-27 00:00:00', 1, NULL, '2018-04-17 14:29:27', '2018-04-17 14:32:05'),
(8, 'Lecturer', 'this is lecturer', 2, '2018-04-19 00:00:00', '2018-04-24 00:00:00', 1, NULL, '2018-04-17 14:30:38', '2018-04-17 14:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `election_categories`
--

CREATE TABLE `election_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `election_categories`
--

INSERT INTO `election_categories` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Teacher Club Election', NULL, '2018-04-12 13:45:07', '2018-04-12 13:45:07'),
(2, 'Syndicate Election', NULL, '2018-04-12 13:45:20', '2018-04-12 13:45:20'),
(3, 'Dean Election', NULL, '2018-04-12 13:45:26', '2018-04-12 13:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `election_news`
--

CREATE TABLE `election_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_17_070849_create_roles_table', 1),
(4, '2018_03_24_071224_create_elections_table', 1),
(5, '2018_03_25_131227_create_election_categories_table', 1),
(6, '2018_03_25_131304_create_candidates_table', 1),
(7, '2018_03_25_131410_create_votes_table', 1),
(8, '2018_03_26_174450_create_election_news_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '3',
  `verify_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `department`, `faculty`, `phone`, `role_id`, `verify_token`, `status`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Istiyak Amin', 'istiyakamisanto@gmail.com', 'ENGLISH', 'ARTS', 1862864711, 1, NULL, 1, '$2y$10$A9uJhfoMMBKNmkm4aYiTc.NaDn8s82vdqY6ue4A0kZuuiF47Wvq7u', 'GNB85FHNCGStByRC9q2TbP8mBmGngu0zolT2J5doJU9ujs7TvVxZcTdNBuWt', NULL, '2018-04-11 09:32:56', '2018-04-11 09:33:25'),
(2, 'Dr. Md. Shariful Islam', 'shariful@gmail.com', 'CSE', 'ENGINEERING', 1800000000, 3, NULL, 1, '$2y$10$LAzmJlG8FhhajWBHVI0za.LhvXdQem8s3D3p4bot2gsEV.v0gSMgu', NULL, NULL, '2018-04-16 11:15:27', '2018-04-16 11:15:50'),
(3, 'Dr. Zerina Begum', 'zerina@gmail.com', 'IIT', 'ENGINEERING', 1800000001, 3, NULL, 1, '$2y$10$1IZN6.EEoMUz2EyW6DXkw.lVW9I.XSyMv8GKlhNTrH8ym1sDhG/ze', NULL, NULL, '2018-04-16 11:17:00', '2018-04-16 11:17:00'),
(4, 'Mohd. Zulfiquar Hafiz', 'zulfiquar@gmail.com', 'PHARMECY', 'ARTS', 1800000002, 3, NULL, 1, '$2y$10$OqCA3B5knfrU0W7wv42jS.OHFWcDOxZT1X9MAvavTEyAiv1AQXgzi', NULL, NULL, '2018-04-16 11:18:32', '2018-04-16 11:18:32'),
(5, 'Md. Mahbubul Alam Joarder', 'Mahbubul@gmail.com', 'ENGLISH', 'ARTS', 1800000003, 3, NULL, 1, '$2y$10$cGpXCA2VimSju5IaJVQs6.nabxvg2p57dfKACngdFyap8jMZ5LUDm', NULL, NULL, '2018-04-16 11:19:38', '2018-04-16 11:19:38'),
(6, 'Dr. Kazi Muheymin-Us-Sakib', 'muheymin@gmaill.com', 'MICRO-BIOLOGY', 'SCIENCE', 1800000004, 3, NULL, 1, '$2y$10$q35cKU8a/PvlAAJ33M8Fe.0X3M2nE45Q5FiNiKI17LestU.K9supi', NULL, NULL, '2018-04-16 11:20:40', '2018-04-16 11:20:40'),
(7, 'Dr. Mohammad Shoyaib', 'shoyaib@gmail.com', 'BBA', 'COMMERCE', 1800000005, 3, NULL, 1, '$2y$10$ZNu3G7BI0kcu.46tcW.BkO00rDMi0R5TPzolTTBuzuSW7fmVpVv4C', NULL, NULL, '2018-04-16 18:06:38', '2018-04-16 18:09:59'),
(8, 'Dr. Mohammed Shafiul Alam Khan', 'shafiul@gmail.com', 'BANGLA', 'ARTS', 180000006, 3, NULL, 1, '$2y$10$vlPW6Q8V.NvSKQ4LR3ZNFe4CpW9o8NVHDUnCQ7/NR6m0PqllGrlKm', 'Rpgxj4i6PQivwrmTxtOI003dAVzmduermhSNrgjHVcFZZOY9ivbKCbfNAAOC', NULL, '2018-04-16 18:08:15', '2018-04-16 18:10:04'),
(9, 'Dr. B M Mainul Hossain', 'maniul@gmail.com', 'MATHMATICS', 'SCIENCE', 1800000007, 3, NULL, 1, '$2y$10$Z6WkCsgE0PMGzZekIcgKSu79xTODUMusRSAu84AkE.m2qc/Sq/RnC', NULL, NULL, '2018-04-16 18:09:33', '2018-04-16 18:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `election_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `deleted_at`, `election_id`, `candidate_id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, NULL, 5, 0, 1, '2018-04-17 14:01:34', '2018-04-17 14:01:34'),
(7, NULL, 5, 0, 1, '2018-04-17 14:02:33', '2018-04-17 14:02:33'),
(8, NULL, 5, 0, 1, '2018-04-17 14:05:53', '2018-04-17 14:05:53'),
(9, NULL, 5, 0, 1, '2018-04-17 14:08:00', '2018-04-17 14:08:00'),
(10, NULL, 5, 4, 1, '2018-04-17 14:09:55', '2018-04-17 14:09:55'),
(11, NULL, 5, 7, 1, '2018-04-17 14:11:30', '2018-04-17 14:11:30'),
(12, NULL, 5, 9, 1, '2018-04-17 14:12:47', '2018-04-17 14:12:47'),
(13, NULL, 5, 9, 1, '2018-04-17 14:13:32', '2018-04-17 14:13:32'),
(14, NULL, 5, 0, 1, '2018-04-17 14:17:03', '2018-04-17 14:17:03'),
(15, NULL, 7, 0, 1, '2018-04-17 14:37:52', '2018-04-17 14:37:52'),
(16, NULL, 2, 5, 1, '2018-04-17 14:45:40', '2018-04-17 14:45:40'),
(17, NULL, 1, 8, 1, '2018-04-18 05:14:43', '2018-04-18 05:14:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `election_categories`
--
ALTER TABLE `election_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `election_news`
--
ALTER TABLE `election_news`
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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `elections`
--
ALTER TABLE `elections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `election_categories`
--
ALTER TABLE `election_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `election_news`
--
ALTER TABLE `election_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
