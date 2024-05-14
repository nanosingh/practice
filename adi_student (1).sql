-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2024 at 05:47 AM
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
-- Database: `adi_student`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` int(10) NOT NULL,
  `batch_name` varchar(100) DEFAULT NULL,
  `batch_start` date DEFAULT NULL,
  `batch_end` date DEFAULT NULL,
  `batch_time` time DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `batch_name`, `batch_start`, `batch_end`, `batch_time`, `status`, `time_stamp`) VALUES
(1, 'mdcism', '2024-03-02', '2025-03-02', '08:00:00', 'active', '2024-04-19 08:13:52'),
(2, 'adca', '2023-03-02', '2025-03-02', '13:00:00', 'active', '2024-04-19 08:13:46'),
(3, 'ccc', '2021-03-02', '2024-03-02', '17:00:00', 'in-active', '2024-04-19 08:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_fee` int(100) NOT NULL DEFAULT 0,
  `duration` int(50) DEFAULT NULL,
  `duration_unit` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_name`, `course_fee`, `duration`, `duration_unit`, `timestamp`) VALUES
(1, 'ADCA', 15000, NULL, NULL, '2024-04-09 05:43:02'),
(2, 'MDCISM', 20000, NULL, NULL, '2024-04-09 05:43:02'),
(3, 'ÇCC', 12000, NULL, NULL, '2024-04-09 05:43:02'),
(4, 'Bsc It', 22000000, 4, 'Year', '2024-04-29 16:19:29'),
(5, 'BCA', 450000, 4, 'Year', '2024-04-30 03:34:08'),
(6, 'BCA', 450000, 4, 'Year', '2024-04-30 03:34:32'),
(7, 'MCA', 50000, 4, 'Year', '2024-04-30 14:58:27'),
(8, 'PGDCA', 100000, 1, 'Year', '2024-04-30 15:04:28'),
(9, 'PGDCA rt', 1202020, 1, 'Year', '2024-04-30 15:08:22'),
(10, 'B. Tech', 222000000, 6, 'Year', '2024-04-30 15:26:55'),
(11, 'B. Tech', 222000000, 6, 'Year', '2024-04-30 15:29:08'),
(12, 'Bsc It 1', 4500000, 1, 'Year', '2024-04-30 15:39:55');

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
(1, 2, 1000),
(2, 2, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `roll_no` int(10) NOT NULL,
  `student_id` int(100) NOT NULL,
  `sem` varchar(100) NOT NULL,
  `max_marks` int(100) NOT NULL,
  `obtain_marks` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `roll_no`, `student_id`, `sem`, `max_marks`, `obtain_marks`) VALUES
(2, 0, 103, '3', 600, 300),
(3, 0, 102, '2', 800, 750),
(4, 0, 2, 'sem1', 500, 400),
(5, 0, 2, 'sem2', 500, 450),
(6, 0, 2, 'sem3', 500, 460),
(7, 0, 3, '1', 600, 45),
(8, 201, 3, '2', 600, 145),
(9, 201, 3, '3', 600, 345),
(10, 201, 3, '4', 600, 545),
(11, 206, 1, 'sem1', 900, 90),
(12, 206, 1, 'sem2', 900, 190),
(13, 206, 1, 'sem3', 900, 900);

-- --------------------------------------------------------

--
-- Table structure for table `student_profile`
--

CREATE TABLE `student_profile` (
  `id` int(11) NOT NULL,
  `roll_no` int(100) NOT NULL,
  `course_id` int(100) NOT NULL DEFAULT 0,
  `batch_id` int(100) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `father` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_profile`
--

INSERT INTO `student_profile` (`id`, `roll_no`, `course_id`, `batch_id`, `name`, `dob`, `father`, `email`, `sex`, `address`, `status`, `timestamp`) VALUES
(1, 4445, 2, 1, 'Aditya', '2024-04-09', 'Hari Ram', 'mail@demo.com', 'M', 'Address Sector L Ashiyan', 1, '2024-04-03 05:45:41'),
(2, 44668899, 2, 1, 'Narendra Singh', '2023-12-13', 'Father', 'deo@mail.com', 'M', 'SECTOR C 1 LDA Lucknow', 1, '2024-04-03 05:52:17'),
(6, 102, 1, 2, 'Kamla', '2000-01-10', 'Shri Ram', 'kamla@gmail.com', 'F', 'santos marg', 1, '2024-04-05 06:28:07'),
(8, 2029, 0, 0, 'john', '0000-00-00', 'peterson', 'john@gmail.com', 'M', 'Australia', 0, '2024-04-12 04:58:19'),
(9, 55667, 2, 1, 'annu gupta', '2024-04-18', 'fatherd', 'mail@gmail.com', 'M', 'Address Kanpur', 1, '2024-04-19 09:28:14'),
(10, 16654, 2, 1, 'Anurag', '0000-00-00', 'Father', 'mail@anurag.com', 'M', 'Lko', 0, '2024-04-20 07:18:05'),
(13, 1234, 1, 1, 'Somya Kapoor', '2024-04-11', 'father', 'mail@gmail.com', 'F', 'LKO', 0, '2024-04-23 14:28:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'user',
  `status` enum('0','1') NOT NULL COMMENT 'admin = 1 , user =0',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `user_name`, `password`, `type`, `status`, `timestamp`) VALUES
(1, 'Admin', 'admin@mail.com', 'admin', 'admin', 'admin', '1', '2024-05-07 14:42:57'),
(5, 'Admin1', 'admin1@mail.com', 'admin1', 'admin', 'user', '0', '2024-05-07 14:42:30'),
(6, 'Narendra', 'nano@mail.com', '', '123', 'user', '0', '2024-05-07 14:42:34'),
(7, 'test', 'test@gmail.com', 'test', 'test', 'admin', '1', '2024-05-07 14:42:47'),
(14, 'demo', 'demo@mail.com', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'user', '1', '2024-05-09 03:05:32');

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
-- Indexes for table `student_profile`
--
ALTER TABLE `student_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll_no` (`roll_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_name` (`user_name`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student_profile`
--
ALTER TABLE `student_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;