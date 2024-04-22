-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 07:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_name`, `course_fee`, `timestamp`) VALUES
(1, 'ADCA', 15000, '2024-04-09 05:43:02'),
(2, 'MDCISM', 20000, '2024-04-09 05:43:02'),
(3, 'ÇCC', 12000, '2024-04-09 05:43:02');

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
(1, 4445, 2, 1, 'Aditya', '2024-04-09', 'Hari Ram', 'mail@demo.com', 'M', 'Address', 1, '2024-04-03 05:45:41'),
(2, 44668899, 2, 1, 'Narendra Singh', '2023-12-13', 'Raj Sinha', 'deo@mail.com', 'M', 'LDA Lucknow', 1, '2024-04-03 05:52:17'),
(3, 4447, 3, 2, 'Mohit', '0000-00-00', 'Raja Ram', 'mohit@gmail.com', 'M', NULL, 1, '2024-04-03 05:54:31'),
(6, 102, 1, 2, 'Kamla', '2000-01-10', 'Shri Ram', 'kamla@gmail.com', 'F', 'santos marg', 1, '2024-04-05 06:28:07'),
(8, 2029, 0, 0, 'john', '0000-00-00', 'peterson', 'john@gmail.com', 'M', 'Australia', 0, '2024-04-12 04:58:19'),
(9, 556677, 2, 1, 'annu gupta', '2024-04-18', '', '', 'M', 'Address', 1, '2024-04-19 09:28:14'),
(10, 16654, 2, 33, 'Anurag', '0000-00-00', 'Father', 'mail@anurag.com', 'M', NULL, 0, '2024-04-20 07:18:05'),
(12, 18654, 2, 33, 'Anurag', '0000-00-00', 'Father', 'mail@anurag.com', 'M', NULL, 0, '2024-04-20 07:39:16');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
