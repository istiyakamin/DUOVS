-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 03, 2018 at 03:30 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(4, 3, 3, '2018-05-03 05:00:42', '2018-04-16 11:27:02', '2018-05-03 05:00:42'),
(5, 5, 9, NULL, '2018-04-17 05:37:25', '2018-04-17 05:37:25'),
(6, 5, 7, NULL, '2018-04-17 05:37:51', '2018-04-17 05:37:51'),
(7, 5, 4, NULL, '2018-04-17 13:54:18', '2018-04-17 13:54:18'),
(8, 7, 7, NULL, '2018-04-17 14:38:35', '2018-04-17 14:38:35'),
(9, 1, 8, NULL, '2018-04-17 14:39:05', '2018-04-17 14:39:05'),
(10, 2, 5, '2018-05-03 04:39:05', '2018-04-17 14:39:29', '2018-05-03 04:39:05'),
(11, 2, 6, NULL, '2018-04-17 14:39:37', '2018-04-17 14:39:37'),
(12, 3, 2, '2018-05-03 05:00:24', '2018-04-17 14:40:09', '2018-05-03 05:00:24'),
(13, 1, 5, NULL, '2018-04-19 11:06:19', '2018-04-19 11:06:19'),
(15, 2, 3, NULL, '2018-04-20 06:44:17', '2018-04-20 06:44:17'),
(16, 1, 2, NULL, '2018-04-20 07:56:51', '2018-04-20 07:56:51'),
(17, 1, 6, NULL, '2018-04-20 07:57:02', '2018-04-20 07:57:02'),
(18, 3, 12, NULL, '2018-05-03 05:01:16', '2018-05-03 05:01:16'),
(19, 3, 9, NULL, '2018-05-03 05:01:33', '2018-05-03 05:01:33'),
(20, 3, 13, NULL, '2018-05-03 05:01:46', '2018-05-03 05:01:46'),
(21, 2, 19, NULL, '2018-05-03 14:56:10', '2018-05-03 14:56:10'),
(22, 2, 18, NULL, '2018-05-03 14:56:19', '2018-05-03 14:56:19'),
(23, 2, 17, NULL, '2018-05-03 14:56:30', '2018-05-03 14:56:30'),
(24, 2, 16, NULL, '2018-05-03 14:56:47', '2018-05-03 14:56:47'),
(25, 2, 15, NULL, '2018-05-03 14:56:55', '2018-05-03 14:56:55'),
(26, 2, 14, NULL, '2018-05-03 14:57:17', '2018-05-03 14:57:17'),
(27, 2, 13, NULL, '2018-05-03 14:57:39', '2018-05-03 14:57:39'),
(28, 2, 12, NULL, '2018-05-03 14:57:46', '2018-05-03 14:57:46'),
(29, 2, 9, NULL, '2018-05-03 14:58:44', '2018-05-03 14:58:44');

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
(1, 'Treasurer', 'Dhaka University tresurer election will be held   on 20/4/2018 from 10.00 am to 4.00 pm. All voters are requested to cast their valuable vote during this time.', 1, '2018-05-03 00:00:00', '2018-05-04 16:00:00', 1, NULL, '2018-04-12 13:45:56', '2018-05-03 04:16:31'),
(2, 'Member Election', 'this is member election', 1, '2018-05-03 10:00:00', '2018-05-05 16:00:00', 1, NULL, '2018-04-16 11:24:08', '2018-05-03 04:36:18'),
(3, 'Joint Secretary', 'this is joint secretary', 1, '2018-05-03 10:00:00', '2018-05-05 10:00:00', 1, NULL, '2018-04-16 11:25:27', '2018-05-03 04:58:40'),
(4, 'President', 'this is president', 1, '2018-05-03 00:00:00', '2018-05-05 00:00:00', 1, NULL, '2018-04-16 18:02:46', '2018-05-03 04:59:48'),
(5, 'Professor', 'this is professor', 2, '2018-04-17 00:00:00', '2018-05-04 00:00:00', 1, NULL, '2018-04-16 18:03:13', '2018-04-17 14:32:22'),
(6, 'Assistant Professor', 'this is the assistant professor election', 2, '2018-04-17 00:00:00', '2018-04-20 00:00:00', 1, NULL, '2018-04-16 18:04:20', '2018-04-17 14:32:34'),
(7, 'Vice President', 'this is vice president', 1, '2018-04-17 00:00:00', '2018-04-27 00:00:00', 1, NULL, '2018-04-17 14:29:27', '2018-04-17 14:32:05'),
(8, 'Lecturer', 'this is lecturer', 2, '2018-04-09 03:34:00', '2018-04-19 00:00:00', 1, NULL, '2018-04-17 14:30:38', '2018-04-20 08:37:20');

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

--
-- Dumping data for table `election_news`
--

INSERT INTO `election_news` (`id`, `title`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'High Court orders Dhaka University to hold DUCSU election in 6 months', 'Justice Syed Muhammad Dastagir Husain and Justice Md Ataur Rahman Khan passed the order on Wednesday after disposing of a six-year-old rule.\r\n\r\n Twenty-five students of Dhaka University filed a writ petition in 2012, seeking an order from the High Court for the authorities to take immediate steps to hold elections to the Dhaka University Central Students’ Union or DUCSU.\r\nThe last election to DUCSU was held in 1990.\r\n\r\nThe court issued a rule why the authorities’ failure to hold the polls should not be deemed illegal.\r\n\r\nThe education secretary and the registrar and the proctor of the university were made respondents.\r\n\r\nOn behalf of 31 students, a legal notice was served on the vice-chancellor, the proctor and the treasurer in 2012, but they remained silent. That prompted 25 students to file a writ petition with the High Court, said advocate Manzil Morshed, a lawyer for the petitioners.\r\n\r\nThe executive body of DUCSU is elected for one year. It may continue to operate, if no election is held in the following three months, according to a decision made at a meeting headed by former vice-chancellor Prof AK Azad Chowdhury in 1998.\r\n\r\nThe university authorities dissolved the 1990-91 DUCSU committee after the meeting.\r\n\r\nAmanullah Aman from Bangladesh Jatiyatabadi Chhatra Dal, the student wing of the BNP, headed the body as vice-president while Khairul Kabir served as the general secretary.\r\n\r\nNo election to DUCSU took place ever since, which means there were no student representatives at the Dhaka University Senate.\r\n\r\nOn another petition in March last year, a High Court bench issued a rule why the authorities’ failure to hold the polls in the last 26 years should not be deemed illegal.\r\n\r\nIt ordered the defendants, including the education secretary, the DU vice-chancellor, the proctor and the registrar to reply in four weeks', NULL, '2018-04-19 10:11:42', '2018-04-19 10:11:42'),
(2, 'Pro-AL panel bags DU syndicate polls', 'The ruling Awami League-backed ‘Blue panel’ swept the syndicate elections of Dhaka University today.\r\n‘Blue panel’ secured 12 out of the 13 syndicate positions, losing out the Dean position to BNP-backed ‘White Panel’ in the elections held today, our Dhaka University campus correspondent reports.\r\n\r\nDhaka University Treasurer Professor Dr Md Kamal Uddin, the election commissioner, announced the results at Nabab Nawab Ali Chowdhury Senate Bhaban around 3:00pm.', NULL, '2018-04-19 10:12:36', '2018-04-19 10:12:36'),
(3, 'DU to hold registered graduate representative election in January', 'Dhaka University (DU) authorities have announced that the Senate registered graduate representatives election would be held in January next year at three centres in Dhaka and 42 across the country.\r\n\r\nA DU press release on Thursday said the elections on January 6 and January 13 would be held in 29 and 13 centres, respectively, outside the capital. The January 20 one would be held at three centres in the university.\r\n\r\nAspirants will be able to collect nomination forms from the DU administrative building between November 6 and 20 at the cost of Tk100. Nomination papers will have to be submitted to the university registrar by 4pm on November 20.\r\n\r\nThe candidates can withdraw nominations through a written letter by 1pm on November 29.\r\n\r\nThe press release said voters will have to show and submit their voter identity cards to the polling officers while casting their votes on the day of the ballot.\r\n\r\nThey will be able to collect the voter ID cards from the administrative building as well between November 15 and December 7.\r\n\r\nIn the last election on 2013, ruling Awami League-backed registered graduates’ panel Gonotantrik Oikya Parishad had bagged 18 seats and opposition BNP-endorsed Jatiyatabadi Parishad got seven seats.\r\n\r\nOn July 24 this year, several teachers and registered graduates, including Prof Sadeka Halim, Prof AKM Golam Rabbani and Prof Harunur Rashid Khan, filed a petition with the High Court against the convening of the DU Senate meeting for finalising vice-chancellor (VC) recommendations without first nominating or electing representatives from registered graduates.\r\n\r\nThe High Court on October 10 declared the DU panel of VC candidates illegal and ordered the university authorities to take necessary steps to form the senate properly within the next six months.', NULL, '2018-04-19 10:13:12', '2018-04-19 10:13:12');

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

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'Moderator', NULL, NULL, NULL),
(3, 'General Member', NULL, NULL, NULL);

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
(1, 'Shweta', 'riya@gmail.com', 'ENGLISH', 'ARTS', 1862864711, 1, NULL, 1, '$2y$10$A9uJhfoMMBKNmkm4aYiTc.NaDn8s82vdqY6ue4A0kZuuiF47Wvq7u', 'Pf9OZm0qXdmgIyJVdzyu2UTxYSbLhSGapZUIZbtVjs6TVHxsXgVw1Z4nMWLd', NULL, '2018-04-11 09:32:56', '2018-04-11 09:33:25'),
(2, 'Dr. Md. Shariful Islam', 'shariful@gmail.com', 'CSE', 'ENGINEERING', 1800000000, 3, NULL, 1, '$2y$10$LAzmJlG8FhhajWBHVI0za.LhvXdQem8s3D3p4bot2gsEV.v0gSMgu', NULL, NULL, '2018-04-16 11:15:27', '2018-04-16 11:15:50'),
(3, 'Dr. Zerina Begum', 'zerina@gmail.com', 'IIT', 'ENGINEERING', 1800000001, 3, NULL, 1, '$2y$10$1IZN6.EEoMUz2EyW6DXkw.lVW9I.XSyMv8GKlhNTrH8ym1sDhG/ze', 'zDzQ9iyP6bwahAgOeIIT19NNrkPglvyWdGyf41ujZIBf31unau7kLMvBeZia', NULL, '2018-04-16 11:17:00', '2018-04-16 11:17:00'),
(4, 'Mohd. Zulfiquar Hafiz', 'zulfiquar@gmail.com', 'PHARMECY', 'ARTS', 1800000002, 3, NULL, 1, '$2y$10$OqCA3B5knfrU0W7wv42jS.OHFWcDOxZT1X9MAvavTEyAiv1AQXgzi', NULL, NULL, '2018-04-16 11:18:32', '2018-04-16 11:18:32'),
(5, 'Md. Mahbubul Alam Joarder', 'Mahbubul@gmail.com', 'ENGLISH', 'ARTS', 1800000003, 3, NULL, 1, '$2y$10$cGpXCA2VimSju5IaJVQs6.nabxvg2p57dfKACngdFyap8jMZ5LUDm', NULL, NULL, '2018-04-16 11:19:38', '2018-04-16 11:19:38'),
(6, 'Dr. Kazi Muheymin-Us-Sakib', 'muheymin@gmaill.com', 'MICRO-BIOLOGY', 'SCIENCE', 1800000004, 3, NULL, 1, '$2y$10$q35cKU8a/PvlAAJ33M8Fe.0X3M2nE45Q5FiNiKI17LestU.K9supi', NULL, NULL, '2018-04-16 11:20:40', '2018-04-16 11:20:40'),
(7, 'Dr. Mohammad Shoyaib', 'shoyaib@gmail.com', 'BBA', 'COMMERCE', 1800000005, 3, NULL, 1, '$2y$10$ZNu3G7BI0kcu.46tcW.BkO00rDMi0R5TPzolTTBuzuSW7fmVpVv4C', '4i0LIZAAiMJ7WM3rXGS8ZSoIR8dUwEJ4JBKV3kgFdE40de5gW6lvupNXrOi8', NULL, '2018-04-16 18:06:38', '2018-04-16 18:09:59'),
(8, 'Dr. Mohammed Shafiul Alam Khan', 'shafiul@gmail.com', 'BANGLA', 'ARTS', 180000006, 3, NULL, 1, '$2y$10$vlPW6Q8V.NvSKQ4LR3ZNFe4CpW9o8NVHDUnCQ7/NR6m0PqllGrlKm', 'KOV8eLnXup9s6vMNUhmvb0oqcjBPZgBjGoddLbQVx8G7mtDXJgibAtzjcmG8', NULL, '2018-04-16 18:08:15', '2018-04-16 18:10:04'),
(9, 'Dr. B M Mainul Hossain', 'maniul@gmail.com', 'MATHMATICS', 'SCIENCE', 1800000007, 3, NULL, 1, '$2y$10$Z6WkCsgE0PMGzZekIcgKSu79xTODUMusRSAu84AkE.m2qc/Sq/RnC', 'FgJDHdFYaHYXhUITqKbLxR66n1LcTCzsB1s61QPKvFbCOnIfhk1NX7xhSweZ', NULL, '2018-04-16 18:09:33', '2018-04-16 18:10:09'),
(10, 'Nurul Ahad Tawhid', 'Tawhid_du@gmail.com', 'IIT', 'ENGINEERING', 1571757672, 3, 'BsmDv1dRAN1uHMeexIA36h0RBXmVtbsWK236Wu2m', 1, '$2y$10$k5leYP7B8Ruf/mV6eUj8eOzf7JJtXXvMUjQyeltnM7uz4WOHnQk4e', NULL, NULL, '2018-04-20 10:10:03', '2018-04-20 10:10:03'),
(11, 'Nurul Ahad Tawhid', 'ahad_du@gmail.com', 'IIT', 'ENGINEERING', 1571757674, 3, NULL, 1, '$2y$10$mNL21Ny4Xhz66EjhLDViTu0IK8tXNWb68saXchCxicmn1J66fPoZC', 'WbHIS4FepJ6w6ADAGH1TFeWO25FSVZ1dklmjvgSEjMVLTJJd3noQXWRLXvpF', NULL, '2018-04-20 10:11:27', '2018-04-20 10:11:50'),
(12, 'Nadia Nahar', 'nadia@gmail.com', 'CSE', 'ENGINEERING', 1763546728, 3, '9E4MAaCME7HUVUkoTUZkSQFlKl4UQSe7dkLStsNF', 1, '$2y$10$FPQMh5fuOLfFLqW2zkQHzOb19yWvtt56xMYPuvja0QEcap50Uk2fK', NULL, NULL, '2018-05-03 04:47:50', '2018-05-03 04:47:50'),
(13, 'Md. Saeed Siddik', 'saeed@gmail.com', 'PHARMECY', 'SCIENCE', 1765473926, 3, 'hHYwOIeuYN5tmpWN1rNg22w0iRU0SYJSNvVAw6d6', 1, '$2y$10$Rg2s.pnB8r9dbCREkjq/MubxFK1pJgPkN.YSZEjwZXNzBUUFcKZLK', NULL, NULL, '2018-05-03 04:51:32', '2018-05-03 04:51:32'),
(14, 'Asif Imran', 'asif@gmail.com', 'EEE', 'ENGINEERING', 1987468290, 3, 'dhubk0uAmkXSbSQ4D2E9bgQNC9JZjQNnpaoa6LP5', 0, '$2y$10$TZsf6A8mhA.tmvz7zXcJOud7u9GbhO3njCsIIHE9Cdt80jU70IH36', NULL, NULL, '2018-05-03 14:19:43', '2018-05-03 14:19:43'),
(15, 'Abul Kasam', 'kasam@gmail.com', 'MICRO-BIOLOGY', 'SCIENCE', 1862864767, 3, '7w19SqGqnZv9TpsT8pOyZHqSVJMegRPbzxKLky9r', 0, '$2y$10$V5SJd9aIg1lw3iOUkSgeKOLY0tabqAaZrVAfKyCKxJ7YlKyVfo4lq', NULL, NULL, '2018-05-03 14:44:27', '2018-05-03 14:44:27'),
(16, 'Mahmuda Rahman', 'mahmuda@gmail.com', 'MICRO-BIOLOGY', 'SCIENCE', 1862864456, 3, '4I0HbOupGDWjl3aaDRdPArmybcLyCnCxpzMT3L8Q', 0, '$2y$10$b1pRQVxZzzmBKUKYDNtU0OFsI7kFsmkt1/Ql5jKnLy8l18L9LC.EC', 'MJBGgBrSfCm9gVFAxpWo8UlAFFZC3YafhrZpJRimn2AsX7ZAs6bijcRCDWYV', NULL, '2018-05-03 14:46:15', '2018-05-03 14:46:15'),
(17, 'Dr. Md. Golam Morshed', 'golam@gmail.com', 'BANGLA', 'ARTS', 1783984720, 3, '5RIrLnVd9JJhO1evGjLe1kfel4t13dgN9R0EiskL', 0, '$2y$10$.7t5VGhIO0LuCsFjv/I7KeTXU6RwokIaZaQXCmGX/6CepOqkjxnFa', 'n2O773SuIgohUYRXh3VMF7VSa4p16sKVT8QwQwTSfPwVXeHjSgmXkVYCrueO', NULL, '2018-05-03 14:47:45', '2018-05-03 14:47:45'),
(18, 'Tahrima Rahman', 'tahrima@gmail.com', 'BBA', 'COMMERCE', 178787463, 3, 'TSA3EJw4QQkffyIcCibTIheaByBHMZnx8ldsSZpx', 0, '$2y$10$AOQsrvx8BG83n8Z.9qkASOUjl3mWqEUFTI0pPKetoxJaZhBWIgwm.', 'E83qJHjd2VFFA87U8fxAhEHs8lYtz7S1VSwzNSytsWPn1xi1QMYXzR5vHJKD', NULL, '2018-05-03 14:52:44', '2018-05-03 14:52:44'),
(19, 'Dr. Md. Saiful Islam', 'saifulislam@gmail.com', 'MATHMATICS', 'ARTS', 1987654567, 3, '9BwUSjKW9rf1E8ycgUsFsL6Wc66M8KNA2xtRynSX', 0, '$2y$10$tT31jxAmmPSUh9bYcD.J0e72ZBaNgq2zJ0IqX4mCaUuasGoMf49Ya', 'mJPgaLUEmUOs6cfbHs0it1R57w6NB32bnS2xrx6IR6fpdZnQAsEmJSyDRWdT', NULL, '2018-05-03 14:53:44', '2018-05-03 14:53:44'),
(20, 'Dr. Moniruzzaman Bhuiyan', 'moniruzzaman@gmail.com', 'IIT', 'ENGINEERING', 1767676767, 3, 'SjExyVFpnRg2b1dd1N60lauzuHVJe09lbHB4I5Gr', 0, '$2y$10$POmnrj6TB9gRyJcKWFKLzeRxEIIgHli7D3fv1ndL2lQO9FoZ9gbwi', 'zMI9G7UHlhQhHf8Gna4RAU7eH1vIeIL2eT4lL5mjppkgt1aczAyjkxBckVpL', NULL, '2018-05-03 14:54:50', '2018-05-03 14:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `election_id` int(11) NOT NULL,
  `candidate_id` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `vote_count` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `deleted_at`, `election_id`, `candidate_id`, `user_id`, `vote_count`, `created_at`, `updated_at`) VALUES
(29, NULL, 1, '8', 8, 1, '2018-04-19 09:51:28', '2018-04-19 09:51:28'),
(30, NULL, 1, '5', 9, 1, '2018-04-20 07:43:56', '2018-04-20 07:43:56'),
(31, NULL, 1, '8', 7, 1, '2018-04-19 09:51:28', '2018-04-19 09:51:28'),
(32, NULL, 1, '8', 6, 1, '2018-04-19 09:51:28', '2018-04-19 09:51:28'),
(33, NULL, 1, '8', 5, 1, '2018-04-19 09:51:28', '2018-04-19 09:51:28'),
(35, NULL, 1, '6', 11, 1, '2018-04-20 10:19:44', '2018-04-20 10:19:44'),
(36, NULL, 3, '12', 1, 1, '2018-05-03 05:03:06', '2018-05-03 05:03:06'),
(42, NULL, 2, '6', 1, 1, '2018-05-03 13:54:42', '2018-05-03 13:54:42'),
(43, NULL, 2, '3', 1, 1, '2018-05-03 13:54:42', '2018-05-03 13:54:42'),
(45, NULL, 2, '6', 8, 1, '2018-05-03 15:02:16', '2018-05-03 15:02:16'),
(46, NULL, 2, '3', 8, 1, '2018-05-03 15:02:17', '2018-05-03 15:02:17'),
(47, NULL, 2, '19', 8, 1, '2018-05-03 15:02:17', '2018-05-03 15:02:17'),
(48, NULL, 2, '18', 8, 1, '2018-05-03 15:02:17', '2018-05-03 15:02:17'),
(49, NULL, 2, '17', 8, 1, '2018-05-03 15:02:17', '2018-05-03 15:02:17'),
(50, NULL, 2, '15', 8, 1, '2018-05-03 15:02:17', '2018-05-03 15:02:17'),
(51, NULL, 2, '14', 8, 1, '2018-05-03 15:02:17', '2018-05-03 15:02:17'),
(52, NULL, 2, '12', 8, 1, '2018-05-03 15:02:17', '2018-05-03 15:02:17'),
(53, NULL, 2, '9', 8, 1, '2018-05-03 15:02:17', '2018-05-03 15:02:17'),
(54, NULL, 2, '6', 3, 1, '2018-05-03 15:04:41', '2018-05-03 15:04:41'),
(55, NULL, 2, '3', 3, 1, '2018-05-03 15:04:41', '2018-05-03 15:04:41'),
(56, NULL, 2, '19', 3, 1, '2018-05-03 15:04:41', '2018-05-03 15:04:41'),
(57, NULL, 2, '18', 3, 1, '2018-05-03 15:04:41', '2018-05-03 15:04:41'),
(58, NULL, 2, '16', 3, 1, '2018-05-03 15:04:41', '2018-05-03 15:04:41'),
(59, NULL, 2, '15', 3, 1, '2018-05-03 15:04:41', '2018-05-03 15:04:41'),
(60, NULL, 2, '12', 3, 1, '2018-05-03 15:04:41', '2018-05-03 15:04:41'),
(61, NULL, 2, '9', 3, 1, '2018-05-03 15:04:41', '2018-05-03 15:04:41'),
(62, NULL, 2, '3', 7, 1, '2018-05-03 15:06:33', '2018-05-03 15:06:33'),
(63, NULL, 2, '19', 7, 1, '2018-05-03 15:06:33', '2018-05-03 15:06:33'),
(64, NULL, 2, '18', 7, 1, '2018-05-03 15:06:33', '2018-05-03 15:06:33'),
(65, NULL, 2, '16', 7, 1, '2018-05-03 15:06:34', '2018-05-03 15:06:34'),
(66, NULL, 2, '13', 7, 1, '2018-05-03 15:06:34', '2018-05-03 15:06:34'),
(67, NULL, 2, '12', 7, 1, '2018-05-03 15:06:34', '2018-05-03 15:06:34');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
