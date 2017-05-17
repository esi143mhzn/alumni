-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 13, 2016 at 10:56 AM
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
  `Image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`ID`, `Name`, `Contact`, `Graduation_Date`, `Address`, `Email`, `Comments`, `Image`) VALUES
(1, 'Brian S. Zavala', 49728755, '2072-12-01', '4777 Horseshoe Lane\n', '070bct517@ioe.edu.np', 'Currently engaged in Nepal Telecome', 'http://www.wgib.com.au/wp-content/uploads/Chris-Webber-Profile-Pic-150x150.jpg'),
(2, 'Kristopher C. Serna', 12345678910, '0000-00-00', 'Eagleville PA 19403', '070bct511@ioe.edu.np', 'Working in Ncell as Senior Engineer', 'http://www.mbasafetymanagement.com/wp-content/uploads/2015/04/Passport-Size-Photo.jpg-20010900700320201-150x150.jpg'),
(3, 'Christian P. Zhao\n', 9876543210, '0000-00-00', '1376 Norma Lane', '070bct517@ioe.edu.np', 'Working as developer.', 'http://recruitmentinafrica.com/wp-content/uploads/resume_photos/2015/07/Passport-size-photo-150x150.jpg'),
(6, 'new user', 12536459, '0000-00-00', '', '', '', 'http://www.moomymusings.com/wp-content/uploads/2015/09/wpid-glaiza-rsk-150-fin.jpg'),
(8, 'Pamela L. Cox\r\n', 123456789, '0000-00-00', '3997 Burton Avenue', '', '', 'https://c2.staticflickr.com/4/3149/2682343540_cab6c1b072_m.jpg'),
(9, 'Marlene C. Sasser\r\n', NULL, '0000-00-00', '546 Ventura Drive', '', '', 'http://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-19/s150x150/12145552_658526820916572_1684045728_a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(11) NOT NULL,
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

INSERT INTO `users` (`id`, `profile_id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 2, 'kritish', 'kritishpahi@gmail.com', '$2y$10$qXHVLai/eN47798w7wWPYeFxYt2/TQMJIu18Bl.EYBT9.OdqmgexG', 'gJGqSqV03mPFq90lEauvj9pqJ7qok4ezuchvuKrohw57Q4JoOJuUAm9T6Fmu', '2016-02-13 10:09:29', '2016-01-23 10:14:17'),
(2, 3, 'basanta', 'basanta@gmail.com', '$2y$10$/APS08n8hYB5Cn97aVNOMOsxTzv6wZNSJ4G4rQaVo6hbXjK0.YUvW', 'KeLczYcHCOo2utaq1eRp3OW7BGzcIADJoYq1QkMTz2VJKJRnZtqdbr9Gm1aG', '2016-02-13 10:09:55', '2016-01-23 10:19:54'),
(3, 0, 'krt', 'kritishpahi1@gmail.com', '$2y$10$x.0v5PqGRg8FbjunflInue5cblp375H/foY.dJa5JTerqSXj0z19y', '6VEhTLhrTMnhO1V1JsJno9wHjhkjtSpFLfQlLSYI13lGHc54FxnHp6XuIEJy', '2016-02-13 10:53:42', '2016-02-13 10:53:42'),
(4, 0, 'krt', 'kritish@gmail.com', '$2y$10$QXZgyWRWii5tHARAK5OiFu4mKmD8YWUSq5DgWDhAgG345giKE7fSC', NULL, '2016-02-13 10:54:15', '2016-02-13 10:54:15');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
