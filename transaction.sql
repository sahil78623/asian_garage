-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2018 at 09:56 AM
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
-- Database: `transaction`
--

-- --------------------------------------------------------

--
-- Table structure for table `mohammadsahil23786gmail`
--

CREATE TABLE `mohammadsahil23786gmail` (
  `tran_id` int(11) NOT NULL,
  `time_of_order` varchar(30) DEFAULT NULL,
  `manufacturer` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `cost` varchar(30) DEFAULT NULL,
  `pay_mode` varchar(30) DEFAULT NULL,
  `service_centre` varchar(30) DEFAULT NULL,
  `parts_replaced` varchar(100) DEFAULT NULL,
  `location_picked` varchar(30) DEFAULT NULL,
  `location_droped` varchar(30) DEFAULT NULL,
  `time_picked` varchar(30) DEFAULT NULL,
  `time_droped` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shashank143gmail`
--

CREATE TABLE `shashank143gmail` (
  `tran_id` int(11) NOT NULL,
  `time_of_order` varchar(30) DEFAULT NULL,
  `manufacturer` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `cost` varchar(30) DEFAULT NULL,
  `pay_mode` varchar(30) DEFAULT NULL,
  `service_centre` varchar(30) DEFAULT NULL,
  `parts_replaced` varchar(100) DEFAULT NULL,
  `location_picked` varchar(30) DEFAULT NULL,
  `location_droped` varchar(30) DEFAULT NULL,
  `time_picked` varchar(30) DEFAULT NULL,
  `time_droped` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mohammadsahil23786gmail`
--
ALTER TABLE `mohammadsahil23786gmail`
  ADD PRIMARY KEY (`tran_id`);

--
-- Indexes for table `shashank143gmail`
--
ALTER TABLE `shashank143gmail`
  ADD PRIMARY KEY (`tran_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mohammadsahil23786gmail`
--
ALTER TABLE `mohammadsahil23786gmail`
  MODIFY `tran_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shashank143gmail`
--
ALTER TABLE `shashank143gmail`
  MODIFY `tran_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
