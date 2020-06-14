-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2020 at 06:38 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(25) NOT NULL,
  `username` varchar(250) NOT NULL,
  `fullName` varchar(40) NOT NULL,
  `userEmail` varchar(50) NOT NULL,
  `contactNo` varchar(10) NOT NULL,
  `password` varchar(250) NOT NULL,
  `rights` int(1) NOT NULL DEFAULT '1',
  `department` varchar(99) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '1',
  `deletee` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `fullName`, `userEmail`, `contactNo`, `password`, `rights`, `department`, `regDate`, `updationDate`, `status`, `deletee`) VALUES
('1', 'admin', 'admin', 'admin@cms.com', '1234567891', 'c6ffd91d468a853b498f7d130663f1e5', 0, '0', '2020-06-08 09:39:56', '0000-00-00 00:00:00', 1, 1),
('10007840', 'transport_admin', 'Salman Khan', 'salman@gmail.com', '8889787656', 'c6ffd91d468a853b498f7d130663f1e5', 1, '80558807', '2020-06-13 11:49:21', '2020-06-13 11:49:21', 1, 1),
('24258880', 'food_admin', 'Akshay Kumar', 'akshay@gmail.com', '9878987678', 'c6ffd91d468a853b498f7d130663f1e5', 1, '67709160', '2020-06-13 11:48:15', '2020-06-13 11:48:15', 1, 1),
('38072947', 'cse_admin', 'Kajol', 'kajol@gmail.com', '9876564321', 'c6ffd91d468a853b498f7d130663f1e5', 1, '6548314', '2020-06-13 11:54:35', '2020-06-13 11:54:35', 1, 1),
('55114511', 'sports_admin', 'Ranbir Kapoor', 'ranbir@gmail.com', '9876543289', '5258038d5acd4cc3c3cabf48cd496cd5', 1, '63565407', '2020-06-13 11:45:17', '2020-06-13 11:45:17', 1, 1),
('63935716', 'mechnical_admin', 'Shridevi', 'shridevi@gmail.com', '9876565434', 'c6ffd91d468a853b498f7d130663f1e5', 1, '5336397', '2020-06-13 11:53:49', '2020-06-13 11:53:49', 1, 1),
('73083538', 'office_admin', 'Shahid Kapoor', 'shahid@gmail.com', '8888787666', 'c6ffd91d468a853b498f7d130663f1e5', 1, '88357632', '2020-06-13 11:51:34', '2020-06-13 11:51:34', 1, 1),
('815410', 'ca_admin', 'Katrina Kaif', 'katrina@gmail.com', '8989898976', 'c6ffd91d468a853b498f7d130663f1e5', 1, '533373531', '2020-06-13 11:52:41', '2020-06-13 11:52:41', 1, 1),
('83632276', 'hostel_admin', 'Ranveer Singh', 'ranvir@gmail.com', '9876676435', '73c5e62e2b6e762252c62435746ad0d7', 1, '61195982', '2020-06-13 11:42:43', '2020-06-13 11:49:58', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` varchar(25) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
('61195982', 'Hostel', 'Hostel Department', '2020-06-13 10:57:59', NULL),
('63565407', 'Sports', 'Sports Department', '2020-06-13 10:57:11', NULL),
('67709160', 'Food Department', 'includes Square one, Square Two', '2020-06-13 11:26:35', NULL),
('80558807', 'Transport', 'Transport Department', '2020-06-13 11:25:13', NULL),
('88357632', 'Offices', 'Office Department', '2020-06-13 10:57:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2019-07-01 07:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2019-07-01 18:37:59'),
(3, 3, 'in process', 'test', '2019-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2019-06-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2019-09-05 17:08:26'),
(6, 5, 'in process', 'test Data', '2019-06-24 07:26:17'),
(7, 23, 'in process', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-06-24 10:34:47'),
(8, 23, 'closed', 'Issue resolved ', '2019-06-24 10:37:08'),
(9, 2, 'closed', 'dfsfsf', '2019-08-06 02:37:57'),
(10, 25, 'closed', 'closed', '2020-06-01 18:26:36'),
(11, 29, 'in process', 'proes', '2020-06-07 09:04:02'),
(12, 29, 'closed', 'closed', '2020-06-07 09:40:43'),
(13, 27, 'in process', 'Processing', '2020-06-09 13:13:11'),
(14, 28, 'closed', 'done', '2020-06-11 08:21:39'),
(15, 5, 'in process', 'in process', '2020-06-13 09:12:32'),
(16, 180475371, 'in process', 'in process', '2020-06-13 09:14:18'),
(17, 536599448, 'in process', 'We are working on it', '2020-06-13 09:24:54'),
(18, 5, 'closed', 'Fixed', '2020-06-13 09:25:58'),
(19, 3640806, 'in process', 'We are planning for this. Thanks for suggestion', '2020-06-13 16:02:40'),
(20, 9689671, 'closed', 'Solved', '2020-06-13 16:03:22'),
(21, 4095661, 'in process', 'We are working on this', '2020-06-13 16:06:45'),
(22, 1670789, 'closed', 'Sorry for this', '2020-06-13 16:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DepUniqueId` varchar(20) NOT NULL,
  `DepId` varchar(15) NOT NULL,
  `DepName` varchar(30) NOT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DepUniqueId`, `DepId`, `DepName`, `status`) VALUES
('239290', '76767', 'Hospitality and Hotel', 1),
('3786925', '56765', 'B.Pharm', 1),
('533373531', '12345', 'Computer Application', 1),
('5336397', '12333', 'Mechnical', 1),
('6548314', '12332', 'CSE', 1),
('9457768', '23421', 'Nursing', 1),
('9714764', '34562', 'Civil', 1);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(1, 'Chitkara University, Punjab', 'Chitkara campus in Punjab', '2019-07-18 11:35:58', '2020-06-10 20:06:07'),
(2, 'Chitkara University, Himachal', 'Chitkara campus in himachal', '2020-06-01 18:14:45', '2020-06-10 20:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` varchar(25) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
('18790874', 63565407, 'Outdoor Games', '2020-06-13 11:29:08', NULL),
('20870253', 80558807, 'College Bus', '2020-06-13 11:27:17', NULL),
('22310326', 63565407, 'Indoor Games', '2020-06-13 11:29:01', NULL),
('37371235', 67709160, 'Square One', '2020-06-13 11:27:37', NULL),
('38999386', 67709160, 'Square Two', '2020-06-13 11:27:53', NULL),
('48441518', 88357632, 'Fees', '2020-06-13 11:07:28', NULL),
('53289173', 88357632, 'document', '2020-06-13 11:07:41', NULL),
('53741301', 61195982, 'Boys Hostel', '2020-06-13 11:07:04', NULL),
('70892555', 61195982, 'Girls Hostel', '2020-06-13 11:07:12', NULL),
('9521885', 80558807, 'Personal', '2020-06-13 11:26:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` varchar(99) NOT NULL,
  `userId` varchar(99) DEFAULT NULL,
  `category` varchar(25) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `visibility` int(1) NOT NULL DEFAULT '0',
  `department` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`, `visibility`, `department`) VALUES
('1670789', '21786797', '67709160', 'Square One', ' Complaint', 'Chitkara University, Punjab', 'found dead fly in my soup', 'I ordered soup and I found a dead fly in my soup, please improve your food quality.', '', '2020-06-13 15:52:28', 'closed', '2020-06-13 16:08:38', 1, '67709160'),
('3640806', '74629872', '67709160', 'Square One', 'General Query', 'Chitkara University, Punjab', 'No availability of Juice', 'For students good health, there should be a juice corner in College.', '', '2020-06-13 15:42:20', 'in process', '2020-06-13 16:02:40', 1, '67709160'),
('4095661', '54231791', '67709160', 'Square One', ' Complaint', 'Chitkara University, Punjab', 'Tasteless Food', 'Sorry to say sir, but please improve the quality of food in square one, it is tasteless', '', '2020-06-13 12:24:46', 'in process', '2020-06-13 16:06:45', 1, '67709160'),
('4167656', '54231791', '533373531', 'Computer Department', ' Complaint', 'Chitkara University, Punjab', 'AC Stopped Working', 'Its already too hot and ac stopped working, repair it as soon as possible.', '', '2020-06-13 12:27:41', NULL, NULL, 1, '533373531'),
('4261766', '21786797', '88357632', 'Fees', ' Complaint', 'Chitkara University, Punjab', 'Fees is too high', 'My parents cannot afford such a high fee. ', '', '2020-06-13 15:56:34', NULL, NULL, 1, '88357632'),
('5421378', '74629872', '61195982', 'Girls Hostel', ' Complaint', 'Chitkara University, Punjab', 'Hostel mess unhealthy food', 'Having stomach pain after eating mess food. Please provide us healthy food.', '', '2020-06-13 15:35:39', NULL, NULL, 1, '533373531'),
('6836425', '74629872', '533373531', 'Computer Department', ' Complaint', 'Chitkara University, Punjab', 'Slow Net', 'We are students of computer application and we want the net whole day for work but it seems so slow that we are unable to it.', '', '2020-06-13 15:44:24', NULL, NULL, 1, '533373531'),
('9689671', '54231791', '67709160', 'Square One', ' Complaint', 'Chitkara University, Punjab', 'Stale Food', 'Today I brought mess thali and food seems stale', '', '2020-06-13 13:19:42', 'closed', '2020-06-13 16:03:22', 1, '67709160');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, 2, 'deepak@gmail.com', 0x3a3a3100000000000000000000000000, '2019-08-06 02:47:52', '', 1),
(28, 2, 'deepak@gmail.com', 0x3a3a3100000000000000000000000000, '2019-08-06 02:54:39', '01-06-2020 11:44:12 PM', 1),
(29, 0, '1', 0x3a3a3100000000000000000000000000, '2020-06-05 13:24:58', '', 0),
(30, 0, '1', 0x3a3a3100000000000000000000000000, '2020-06-05 13:25:10', '', 0),
(31, 0, 'mohinirana@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-05 13:26:24', '', 0),
(32, 0, 'mohinirana@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-05 13:27:09', '', 0),
(33, 0, 'unnatisharma@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-05 13:28:59', '', 0),
(34, 0, 'mohinirana@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-05 13:31:46', '', 0),
(35, 0, 'mohinirana@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-05 13:36:17', '', 0),
(36, 3, 'amrik@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-05 13:38:29', '05-06-2020 07:15:56 PM', 1),
(37, 0, 'mohinirana@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-06 04:51:31', '', 0),
(38, 3, 'amrik@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-06 04:52:00', '06-06-2020 10:23:40 AM', 1),
(39, 5, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-06 05:09:38', '07-06-2020 03:51:58 PM', 1),
(40, 3, 'amrik@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-06 15:13:32', '', 1),
(41, 5, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-09 12:59:48', '09-06-2020 06:30:57 PM', 1),
(42, 5, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-09 13:10:08', '09-06-2020 06:40:53 PM', 1),
(43, 5, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-09 13:22:06', '09-06-2020 07:01:59 PM', 1),
(44, 5, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-09 14:11:51', '09-06-2020 08:57:26 PM', 1),
(45, 0, 'unnatisharma@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-09 15:29:13', '', 0),
(46, 6, 'unnati@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-09 15:29:32', '09-06-2020 09:02:44 PM', 1),
(47, 5, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-09 15:32:54', '', 1),
(48, 6, 'unnati@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-09 15:36:22', '09-06-2020 09:15:13 PM', 1),
(49, 5, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-09 15:45:22', '09-06-2020 09:22:40 PM', 1),
(50, 6, 'unnati@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-09 15:57:39', '', 1),
(51, 6, 'unnati@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-09 16:06:54', '09-06-2020 09:45:32 PM', 1),
(52, 5, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-10 18:39:47', '11-06-2020 12:13:43 AM', 1),
(53, 6, 'unnati@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-10 18:43:53', '11-06-2020 12:19:00 AM', 1),
(54, 5, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-10 18:49:11', '11-06-2020 12:20:54 AM', 1),
(55, 0, 'ca_admin', 0x3a3a3100000000000000000000000000, '2020-06-11 08:19:15', '', 0),
(56, 0, 'ca_admin', 0x3a3a3100000000000000000000000000, '2020-06-11 08:19:28', '', 0),
(57, 0, 'ca_admin', 0x3a3a3100000000000000000000000000, '2020-06-11 08:19:38', '', 0),
(58, 0, 'ca_admin', 0x3a3a3100000000000000000000000000, '2020-06-11 08:20:00', '', 0),
(59, 5, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-11 08:24:26', '', 1),
(60, 5, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-11 13:44:01', '11-06-2020 07:29:21 PM', 1),
(61, 5, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-11 19:16:27', '', 1),
(62, 5, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-12 03:41:37', '12-06-2020 07:26:41 PM', 1),
(63, 5, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-13 06:38:13', '13-06-2020 12:11:05 PM', 1),
(64, 6, 'unnati@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-13 07:13:42', '', 1),
(65, 6, 'unnati@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-13 07:58:08', '13-06-2020 02:32:31 PM', 1),
(66, 5, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-13 09:06:24', '13-06-2020 02:41:43 PM', 1),
(67, 3, 'amrik@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-13 09:18:42', '', 1),
(68, 3, 'amrik@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-13 09:53:43', '', 1),
(69, 5, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-13 10:06:22', '13-06-2020 03:45:09 PM', 1),
(70, 54231791, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-13 12:12:14', '13-06-2020 06:50:22 PM', 1),
(71, 74629872, 'unnati@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-13 15:30:49', '', 1),
(72, 74629872, 'unnati@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-13 15:36:35', '13-06-2020 09:15:39 PM', 1),
(73, 21786797, 'amrik@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-13 15:45:57', '13-06-2020 09:28:36 PM', 1),
(74, 54231791, 'mohini@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-13 16:13:55', '13-06-2020 09:49:00 PM', 1),
(75, 74629872, 'unnati@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-13 16:19:09', '13-06-2020 09:53:04 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(99) NOT NULL,
  `rollNo` int(15) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `State` int(1) DEFAULT '0',
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `rollNo`, `fullName`, `department`, `userEmail`, `password`, `contactNo`, `State`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
('21786797', 1910981506, 'Amrik Singh', '533373531', 'amrik@gmail.com', '0d70ca2745eb90905d301076f704239a', 9876567543, 1, '4d908cef679fb843b92350d9edfa0064.jpg', '2020-06-13 10:42:53', '2020-06-13 15:46:31', 1),
('46431793', 1910987654, 'Kartavya', '6548314', 'kartavya@gmail.com', '791a0a324b599c81c130f3f0dd1cbfb3', 9876555555, 0, NULL, '2020-06-13 10:44:32', '2020-06-13 10:44:32', 1),
('4790482', 1910981550, 'Khushi Chauhan', '5336397', 'khushi@gmail.com', '2d75a833de8a38dff78ffb4183cd8672', 9898900989, 0, NULL, '2020-06-13 10:37:52', '2020-06-13 10:37:52', 1),
('54231791', 1910981559, 'Mohini Rana', '533373531', 'mohini@gmail.com', 'c6ffd91d468a853b498f7d130663f1e5', 9876543210, 0, '81472874e5181bc7f893deadbf3b5bc0.jpg', '2020-06-13 10:41:29', '2020-06-13 12:13:27', 1),
('74629872', 1910981555, 'Unnati Sharma', '533373531', 'unnati@gmail.com', '43bba9044d18bd3c576d0f05d310db05', 9876545666, 1, '656c903c8b67cf3c7e09bbc2580d7726.jpg', '2020-06-13 10:41:58', '2020-06-13 15:31:43', 1),
('85584743', 1981763534, 'Abhay Rana', '6548314', 'abhay@gmail.com', '2f01618053cddf6b97f4f88df0d2d6af', 1234567890, 0, NULL, '2020-06-13 10:43:46', '2020-06-13 10:43:46', 1),
('91744867', 1910981786, 'Simran Sharma', '5336397', 'simran@gmail.com', 'af4e5834b08749e4351722895ad14f5a', 9876555555, 0, NULL, '2020-06-13 10:39:47', '2020-06-13 10:39:47', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DepUniqueId`),
  ADD UNIQUE KEY `DepId` (`DepId`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rollNo` (`rollNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
