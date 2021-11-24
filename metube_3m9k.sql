-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Host: mysql1.cs.clemson.edu
-- Generation Time: Nov 23, 2021 at 08:09 PM
-- Server version: 5.5.52-0ubuntu0.12.04.1
-- PHP Version: 5.5.9-1ubuntu4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `metube_3m9k`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `video_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `content` tinytext NOT NULL,
  `creation_datetime` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `video_id`, `user_id`, `content`, `creation_datetime`) VALUES
(4, 17, 29, 'New video guys', '2021-11-23'),
(5, 20, 29, 'it is hot here', '2021-11-23'),
(6, 17, 17, 'good job', '2021-11-23'),
(7, 13, 19, 'This is very informative!', '2021-11-23'),
(8, 16, 17, 'Very insightful video.', '2021-11-23');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `username` varchar(20) NOT NULL,
  `mediaid` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `type` varchar(20) NOT NULL,
  `playlist_id` int(10) NOT NULL,
  `path` varchar(255) NOT NULL,
  `category` varchar(20) NOT NULL,
  `description` tinytext NOT NULL,
  `comments` varchar(50) NOT NULL,
  `last_viewed_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_id_6` (`id`),
  KEY `media_id` (`id`),
  KEY `media_id_2` (`id`),
  KEY `media_id_3` (`id`),
  KEY `media_id_4` (`id`),
  KEY `media_id_5` (`id`),
  KEY `media_id_7` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `title`, `type`, `playlist_id`, `path`, `category`, `description`, `comments`, `last_viewed_datetime`, `user_id`) VALUES
(13, 'History repeats', 'video/mp4', 0, 'uploads/varun007/hist.mp4', 'Education', 'Check out history videos', '1', '2021-11-24 00:56:08', 27),
(14, 'Mcdonald history lecture', 'video/mp4', 0, 'uploads/varun007/hist+mcd.mp4', 'Education', 'A new lecture by historian Mcdonald', '1', '2021-11-24 00:32:42', 27),
(15, 'Bosch a new era', 'video/mp4', 0, 'uploads/samuel_god/bosch.mp4', 'News', 'Bosch a new venture that will lead the market', '1', '2021-11-24 00:33:58', 28),
(16, 'How language originated', 'video/mp4', 0, 'uploads/samuel_god/language.mp4', 'News', 'Tedx on language and importance of language', '1', '2021-11-24 00:41:25', 28),
(17, 'A covid vaccine- J&J', 'video/mp4', 0, 'uploads/yash_d/covid+vcc.mp4', 'News', 'A new vaccine by j and j and It IS ONE SHOTTTT', '1', '2021-11-23 21:47:16', 29),
(18, 'mRNA vaccines', 'video/mp4', 0, 'uploads/Aditya/mRNA+vaccines.mp4', 'News', 'mRNA vaccines and the way they work ', '1', '2021-11-23 21:00:14', 17),
(19, 'Can soap kill covid?', 'video/mp4', 0, 'uploads/Aditya/soap+kills+covid.mp4', 'News', 'Can the coronavirus die when used soap? \r\nLet us check it ', '0', '2021-11-23 21:01:38', 17),
(20, 'Climate change', 'video/mp4', 0, 'uploads/ashwini_bala/Climate+change.mp4', 'News', 'Is climate change affecting us? What can we do , let us check together', '1', '2021-11-23 21:22:23', 19),
(21, 'The variants of covid', 'video/mp4', 0, 'uploads/ashwini_bala/covidvari.mp4', 'News', 'Check out the variants of the covid19 pandemic.', '0', '2021-11-23 21:15:37', 19),
(22, 'National song of INDIA', 'audio/mpeg', 0, 'uploads/Aditya/national-song-of-india-best-patriotic-song.mp3', 'Music', 'It is one of the national songs of india', '0', '2021-11-24 00:38:02', 17);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_send_id` int(10) NOT NULL,
  `user_receive_id` int(10) NOT NULL,
  `send_datetime` date NOT NULL,
  `read` tinyint(1) NOT NULL,
  `title` varchar(20) NOT NULL,
  `content` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1753887656 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_send_id`, `user_receive_id`, `send_datetime`, `read`, `title`, `content`) VALUES
(118475941, 29, 17, '2021-11-23', 0, 'help', 'I am new , please help'),
(171549200, 17, 29, '2021-11-23', 0, 'RE: 2021-11-23', 'No i cannot'),
(293796795, 19, 28, '2021-11-23', 0, 'RE: 2021-11-23', 'Thank you'),
(858126693, 27, 19, '2021-11-23', 0, 'RE: 2021-11-23', 'Sure'),
(938970290, 19, 17, '2021-11-23', 0, 'good video', 'I like the videos you post!'),
(970792162, 28, 19, '2021-11-23', 1, 'good video', 'Nice vdeos'),
(1753887655, 19, 27, '2021-11-23', 0, 'hey', 'Hi, want to collab?');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE IF NOT EXISTS `playlist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `creation_datetime` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `playlist_id` (`id`),
  KEY `playlist_id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `title`, `user_id`, `creation_datetime`) VALUES
(19, 'Favorites', 17, '2021-11-22'),
(29, 'Favorites', 27, '2021-11-23'),
(30, 'Favorites', 28, '2021-11-23'),
(31, 'Favorites', 29, '2021-11-23'),
(32, 'Favorites', 30, '2021-11-23'),
(33, 'news', 29, '2021-11-23'),
(34, 'Education', 19, '2021-11-23'),
(35, 'news', 17, '2021-11-23'),
(36, 'Favorites', 31, '2021-11-23'),
(37, 'Favorites', 32, '2021-11-23');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_entry`
--

CREATE TABLE IF NOT EXISTS `playlist_entry` (
  `video_id` int(10) NOT NULL,
  `playlist_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlist_entry`
--

INSERT INTO `playlist_entry` (`video_id`, `playlist_id`) VALUES
(6, 0),
(7, 17),
(22, 19),
(17, 19);

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE IF NOT EXISTS `subscriber` (
  `subscriber_id` int(10) NOT NULL,
  `subscribeie_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`subscriber_id`, `subscribeie_id`) VALUES
(16, 12),
(12, 16),
(17, 15),
(23, 19),
(25, 23),
(17, 19),
(17, 27),
(19, 28),
(29, 30),
(28, 17),
(28, 27),
(17, 28);

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE IF NOT EXISTS `subscription` (
  `channel_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `channel_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`channel_id`, `user_id`, `channel_name`) VALUES
(2, 1, 'wangjinrui'),
(3, 1, 'wang');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL,
  `video_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `tag`, `video_id`) VALUES
(7, 'history', 13),
(8, 'education', 13),
(9, 'history', 14),
(10, 'education', 14),
(11, 'news', 15),
(12, 'market', 15),
(13, 'language', 16),
(14, 'news', 16),
(15, 'vaccine', 17),
(16, 'news', 17),
(17, 'covid', 17),
(18, 'covid', 18),
(19, 'news', 18),
(20, 'covid', 19),
(21, 'news', 19),
(22, 'news', 20),
(23, 'climate', 20),
(24, 'covid', 21),
(25, 'news', 21),
(26, 'India', 22),
(27, 'music', 22);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `password` char(32) NOT NULL,
  `username` varchar(40) NOT NULL,
  `join_datetime` date NOT NULL,
  `profile_body` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_2` (`id`),
  UNIQUE KEY `user_name` (`username`),
  KEY `user_id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `username`, `join_datetime`, `profile_body`) VALUES
(17, 'as@123', 'Aditya', '2021-11-22', 'Hey i am Aditya!! '),
(19, 'dbms123', 'ashwini_bala', '2021-11-23', 'Hi this is a science channel! '),
(27, 'bolt007', 'varun007', '2021-11-23', ''),
(28, 'god1234', 'samuel_god', '2021-11-23', ''),
(29, 'dighe1234', 'yash_d', '2021-11-23', ''),
(30, 'vg1', 'vg', '2021-11-23', 'Your profile body is blank!  You should create one'),
(31, 'apurva@123', 'apurva', '2021-11-23', ''),
(32, 'iamcrazy123', 'essha', '2021-11-23', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
