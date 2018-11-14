-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2018 at 11:09 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metest`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `addressID` int(10) UNSIGNED NOT NULL,
  `quarterID` int(11) NOT NULL,
  `noAddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `streetAddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`addressID`, `quarterID`, `noAddress`, `streetAddress`, `created_at`, `updated_at`) VALUES
(1, 1, 'quarter 1', 'Bet 63x64', '2018-11-06 03:52:49', '2018-11-06 03:52:49'),
(2, 1, 'quarter 2', 'Bet 64x65', '2018-11-07 20:43:57', '2018-11-07 20:43:57'),
(3, 1, 'quarter 3', 'Bet 61x62', '2018-11-07 21:21:54', '2018-11-07 21:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `divisionID` int(10) UNSIGNED NOT NULL,
  `divisionName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`divisionID`, `divisionName`, `created_at`, `updated_at`) VALUES
(1, 'Thaninthayi', '2018-11-06 00:24:19', '2018-11-06 00:24:19'),
(2, 'Mon', '2018-11-06 00:25:45', '2018-11-06 00:25:45'),
(3, 'Yangon', '2018-11-06 00:26:21', '2018-11-06 00:26:21'),
(4, 'Ayeyarwaddy', '2018-11-06 00:26:53', '2018-11-06 00:26:53'),
(5, 'Kayin', '2018-11-06 00:26:58', '2018-11-06 00:26:58'),
(6, 'Bago', '2018-11-06 00:27:06', '2018-11-06 00:27:06'),
(7, 'Rakhine', '2018-11-06 00:27:16', '2018-11-06 00:27:16'),
(8, 'Magwe', '2018-11-06 00:27:24', '2018-11-06 00:27:24'),
(9, 'Mandalay', '2018-11-06 00:27:30', '2018-11-06 00:27:30'),
(10, 'Kayah', '2018-11-06 00:27:40', '2018-11-06 00:27:40'),
(11, 'Shan', '2018-11-06 00:27:50', '2018-11-06 00:27:50'),
(12, 'Sagaing', '2018-11-06 00:27:57', '2018-11-06 00:27:57'),
(13, 'Chin', '2018-11-06 00:28:06', '2018-11-06 00:28:06'),
(14, 'Kachin', '2018-11-06 00:28:13', '2018-11-06 00:28:13'),
(15, 'Nay Pyi Taw', '2018-11-06 00:28:21', '2018-11-06 00:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `karaokes`
--

CREATE TABLE `karaokes` (
  `ktvID` int(10) UNSIGNED NOT NULL,
  `ktvName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `licenseID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `licenseOwner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ktvRoomTotal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userID` int(11) NOT NULL,
  `addressID` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `phone_one` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_two` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `karaokes`
--

INSERT INTO `karaokes` (`ktvID`, `ktvName`, `licenseID`, `licenseOwner`, `ktvRoomTotal`, `userID`, `addressID`, `personID`, `phone_one`, `phone_two`, `created_at`, `updated_at`) VALUES
(1, 'BM2', 'MDY00001', 'U Saw Zarni Kyaw', '11', 1, 1, 1, '0967363456', '0935525223', '2018-11-08 22:23:26', '2018-11-08 22:23:26'),
(2, 'BM3', 'MDY00002', 'U Thiha Zaw', '10', 2, 2, 2, '0265476', '096545452134', '2018-11-09 21:59:22', '2018-11-09 21:59:22'),
(3, 'BM2', 'MDY00003', 'U Saw Zarni Kyaw', '11', 1, 1, 1, '0967363456', '0935525223', '2018-11-09 22:52:37', '2018-11-09 22:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_02_095859_create_permission_tables', 1),
(4, '2018_11_06_052528_create_divisions_table', 2),
(5, '2018_11_06_053257_create_townships_table', 2),
(6, '2018_11_06_084108_create_quarters_table', 3),
(7, '2018_11_06_094747_create_addresses_table', 4),
(8, '2018_11_08_032119_create_people_table', 5),
(12, '2018_11_09_040539_create_karaokes_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `personID` int(10) UNSIGNED NOT NULL,
  `personName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personIDCard` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `addressID` int(11) NOT NULL,
  `phone1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`personID`, `personName`, `personIDCard`, `addressID`, `phone1`, `phone2`, `created_at`, `updated_at`) VALUES
(1, 'U Saw Zarni Kyaw ', '9/Mdy(N) 123455', 2, '0945242424', '097685746', '2018-11-07 21:19:56', '2018-11-07 21:19:56'),
(2, 'U Thiha Zaw ', '9/Sgg(N) 4534545', 1, '098996858', '09523242', '2018-11-07 21:20:28', '2018-11-07 21:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quarters`
--

CREATE TABLE `quarters` (
  `quarterID` int(10) UNSIGNED NOT NULL,
  `townshipID` int(11) NOT NULL,
  `quarterName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quarters`
--

INSERT INTO `quarters` (`quarterID`, `townshipID`, `quarterName`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ta-2/7', '2018-11-06 02:40:23', '2018-11-06 02:40:23'),
(2, 2, 'Ba-3/7', '2018-11-06 02:41:18', '2018-11-06 02:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `townships`
--

CREATE TABLE `townships` (
  `townshipID` int(10) UNSIGNED NOT NULL,
  `divisionID` int(11) NOT NULL,
  `townshipName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `townships`
--

INSERT INTO `townships` (`townshipID`, `divisionID`, `townshipName`, `created_at`, `updated_at`) VALUES
(1, 9, 'Chan Aye Tharzan', '2018-11-06 00:45:30', '2018-11-06 00:45:30'),
(2, 9, 'Chan Aye Tharzi', '2018-11-06 00:47:08', '2018-11-06 00:47:08'),
(3, 12, 'Sagaing', '2018-11-06 01:53:32', '2018-11-06 01:53:32'),
(4, 9, 'Amarapura', '2018-11-06 01:54:53', '2018-11-06 01:54:53'),
(5, 12, 'Mon Ywa', '2018-11-06 02:50:46', '2018-11-06 02:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ktvID` int(10) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `ktvID`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Zarni', 'zarni@gmail.com', '$2y$10$T6i7qBKlSqF5kji64VNTV.CJ7EzZaPBsGvwZp/4sxgmhn5jSaF3Y6', 1, 'AIQ4gq0bPox7ipgIITJoF7ubIXZXRim0gAIkB2L5LrK2cFSDmiOUXXjEw60N', '2018-11-04 20:58:39', '2018-11-09 23:01:09'),
(2, 'KoPhyo', 'kophyo@gmail.com', '$2y$10$X/qOWbaOnzybuPcY6lHuje8dfzbvWUlJwTIu8MeFbQVj5oNqhS3zi', 2, 'nojncAhK6HpLbkJTQ0I3zzVWoWpPC6z8ZWQcxLzUj3i26Ghh3SUKhadTjKob', '2018-11-05 01:38:57', '2018-11-05 02:24:55'),
(3, 'bm3ktv', 'bm3ktv@gmail.com', '$2y$10$bmpIviW4gmRFW3FEOF81J.og79g97fMffq9fxg8DDcrAUgOK7IHvq', 3, 'HSlWsCNykUEVbiNVfCDyyZGuFlLxoQdVKUnrvQCxtyf7bOjbzAuqgj3X4SlY', '2018-11-10 00:00:38', '2018-11-10 00:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_permissions`
--

CREATE TABLE `user_has_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_roles`
--

CREATE TABLE `user_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`addressID`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`divisionID`);

--
-- Indexes for table `karaokes`
--
ALTER TABLE `karaokes`
  ADD PRIMARY KEY (`ktvID`),
  ADD UNIQUE KEY `karaokes_licenseid_unique` (`licenseID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`personID`),
  ADD UNIQUE KEY `people_personidcard_unique` (`personIDCard`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `quarters`
--
ALTER TABLE `quarters`
  ADD PRIMARY KEY (`quarterID`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `townships`
--
ALTER TABLE `townships`
  ADD PRIMARY KEY (`townshipID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `user_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `user_has_roles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `addressID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `divisionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `karaokes`
--
ALTER TABLE `karaokes`
  MODIFY `ktvID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `personID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quarters`
--
ALTER TABLE `quarters`
  MODIFY `quarterID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `townships`
--
ALTER TABLE `townships`
  MODIFY `townshipID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD CONSTRAINT `user_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
