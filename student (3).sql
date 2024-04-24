-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 05:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` int(10) NOT NULL,
  `batch_id` varchar(100) DEFAULT NULL,
  `batch_name` varchar(100) DEFAULT NULL,
  `batch_start` date DEFAULT NULL,
  `batch_end` date DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `batch_id`, `batch_name`, `batch_start`, `batch_end`, `time_stamp`) VALUES
(1, '1', 'MDCISM', '2023-02-06', '2026-02-06', '2024-04-23 03:14:28'),
(2, '2', 'CCC', '2022-01-01', '2023-01-01', '2024-04-23 03:14:36'),
(3, '3', 'O-LEVEL', '2024-01-01', '2025-01-01', '2024-04-23 03:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(10) NOT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `course_id` varchar(10) DEFAULT NULL,
  `fee` varchar(50) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_name`, `course_id`, `fee`, `time_stamp`) VALUES
(1, 'MDCISM', '102', '2500', '2024-04-23 03:24:49'),
(2, 'CCC', '101', '1500', '2024-04-23 09:17:34'),
(3, 'O-Level', '3', '8000', '2024-04-23 09:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `id` int(11) NOT NULL,
  `student_id` int(20) NOT NULL,
  `fee_recieved` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`id`, `student_id`, `fee_recieved`) VALUES
(2, 2, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(5) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `student_id` varchar(10) DEFAULT NULL,
  `sem` varchar(10) DEFAULT NULL,
  `max_marks` varchar(10) DEFAULT NULL,
  `obtain_marks` varchar(10) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `name`, `student_id`, `sem`, `max_marks`, `obtain_marks`, `time_stamp`) VALUES
(1, 'aditya', '4', 'sem1', '600', '450', '2024-04-08 03:58:17'),
(2, 'aditya', '4', 'sem2', '600', '550', '2024-04-08 03:58:33'),
(3, 'aditya', '4', 'sem3', '600', '580', '2024-04-08 03:58:39'),
(4, 'narendra', '5', 'sem1', '600', '445', '2024-04-08 03:51:21'),
(5, 'narendra', '5', 'sem2', '600', '444', '2024-04-08 03:53:40'),
(6, 'narendra', '5', 'sem3', '600', '555', '2024-04-08 03:53:53'),
(7, 'mohit', '6', 'sem1', '600', '345', '2024-04-08 03:56:56'),
(8, 'mohit', '6', 'sem2', '600', '344', '2024-04-08 03:57:14'),
(9, 'mohit', '6', 'sem3', '600', '355', '2024-04-08 03:57:23'),
(10, NULL, '1', NULL, NULL, NULL, '2024-04-08 03:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `student_profile`
--
-- Error reading structure for table student.student_profile: #1932 - Table &#039;student.student_profile&#039; doesn&#039;t exist in engine
-- Error reading data for table student.student_profile: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `student`.`student_profile`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `stu_profile`
--

CREATE TABLE `stu_profile` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `course_id` varchar(10) NOT NULL,
  `batch_id` int(10) DEFAULT NULL,
  `roll_no` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stu_profile`
--

INSERT INTO `stu_profile` (`id`, `name`, `dob`, `course_id`, `batch_id`, `roll_no`, `address`, `time_stamp`) VALUES
(1, 'John Mathi', '1989-04-05', '1', 1, '2122', 'kanpur road lucknow', '2024-04-24 02:39:17'),
(2, 'Peeter', '1995-02-12', '2', 2, '2123', 'sitapur', '2024-04-24 02:39:40'),
(3, 'Somya Kapoor', '0000-00-00', '1', 1, '2124', 'Balrampur', '2024-04-24 02:40:03'),
(4, 'Aditya', '1985-08-02', '3', 3, '2125', 'sec-l ashiyana', '2024-04-24 02:38:34'),
(5, 'Narendra', '0000-00-00', '1', 1, '(2126)', '(sec-c lda)', '2024-04-24 02:40:18'),
(6, 'Mohit Singh', '1987-12-17', '1', 1, '2127', 'sec-c lda', '2024-04-24 02:33:20'),
(7, 'amit', '1980-08-05', '', 3, '2128', 'parag lucknow', '2024-04-11 02:58:49'),
(8, 'vivak', '1987-05-15', '', 3, '2129', 'para lucknow', '2024-04-11 02:58:57'),
(9, 'shashank', '1995-02-05', '', 3, '2130', 'omax lucknow', '2024-04-11 02:59:03'),
(11, 'Sunil', '2020-12-20', '', NULL, '2131', 'LDA COLONY ', '2024-04-15 18:56:50'),
(12, 'Mohan', '2020-12-12', '', NULL, '3032', 'LDA Lucknow', '2024-04-16 03:19:43'),
(13, 'Mohan', '2020-12-12', '', NULL, '3032', 'LDA Lucknow', '2024-04-16 03:30:48'),
(14, 'Mohan', '2020-12-12', '', NULL, '3032', 'LDA Lucknow', '2024-04-16 03:31:23'),
(15, 'Narendra', NULL, '', NULL, '4545', 'lda kanpur', '2024-04-16 03:36:10'),
(16, 'admin', NULL, '', NULL, '2222', 'root', '2024-04-16 03:36:45'),
(28, 'Shital', NULL, '', NULL, '7878', 'Sitapur', '2024-04-16 03:54:57'),
(29, 'Shital', NULL, '', NULL, '7878', 'Sitapur', '2024-04-16 03:55:09'),
(30, 'Shital', NULL, '', NULL, '7878', 'Sitapur', '2024-04-16 03:55:28'),
(31, 'Shital', NULL, '', NULL, '7878', 'Sitapur', '2024-04-16 03:55:41'),
(32, 'Shital', NULL, '', NULL, '7878', 'Sitapur', '2024-04-16 03:56:09'),
(33, 'Shital', NULL, '', NULL, '7878', 'Sitapur', '2024-04-16 03:58:53'),
(34, 'Shital', NULL, '', NULL, '7878', 'Sitapur', '2024-04-16 03:59:15'),
(35, 'Shital', NULL, '', NULL, '7878', 'Sitapur', '2024-04-16 03:59:31'),
(36, 'Shital', NULL, '', NULL, '7878', 'Sitapur', '2024-04-16 04:00:53'),
(37, 'Shital', NULL, '', NULL, '7878', 'Sitapur', '2024-04-16 04:02:39'),
(38, 'Shital', NULL, '', NULL, '7878', 'Sitapur', '2024-04-16 04:03:15'),
(39, 'Shital', NULL, '', NULL, '7878', 'Sitapur', '2024-04-16 04:03:42'),
(40, 'Shital', NULL, '', NULL, '7878', 'Sitapur', '2024-04-16 04:04:20'),
(41, 'Shital', NULL, '', NULL, '7878', 'Sitapur', '2024-04-16 04:04:37'),
(42, 'Shital', NULL, '', NULL, '7878', 'Sitapur', '2024-04-16 04:05:25'),
(43, 'Shital', NULL, '', NULL, '7878', 'Sitapur', '2024-04-16 04:05:43'),
(50, 'Ragni', NULL, '', NULL, '2324', 'Haryana', '2024-04-18 14:46:34'),
(51, 'Student Name', NULL, '', NULL, 'Roll Numbe', 'Student Address', '2024-04-18 14:46:50'),
(52, 'Student Name', NULL, '', NULL, 'Roll Numbe', 'Student Address', '2024-04-18 14:46:55'),
(53, 'Ragni', NULL, '', NULL, '2324', 'Haryana', '2024-04-18 14:47:27'),
(54, 'Ragni', NULL, '', NULL, '2324', 'Haryana', '2024-04-18 14:50:28'),
(55, 'Student Name', NULL, '', NULL, 'Roll Numbe', 'Student Address', '2024-04-18 14:50:32'),
(56, 'Ragni', NULL, '', NULL, '2324', 'Haryana', '2024-04-18 14:51:00'),
(57, 'Ragni', NULL, '', NULL, '2324', 'Haryana', '2024-04-18 14:52:12'),
(60, 'Ramesh', NULL, '', NULL, '4567', 'Rajasthan', '2024-04-19 02:28:11'),
(61, 'admin', NULL, '', NULL, '8787', 'admink', '2024-04-19 02:33:31'),
(62, 'admin', NULL, '', NULL, '2589', 'kkr', '2024-04-19 02:35:28'),
(91, 'Admin1', '2024-04-12', '', 3, '3235', 'qwer', '2024-04-24 02:00:15'),
(92, 'Admin2', '2024-04-19', '', 1, '1', '1', '2024-04-24 02:01:55'),
(93, 'Admin3', '2024-04-19', '1', 1, '1592', 'Sector L', '2024-04-24 02:05:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stu_profile`
--
ALTER TABLE `stu_profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stu_profile`
--
ALTER TABLE `stu_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
