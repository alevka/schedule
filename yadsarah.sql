-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 22, 2016 at 12:34 PM
-- Server version: 5.5.53-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yadsarah`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessory`
--

CREATE TABLE IF NOT EXISTS `accessory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `diagnoses`
--

CREATE TABLE IF NOT EXISTS `diagnoses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=13 ;

--
-- Dumping data for table `diagnoses`
--

INSERT INTO `diagnoses` (`id`, `name`) VALUES
(3, 'דיסארטריה'),
(4, 'דיספוניה'),
(6, 'אנארטריה'),
(8, 'אפזיה'),
(9, 'דיבור חטוף'),
(10, 'קשיים בשיום ושליפה'),
(11, 'לקוית שמיעה'),
(12, 'קושי בהפקת קול');

-- --------------------------------------------------------

--
-- Table structure for table `procedures`
--

CREATE TABLE IF NOT EXISTS `procedures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=12 ;

--
-- Dumping data for table `procedures`
--

INSERT INTO `procedures` (`id`, `name`) VALUES
(2, 'פרשת הש'),
(3, 'אקטואליה'),
(4, 'ציור'),
(5, 'מחשבים'),
(6, 'קלינאית תקשורת'),
(7, 'יצירה'),
(8, 'תזונה'),
(9, 'טיפול רגשי קבוצתי'),
(10, 'קרמיקה'),
(11, 'הרצאת רופא');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `procedure_id` int(11) NOT NULL,
  `week_day` enum('1','2','3','4','5') COLLATE utf8_bin NOT NULL,
  `lesson` enum('1','2','3') COLLATE utf8_bin NOT NULL,
  `comments` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`procedure_id`,`week_day`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `user_id`, `procedure_id`, `week_day`, `lesson`, `comments`) VALUES
(1, 1, 1, '2', '1', ''),
(2, 1, 2, '2', '2', ''),
(3, 1, 1, '3', '3', ''),
(4, 2, 1, '4', '1', ''),
(5, 2, 2, '4', '2', ''),
(6, 2, 1, '4', '3', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(60) COLLATE utf8_bin NOT NULL,
  `lname` varchar(60) COLLATE utf8_bin NOT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(100) COLLATE utf8_bin NOT NULL,
  `phone` varchar(15) COLLATE utf8_bin NOT NULL,
  `diagnose_id` int(11) NOT NULL,
  `comments` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `birthdate`, `address`, `phone`, `diagnose_id`, `comments`) VALUES
(1, 'מיה', 'פופוב', '1970-05-29', 'ראשון לציון סוקולוב  5/5', '0543255556', 1, ''),
(2, 'מיכאל', 'רובונד', '1972-11-29', 'ראשון לציון משה דיין 56/96', '0543253356', 2, ''),
(3, 'דוד', 'פורמן', '1979-12-12', 'ראשון לציון הרצל 94/5', '0503498588', 5, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
