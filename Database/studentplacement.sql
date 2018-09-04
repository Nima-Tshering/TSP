-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 04, 2018 at 04:24 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tps_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `studentplacement`
--

DROP TABLE IF EXISTS `studentplacement`;
CREATE TABLE IF NOT EXISTS `studentplacement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ScholarNo` varchar(50) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `Package` double NOT NULL,
  `PlacementDate` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CompanyID` (`CompanyID`),
  KEY `ScholarNo` (`ScholarNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentplacement`
--

INSERT INTO `studentplacement` (`ID`, `ScholarNo`, `CompanyID`, `Package`, `PlacementDate`) VALUES
(1, '1', 2, 12, '12/12/2021');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `studentplacement`
--
ALTER TABLE `studentplacement`
  ADD CONSTRAINT `studentplacement_ibfk_2` FOREIGN KEY (`CompanyID`) REFERENCES `company` (`CompanyID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `studentplacement_ibfk_3` FOREIGN KEY (`ScholarNo`) REFERENCES `student` (`ScholarNo`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
