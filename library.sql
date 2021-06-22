-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2021 at 11:56 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

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
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`, `address`, `phone`) VALUES
(11, 'Deepak Nagar', 'Karol Bagh', 4554456),
(12, 'Tushar Sharma', 'Bulandshahr', 9456456),
(13, 'Parul Bhatnagar', 'Khora', 4546465),
(14, 'Ram Sharma', 'Greater Noida', 2121714),
(15, 'Manish Hacker', 'Rajendra Place', 987456321);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `category` text NOT NULL,
  `author` text NOT NULL,
  `publisher` text NOT NULL,
  `contents` text NOT NULL,
  `pages` int(11) NOT NULL,
  `edition` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `bname`, `category`, `author`, `publisher`, `contents`, `pages`, `edition`) VALUES
(2, 'python programing', 'programing language', 'james ', 'robin', 'best', 2000, 2),
(33, 'Core to Advanced Java', '47', '12', '3', 'Beginner to Advanced ', 956, 13),
(34, 'C Programming', '43', '13', '8', 'Beginner Guide', 568, 13),
(35, 'Ethical Hacking', '46', '15', '4', 'Cyber Security', 563, 13),
(36, 'C++ Programming', '44', '13', '7', 'Beginners Guide', 865, 13),
(37, 'Hadoop Language', '45', '14', '9', 'Beginners Guide', 470, 13),
(38, 'Python', '48', '11', '5', 'Beg to Advanced', 866, 13);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catname`, `status`) VALUES
(43, 'C programming', 'Active'),
(44, 'C++ programming', 'Active'),
(45, 'Hadoop', 'Active'),
(46, 'Ethical Hacking ', 'Active'),
(47, 'Java Programming', 'Active'),
(48, 'Python Programming', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `lendbook`
--

CREATE TABLE `lendbook` (
  `memberid` int(11) NOT NULL,
  `membername` text NOT NULL,
  `bookid` text NOT NULL,
  `issuedate` date NOT NULL,
  `returndate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lendbook`
--

INSERT INTO `lendbook` (`memberid`, `membername`, `bookid`, `issuedate`, `returndate`) VALUES
(1, 'mukul', '2', '2021-01-09', '2021-01-16'),
(4, 'mukul', '33', '2021-01-09', '2021-01-16');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `address`, `phone`) VALUES
(7, 'Selmon Boi', 'United States of America', 41141466),
(8, 'Amrendra Bahubali ', 'Mahesmati Samrajya', 98746534),
(9, 'Jitendra Kumar', 'Noida Sec 16', 74186654),
(10, 'Dilip Kumar Pandey ', 'Surajpur', 47821365),
(11, 'Aman Singh', 'RK Ashram Marg', 12345675),
(13, 'Deepansh ', 'New Delhi', 79864664);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `address`, `phone`) VALUES
(3, 'Mukul Kumar Singh', 'Bulandshahr', 4465413),
(4, 'Jaspreet Singh', 'Ramakrishna Marg', 789654123),
(5, 'Keshav Singh', 'Sikandrabad', 47416545),
(7, 'Kumar Saumya', 'Nasha Mukti Kendra', 78994656),
(8, 'Dinesh Rawat', 'Khora', 7896342),
(9, 'Mohit Singh', 'Mandavli', 3121714);

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `memberid` int(255) NOT NULL,
  `mname` text NOT NULL,
  `bname` text NOT NULL,
  `returndate` text NOT NULL,
  `elp` int(11) NOT NULL,
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returnbook`
--

INSERT INTO `returnbook` (`memberid`, `mname`, `bname`, `returndate`, `elp`, `fine`) VALUES
(7, 'Selmon Boi', 'python programing', '2021-02-05', 2, 200),
(8, 'Amrendra Bahubali', 'Core to Advanced Java', '2021-02-11', 0, 0),
(9, 'Jitendra Kumar', 'C++ Programming', '2021-01-13', 25, 2500),
(10, 'Dilip Kumar Pandey', 'C Programming', '2021-02-23', 0, 0),
(11, 'Aman Singh', 'Ethical Hacking', '2021-02-16', 0, 0),
(13, 'Deepansh', 'Hadoop Language', '2021-02-28', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lendbook`
--
ALTER TABLE `lendbook`
  ADD PRIMARY KEY (`memberid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returnbook`
--
ALTER TABLE `returnbook`
  ADD PRIMARY KEY (`memberid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `lendbook`
--
ALTER TABLE `lendbook`
  MODIFY `memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `returnbook`
--
ALTER TABLE `returnbook`
  MODIFY `memberid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
