-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 06:11 AM
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
-- Database: `demo`
--
CREATE DATABASE IF NOT EXISTS `demo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `demo`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"student\",\"table\":\"stu_profile\"},{\"db\":\"student\",\"table\":\"batch\"},{\"db\":\"student\",\"table\":\"result\"},{\"db\":\"student\",\"table\":\"course\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-04-11 02:42:10', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `student`
--
CREATE DATABASE IF NOT EXISTS `student` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `student`;

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
(1, '1', 'Mdcism', '2023-02-06', '2026-02-06', '2024-04-22 01:23:57'),
(2, '2', 'ccc', '2022-01-01', '2023-01-01', '2024-04-22 01:23:35'),
(3, '3', 'O level', '2024-01-01', '2025-01-01', '2024-04-22 01:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `course_id` varchar(10) DEFAULT NULL,
  `student_id` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `course_id`, `student_id`, `dob`, `time_stamp`) VALUES
(0, 'Aditya', 'O Level', '4', '1985-02-08', '2024-04-22 03:37:58'),
(1, 'mohit', 'bsc it 005', 'bit001', '2024-10-15', '2024-04-21 18:14:22');

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
  `batch_id` int(10) DEFAULT NULL,
  `roll_no` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stu_profile`
--

INSERT INTO `stu_profile` (`id`, `name`, `dob`, `batch_id`, `roll_no`, `address`, `time_stamp`) VALUES
(1, 'John', '2021-12-12', 1, '2122', 'kanpur road lucknow', '2024-04-11 15:52:52'),
(2, 'Peeter', '1995-02-12', 1, '2123', 'sitapur', '2024-04-11 15:53:06'),
(3, 'Somya', '2001-05-11', 2, '2124', 'Balrampur', '2024-04-11 15:53:19'),
(4, 'aditya', '1985-08-02', 1, '2125', 'sec-l ashiyana', '2024-04-11 02:58:21'),
(5, 'narendra', '1988-12-18', 2, '2126', 'sec-c lda', '2024-04-11 02:58:31'),
(6, 'mohit', '1987-12-17', 2, '2127', 'sec-c lda', '2024-04-11 02:58:39'),
(7, 'amit', '1980-08-05', 3, '2128', 'parag lucknow', '2024-04-11 02:58:49'),
(8, 'vivak', '1987-05-15', 3, '2129', 'para lucknow', '2024-04-11 02:58:57'),
(9, 'shashank', '1995-02-05', 3, '2130', 'omax lucknow', '2024-04-11 02:59:03'),
(11, 'Sunil', '2020-12-20', NULL, '2131', 'LDA COLONY ', '2024-04-15 18:56:50'),
(12, 'Mohan', '2020-12-12', NULL, '3032', 'LDA Lucknow', '2024-04-16 03:19:43'),
(13, 'Mohan', '2020-12-12', NULL, '3032', 'LDA Lucknow', '2024-04-16 03:30:48'),
(14, 'Mohan', '2020-12-12', NULL, '3032', 'LDA Lucknow', '2024-04-16 03:31:23'),
(15, 'Narendra', NULL, NULL, '4545', 'lda kanpur', '2024-04-16 03:36:10'),
(16, 'admin', NULL, NULL, '2222', 'root', '2024-04-16 03:36:45'),
(28, 'Shital', NULL, NULL, '7878', 'Sitapur', '2024-04-16 03:54:57'),
(29, 'Shital', NULL, NULL, '7878', 'Sitapur', '2024-04-16 03:55:09'),
(30, 'Shital', NULL, NULL, '7878', 'Sitapur', '2024-04-16 03:55:28'),
(31, 'Shital', NULL, NULL, '7878', 'Sitapur', '2024-04-16 03:55:41'),
(32, 'Shital', NULL, NULL, '7878', 'Sitapur', '2024-04-16 03:56:09'),
(33, 'Shital', NULL, NULL, '7878', 'Sitapur', '2024-04-16 03:58:53'),
(34, 'Shital', NULL, NULL, '7878', 'Sitapur', '2024-04-16 03:59:15'),
(35, 'Shital', NULL, NULL, '7878', 'Sitapur', '2024-04-16 03:59:31'),
(36, 'Shital', NULL, NULL, '7878', 'Sitapur', '2024-04-16 04:00:53'),
(37, 'Shital', NULL, NULL, '7878', 'Sitapur', '2024-04-16 04:02:39'),
(38, 'Shital', NULL, NULL, '7878', 'Sitapur', '2024-04-16 04:03:15'),
(39, 'Shital', NULL, NULL, '7878', 'Sitapur', '2024-04-16 04:03:42'),
(40, 'Shital', NULL, NULL, '7878', 'Sitapur', '2024-04-16 04:04:20'),
(41, 'Shital', NULL, NULL, '7878', 'Sitapur', '2024-04-16 04:04:37'),
(42, 'Shital', NULL, NULL, '7878', 'Sitapur', '2024-04-16 04:05:25'),
(43, 'Shital', NULL, NULL, '7878', 'Sitapur', '2024-04-16 04:05:43'),
(50, 'Ragni', NULL, NULL, '2324', 'Haryana', '2024-04-18 14:46:34'),
(51, 'Student Name', NULL, NULL, 'Roll Numbe', 'Student Address', '2024-04-18 14:46:50'),
(52, 'Student Name', NULL, NULL, 'Roll Numbe', 'Student Address', '2024-04-18 14:46:55'),
(53, 'Ragni', NULL, NULL, '2324', 'Haryana', '2024-04-18 14:47:27'),
(54, 'Ragni', NULL, NULL, '2324', 'Haryana', '2024-04-18 14:50:28'),
(55, 'Student Name', NULL, NULL, 'Roll Numbe', 'Student Address', '2024-04-18 14:50:32'),
(56, 'Ragni', NULL, NULL, '2324', 'Haryana', '2024-04-18 14:51:00'),
(57, 'Ragni', NULL, NULL, '2324', 'Haryana', '2024-04-18 14:52:12'),
(60, 'Ramesh', NULL, NULL, '4567', 'Rajasthan', '2024-04-19 02:28:11'),
(61, 'admin', NULL, NULL, '8787', 'admink', '2024-04-19 02:33:31'),
(62, 'admin', NULL, NULL, '2589', 'kkr', '2024-04-19 02:35:28'),
(63, 'name', NULL, NULL, 'roll_no', 'address', '2024-04-19 02:36:08'),
(64, 'admin', NULL, NULL, '8787', 'admink', '2024-04-19 02:54:52'),
(68, 'admin', NULL, NULL, '8787', 'admink', '2024-04-19 02:58:47'),
(75, 'Kumar Shanu', NULL, NULL, '7890', 'Mumbai', '2024-04-19 03:08:22'),
(76, 'Ram Chaurasia', NULL, NULL, '1890', 'Alambag Lucknow', '2024-04-19 03:08:57'),
(79, '', '0000-00-00', 0, '', '', '2024-04-22 02:14:11'),
(80, '', '0000-00-00', 0, '', '', '2024-04-22 02:14:48'),
(81, '', '0000-00-00', 0, '', '', '2024-04-22 02:15:44'),
(82, '', '0000-00-00', 0, '', '', '2024-04-22 02:25:44'),
(83, '', '0000-00-00', 0, '', '', '2024-04-22 02:25:51'),
(84, '', '0000-00-00', 0, '', '', '2024-04-22 02:26:11'),
(85, '', '0000-00-00', 0, '', '', '2024-04-22 02:27:14'),
(86, '', '0000-00-00', 0, '', '', '2024-04-22 02:28:30'),
(87, '', '0000-00-00', 0, '', '', '2024-04-22 02:28:44'),
(88, '', '0000-00-00', 0, '', '', '2024-04-22 02:36:19'),
(89, '', '0000-00-00', 0, '', '', '2024-04-22 02:36:47'),
(90, 'Ragni', '2024-04-10', 3, '2128', '', '2024-04-22 03:06:07');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
