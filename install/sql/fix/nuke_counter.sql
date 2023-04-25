-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2023 at 02:08 AM
-- Server version: 10.3.38-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev4_402`
--

-- --------------------------------------------------------

--
-- Table structure for table `nuke_counter`
--

DROP TABLE IF EXISTS `nuke_counter`;
CREATE TABLE `nuke_counter` (
  `type` varchar(80) NOT NULL DEFAULT '',
  `var` varchar(80) NOT NULL DEFAULT '',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `nuke_counter`
--

INSERT INTO `nuke_counter` (`type`, `var`, `count`) VALUES
('total', 'hits', 771498),
('browser', 'Avant', 0),
('browser', 'Camino', 0),
('browser', 'Crazy', 0),
('browser', 'DEVONtech', 0),
('browser', 'Dillo', 0),
('browser', 'Galeon', 0),
('browser', 'ELinks', 0),
('browser', 'Epiphany', 0),
('browser', 'Firefox', 0),
('browser', 'iRider', 0),
('browser', 'K-Meleon', 0),
('browser', 'Konqueror', 0),
('browser', 'Lynx', 0),
('browser', 'Maxthon', 0),
('browser', 'Mozilla', 0),
('browser', 'MSIE', 173),
('browser', 'MultiZilla', 0),
('browser', 'NetCaptor', 0),
('browser', 'Netscape', 1),
('browser', 'OmniWeb', 0),
('browser', 'Opera', 0),
('browser', 'Safari', 417),
('browser', 'Shiira', 0),
('browser', 'Voyager', 0),
('browser', 'w3m', 0),
('browser', 'WAP', 1),
('browser', 'WebWasher', 0),
('browser', 'Bot', 9004),
('browser', 'Other', 733412),
('os', 'Windows', 695),
('os', 'Linspire', 0),
('os', 'Linux', 2198),
('os', 'Mac', 26106),
('os', 'FreeBSD', 2),
('os', 'SunOS', 0),
('os', 'IRIX', 0),
('os', 'OS/2', 0),
('os', 'AIX', 0),
('os', 'Other', 742497);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nuke_counter`
--
ALTER TABLE `nuke_counter`
  ADD KEY `var` (`var`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
