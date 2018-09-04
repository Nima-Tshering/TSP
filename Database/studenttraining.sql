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
-- Table structure for table `studenttraining`
--

DROP TABLE IF EXISTS `studenttraining`;
CREATE TABLE IF NOT EXISTS `studenttraining` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ScholarNo` varchar(50) NOT NULL,
  `Companyname` text NOT NULL,
  `Address` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL,
  `TrainingDuration` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ScholarNo` (`ScholarNo`),
  KEY `ScholarNo_2` (`ScholarNo`),
  KEY `ScholarNo_3` (`ScholarNo`),
  KEY `ScholarNo_4` (`ScholarNo`),
  KEY `ScholarNo_5` (`ScholarNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studenttraining`
--

INSERT INTO `studenttraining` (`ID`, `ScholarNo`, `Companyname`, `Address`, `ContactNo`, `Email`, `TrainingDuration`) VALUES
(1, '1', 'findcontrols', 'uk', '654545', 'find@gmail.com', 3);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `studenttraining`
--
ALTER TABLE `studenttraining`
  ADD CONSTRAINT `studenttraining_ibfk_1` FOREIGN KEY (`ScholarNo`) REFERENCES `student` (`ScholarNo`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
