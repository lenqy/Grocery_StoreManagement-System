-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 05:26 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `items_tbl`
--

CREATE TABLE `items_tbl` (
  `ItemId` int(11) NOT NULL,
  `Item_name` varchar(50) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `itemPrice` int(11) NOT NULL,
  `item_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items_tbl`
--

INSERT INTO `items_tbl` (`ItemId`, `Item_name`, `item_qty`, `itemPrice`, `item_category`) VALUES
(1, 'm', 2, 2, 'Vegetables'),
(2, 'banana', 2248, 1333, 'Vegetables'),
(5, 'juice', 998, 20, 'Beverages'),
(6, 'fsdgdfydgytu', 34, 8, 'Frozen Foods');

-- --------------------------------------------------------

--
-- Table structure for table `seller_transaction`
--

CREATE TABLE `seller_transaction` (
  `transaction` int(11) NOT NULL,
  `inventory` int(11) NOT NULL,
  `quantity` int(20) NOT NULL,
  `Selling_Price` int(20) NOT NULL,
  `Total_Price` int(20) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sellstable`
--

CREATE TABLE `sellstable` (
  `Bill_ID` int(11) NOT NULL,
  `SellersID` int(11) NOT NULL,
  `SellersName` varchar(50) NOT NULL,
  `Bdate` varchar(50) NOT NULL,
  `Amount` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellstable`
--

INSERT INTO `sellstable` (`Bill_ID`, `SellersID`, `SellersName`, `Bdate`, `Amount`) VALUES
(1, 1, 'SellersName', '01-12-2022', 12),
(2, 1, 'SellersName', '01-12-2022', 5332),
(3, 1, 'SellersName', '01-12-2022', 2666),
(4, 1, 'SellersName', '02-12-2022', 1333),
(5, 0, '.', '02-12-2022', 1333),
(6, 2, 'Jomel', '02-12-2022', 3999),
(7, 2, 'Jomel', '02-12-2022', 20007),
(8, 2, 'Jomel', '02-12-2022', 40),
(9, 2, 'Jomel', '03-12-2022', 120),
(10, 7, 'richelle', '07-12-2022', 3999),
(11, 7, 'richelle', '07-12-2022', 87978);

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`id`, `f_name`, `last_name`, `email`, `password`, `Gender`, `Role`, `status`) VALUES
(1, 'Elena', 'Fuentes', 'elena@gmail.com', 'elena123', 'Female', 'Admin', 'Active'),
(2, 'Jomel', 'Calungsod', 'jomel@gmail.com', 'jomel123', 'Male', 'Seller', 'Active'),
(4, 'Seth', 'obenita', 'seth@gmail.com', 'seth123', 'Female', 'Seller', 'Active'),
(5, 'Thriezia', 'Lebosada', 'lebosada@gmail.com', '123', 'Female', 'Admin', 'Active'),
(7, 'richelle', 'f', 'rich@gail.com', '123', 'fe', 'Seller', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items_tbl`
--
ALTER TABLE `items_tbl`
  ADD UNIQUE KEY `ItemId` (`ItemId`);

--
-- Indexes for table `sellstable`
--
ALTER TABLE `sellstable`
  ADD PRIMARY KEY (`Bill_ID`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items_tbl`
--
ALTER TABLE `items_tbl`
  MODIFY `ItemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sellstable`
--
ALTER TABLE `sellstable`
  MODIFY `Bill_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
