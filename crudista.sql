-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2025 at 05:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crudista`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `lastname`, `firstname`, `email`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Diop', 'Mouhamed', 'MouhamedDiop@esp.sn', 'Dr', '2025-03-12 18:30:27', '2025-03-12 22:55:20'),
(2, 'Moriarty', 'William ', 'williammoriarty@esp.sn', 'Prof', '2025-03-12 18:38:23', '2025-03-12 22:35:26'),
(3, 'Kurosaki', 'Ichigo', 'kurosaki@esp.sn', 'Dr', '2025-03-12 23:01:13', '2025-03-12 23:10:26'),
(4, 'Isagi', 'Yoichi', 'isagi@esp.sn', 'Mr', '2025-03-12 23:05:25', '2025-03-12 23:44:46'),
(5, 'Ba', 'Mandicou', 'mandicouba@esp.sn', 'Dr', '2025-03-12 23:06:54', '2025-03-12 23:45:22'),
(6, 'Fall', 'Ibrahima', 'ibrahima@esp.sn', 'Dr', '2025-03-12 23:07:43', '2025-03-12 23:07:43'),
(7, 'Yagami', 'Light', 'kira@esp.sn', 'Mr', '2025-03-12 23:08:14', '2025-03-12 23:45:39'),
(8, 'Sherlock', 'Holmes', 'holmes@esp.sn', 'Prof', '2025-03-12 23:08:54', '2025-03-12 23:46:32'),
(9, 'Uzumaki', 'Naruto', 'naruto@esp.sn', 'Mr', '2025-03-12 23:11:45', '2025-03-12 23:47:35'),
(10, 'Uchiha', 'Madara', 'Madara@esp.sn', 'Dr', '2025-03-12 23:16:37', '2025-03-13 04:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `password`
--

CREATE TABLE `password` (
  `id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password`
--

INSERT INTO `password` (`id`, `password`) VALUES
(2, 'ce96c337d479ed0581ec65bbb4d54398'),
(3, '0df34be319d2ffb68c3ac8ff6fabeace'),
(4, 'b322019fba34491f2ea1957ad7f19dc7'),
(5, '0f9a985d307d70a2a7c7cbd60009e16c'),
(6, 'd726fe05cdd54b1b9a8d407b1516c75f'),
(7, '7a61721ed4832664aa3ce8e2234dcdb4'),
(8, '4102e8103ea89d32f745de41c4e711a0'),
(9, 'cf9ee5bcb36b4936dd7064ee9b2f139e'),
(10, 'ca0ac6f71f426aa63a4bbfabea06d1a2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password`
--
ALTER TABLE `password`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `password`
--
ALTER TABLE `password`
  ADD CONSTRAINT `password_ibfk_1` FOREIGN KEY (`id`) REFERENCES `authors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
