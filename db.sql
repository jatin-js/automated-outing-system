-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 30, 2021 at 09:33 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `outpass`
--

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

CREATE TABLE `hod` (
  `name` varchar(30) NOT NULL,
  `block` varchar(20) NOT NULL,
  `phoneNumber` varchar(30) NOT NULL,
  `collegeId` int(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hod`
--

INSERT INTO `hod` (`name`, `block`, `phoneNumber`, `collegeId`, `email`, `password`) VALUES
('Mani Kanta', 'B1', '1212121212', 111111, 'karthik@gmail.com', 'root'),
('Osama', 'B2', '9999999999', 111222, 'osama@gmail.com', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `outpass`
--

CREATE TABLE `outpass` (
  `applicationId` int(11) NOT NULL,
  `journey_mode` varchar(30) NOT NULL,
  `journey_from` varchar(30) NOT NULL,
  `journey_to` varchar(30) NOT NULL,
  `journey_state` varchar(30) NOT NULL,
  `journey_city` varchar(30) NOT NULL,
  `zipcode` varchar(30) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `studentId` varchar(30) NOT NULL,
  `studentContact` varchar(30) NOT NULL,
  `studentName` varchar(30) NOT NULL,
  `studentBlock` varchar(30) NOT NULL,
  `studentRoomNo` varchar(30) NOT NULL,
  `hodId` varchar(30) NOT NULL,
  `status_by_hod` varchar(30) DEFAULT 'In Progress',
  `status_at_initiater` varchar(30) NOT NULL DEFAULT 'In Progress',
  `status_by_chiefWarden` varchar(30) NOT NULL DEFAULT 'In Progress',
  `rejectionreason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `outpass`
--

INSERT INTO `outpass` (`applicationId`, `journey_mode`, `journey_from`, `journey_to`, `journey_state`, `journey_city`, `zipcode`, `reason`, `studentId`, `studentContact`, `studentName`, `studentBlock`, `studentRoomNo`, `hodId`, `status_by_hod`, `status_at_initiater`, `status_by_chiefWarden`, `rejectionreason`) VALUES
(1, 'train', '213', '213', 'Arunachal Pradesh', ' Anjaw ', '23213', 'Assad', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'Approved', 'Approved', 'Approved', ''),
(2, 'plane', '1/1/1', '2/2/2', 'Assam', ' Barama ', '345654', 'asads', '141414', '1414141414', 'shantanu', 'B1', '2', '111111', 'Rejected', 'Rejected', 'In Progress', 'a'),
(3, 'bus', '1/1/1', '3/3/3', 'Bihar', ' Barachakia ', '343456', 'assasdasd', '151515', '1515151515', 'sahil', 'B1', '3', '111111', 'Approved', 'Approved', 'Approved', ''),
(4, 'car', '1/1/1', '2/2/2', 'Bihar', ' Amarpur ', '455677', 'no reason', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'Approved', 'Approved', 'Approved', ''),
(5, 'train', '11/3/2021', '14/3/2021', 'Haryana', ' Faridabad ', '567876', 'don\'t know ', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'Approved', 'Approved', 'Approved', ''),
(6, 'plane', '20/03/2021', '21/03/2021', 'Andaman & Nicobar', ' Anderson Island ', '456765', 'wedding', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'Approved', 'Approved', 'Approved', ''),
(7, 'train', '20/03/2021', '22/03/2021', 'Uttar Pradesh', ' Bareilly ', '243202', 'wedding', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'Approved', 'Approved', 'Approved', ''),
(8, 'plane', '20/03/21', '21/03/2021', 'Delhi', ' East Delhi ', '456765', 'wedding', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'Approved', 'Rejected', 'Rejected', 'b'),
(9, 'bus', '1/3/4', '2/3/4', 'Andhra Pradesh', ' Adilabad ', '122345', 'nope', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'Rejected', 'Rejected', 'In Progress', 'c'),
(10, 'other', '3/3/3', '4/4/4', 'Chhattisgarh', ' Bacheli ', '334543', 'bhag yaha se', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'Rejected', 'Rejected', 'In Progress', 'nickel'),
(11, 'plane', '1/1/1', '1/1/1', 'Arunachal Pradesh', ' Anini ', '1', 'Not rejected', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'Approved', 'In Progress', 'In Progress', ''),
(12, 'train', '20/03/2021', '2', 'Andhra Pradesh', ' Adoni ', '2', '2', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'In Progress', 'In Progress', 'In Progress', ''),
(13, 'plane', '20/03/2021', '2', 'Arunachal Pradesh', ' Anjaw ', '2', '2', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'In Progress', 'In Progress', 'In Progress', ''),
(14, 'train', '3/3/3', '3', 'Andhra Pradesh', ' Adoni ', '3', '3', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'In Progress', 'In Progress', 'In Progress', ''),
(15, 'plane', '3/3/3', '3', 'Andhra Pradesh', ' Adilabad ', '3', '3', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'In Progress', 'In Progress', 'In Progress', ''),
(16, 'plane', '3/3/3', '3', 'Andaman & Nicobar', ' Andaman Island ', '3', '3', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'In Progress', 'In Progress', 'In Progress', ''),
(17, 'plane', '3/3/3', '3', 'Andhra Pradesh', ' Adoni ', '3', '3', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'In Progress', 'In Progress', 'In Progress', ''),
(18, 'plane', '3/3/3', '3', 'Bihar', ' Arwal ', '3', '3', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'In Progress', 'In Progress', 'In Progress', ''),
(19, 'train', '3', '3', 'Arunachal Pradesh', ' Bameng ', '3', '3', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'In Progress', 'In Progress', 'In Progress', ''),
(20, 'train', '4', '4/4/4', 'Andhra Pradesh', ' Adoni ', '4', '4', '982318', '7337471537', 'jatin singh', 'B1', '1', '111111', 'In Progress', 'In Progress', 'In Progress', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(30) NOT NULL,
  `block` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `phoneNumber` varchar(30) NOT NULL,
  `registrationNo` int(30) NOT NULL,
  `roomNo` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `block`, `branch`, `course`, `phoneNumber`, `registrationNo`, `roomNo`, `email`, `password`) VALUES
('asdsad', 'B1', 'CSE', 'B. Tech', 'asdas', 4, '1', 'qweqwe@sda', 'qweqweqwe'),
('shantanu', 'B1', 'CSE', 'B. Tech', '1414141414', 141414, '2', 'shantanu@gmail.com', 'root2'),
('sahil', 'B1', 'CSE', 'B. Tech', '1515151515', 151515, '3', 'sahil@gmail.com', 'root6'),
('jatin singh', 'B1', 'CSE', 'B. Tech', '7337471537', 982318, '1', 'jatinhmu@gmail.com', 'root'),
('sarvesh', 'B2', 'CSE', 'B. Tech', '7337471537', 982319, '2', 'sarvesh@gmail.com', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `warden`
--

CREATE TABLE `warden` (
  `wardenId` varchar(30) NOT NULL,
  `phoneNumber` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warden`
--

INSERT INTO `warden` (`wardenId`, `phoneNumber`) VALUES
('222222', '1313131313');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hod`
--
ALTER TABLE `hod`
  ADD PRIMARY KEY (`collegeId`),
  ADD UNIQUE KEY `collegeId` (`collegeId`);

--
-- Indexes for table `outpass`
--
ALTER TABLE `outpass`
  ADD PRIMARY KEY (`applicationId`),
  ADD UNIQUE KEY `applicationId` (`applicationId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`registrationNo`),
  ADD UNIQUE KEY `registrationNo` (`registrationNo`);

--
-- Indexes for table `warden`
--
ALTER TABLE `warden`
  ADD PRIMARY KEY (`wardenId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `outpass`
--
ALTER TABLE `outpass`
  MODIFY `applicationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
