-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 07:35 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `androiddeft`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(10) NOT NULL,
  `itemName` varchar(50) NOT NULL,
  `itemID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartID`, `itemName`, `itemID`) VALUES
(2, 'Lense wide', 5),
(4, '800mm lense', 7),
(6, 'drone', 9);

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event` varchar(50) NOT NULL,
  `jobNumber` varchar(10) NOT NULL,
  `department` varchar(20) NOT NULL,
  `empNo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `date`, `event`, `jobNumber`, `department`, `empNo`) VALUES
(1, '2020-01-15 08:15:28', 'leo 3x3', '1', 'jokers films', '1'),
(2, '2020-01-15 08:15:28', 'lavenro wedin expo', '2', 'heavenly made', '2');

-- --------------------------------------------------------

--
-- Table structure for table `historyitemmap`
--

CREATE TABLE `historyitemmap` (
  `historyID` int(10) NOT NULL,
  `itemID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `item_type` varchar(256) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_model` varchar(50) NOT NULL,
  `item_qr` varchar(500) NOT NULL,
  `item_status` varchar(20) NOT NULL,
  `item_capacity` varchar(25) NOT NULL,
  `item_image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `item_type`, `item_name`, `item_model`, `item_qr`, `item_status`, `item_capacity`, `item_image`) VALUES
(1, 'camera', 'Canon', 'A365', '2001618861684', 'Unavailable', '20', 'asdasdasd'),
(7, 'memory card', 'Memory card', 'amd', '1517151517884', 'Unavailable', '23', 'asdsadas'),
(8, 'sdasd', 'Drone', 'ABC', '123', 'Available', '0', 'sdasd'),
(9, 'light', 'Canon', 'flasher', '123f', 'Unavailable', '32', 'sadas');

-- --------------------------------------------------------

--
-- Table structure for table `percart`
--

CREATE TABLE `percart` (
  `pcartID` int(11) NOT NULL,
  `pitemNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `email`, `password`, `name`, `dept`, `type`) VALUES
(1, 'yasas9696', 'yasas9696@gmail.com', '123', 'yas k', 'films', 'admin'),
(3, 'kulik', 'kulinda.jokersarmy@gmail.com', '123', '', 'Cyber Labs', 'Department Head'),
(4, 'barana', 'barana.jokersarmy@gmail.com', '123', '', 'CEO', 'Candy Factory Group'),
(5, 'harsha', 'harsha.jokersarmy@gmail.com', '123', '', 'Jokers Films', 'department head'),
(6, 'mac123', 'mac@gmail.com', '123', '', 'it', 'engineer'),
(7, 'sfds', 'dfs', 'dsfsdf', 'sdfsf', 'sfsf', 'sdfs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
