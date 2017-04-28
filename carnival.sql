-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2017 at 06:31 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carnival`
--

-- --------------------------------------------------------

--
-- Table structure for table `accomodations`
--

CREATE TABLE `accomodations` (
  `id` int(10) UNSIGNED NOT NULL,
  `accomodation_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tip_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accomodations`
--

INSERT INTO `accomodations` (`id`, `accomodation_type`, `tip_message`, `created_at`, `updated_at`) VALUES
(2, 'Aircondition', 'Enjoy your trip with a cool breeze', '2017-04-27 14:11:43', '2017-04-27 14:18:35'),
(3, 'Open Air', 'Enjoy your trip with fresh air', '2017-04-27 14:20:05', '2017-04-27 14:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule_id` int(10) UNSIGNED NOT NULL,
  `seat_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2017_03_25_114219_create_vessels_table', 1),
(4, '2017_03_25_114603_create_travel_routes_table', 3),
(5, '2017_03_25_114652_create_schedules_table', 8),
(6, '2017_03_25_115002_create_vessel_travel_schedules_table', 5),
(7, '2017_03_25_115842_create_vessel_seats_table', 6),
(8, '2017_03_25_121159_create_bookings_table', 7),
(9, '2017_03_30_034806_create_useraccounts_table', 4),
(12, '2017_03_30_130425_update_schedule_table', 9),
(13, '2017_04_07_015846_update_travel_routes_and_book', 10),
(14, '2017_03_25_114412_create_accomodations_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `schedule_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `departure_time` time NOT NULL,
  `departure_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `schedule_type`, `created_at`, `updated_at`, `departure_time`, `departure_date`) VALUES
(2, 'Thursday', '2017-03-30 10:15:57', '2017-03-30 10:15:57', '23:59:00', '2017-04-07'),
(3, 'Wednesday', '2017-03-30 10:22:12', '2017-03-30 10:22:12', '15:01:00', '2017-04-07'),
(4, 'Monday', '2017-03-30 10:22:47', '2017-03-30 10:22:47', '10:00:00', '2017-04-07'),
(7, 'Sunday', '2017-03-31 00:24:14', '2017-03-31 00:24:14', '13:00:00', '2017-04-07'),
(8, 'Saturday', '2017-03-31 00:24:25', '2017-03-31 00:24:25', '03:00:00', '2017-04-07'),
(9, 'Thursday', '2017-04-06 13:55:32', '2017-04-06 13:55:32', '04:30:00', '2017-04-07'),
(10, 'Thursday', '2017-04-06 13:55:46', '2017-04-06 13:55:46', '18:20:00', '2017-04-07'),
(12, 'Wednesday', '2017-04-06 14:42:40', '2017-04-06 14:42:40', '13:59:00', '2017-04-07'),
(13, 'Monday', '2017-04-06 17:12:33', '2017-04-06 17:12:33', '01:50:00', '2017-04-07'),
(14, 'Monday', '2017-04-06 17:12:47', '2017-04-06 17:12:47', '03:00:00', '2017-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `travel_routes`
--

CREATE TABLE `travel_routes` (
  `id` int(10) UNSIGNED NOT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_routes`
--

INSERT INTO `travel_routes` (`id`, `origin`, `destination`, `price`, `created_at`, `updated_at`) VALUES
(3, 'Cebu', 'Bohol', 250, '2017-04-07 00:34:26', '2017-04-07 00:34:26'),
(4, 'Manila', 'Bacolod', 2000, '2017-04-06 17:13:23', '2017-04-06 17:13:23'),
(5, 'Davao', 'Palawan', 3000, '2017-04-06 17:13:34', '2017-04-06 17:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `first_name`, `last_name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(4, 'mayang', 'mayang', 'mayang', '$2y$10$ebIOlfoVf9adrbS0D8f.mua5oORJiygmVD0sKSvArWaozJseLKyfe', '2017-04-05 00:12:25', '2017-04-06 03:08:38'),
(5, 'admin', 'admin', 'admin', '$2y$10$csEU8MpxWkzORaZAnzF1Zu0VKCy4wpK0X85TLM75.PpmJidBMtz76', '2017-04-05 05:47:56', '2017-04-05 05:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `vessels`
--

CREATE TABLE `vessels` (
  `id` int(10) UNSIGNED NOT NULL,
  `vessel_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voyage_no` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vessels`
--

INSERT INTO `vessels` (`id`, `vessel_name`, `voyage_no`, `created_at`, `updated_at`) VALUES
(1, 'Carnival 17', 101, '2017-03-30 03:49:10', '2017-03-30 23:31:19'),
(2, 'Carnival 2', 102, '2017-03-30 03:49:42', '2017-03-30 03:49:42'),
(3, 'Carnival 3', 103, '2017-03-30 03:50:13', '2017-03-30 03:50:13'),
(4, 'Carnival 4', 104, '2017-03-30 03:50:30', '2017-03-30 03:50:30'),
(6, 'Carnival New', 105, '2017-04-06 17:14:15', '2017-04-06 17:14:15'),
(7, 'Carnival 6', 106, '2017-04-06 17:14:44', '2017-04-06 17:14:44'),
(8, 'Carnival 7', 107, '2017-04-06 17:14:55', '2017-04-06 17:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `vessel_seats`
--

CREATE TABLE `vessel_seats` (
  `id` int(10) UNSIGNED NOT NULL,
  `vessel_id` int(10) UNSIGNED NOT NULL,
  `seat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vessel_seats`
--

INSERT INTO `vessel_seats` (`id`, `vessel_id`, `seat_name`) VALUES
(4, 2, 'seat-102'),
(5, 2, 'seat-103'),
(6, 2, 'seat-104'),
(7, 2, 'seat-105'),
(8, 2, 'seat-106'),
(9, 2, 'seat-107'),
(10, 2, 'seat-108'),
(11, 2, 'jj-100'),
(13, 2, 'y-100'),
(14, 2, 'y-101'),
(15, 3, '2-100');

-- --------------------------------------------------------

--
-- Table structure for table `vessel_travel_schedules`
--

CREATE TABLE `vessel_travel_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `vessel_id` int(10) UNSIGNED NOT NULL,
  `sched_type_id` int(10) UNSIGNED NOT NULL,
  `route_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vessel_travel_schedules`
--

INSERT INTO `vessel_travel_schedules` (`id`, `vessel_id`, `sched_type_id`, `route_id`, `created_at`, `updated_at`) VALUES
(7, 2, 4, 3, '2017-04-06 16:53:58', '2017-04-06 16:53:58'),
(8, 1, 4, 3, '2017-04-06 17:03:01', '2017-04-06 17:03:01'),
(9, 3, 4, 3, '2017-04-06 17:03:12', '2017-04-06 17:03:12'),
(10, 4, 4, 3, '2017-04-06 17:03:19', '2017-04-06 17:03:19'),
(11, 1, 13, 4, '2017-04-06 17:13:53', '2017-04-06 17:13:53'),
(12, 6, 14, 3, '2017-04-06 17:14:24', '2017-04-06 17:14:24'),
(13, 7, 13, 3, '2017-04-06 17:15:04', '2017-04-06 17:15:04'),
(14, 8, 13, 3, '2017-04-06 17:15:16', '2017-04-06 17:15:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accomodations`
--
ALTER TABLE `accomodations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_schedule_id_foreign` (`schedule_id`),
  ADD KEY `bookings_seat_id_foreign` (`seat_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_routes`
--
ALTER TABLE `travel_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vessels`
--
ALTER TABLE `vessels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vessel_seats`
--
ALTER TABLE `vessel_seats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vessel_seats_vessel_id_foreign` (`vessel_id`);

--
-- Indexes for table `vessel_travel_schedules`
--
ALTER TABLE `vessel_travel_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vessel_travel_schedules_vessel_id_foreign` (`vessel_id`),
  ADD KEY `vessel_travel_schedules_sched_type_id_foreign` (`sched_type_id`),
  ADD KEY `vessel_travel_schedules_route_id_foreign` (`route_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accomodations`
--
ALTER TABLE `accomodations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `travel_routes`
--
ALTER TABLE `travel_routes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `vessels`
--
ALTER TABLE `vessels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `vessel_seats`
--
ALTER TABLE `vessel_seats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `vessel_travel_schedules`
--
ALTER TABLE `vessel_travel_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `vessel_travel_schedules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_seat_id_foreign` FOREIGN KEY (`seat_id`) REFERENCES `vessel_seats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vessel_seats`
--
ALTER TABLE `vessel_seats`
  ADD CONSTRAINT `vessel_seats_vessel_id_foreign` FOREIGN KEY (`vessel_id`) REFERENCES `vessels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vessel_travel_schedules`
--
ALTER TABLE `vessel_travel_schedules`
  ADD CONSTRAINT `vessel_travel_schedules_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `travel_routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vessel_travel_schedules_sched_type_id_foreign` FOREIGN KEY (`sched_type_id`) REFERENCES `schedules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vessel_travel_schedules_vessel_id_foreign` FOREIGN KEY (`vessel_id`) REFERENCES `vessels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
