-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2019 at 12:41 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `updationdate` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationdate`) VALUES
(1, 'admin', 'Test@1234', '22-01-2019 10:00:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(11) NOT NULL,
  `doctorspecialization` varchar(200) NOT NULL,
  `doctorid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `consultancyfee` int(11) NOT NULL,
  `appointmentdate` date NOT NULL,
  `appointmenttime` time NOT NULL,
  `postingdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userstatus` int(11) NOT NULL,
  `doctorstatus` int(11) NOT NULL,
  `updationdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorspecialization`, `doctorid`, `userid`, `consultancyfee`, `appointmentdate`, `appointmenttime`, `postingdate`, `userstatus`, `doctorstatus`, `updationdate`) VALUES
(1, 'Densist', 1, 1, 4000, '2019-01-23', '08:43:16', '2019-01-22 21:00:00', 1, 0, '0000-00-00'),
(2, 'Cardiologist', 2, 2, 4000, '2019-01-23', '06:17:43', '2019-01-21 21:00:00', 1, 1, '2019-01-22'),
(3, 'Optician', 3, 3, 4000, '2019-01-22', '12:16:31', '2019-01-22 12:36:47', 1, 1, '2019-01-22');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE IF NOT EXISTS `doctors` (
  `doctorid` int(11) NOT NULL,
  `specialization` varchar(200) NOT NULL,
  `doctorname` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `docfee` int(15) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `docemail` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `updationdate` date NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctorid`, `specialization`, `doctorname`, `address`, `docfee`, `contact`, `docemail`, `password`, `updationdate`, `creationdate`) VALUES
(1, 'Denstist', 'Mr Keya', '54728 Kisii', 4000, '07023456789', 'keya@gmail.com', 'keya.test', '2019-01-22', '2019-01-21 21:00:00'),
(4, 'Cardiologist', 'Dr. Limo', '45678943', 4000, '0703567843', 'limo@gmail.com', 'limo.test', '2019-01-22', '2019-01-21 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE IF NOT EXISTS `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `userip` binary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` timestamp NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `logintime`, `logout`, `status`) VALUES
(0, 0, 'limo@gmail.com', 0x3a3a3100000000000000000000000000, '2019-01-22 09:46:58', '0000-00-00 00:00:00', 0),
(1, 2, 'admin', 0x00000000000000010000000000000000, '2019-01-22 07:47:31', '2019-01-22 07:47:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecialization`
--

CREATE TABLE IF NOT EXISTS `doctorspecialization` (
  `id` int(11) NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecialization`
--

INSERT INTO `doctorspecialization` (`id`, `specialization`, `creationdate`, `updationdate`) VALUES
(1, 'Denstist', '2019-01-22 07:59:06', '2019-01-07'),
(2, 'Cardiologist', '2019-01-22 07:59:38', '2019-01-22');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `userip` binary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `logintime`, `logout`, `status`) VALUES
(8, 0, 'admin', 0x03a3a000000000000000000000000000, '2019-01-22 08:06:52', '', 1),
(9, 0, 'teamk@gmail.com', 0x3a3a3100000000000000000000000000, '2019-01-22 09:05:55', '', 0),
(10, 0, 'teamk@gmail.com', 0x3a3a3100000000000000000000000000, '2019-01-22 09:06:39', '', 0),
(11, 0, 'teamk@gmail.com', 0x3a3a3100000000000000000000000000, '2019-01-22 09:09:28', '', 0),
(12, 0, 'teamk@gmail.com', 0x3a3a3100000000000000000000000000, '2019-01-22 09:31:42', '', 0),
(13, 0, 'teamk@gmail.com', 0x3a3a3100000000000000000000000000, '2019-01-22 09:32:22', '', 0),
(14, 0, '', 0x3a3a3100000000000000000000000000, '2019-01-22 09:33:47', '', 0),
(15, 0, '', 0x3a3a3100000000000000000000000000, '2019-01-22 09:34:18', '', 0),
(16, 0, '', 0x3a3a3100000000000000000000000000, '2019-01-22 09:44:39', '', 0),
(17, 2, 'kip@gmail.com', 0x3a3a3100000000000000000000000000, '2019-01-22 10:03:14', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationdate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `address`, `city`, `gender`, `email`, `password`, `regdate`, `updationdate`) VALUES
(1, 'Team K', '567 Athi River', 'Machakos', 'Female', 'teamk@gmail.com', 'teamk.test', '2019-01-22 08:12:46', '2019-01-22'),
(2, 'Kip', '67', 'Kisii', 'male', 'kip@gmail.com', '1ca8a4af2acce25d7952196165f15656', '2019-01-22 10:02:44', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctorid`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecialization`
--
ALTER TABLE `doctorspecialization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctorid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
