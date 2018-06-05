-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2018 at 10:44 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fifa`
--

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(3) NOT NULL,
  `home_team` int(2) NOT NULL,
  `away_team` int(2) NOT NULL,
  `match_date` date NOT NULL,
  `match_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `home_team`, `away_team`, `match_date`, `match_time`) VALUES
(1, 24, 25, '2018-06-14', '18:00:00'),
(2, 9, 32, '2018-06-15', '15:00:00'),
(3, 18, 14, '2018-06-15', '18:00:00'),
(4, 23, 28, '2018-06-15', '21:00:00'),
(5, 11, 2, '2018-06-16', '13:00:00'),
(6, 1, 13, '2018-06-16', '16:00:00'),
(7, 21, 8, '2018-06-16', '19:00:00'),
(8, 7, 19, '2018-06-16', '22:00:00'),
(9, 6, 27, '2018-06-17', '15:00:00'),
(10, 12, 17, '2018-06-17', '18:00:00'),
(11, 4, 30, '2018-06-17', '21:00:00'),
(12, 29, 16, '2018-06-18', '15:00:00'),
(13, 3, 20, '2018-06-18', '18:00:00'),
(14, 31, 10, '2018-06-18', '21:00:00'),
(15, 5, 15, '2018-06-19', '15:00:00'),
(16, 22, 26, '2018-06-19', '18:00:00'),
(17, 24, 9, '2018-06-19', '21:00:00'),
(18, 23, 18, '2018-06-20', '15:00:00'),
(19, 32, 25, '2018-06-20', '18:00:00'),
(20, 14, 28, '2018-06-20', '21:00:00'),
(21, 8, 2, '2018-06-21', '15:00:00'),
(22, 11, 21, '2018-06-21', '18:00:00'),
(23, 1, 7, '2018-06-21', '21:00:00'),
(24, 4, 6, '2018-06-22', '15:00:00'),
(25, 19, 13, '2018-06-22', '18:00:00'),
(26, 27, 30, '2018-06-22', '21:00:00'),
(27, 3, 31, '2018-06-23', '15:00:00'),
(28, 16, 17, '2018-06-23', '18:00:00'),
(29, 12, 29, '2018-06-23', '21:00:00'),
(30, 10, 20, '2018-06-24', '15:00:00'),
(31, 15, 26, '2018-06-24', '18:00:00'),
(32, 22, 5, '2018-06-24', '21:00:00'),
(33, 32, 24, '2018-06-25', '17:00:00'),
(34, 25, 9, '2018-06-25', '17:00:00'),
(35, 28, 18, '2018-06-25', '21:00:00'),
(36, 14, 23, '2018-06-25', '21:00:00'),
(37, 2, 21, '2018-06-26', '17:00:00'),
(38, 8, 11, '2018-06-26', '17:00:00'),
(39, 19, 1, '2018-06-26', '21:00:00'),
(40, 13, 7, '2018-06-26', '21:00:00'),
(41, 16, 12, '2018-06-27', '17:00:00'),
(42, 17, 29, '2018-06-27', '17:00:00'),
(43, 27, 4, '2018-06-27', '21:00:00'),
(44, 30, 6, '2018-06-27', '21:00:00'),
(45, 15, 22, '2018-06-28', '17:00:00'),
(46, 26, 5, '2018-06-28', '17:00:00'),
(47, 20, 31, '2018-06-28', '21:00:00'),
(48, 10, 3, '2018-06-28', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `predictions`
--

CREATE TABLE `predictions` (
  `id` int(5) NOT NULL,
  `user_id` int(3) DEFAULT NULL,
  `match_id` int(3) DEFAULT NULL,
  `home_prediction` int(2) DEFAULT NULL,
  `away_prediction` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `predictions`
--

INSERT INTO `predictions` (`id`, `user_id`, `match_id`, `home_prediction`, `away_prediction`) VALUES
(1, 1, 2, 2, 2),
(2, 2, 1, 1, 1),
(65, 2, 2, 7, 5),
(66, 2, 3, 2, 1),
(67, 2, 8, 1, 1),
(68, 2, 4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `match_id` int(2) NOT NULL,
  `home_score` int(2) NOT NULL,
  `away_score` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`match_id`, `home_score`, `away_score`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(2) NOT NULL,
  `team` varchar(50) COLLATE utf8_lithuanian_ci NOT NULL,
  `abbreviation` varchar(8) COLLATE utf8_lithuanian_ci NOT NULL,
  `continent` varchar(50) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `group` varchar(1) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `flag` varchar(100) COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `team`, `abbreviation`, `continent`, `group`, `flag`) VALUES
(1, 'Argentina', 'ARG', 'South America', 'D', 'Argentina-icon.png'),
(2, 'Australia', 'AUS', 'Asia', 'C', 'Australia-icon.png'),
(3, 'Belgium', 'BEL', 'Europe', 'G', 'Belgium-icon.png'),
(4, 'Brazil', 'BRA', 'South America', 'E', 'Brazil-icon.png'),
(5, 'Colombia', 'COL', 'South America', 'H', 'Colombia-icon.png'),
(6, 'Costa Rica', 'CRI', 'North, Central America and Caribbean', 'E', 'Costa-rica-icon.png'),
(7, 'Croatia', 'HRV', 'Europe', 'D', 'Croatia-icon.png'),
(8, 'Denmark', 'DNK', 'Europe', 'C', 'Denmark-icon.png'),
(9, 'Egypt', 'EGY', 'Africa', 'A', 'Egypt-icon.png'),
(10, 'England', 'ENG', 'Europe', 'G', 'England-icon.png'),
(11, 'France', 'FRA', 'Europe', 'C', 'France-icon.png'),
(12, 'Germany', 'DEU', 'Europe', 'F', 'Germany-icon.png'),
(13, 'Iceland', 'ISL', 'Europe', 'D', 'Iceland-icon.png'),
(14, 'IR Iran', 'IRN', 'Asia', 'B', 'Iran-icon.png'),
(15, 'Japan', 'JPN', 'Asia', 'H', 'Japan-icon.png'),
(16, 'Korea Republic', 'KOR', 'Asia', 'F', 'South-Korea-icon.png'),
(17, 'Mexico', 'MEX', 'North, Central America and Caribbean', 'F', 'Mexico-icon.png'),
(18, 'Morocco', 'MAR', 'Africa', 'B', 'Morocco-icon.png'),
(19, 'Nigeria', 'NGA', 'Africa', 'D', 'Nigeria-icon.png'),
(20, 'Panama', 'PAN', 'North, Central America and Caribbean', 'G', 'Panama-icon.png'),
(21, 'Peru', 'PER', 'South America', 'C', 'Peru-icon.png'),
(22, 'Poland', 'POL', 'Europe', 'H', 'Poland-icon.png'),
(23, 'Portugal', 'PRT', 'Europe', 'B', 'Portugal-icon.png'),
(24, 'Russia', 'RUS', 'Europe', 'A', 'Russia-icon.png'),
(25, 'Saudi Arabia', 'SAU', 'Asia', 'A', 'Saudi-arabia-icon.png'),
(26, 'Senegal', 'SEN', 'Africa', 'H', 'Senegal-icon.png'),
(27, 'Serbia', 'SRB', 'Europe', 'E', 'Serbia-icon.png'),
(28, 'Spain', 'ESP', 'Europe', 'B', 'Spain-icon.png'),
(29, 'Sweden', 'SWE', 'Europe', 'F', 'Sweden-icon.png'),
(30, 'Switzerland', 'CHE', 'Europe', 'E', 'Switzerland-icon.png'),
(31, 'Tunisia', 'TUN', 'Africa', 'G', 'Tunisia-icon.png'),
(32, 'Uruguay', 'URY', 'South America', 'A', 'Uruguay-icon.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8_lithuanian_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_lithuanian_ci NOT NULL,
  `user_type` varchar(10) COLLATE utf8_lithuanian_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `user_type`, `password`) VALUES
(1, 'admin', 'admin@admin.com', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'a', 'a@a.a', 'user', '0cc175b9c0f1b6a831c399e269772661'),
(3, 'b', 'b@b.bb', 'user', '92eb5ffee6ae2fec3ad71c777531578f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `predictions`
--
ALTER TABLE `predictions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`match_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `predictions`
--
ALTER TABLE `predictions`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
