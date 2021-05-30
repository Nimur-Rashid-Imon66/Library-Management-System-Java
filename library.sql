-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 10:40 AM
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
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `author` varchar(30) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `noofcopies` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`, `category`, `author`, `publisher`, `noofcopies`) VALUES
(3, 'CPP', 'C++', 'Nimur', 'HHJN', '100'),
(4, 'Java Basic', 'Java', 'Nimur', 'HHJN', '100'),
(5, 'PHP Advance ', 'PHP', 'Nimur', 'HHJN', '100'),
(6, 'Phyton Programming ', 'Phyton', 'Nimur', 'HHJN', '65'),
(7, 'Programming with C', 'C++', 'Nimur', 'HHJN', '100'),
(8, 'Easy with JAVA Class', 'Java', 'Nimur', 'HHJN', '100'),
(9, 'Head First Java', 'Java', 'Nimur', 'HHJN', '100'),
(10, 'Effective Java', 'Java', 'Nimur', 'HHJN', '100'),
(11, 'PHP Object-Oriented Solutions', 'PHP', 'Nimur', 'HHJN', '100'),
(12, 'PHP 7 Programming Cookbook', 'PHP', 'Nimur', 'HHJN', '10'),
(13, 'Practical PHP Testing', 'PHP', 'Nimur', 'HHJN', '57'),
(14, 'Practical PHP Testing', 'PHP', 'Nimur', 'HHJN', '83'),
(15, 'Head First Python', 'Phyton', 'Nimur', 'HHJN', '2'),
(16, 'Interviews in Python', 'Phyton', 'Nimur', 'HHJN', '5'),
(17, 'HTML Basic', 'HTML', 'Nimur', 'HIRO', '10'),
(18, 'HTML Basic', 'HTML', 'Nimur', 'HIRO', '11');

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `id` int(4) NOT NULL,
  `cname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`id`, `cname`) VALUES
(1003, 'Java'),
(1005, 'Phyton'),
(1008, 'C++'),
(1009, 'PHP'),
(1010, 'HTML'),
(1011, 'Ruby');

-- --------------------------------------------------------

--
-- Table structure for table `issuebook`
--

CREATE TABLE `issuebook` (
  `memid` varchar(30) NOT NULL,
  `memname` varchar(30) NOT NULL,
  `bookid` varchar(11) NOT NULL,
  `bookname` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issuebook`
--

INSERT INTO `issuebook` (`memid`, `memname`, `bookid`, `bookname`, `category`, `publisher`, `date`) VALUES
('C193066', 'Nimur', '13', 'Practical PHP Testing', 'PHP', 'HHJN', '2021-05-29'),
('C193066', 'Nimur', '6', 'Phyton Programming ', 'Phyton', 'HHJN', '2021-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `password`) VALUES
('nimur', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `returnissuebook`
--

CREATE TABLE `returnissuebook` (
  `memid` varchar(30) NOT NULL,
  `memname` varchar(30) NOT NULL,
  `bookid` varchar(30) NOT NULL,
  `bookname` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `returndate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returnissuebook`
--

INSERT INTO `returnissuebook` (`memid`, `memname`, `bookid`, `bookname`, `category`, `publisher`, `returndate`) VALUES
('C193066', 'Nimur', '18', 'HTML Basic', 'HTML', 'HIRO', '2021-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `memid` varchar(30) NOT NULL,
  `memname` varchar(30) NOT NULL,
  `bookid` varchar(30) NOT NULL,
  `bookname` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `issuedate` timestamp NOT NULL DEFAULT current_timestamp(),
  `returndate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`memid`, `memname`, `bookid`, `bookname`, `category`, `publisher`, `issuedate`, `returndate`) VALUES
('T121314', 'Jamil-As-Ad', '3', 'CPP', 'C++', 'HHJN', '2021-05-29 00:31:48', '2021-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `id` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `semester` varchar(5) NOT NULL,
  `qsn1` varchar(30) NOT NULL,
  `qsn2` varchar(30) NOT NULL,
  `qsn3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`id`, `name`, `password`, `semester`, `qsn1`, `qsn2`, `qsn3`) VALUES
('C193066', 'Nimur', 'nimur', '3rd', 'hiro', 'hiro', 'hiro');

-- --------------------------------------------------------

--
-- Table structure for table `teacherinfo`
--

CREATE TABLE `teacherinfo` (
  `id` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `qsn1` varchar(30) NOT NULL,
  `dept` varchar(5) NOT NULL,
  `qsn2` varchar(30) NOT NULL,
  `qsn3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacherinfo`
--

INSERT INTO `teacherinfo` (`id`, `name`, `password`, `qsn1`, `dept`, `qsn2`, `qsn3`) VALUES
('T121314', 'Jamil-As-Ad', 'jamil', 'hhjn', 'CSE', 'hhjn', 'hhjn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
