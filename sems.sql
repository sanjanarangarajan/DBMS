-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2020 at 12:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sems`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` varchar(30) NOT NULL,
  `dept_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
('i1', 'IT'),
('c1', 'CSE'),
('e1', 'EEE'),
('ec1', 'ECE');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`uname`, `pass`) VALUES
('shibi', '12345678'),
('shii', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `reg` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`fname`, `lname`, `email`, `dob`, `dept`, `phone`, `reg`) VALUES
('shibi', 's', 'shib@gmail.com', '29/04/1999', 'IT', '7358182966', '2017115555'),
('shibbi', 's', 'shibi@gmail.com', '02/12/1212', 'CSE', '9940612121', '2017115522'),
('sduu', 'sdhijd', 'd@gmail.com', '02/11/1111', 'CSE', '9940698233', '2017115522');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `dept_id` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`dept_id`, `subject`) VALUES
('c1', 'Theory of Computation'),

('c1', 'Data Structures I'),
('c1', 'DataBase Management Systems'),

('c1', 'Computer Networks'),
('c1', 'Computer Networks lab'),

('ec1', 'Communication Networks'),
('ec1', 'Signals and Sytems'),
('ec1', 'Digital Signal Processing'),
('ec1', 'MicroProcessors'),
('ec1', 'MicroProcessors lab'),

('i1', 'Information Security'),
('i1', 'Integrated Programming'
('i1', 'Mobile Computing'),
('i1', 'Parallel and Distributed Syste'),
('i1', 'Information Security lab')
('e1', 'Basic Electrical Engineering'),
('e1', 'Electrical Circuit Analysis'),

('e1', 'Switching Theory and Logic Des'),

('e1', 'Electrical Machines lab');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`uname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
