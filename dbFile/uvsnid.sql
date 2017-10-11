-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2016 at 09:55 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uvsnid`
--

-- --------------------------------------------------------

--
-- Table structure for table `agency_police`
--

CREATE TABLE `agency_police` (
  `id` int(11) NOT NULL,
  `officer_names` varchar(255) NOT NULL,
  `thana` varchar(255) NOT NULL,
  `emails` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `status_flag` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agency_police`
--

INSERT INTO `agency_police` (`id`, `officer_names`, `thana`, `emails`, `password`, `created_at`, `modify_at`, `deleted_at`, `status_flag`) VALUES
(5, 'MD IMRAN MADBAR', 'Danmondi Thana', 'imranmadbar@outlook.com', '12345', '2016-07-17 13:53:00', NULL, NULL, '2016-07-17 13:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `careerresult`
--

CREATE TABLE `careerresult` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `status_flag` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `carrecircular`
--

CREATE TABLE `carrecircular` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `status_flag` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `homeslidshow`
--

CREATE TABLE `homeslidshow` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `view_text` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `status_flag` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homeslidshow`
--

INSERT INTO `homeslidshow` (`id`, `title`, `view_text`, `name`, `created_at`, `modify_at`, `deleted_at`, `status_flag`) VALUES
(8, 'Friends', 'University friends have fun.', '146874128012923187_1523607887944556_242340143622175293_n.jpg', '2016-07-17 13:41:20', NULL, NULL, NULL),
(9, 'Rageday', 'Rageday funy photo', '1468741547IMAG0810.jpg', '2016-07-17 13:45:47', NULL, NULL, NULL),
(10, 'wallpaper', 'Windows 08', '1468741583windows_8_official-wide.jpg', '2016-07-17 13:46:23', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `list_of_case`
--

CREATE TABLE `list_of_case` (
  `id` int(11) NOT NULL,
  `national_id` varchar(99) NOT NULL,
  `case_no` varchar(99) NOT NULL,
  `title` varchar(255) NOT NULL,
  `area` varchar(99) NOT NULL,
  `sort_description` varchar(255) NOT NULL,
  `crime_status` varchar(99) NOT NULL,
  `officer_email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_at` datetime DEFAULT NULL,
  `manager_flag` datetime DEFAULT NULL,
  `crime_flag` datetime DEFAULT NULL,
  `active_flag` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `managerprofile`
--

CREATE TABLE `managerprofile` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthday` varchar(99) NOT NULL,
  `gender` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photoname` varchar(255) NOT NULL,
  `status_flag` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `managerprofile`
--

INSERT INTO `managerprofile` (`id`, `name`, `birthday`, `gender`, `email`, `password`, `photoname`, `status_flag`) VALUES
(4, 'MD IMRAN HOSSAIN', '1990-08-15', 'Male', 'imranmadbar@gmail.com', '12345', '1468741023Photo-2.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `status_flag` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `upcomingevent`
--

CREATE TABLE `upcomingevent` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `status_flag` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upcomingevent`
--

INSERT INTO `upcomingevent` (`id`, `title`, `name`, `created_at`, `modify_at`, `deleted_at`, `status_flag`) VALUES
(7, 'University Flowup', '1468741805someday.jpg', '2016-07-17 13:50:05', NULL, NULL, '2016-07-17 13:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `uvsnid_primary`
--

CREATE TABLE `uvsnid_primary` (
  `nid_number` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `village_road` varchar(255) NOT NULL,
  `post_office` varchar(255) NOT NULL,
  `post_code` int(255) NOT NULL,
  `thana_upazila` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `manager_status` datetime DEFAULT NULL,
  `crime_status` datetime DEFAULT NULL,
  `activated_status` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uvsnid_primary`
--

INSERT INTO `uvsnid_primary` (`nid_number`, `name`, `father_name`, `mother_name`, `birthday`, `village_road`, `post_office`, `post_code`, `thana_upazila`, `district`, `photo`, `signature`, `manager_status`, `crime_status`, `activated_status`) VALUES
(12345, 'MD IMRAN HOSSAIN', 'MD MOZAMMEL HOSSAIN.', 'MONOWARA BEGUM', '1990-08-15', 'South Damudya', 'Damudya', 8040, 'Damudya', 'Shariatpur', '1468741923BABU.JPG', '1468741923Signature (2).jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uvsnid_secondary`
--

CREATE TABLE `uvsnid_secondary` (
  `nid_number` int(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sex` varchar(99) DEFAULT NULL,
  `marital_status` varchar(99) DEFAULT NULL,
  `religion` varchar(99) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `emails` varchar(255) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `educational_qualification` varchar(255) DEFAULT NULL,
  `status_flg` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uvsnid_secondary`
--

INSERT INTO `uvsnid_secondary` (`nid_number`, `password`, `sex`, `marital_status`, `religion`, `phone`, `emails`, `present_address`, `educational_qualification`, `status_flg`) VALUES
(12345, '12345', 'Male', 'Single', 'Islam', '01916894486', 'imranmadbar@gmail.com', 'Damra, Dhaka.', 'Graduate.', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agency_police`
--
ALTER TABLE `agency_police`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careerresult`
--
ALTER TABLE `careerresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carrecircular`
--
ALTER TABLE `carrecircular`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homeslidshow`
--
ALTER TABLE `homeslidshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_of_case`
--
ALTER TABLE `list_of_case`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managerprofile`
--
ALTER TABLE `managerprofile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcomingevent`
--
ALTER TABLE `upcomingevent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uvsnid_primary`
--
ALTER TABLE `uvsnid_primary`
  ADD PRIMARY KEY (`nid_number`);

--
-- Indexes for table `uvsnid_secondary`
--
ALTER TABLE `uvsnid_secondary`
  ADD PRIMARY KEY (`nid_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agency_police`
--
ALTER TABLE `agency_police`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `careerresult`
--
ALTER TABLE `careerresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `carrecircular`
--
ALTER TABLE `carrecircular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `homeslidshow`
--
ALTER TABLE `homeslidshow`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `list_of_case`
--
ALTER TABLE `list_of_case`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `managerprofile`
--
ALTER TABLE `managerprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `upcomingevent`
--
ALTER TABLE `upcomingevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
