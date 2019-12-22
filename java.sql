-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 22, 2019 at 10:36 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `Username` varchar(18) NOT NULL,
  `FirstName` varchar(18) NOT NULL,
  `LastName` varchar(18) NOT NULL,
  `Password` varchar(18) NOT NULL,
  `Role` int(1) NOT NULL DEFAULT '2',
  `SUser` varchar(18) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Username`, `FirstName`, `LastName`, `Password`, `Role`, `SUser`) VALUES
('roslin', 'Roslin Mahmud', 'Joy', 'unlock', 0, 'roslin'),
('kabir', 'Kabir', 'Hossain', 'unlock', 1, 'roslin'),
('rohan', 'Samiul Islam', 'Rohan', 'unlock', 1, 'roslin'),
('abcd', 'abcd', 'abcd', 'abcd', 0, 'abcd');

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

DROP TABLE IF EXISTS `balance`;
CREATE TABLE IF NOT EXISTS `balance` (
  `Username` varchar(18) NOT NULL,
  `Date` date NOT NULL,
  `Payment` double(18,2) NOT NULL DEFAULT '0.00',
  `MarketCost` double(18,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`Username`,`Date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`Username`, `Date`, `Payment`, `MarketCost`) VALUES
('kabir', '2018-12-12', 125.50, 120.00),
('kabir', '2018-12-13', 100.00, 0.00),
('kabir', '2018-12-14', 200.00, 0.00),
('rohan', '2018-12-14', 150.00, 0.00),
('kabir', '2018-12-16', 150.00, 50.00),
('rohan', '2018-12-16', 200.00, 0.00),
('kabir', '2018-12-17', 120.00, 50.00),
('rohan', '2018-12-17', 100.00, 50.00),
('roslin', '2019-01-07', 150.00, 100.00),
('roslin', '2018-12-02', 120.00, 0.00),
('roslin', '2018-12-01', 150.00, 0.00),
('roslin', '2019-01-13', 150.00, 100.00),
('rohan', '2018-12-18', 100.00, 0.00),
('kabir', '2018-12-18', 50.00, 50.00),
('kabir', '2018-12-01', 125.00, 150.00),
('kabir', '2018-12-02', 100.00, 150.00),
('kabir', '2018-12-03', 110.00, 115.00),
('kabir', '2018-12-04', 120.00, 110.00),
('kabir', '2018-12-05', 140.00, 100.00),
('kabir', '2018-12-06', 100.00, 125.00),
('kabir', '2018-12-07', 125.00, 115.00),
('kabir', '2018-12-08', 120.00, 120.00),
('kabir', '2018-12-09', 105.00, 105.00),
('kabir', '2018-12-10', 110.00, 110.00),
('kabir', '2018-12-11', 125.00, 100.00),
('rohan', '2018-12-01', 150.00, 100.00),
('rohan', '2018-12-02', 140.00, 100.00),
('rohan', '2018-12-03', 125.00, 110.00),
('rohan', '2018-12-04', 100.00, 125.00),
('rohan', '2018-12-05', 105.00, 140.00),
('rohan', '2018-12-06', 105.00, 150.00),
('rohan', '2018-12-07', 125.00, 115.00),
('rohan', '2018-12-08', 145.00, 120.00),
('rohan', '2018-12-09', 110.00, 100.00),
('rohan', '2018-12-10', 125.00, 100.00),
('rohan', '2018-12-11', 150.00, 100.00),
('rohan', '2018-12-12', 150.00, 105.00),
('rohan', '2018-12-13', 105.00, 115.00),
('roslin', '2018-12-18', 100.00, 30.00),
('roslin', '2019-01-01', 150.00, 200.00),
('roslin', '2019-01-02', 100.00, 100.00),
('kabir', '2019-01-13', 150.00, 0.00),
('rohan', '2019-01-13', 200.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `meal`
--

DROP TABLE IF EXISTS `meal`;
CREATE TABLE IF NOT EXISTS `meal` (
  `Username` varchar(18) NOT NULL,
  `Date` date NOT NULL,
  `TotalMeal` int(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Username`,`Date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meal`
--

INSERT INTO `meal` (`Username`, `Date`, `TotalMeal`) VALUES
('kabir', '2018-12-12', 2),
('kabir', '2018-12-13', 2),
('kabir', '2018-12-14', 2),
('rohan', '2018-12-14', 2),
('kabir', '2018-12-16', 2),
('rohan', '2018-12-16', 2),
('kabir', '2018-12-17', 2),
('rohan', '2018-12-17', 2),
('roslin', '2019-01-13', 2),
('roslin', '2019-01-07', 2),
('roslin', '2018-12-02', 2),
('roslin', '2018-12-01', 2),
('rohan', '2018-12-18', 2),
('kabir', '2018-12-18', 2),
('kabir', '2018-12-01', 1),
('kabir', '2018-12-02', 1),
('kabir', '2018-12-03', 2),
('kabir', '2018-12-04', 1),
('kabir', '2018-12-05', 2),
('kabir', '2018-12-06', 2),
('kabir', '2018-12-07', 2),
('kabir', '2018-12-08', 2),
('kabir', '2018-12-09', 2),
('kabir', '2018-12-10', 2),
('kabir', '2018-12-11', 1),
('rohan', '2018-12-01', 1),
('rohan', '2018-12-02', 2),
('rohan', '2018-12-03', 1),
('rohan', '2018-12-04', 2),
('rohan', '2018-12-05', 2),
('rohan', '2018-12-06', 2),
('rohan', '2018-12-07', 2),
('rohan', '2018-12-08', 2),
('rohan', '2018-12-09', 2),
('rohan', '2018-12-10', 2),
('rohan', '2018-12-11', 1),
('rohan', '2018-12-12', 2),
('rohan', '2018-12-13', 2),
('roslin', '2018-12-18', 2),
('roslin', '2019-01-01', 2),
('roslin', '2019-01-02', 2),
('kabir', '2019-01-13', 2),
('rohan', '2019-01-13', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
