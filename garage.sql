-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2018 at 09:34 AM
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
-- Database: `garage`
--

-- --------------------------------------------------------

--
-- Table structure for table `cruiser_bikes`
--

CREATE TABLE `cruiser_bikes` (
  `b_id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cruiser_bikes`
--

INSERT INTO `cruiser_bikes` (`b_id`, `name`) VALUES
(1, 'Suzuki'),
(2, 'Bajaj'),
(3, 'Royal Enfield'),
(4, 'Kawasaki'),
(5, 'Harley David Son'),
(6, 'Ducati'),
(7, 'Ttruimp');

-- --------------------------------------------------------

--
-- Table structure for table `sports_bike`
--

CREATE TABLE `sports_bike` (
  `b_id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_bike`
--

INSERT INTO `sports_bike` (`b_id`, `name`) VALUES
(1, 'Bajaj'),
(2, 'Yamaha'),
(3, 'KTM'),
(4, 'Honda'),
(5, 'Suzuki'),
(6, 'Hyosung'),
(7, 'Kawasaki'),
(8, 'Truimp'),
(9, 'BMW'),
(10, 'Dukati'),
(11, 'Benrli'),
(12, 'Aprila');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `phone`, `password`) VALUES
(3, 'shashank', 'shashank143@gmail.com', 7036917729, 'cool'),
(4, 'sahil', 'mohammadsahil23786@gmail.com', 8919543797, '78623');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cruiser_bikes`
--
ALTER TABLE `cruiser_bikes`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `sports_bike`
--
ALTER TABLE `sports_bike`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cruiser_bikes`
--
ALTER TABLE `cruiser_bikes`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sports_bike`
--
ALTER TABLE `sports_bike`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
