-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2018 at 09:57 AM
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
-- Database: `cruiser`
--

-- --------------------------------------------------------

--
-- Table structure for table `bajaj`
--

CREATE TABLE `bajaj` (
  `m_id` int(11) NOT NULL,
  `model_name` varchar(30) NOT NULL,
  `servicing_cost` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `basic_service_charge` int(11) NOT NULL,
  `additional_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ducati`
--

CREATE TABLE `ducati` (
  `m_id` int(11) NOT NULL,
  `model_name` varchar(30) NOT NULL,
  `servicing_cost` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `basic_service_charge` int(11) NOT NULL,
  `additional_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `harley_david_son`
--

CREATE TABLE `harley_david_son` (
  `m_id` int(11) NOT NULL,
  `model_name` varchar(30) NOT NULL,
  `servicing_cost` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `basic_service_charge` int(11) NOT NULL,
  `additional_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kawasaki`
--

CREATE TABLE `kawasaki` (
  `m_id` int(11) NOT NULL,
  `model_name` varchar(30) NOT NULL,
  `servicing_cost` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `basic_service_charge` int(11) NOT NULL,
  `additional_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `royal_enfield`
--

CREATE TABLE `royal_enfield` (
  `m_id` int(11) NOT NULL,
  `model_name` varchar(30) NOT NULL,
  `servicing_cost` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `basic_service_charge` int(11) NOT NULL,
  `additional_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suzuki`
--

CREATE TABLE `suzuki` (
  `m_id` int(11) NOT NULL,
  `model_name` varchar(30) NOT NULL,
  `servicing_cost` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `basic_service_charge` int(11) NOT NULL,
  `additional_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `triump`
--

CREATE TABLE `triump` (
  `m_id` int(11) NOT NULL,
  `model_name` varchar(30) NOT NULL,
  `servicing_cost` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `basic_service_charge` int(11) NOT NULL,
  `additional_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bajaj`
--
ALTER TABLE `bajaj`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `ducati`
--
ALTER TABLE `ducati`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `harley_david_son`
--
ALTER TABLE `harley_david_son`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `kawasaki`
--
ALTER TABLE `kawasaki`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `royal_enfield`
--
ALTER TABLE `royal_enfield`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `suzuki`
--
ALTER TABLE `suzuki`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `triump`
--
ALTER TABLE `triump`
  ADD PRIMARY KEY (`m_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bajaj`
--
ALTER TABLE `bajaj`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ducati`
--
ALTER TABLE `ducati`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `harley_david_son`
--
ALTER TABLE `harley_david_son`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kawasaki`
--
ALTER TABLE `kawasaki`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `royal_enfield`
--
ALTER TABLE `royal_enfield`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suzuki`
--
ALTER TABLE `suzuki`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `triump`
--
ALTER TABLE `triump`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
