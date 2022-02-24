-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2022 at 09:52 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `acl`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_acos_lft_rght` (`lft`,`rght`),
  KEY `idx_acos_alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 68),
(2, 1, NULL, NULL, 'Groups', 2, 13),
(3, 2, NULL, NULL, 'index', 3, 4),
(4, 2, NULL, NULL, 'view', 5, 6),
(5, 2, NULL, NULL, 'add', 7, 8),
(6, 2, NULL, NULL, 'edit', 9, 10),
(7, 2, NULL, NULL, 'delete', 11, 12),
(8, 1, NULL, NULL, 'Pages', 14, 17),
(9, 8, NULL, NULL, 'display', 15, 16),
(10, 1, NULL, NULL, 'Posts', 18, 29),
(11, 10, NULL, NULL, 'index', 19, 20),
(12, 10, NULL, NULL, 'view', 21, 22),
(13, 10, NULL, NULL, 'add', 23, 24),
(14, 10, NULL, NULL, 'edit', 25, 26),
(15, 10, NULL, NULL, 'delete', 27, 28),
(16, 1, NULL, NULL, 'Users', 30, 45),
(17, 16, NULL, NULL, 'index', 31, 32),
(18, 16, NULL, NULL, 'view', 33, 34),
(19, 16, NULL, NULL, 'add', 35, 36),
(20, 16, NULL, NULL, 'edit', 37, 38),
(21, 16, NULL, NULL, 'delete', 39, 40),
(22, 16, NULL, NULL, 'login', 41, 42),
(23, 16, NULL, NULL, 'logout', 43, 44),
(24, 1, NULL, NULL, 'Widgets', 46, 57),
(25, 24, NULL, NULL, 'index', 47, 48),
(26, 24, NULL, NULL, 'view', 49, 50),
(27, 24, NULL, NULL, 'add', 51, 52),
(28, 24, NULL, NULL, 'edit', 53, 54),
(29, 24, NULL, NULL, 'delete', 55, 56),
(30, 1, NULL, NULL, 'AclExtras', 58, 59),
(31, 1, NULL, NULL, 'DebugKit', 60, 67),
(32, 31, NULL, NULL, 'ToolbarAccess', 61, 66),
(33, 32, NULL, NULL, 'history_state', 62, 63),
(34, 32, NULL, NULL, 'sql_explain', 64, 65);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aros_lft_rght` (`lft`,`rght`),
  KEY `idx_aros_alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Group', 1, NULL, 1, 2),
(2, NULL, 'Group', 2, NULL, 3, 4),
(3, NULL, 'Group', 3, NULL, 5, 6),
(4, NULL, 'Group', 4, NULL, 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`),
  KEY `idx_aco_id` (`aco_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 1, 1, '1', '1', '1', '1'),
(2, 2, 1, '-1', '-1', '-1', '-1'),
(3, 2, 10, '1', '1', '1', '1'),
(4, 2, 24, '1', '1', '1', '1'),
(5, 3, 1, '-1', '-1', '-1', '-1'),
(6, 3, 13, '1', '1', '1', '1'),
(7, 3, 14, '1', '1', '1', '1'),
(8, 3, 27, '1', '1', '1', '1'),
(9, 3, 28, '1', '1', '1', '1'),
(10, 3, 23, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
(1, 'administrators', '2022-02-24 17:30:36', '2022-02-24 17:30:36'),
(2, 'manager', '2022-02-24 17:30:42', '2022-02-24 17:30:42'),
(3, 'users', '2022-02-24 17:30:46', '2022-02-24 17:30:46'),
(4, 'Grupa', '2022-02-24 19:02:35', '2022-02-24 19:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created`, `modified`) VALUES
(1, 1, 'Post od strane administratora', 'Ovo je post od strane admina', '2022-02-24 19:04:32', '2022-02-24 19:04:32'),
(2, 3, 'Post od usera pod brojem 3', 'Post od usera pod rednim brojem 3 ', '2022-02-24 21:11:57', '2022-02-24 21:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `group_id`, `created`, `modified`) VALUES
(1, 'admin', '8f8ef22a31e6e679a82f7d09e98400c0f3bf57f7', 1, '2022-02-24 17:38:52', '2022-02-24 17:38:52'),
(2, 'menadzer', 'ffd87a9da9ec1cb4d4e837c4dda0e3cca8430522', 1, '2022-02-24 17:40:10', '2022-02-24 17:40:10'),
(3, 'korisnik', 'f5049a37697023e9b910cccf2d4dce740209e0fe', 3, '2022-02-24 17:40:20', '2022-02-24 17:40:20'),
(4, 'milicakorisnik', '5c200d1677dfe7167ad5e3141c2387736bf4dd33', 3, '2022-02-24 17:41:29', '2022-02-24 17:41:29'),
(5, 'test', 'f8b320adff23506ff6ebb41314edfc3c952c44b2', 3, '2022-02-24 17:43:50', '2022-02-24 17:43:50'),
(6, 'grupa', '282c1569284d8c80795009f77d554fed00f57392', 4, '2022-02-24 19:02:46', '2022-02-24 19:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `part_no` varchar(12) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
