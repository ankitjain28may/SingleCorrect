-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 11, 2014 at 02:48 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mcqdata`
--
CREATE DATABASE IF NOT EXISTS `mcqdata` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mcqdata`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'root', '22aad504937080f0b5f15601518ca821');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `Number` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `branch` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `score` int(10) NOT NULL,
  `Logout_status` int(1) NOT NULL DEFAULT '1',
  `Year` int(11) NOT NULL,
  PRIMARY KEY (`Number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`Number`, `gender`, `name`, `branch`, `email`, `password`, `score`, `Logout_status`, `Year`) VALUES
(1, 'Male', 'Prashant Chaudhary', 'CS1', 'a@a.com', '0cc175b9c0f1b6a831c399e269772661', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `enable_mcq`
--

CREATE TABLE IF NOT EXISTS `enable_mcq` (
  `mcq_state` tinyint(1) NOT NULL,
  UNIQUE KEY `mcq_state` (`mcq_state`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enable_mcq`
--

INSERT INTO `enable_mcq` (`mcq_state`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `marking_scheme`
--

CREATE TABLE IF NOT EXISTS `marking_scheme` (
  `negative_marking` tinyint(1) NOT NULL,
  `negative` int(3) NOT NULL,
  `positive` int(3) NOT NULL,
  UNIQUE KEY `negative_marking` (`negative_marking`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marking_scheme`
--

INSERT INTO `marking_scheme` (`negative_marking`, `negative`, `positive`) VALUES
(0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ans` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Table structure for table `time_and_questions`
--

CREATE TABLE IF NOT EXISTS `time_and_questions` (
  `serial_num` int(11) NOT NULL AUTO_INCREMENT,
  `no_of_questions` int(11) NOT NULL,
  `timer` int(11) NOT NULL,
  PRIMARY KEY (`serial_num`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `time_and_questions`
--

INSERT INTO `time_and_questions` (`serial_num`, `no_of_questions`, `timer`) VALUES
(1, 10, 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
