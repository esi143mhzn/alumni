-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 22, 2016 at 12:38 PM
-- Server version: 10.1.11-MariaDB-log
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `sender` mediumtext NOT NULL,
  `contact` bigint(15) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message`, `sender`, `contact`, `updated_at`, `created_at`, `number`) VALUES
(4, ' kr', 'ka', 5, '2016-02-19 22:31:04', '2016-02-19 22:31:04', 1),
(1, ' this is your 1 st message', ' ', 0, '2016-02-19 22:32:49', '2016-02-19 22:32:49', 2),
(2, '  this is your 1 message', ' ', 0, '2016-02-19 22:32:55', '2016-02-19 22:32:55', 3),
(3, '  this is your 1 st message', ' ', 45, '2016-02-19 22:33:14', '2016-02-19 22:33:14', 4),
(4, ' your 1st messag', 'ka', 1, '2016-02-19 23:09:06', '2016-02-19 23:09:06', 5),
(2, ' your 2nd mess', ' ', 0, '2016-02-19 23:09:38', '2016-02-19 23:09:38', 6),
(1, ' this is 2nd ', 'kritish', 0, '2016-02-19 23:43:51', '2016-02-19 23:43:51', 7),
(2, ' this is 2nd time', 'kritishpahi', 0, '2016-02-19 23:44:16', '2016-02-19 23:44:16', 8),
(3, 'recent messag', 'ker', 12, '2016-02-22 11:59:27', '2016-02-22 11:59:27', 9);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_02_09_105737_create_bear_table', 2),
('2016_02_09_105901_create_fish_table', 2),
('2016_02_09_105953_create_picnics_table', 2),
('2016_02_09_110045_create_bears_picnics_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `ID` int(11) NOT NULL,
  `Name` text,
  `Contact` bigint(11) DEFAULT NULL,
  `Graduation_Date` date NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Email` text NOT NULL,
  `Comments` text NOT NULL,
  `message_id` int(11) NOT NULL,
  `Image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`ID`, `Name`, `Contact`, `Graduation_Date`, `Address`, `Email`, `Comments`, `message_id`, `Image`) VALUES
(1, 'Brian S. Zavala', 49728755, '2072-12-01', '4777 Horseshoe Lane\n', '070bct517@ioe.edu.np', 'Currently engaged in Nepal Telecome', 1, 'http://www.wgib.com.au/wp-content/uploads/Chris-Webber-Profile-Pic-150x150.jpg'),
(2, 'Christian P. Zhao\n', 9876543210, '0000-00-00', '1376 Norma Lane', '070bct517@ioe.edu.np', 'Working as developer.', 2, 'http://recruitmentinafrica.com/wp-content/uploads/resume_photos/2015/07/Passport-size-photo-150x150.jpg'),
(3, 'Kristopher C. Serna', 12345678910, '0000-00-00', 'Eagleville PA 19403', '070bct511@ioe.edu.np', 'Working in Ncell as Senior Engineer', 3, 'http://www.mbasafetymanagement.com/wp-content/uploads/2015/04/Passport-Size-Photo.jpg-20010900700320201-150x150.jpg'),
(4, 'Marlene C. Sasser\r\n', NULL, '0000-00-00', '546 Ventura Drive', '', '', 4, 'http://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-19/s150x150/12145552_658526820916572_1684045728_a.jpg'),
(5, 'Pamela L. Cox\r\n', 123456789, '0000-00-00', '3997 Burton Avenue', '', '', 0, 'https://c2.staticflickr.com/4/3149/2682343540_cab6c1b072_m.jpg'),
(6, 'new user', 12536459, '0000-00-00', '', '', '', 0, 'http://www.moomymusings.com/wp-content/uploads/2015/09/wpid-glaiza-rsk-150-fin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `head` mediumtext NOT NULL,
  `body` mediumtext NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `head`, `body`, `updated_at`, `created_at`) VALUES
(1, 'nepal', 'bhaktapur', '2016-02-19 21:54:46', '2016-02-19 21:54:46'),
(2, 'krtish', 'pahi', '2016-02-18 13:30:07', '2016-02-18 13:30:07'),
(3, 'krtish', 'ss', '2016-02-18 13:31:52', '2016-02-18 13:31:52'),
(4, 'krtish', 'pahss', '2016-02-18 13:32:25', '2016-02-18 13:32:25'),
(5, 'krtish', 'pahis', '2016-02-18 13:32:39', '2016-02-18 13:32:39'),
(6, 'krtish', 'krtish', '2016-02-18 13:33:59', '2016-02-18 13:33:59'),
(7, 'krtish', 'krtish', '2016-02-18 13:35:27', '2016-02-18 13:35:27'),
(8, 'krtish', 'krtish', '2016-02-18 13:35:58', '2016-02-18 13:35:58'),
(9, 'nepal', 'bhaktappur', '2016-02-19 21:55:03', '2016-02-19 21:55:03'),
(10, 'bkt', 'nepal', '2016-02-19 22:03:10', '2016-02-19 22:03:10'),
(11, 'nepa', 'nepal', '2016-02-19 22:07:36', '2016-02-19 22:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profile_id`, `message_id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 'Kristopher C. Serna', 'kritish2@gmail.com', '$2y$10$Z12Yl.KIv/SagbTYZVL31.ZtAAMDsIMxAg7rmcDy8I.DLyqPgvC5G', 'l8IsFTtNvNdFa2klciE2SiYzHUwUubFDw5BpYVLCaeWAm211NMVDLWK1X1O7', '2016-02-22 08:31:42', '2016-02-22 08:31:42'),
(2, 1, 1, 'Brian S. Zavala', 'kritish1@gmail.com', '$2y$10$jsSspy.nTUA8wCRW0Rye/OPsO.dRLD6OkvsWEPhE0uD7pH8Ft33vq', 'RIzE80EO1UDWgEI7O2bcio2nS1wZarjM2QJyK7hk6jhrWDIg3F38d7jqXHSy', '2016-02-19 23:33:21', '2016-02-13 13:34:05'),
(3, 4, 4, 'Marlene C. Sasser', 'kritish3@gmail.com', '$2y$10$QXZgyWRWii5tHARAK5OiFu4mKmD8YWUSq5DgWDhAgG345giKE7fSC', 'WPLm0DHwLTgfCXDSsWLhYqHI8DInoiO23sEvjZFjjQvtYvVWyVz09cDM1IAW', '2016-02-22 12:08:36', '2016-02-22 12:08:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
