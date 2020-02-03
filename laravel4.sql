-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2020 at 01:38 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel4`
--

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
(3, '2020_01_23_212305_create_news_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `date` date NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lot_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lot_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lot_condition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pre_tax_amount` decimal(8,2) NOT NULL,
  `tax_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_amount` decimal(8,2) NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`date`, `category`, `lot_title`, `lot_location`, `lot_condition`, `pre_tax_amount`, `tax_name`, `tax_amount`, `id`, `created_at`, `updated_at`) VALUES
('2013-12-01', 'Construction', 'Hauling Transfer Trailers', '783 Park Ave, New York, NY 10021', 'Brand New', '350.00', 'NY Sales tax', '31.06', 1, NULL, NULL),
('2013-12-15', 'Construction', 'Roll-of trucks', '1 Infinite Loop, Cupertino, CA 95014', 'Like Brand New', '235.00', 'CA Sales tax', '17.63', 2, NULL, NULL),
('2013-12-31', 'Construction', 'End dumps', '1 Infinite Loop, Cupertino, CA 95014', 'Used', '999.00', 'CA Sales tax', '74.93', 3, NULL, NULL),
('2013-12-14', 'Construction', 'Skid steer loaders', '1 Infinite Loop, Cupertino, CA 95014', 'For parts or not working', '899.00', 'CA Sales tax', '67.43', 4, NULL, NULL),
('2013-12-06', 'Construction', 'Bobtail dump trucks', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'Brand New', '21000.54', 'CA Sales tax', '1575.04', 5, NULL, NULL),
('2013-12-09', 'Construction', 'Front loaders\' engines', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'For parts or not working', '50.00', 'CA Sales tax', '3.75', 6, NULL, NULL),
('2013-11-10', 'Construction', 'Water trucks', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'For parts or not working', '300.00', 'CA Sales tax', '22.50', 7, NULL, NULL),
('2013-11-12', 'Mining', 'Shovels', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'Like Brand New', '230.00', 'CA Sales tax', '17.25', 8, NULL, NULL),
('2013-11-20', 'Plastics & Rubber', '2kgs; used rubber tires', '783 Park Ave, New York, NY 10021', 'Used', '200.00', 'NY Sales tax', '15.00', 9, NULL, NULL),
('2013-10-04', 'Mining', 'Assorted Tools', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'Used', '200.00', 'CA Sales tax', '15.00', 10, NULL, NULL),
('2013-10-12', 'Mining', 'Assorted Tools', '783 Park Ave, New York, NY 10021', 'Used', '1999.00', 'NY Sales tax', '177.41', 11, NULL, NULL),
('2013-12-09', 'Plastics & Rubber', '2kgs; used rubber tires', 'The Montreal Museum of Fine Arts, 1380 Rue Sherbrooke O, Montréal, QC H3G 1J5', 'Used', '15.00', 'CA Sales tax', '1.13', 12, NULL, NULL),
('2013-09-18', 'Plastics & Rubber', '20” plastic sheets', '1 Infinite Loop, Cupertino, CA 95014', 'Brand New', '200.00', 'CA Sales tax', '15.00', 13, NULL, NULL),
('2013-09-30', 'Mining', 'Assorted Tools', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'Like Brand New', '200.00', 'CA Sales tax', '15.00', 14, NULL, NULL),
('2013-12-30', 'Computer - Hardware', 'Dell XPS 13', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'Used', '200.00', 'CA Sales tax', '15.00', 15, NULL, NULL),
('2014-01-06', 'Computer - Hardware', 'Dell XPS 13', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'Used', '200.00', 'CA Sales tax', '15.00', 16, NULL, NULL),
('2014-01-07', 'Computer - Hardware', 'Dell XPS 13', '1 Infinite Loop, Cupertino, CA 95014', 'Used', '200.00', 'CA Sales tax', '15.00', 17, NULL, NULL),
('2014-02-03', 'Computer – Software', 'MS OFFICE 2016', '1 Infinite Loop, Cupertino, CA 95014', 'Brand New', '12.00', 'CA Sales tax', '0.90', 18, NULL, NULL),
('2014-02-18', 'Computer – Software', 'MS OFFICE 2016 Bulk', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'Brand New', '1500.00', 'CA Sales tax', '112.50', 19, NULL, NULL);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
