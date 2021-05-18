-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 12:36 PM
-- Server version: 8.0.23
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ScheduleCall`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int UNSIGNED NOT NULL,
  `connection_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `connection_id`, `call_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '23', '2021-04-26 20:24:13', '0', '2021-04-27 00:24:13', '2021-04-27 00:24:13'),
(2, '23', '2021-04-26 20:24:13', '0', '2021-04-27 00:28:18', '2021-04-27 00:28:18'),
(3, '23', '2021-05-01T04:00:00.000Z', '0', '2021-04-27 01:15:33', '2021-04-27 01:15:33'),
(4, '24', '2021-04-28T04:00:00.000Z', '0', '2021-04-27 01:18:08', '2021-04-27 01:18:08'),
(5, '19', '2021-04-30T04:00:00.000Z', '0', '2021-04-27 01:19:18', '2021-04-27 01:19:18'),
(6, '25', '2021-04-30T04:00:00.000Z', '0', '2021-04-27 01:23:52', '2021-04-27 01:23:52'),
(7, '25', '2021-05-01T04:00:00.000Z', '0', '2021-04-27 01:28:14', '2021-04-27 01:28:14'),
(8, '26', '2021-04-28T04:00:00.000Z', '0', '2021-04-27 01:29:21', '2021-04-27 01:29:21'),
(9, '27', '2021-04-30T04:00:00.000Z', '0', '2021-04-27 01:32:13', '2021-04-27 01:32:13'),
(10, '29', '2021-04-30T04:00:00.000Z', '0', '2021-04-27 01:32:53', '2021-04-27 01:32:53'),
(11, '30', '2021-05-29T04:00:00.000Z', '0', '2021-04-27 01:44:46', '2021-04-27 01:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `connects`
--

CREATE TABLE `connects` (
  `id` int UNSIGNED NOT NULL,
  `userid_a` int NOT NULL,
  `userid_b` int NOT NULL,
  `statu` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `connects`
--

INSERT INTO `connects` (`id`, `userid_a`, `userid_b`, `statu`, `created_at`, `updated_at`) VALUES
(1, 13, 6, 0, '2021-04-26 04:29:18', '2021-04-26 04:29:18'),
(2, 13, 6, 0, '2021-04-26 04:30:21', '2021-04-26 04:30:21'),
(3, 13, 6, 0, '2021-04-26 04:30:38', '2021-04-26 04:30:38'),
(4, 13, 6, 0, '2021-04-26 04:32:38', '2021-04-26 04:32:38'),
(5, 6, 12, 0, '2021-04-26 04:33:04', '2021-04-26 04:33:04'),
(6, 6, 1, 0, '2021-04-26 04:36:32', '2021-04-26 04:36:32'),
(7, 6, 1, 0, '2021-04-26 04:36:49', '2021-04-26 04:36:49'),
(8, 6, 13, 0, '2021-04-26 04:42:31', '2021-04-26 04:42:31'),
(9, 6, 8, 0, '2021-04-26 04:49:00', '2021-04-26 04:49:00'),
(10, 13, 12, 0, '2021-04-26 04:54:08', '2021-04-26 04:54:08'),
(11, 13, 2, 0, '2021-04-26 04:57:49', '2021-04-26 04:57:49'),
(12, 13, 6, 0, '2021-04-26 05:04:49', '2021-04-26 05:04:49'),
(13, 13, 9, 0, '2021-04-26 05:05:54', '2021-04-26 05:05:54'),
(14, 13, 6, 0, '2021-04-26 05:08:38', '2021-04-26 05:08:38'),
(15, 13, 10, 0, '2021-04-26 18:36:25', '2021-04-26 18:36:25'),
(16, 6, 10, 0, '2021-04-26 23:54:42', '2021-04-26 23:54:42'),
(17, 14, 7, 0, '2021-04-26 23:57:02', '2021-04-26 23:57:02'),
(18, 14, 2, 0, '2021-04-27 00:05:46', '2021-04-27 00:05:46'),
(19, 15, 1, 0, '2021-04-27 00:23:59', '2021-04-27 00:23:59'),
(20, 15, 1, 0, '2021-04-27 00:23:59', '2021-04-27 00:23:59'),
(21, 15, 7, 0, '2021-04-27 00:27:58', '2021-04-27 00:27:58'),
(22, 15, 7, 0, '2021-04-27 00:27:58', '2021-04-27 00:27:58'),
(23, 15, 7, 0, '2021-04-27 00:34:17', '2021-04-27 00:34:17'),
(24, 15, 14, 0, '2021-04-27 01:17:51', '2021-04-27 01:17:51'),
(25, 15, 12, 0, '2021-04-27 01:23:40', '2021-04-27 01:23:40'),
(26, 15, 13, 0, '2021-04-27 01:29:11', '2021-04-27 01:29:11'),
(27, 13, 8, 0, '2021-04-27 01:31:46', '2021-04-27 01:31:46'),
(28, 13, 8, 0, '2021-04-27 01:32:01', '2021-04-27 01:32:01'),
(29, 13, 1, 0, '2021-04-27 01:32:43', '2021-04-27 01:32:43'),
(30, 1, 14, 0, '2021-04-27 01:44:32', '2021-04-27 01:44:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_04_25_185542_create_connects_table', 1),
(4, '2021_04_25_185825_create_appointments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'anil', 'anil@test.com', '$2y$10$vn8ipLF2ujuV9VDqu19aQ.sLz03c/Wz9px9/M4yJED5ub7Dz6eRYe'),
(2, 'hi', 'hi@yahoo.co', '$2y$10$HjbF95h2XBHm5H75XmSTsOT/WACEGRBvdzTNff1LoAWoch7cIXDaK'),
(6, 'Tony', 'tony@test.com', '$2y$10$LW95s7jIUGRV9IXJAafSpeSDvuGViSZ194bT1vVaf1OaUaBgxYPoW'),
(7, 'Tony', 'stark@gmail.com', '$2y$10$xJjwkgIsLkeim.qkqA0vwunI4zKgzWVNc1GyTCTXrrmm.evwBPAfW'),
(8, 'peter', 'peter@test.com', '$2y$10$BVWrfVC./zcvf4zv6lGFeO76Dhs5gWrPZ1UV2oAuJqf8rm30.P.Ku'),
(9, 'hi', 'hi@gmail.com', '$2y$10$lE.GlfUG30f8FqWqswMtde46yE2YD7XZRoA7OqRXG828c1GchH7/C'),
(10, 'hello', 'hello@test.com', '$2y$10$VjDIDWSlfoi1QJ/pMEl6q.RBHB8YoE2btKI32Okx4cMcYWiI3w8uS'),
(11, 'hey', 'pog@gmail.com', '$2y$10$ZnESaVi/vGNwhFbe0RgFEeMSwYtzejUYKcAHHIV4hQHIrVb3iQ9HC'),
(12, 'hello', 'is@test.com', '$2y$10$AfnP14aQQ7DLeJCN.HJJv.jqk1dyOCC0eOmS99EXSP0B27sgb/Ru2'),
(13, 'jill', 'jill@gmail.com', '$2y$10$wFkeEba9hanSMdIQWUZOR.xySwS7ccNeULzU93awuFu1Upctf7uoS'),
(14, 'Bob', 'martin@gmail.com', '$2y$10$O3dLkiHWs3ZmuFttsOB/muTOlNRXAqjhilvl7AFuW.C/lvoFqtNee'),
(15, 'test', 'test13@gmail.com', '$2y$10$6HeWXteecgPhYqnUytY.qusV/94fkf68E91bTMXBG/.s45.ubWYnW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `connects`
--
ALTER TABLE `connects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `connects`
--
ALTER TABLE `connects`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
