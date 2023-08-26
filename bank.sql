-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 12:23 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `admin` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(100) NOT NULL,
  `bankname` varchar(1000) NOT NULL,
  `head` varchar(1000) NOT NULL,
  `cdate` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `bankname`, `head`, `cdate`) VALUES
(3, 'SBI bank', 'Mangalore', '2021-10-11'),
(4, 'Canara Bank', 'Mangalore', '2017-06-08'),
(5, 'Bank of Broda', 'Gujrath', '2022-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(100) NOT NULL,
  `ifsc` varchar(1000) NOT NULL,
  `bankname` varchar(1000) NOT NULL,
  `city` varchar(1000) NOT NULL,
  `micr` varchar(1000) NOT NULL,
  `cdate` varchar(1000) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `ifsc`, `bankname`, `city`, `micr`, `cdate`, `branch`) VALUES
(3, '45875gthy', '3', 'Mangalore', '345670rf', '2014-11-06', 'Silvergate'),
(6, '78RE8545874', '4', 'Mangalore', 'REF3533453', '2023-01-10', 'Shivabagh'),
(7, 'CANARA7834BA142', '4', 'Mysore', 'CANA34MIDR12', '2023-01-04', 'Lalbhagh'),
(8, 'FGRT4567866', '5', 'Mangalore', '345670ERDS', '2022-12-30', 'Neharunagar');

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `id` int(100) NOT NULL,
  `bankuser` varchar(1000) NOT NULL,
  `locationid` varchar(1000) NOT NULL,
  `sdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`id`, `bankuser`, `locationid`, `sdate`) VALUES
(13, 'deepthi@gmail.com', '3', '2023-01-12 08:07:25'),
(14, 'deepthi@gmail.com', '3', '2023-01-12 08:07:25'),
(15, 'deepthi@gmail.com', '3', '2023-01-12 10:13:16'),
(16, 'deepthi@gmail.com', '3', '2023-01-12 10:13:16'),
(17, 'deepthi@gmail.com', '3', '2023-01-12 11:00:00'),
(18, 'deepthi@gmail.com', '3', '2023-01-12 11:00:00'),
(19, 'deepthi@gmail.com', '6', '2023-01-12 11:00:25'),
(20, 'deepthi@gmail.com', '6', '2023-01-12 11:00:25'),
(21, 'deepthi@gmail.com', '6', '2023-01-12 11:06:47'),
(22, 'deepthi@gmail.com', '6', '2023-01-12 11:06:47'),
(23, 'deepthi@gmail.com', '6', '2023-01-12 11:07:04'),
(24, 'deepthi@gmail.com', '6', '2023-01-12 11:07:04'),
(25, 'deepthi@gmail.com', '6', '2023-01-12 11:07:25'),
(26, 'deepthi@gmail.com', '6', '2023-01-12 11:07:25'),
(27, 'deepthi@gmail.com', '6', '2023-01-12 11:09:02'),
(28, 'deepthi@gmail.com', '6', '2023-01-12 11:09:02'),
(29, 'deepthi@gmail.com', 'Canara Bank', '2023-01-12 11:11:23'),
(30, 'deepthi@gmail.com', 'Canara Bank', '2023-01-12 11:11:23'),
(31, 'deepthi@gmail.com', 'Canara Bank', '2023-01-12 11:11:35'),
(32, 'deepthi@gmail.com', 'Canara Bank', '2023-01-12 11:11:35'),
(33, 'deepthi@gmail.com', '6', '2023-01-12 11:12:12'),
(34, 'deepthi@gmail.com', '6', '2023-01-12 11:12:12'),
(35, 'deepthi@gmail.com', '6', '2023-01-12 11:13:45'),
(36, 'deepthi@gmail.com', '6', '2023-01-12 11:13:45'),
(37, 'deepthi@gmail.com', '6', '2023-01-12 11:13:57'),
(38, 'deepthi@gmail.com', '6', '2023-01-12 11:13:57'),
(39, 'deepthi@gmail.com', '6', '2023-01-12 11:13:58'),
(40, 'deepthi@gmail.com', '6', '2023-01-12 11:13:58'),
(41, 'deepthi@gmail.com', '6', '2023-01-12 11:14:10'),
(42, 'deepthi@gmail.com', '6', '2023-01-12 11:14:10'),
(43, 'deepthi@gmail.com', '6', '2023-01-12 11:14:50'),
(44, 'deepthi@gmail.com', '6', '2023-01-12 11:14:50'),
(45, 'deepthi@gmail.com', '6', '2023-01-12 11:16:11'),
(46, 'deepthi@gmail.com', '6', '2023-01-12 11:16:12'),
(47, 'deepthi@gmail.com', '6', '2023-01-12 11:16:25'),
(48, 'deepthi@gmail.com', '6', '2023-01-12 11:16:25'),
(49, 'deepthi@gmail.com', '6', '2023-01-12 11:16:41'),
(50, 'deepthi@gmail.com', '6', '2023-01-12 11:16:41'),
(51, 'deepthi@gmail.com', '6', '2023-01-12 11:17:31'),
(52, 'deepthi@gmail.com', '6', '2023-01-12 11:17:32'),
(53, 'deepthi@gmail.com', '6', '2023-01-12 11:17:51'),
(54, 'deepthi@gmail.com', '6', '2023-01-12 11:17:51'),
(55, 'deepthi@gmail.com', '6', '2023-01-12 11:18:44'),
(56, 'deepthi@gmail.com', '6', '2023-01-12 11:18:44'),
(57, 'deepthi@gmail.com', '6', '2023-01-12 11:19:17'),
(58, 'deepthi@gmail.com', '6', '2023-01-12 11:19:17'),
(59, 'deepthi@gmail.com', '8', '2023-01-12 11:20:28'),
(60, 'deepthi@gmail.com', '8', '2023-01-12 11:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `accountno` varchar(1000) NOT NULL,
  `dob` varchar(1000) NOT NULL,
  `phoneno` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `qus` varchar(1000) NOT NULL,
  `ans` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `accountno`, `dob`, `phoneno`, `email`, `password`, `qus`, `ans`) VALUES
(1, 'Deepthi', '4441512121251241124', '1999-04-12', '8527419632', 'deepthi@gmail.com', '1234', 'What is your favorite color?', 'pink');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `search`
--
ALTER TABLE `search`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
