-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 29, 2017 at 12:43 AM
-- Server version: 5.7.20
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schedule`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `Department` varchar(30) NOT NULL,
  `DeptSection` int(4) NOT NULL,
  `Class` varchar(30) NOT NULL,
  `Hours` varchar(10) NOT NULL,
  `Description` text NOT NULL,
  `CRN` int(5) NOT NULL,
  `Section` int(2) NOT NULL,
  `Day` varchar(30) NOT NULL,
  `Time` varchar(20) NOT NULL,
  `Location` varchar(10) NOT NULL,
  `Instructor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`Department`, `DeptSection`, `Class`, `Hours`, `Description`, `CRN`, `Section`, `Day`, `Time`, `Location`, `Instructor`) VALUES
('CPSC', 3116, 'Mainframe Basics and JCL', 'Credits: 3', 'Prerequisites: CPSC 1301/1301L with a grade of C or better. This course presents an overview of IBM mainframe operating systems currently in use in the area. It includes common terminology, the most used JCL features, and an introduction to the scripting language REXX and its variants.\r\n', 80375, 1, 'MW', '04:30 PM - 05:45 PM', 'CCT 406', 'Rogers, Neal L'),
('CPSC', 2106, 'CPSC 2106', 'Credits: 3', 'Prerequisite: CPSC 1301 and CPSC 1301L or permission of instructor. This course introduces the main hardware and software components of a modern computer system, investigates the vulnerabilities and threats associated with each component, and suggests prudent measures to defend against these threats.\r\n', 80486, 1, 'T', '09:30 AM - 10:45 AM', 'CCT 123', 'Peker, Yesem K'),
('CPSC', 3108, 'CPSC 3108', 'Credits: 3', 'Prerequisite: CPSC 2108 with a grade of \"C\" or better. This course provides a study of basic security practices in hardening a system and programming through hands-on activities. The course emphasizes secure design principles and applying additional controls and measures to prevent development of vulnerable systems and code.\r\n', 81274, 1, 'TR', '03:00 PM - 04:15 PM', 'CCT 125', 'Peker, Yesem K'),
('CPSC', 3132, 'Database Systems II', 'Credits: 3', 'Prerequisite: CPSC 3131 with a grade of \"C\" or better. A continuation of CPSC 3131 Database Systems 1. Focus will be on the larger database systems, such as DB2 and IMS, used on enterprise computers. Use of COBOL programs to manage and access such databases. Database architecture and administration.\r\n', 82253, 1, 'MW', '07:30 PM - 08:45 PM', 'CCT 405', 'Rogers, Neal L');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`CRN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
GRANT SELECT, INSERT, UPDATE, DELETE
ON *
TO mgs_user@localhost
IDENTIFIED BY 'pa55word';