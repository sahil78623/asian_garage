-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2018 at 09:58 AM
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
-- Database: `sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `aprila`
--

CREATE TABLE `aprila` (
  `m_id` int(11) NOT NULL,
  `model_name` varchar(30) NOT NULL,
  `servicing_cost` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `basic_service_charge` int(11) NOT NULL,
  `additional_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

--
-- Dumping data for table `bajaj`
--

INSERT INTO `bajaj` (`m_id`, `model_name`, `servicing_cost`, `mileage`, `basic_service_charge`, `additional_charge`) VALUES
(1, 'R S 200', 1500, 35, 100, 5),
(2, 'Dominor 400', 1600, 25, 100, 5);

-- --------------------------------------------------------

--
-- Table structure for table `beneli`
--

CREATE TABLE `beneli` (
  `m_id` int(11) NOT NULL,
  `model_name` varchar(30) NOT NULL,
  `servicing_cost` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `basic_service_charge` int(11) NOT NULL,
  `additional_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bmw`
--

CREATE TABLE `bmw` (
  `m_id` int(11) NOT NULL,
  `model_name` varchar(30) NOT NULL,
  `servicing_cost` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `basic_service_charge` int(11) NOT NULL,
  `additional_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dukati`
--

CREATE TABLE `dukati` (
  `m_id` int(11) NOT NULL,
  `model_name` varchar(30) NOT NULL,
  `servicing_cost` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `basic_service_charge` int(11) NOT NULL,
  `additional_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `honda`
--

CREATE TABLE `honda` (
  `m_id` int(11) NOT NULL,
  `model_name` varchar(30) NOT NULL,
  `servicing_cost` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `basic_service_charge` int(11) NOT NULL,
  `additional_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hyosung`
--

CREATE TABLE `hyosung` (
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
-- Table structure for table `ktm`
--

CREATE TABLE `ktm` (
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

-- --------------------------------------------------------

--
-- Table structure for table `yamaha`
--

CREATE TABLE `yamaha` (
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
-- Indexes for table `aprila`
--
ALTER TABLE `aprila`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `bajaj`
--
ALTER TABLE `bajaj`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `beneli`
--
ALTER TABLE `beneli`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `bmw`
--
ALTER TABLE `bmw`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `dukati`
--
ALTER TABLE `dukati`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `honda`
--
ALTER TABLE `honda`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `hyosung`
--
ALTER TABLE `hyosung`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `kawasaki`
--
ALTER TABLE `kawasaki`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `ktm`
--
ALTER TABLE `ktm`
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
-- Indexes for table `yamaha`
--
ALTER TABLE `yamaha`
  ADD PRIMARY KEY (`m_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aprila`
--
ALTER TABLE `aprila`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bajaj`
--
ALTER TABLE `bajaj`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `beneli`
--
ALTER TABLE `beneli`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bmw`
--
ALTER TABLE `bmw`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dukati`
--
ALTER TABLE `dukati`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `honda`
--
ALTER TABLE `honda`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hyosung`
--
ALTER TABLE `hyosung`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kawasaki`
--
ALTER TABLE `kawasaki`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ktm`
--
ALTER TABLE `ktm`
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

--
-- AUTO_INCREMENT for table `yamaha`
--
ALTER TABLE `yamaha`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
