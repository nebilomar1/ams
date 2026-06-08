-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2024 at 02:08 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahmed`
--
CREATE DATABASE IF NOT EXISTS `ahmed` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ahmed`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_as` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `role_as`) VALUES
(1, 'qa', '123', 'q'),
(2, 'ws', '123', 'w'),
(3, 'ed', '123', 'e'),
(4, 'rf', '123', 'r');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `employee`
--
CREATE DATABASE IF NOT EXISTS `employee` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `employee`;

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(64) NOT NULL,
  `emp_phone` char(10) NOT NULL,
  `emp_email` varchar(64) NOT NULL,
  `emp_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`emp_id`, `emp_name`, `emp_phone`, `emp_email`, `emp_address`) VALUES
(1, '22', '47', '33', '33'),
(2, 'k', 'q', 's', 'f'),
(3, 'k', 'g', 'e', 'f'),
(4, 'te', 'etet', 'ttt', 'wye'),
(67, 're', '098', '4reed', '7ytg'),
(74, '777', '7777', '7777', '7777'),
(98, 'iu', '09', '09', '09'),
(99, 'iu', '09', '09', '09'),
(567, 'dine', '098765', 'dime@gmail.com', 'harar'),
(74644, '6464', 'iu', '63464', 'utu');

-- --------------------------------------------------------

--
-- Table structure for table `empl`
--

CREATE TABLE `empl` (
  `emp_name` varchar(100) NOT NULL,
  `emp_phone` varchar(100) NOT NULL,
  `emp_email` varchar(100) NOT NULL,
  `emp_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `empl`
--

INSERT INTO `empl` (`emp_name`, `emp_phone`, `emp_email`, `emp_address`) VALUES
('88', '98', '99', '98'),
('jjgfgf', '98', 'ii', 'kk'),
('yy', '099', 'oo', '766');

-- --------------------------------------------------------

--
-- Table structure for table `sumbmittask`
--

CREATE TABLE `sumbmittask` (
  `tid` varchar(233) NOT NULL,
  `id` varchar(22) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `date` date NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `empl`
--
ALTER TABLE `empl`
  ADD PRIMARY KEY (`emp_name`);

--
-- Indexes for table `sumbmittask`
--
ALTER TABLE `sumbmittask`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74645;
--
-- Database: `employeems`
--
CREATE DATABASE IF NOT EXISTS `employeems` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `employeems`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` varchar(22) NOT NULL,
  `user` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `pwd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `user`, `type`, `email`, `phone`, `address`, `photo`, `gender`, `date`, `pwd`) VALUES
('11', 'dine', 'Admin', 'Admin@gmail.com', '0987765543', 'harar', 'Screenshot 2024-05-01 053433.png', 'male', '2024-05-14', '$2b$10$gmjgRsQAXf8fYcgaUS54tOITetNPUiAtS9uYVJuBTU6FR.B6ydLi6'),
('111', 'Dine', 'Employee', 'Di@gamil.com', '8474646444', 'terere', 'photo_1715085237675.jpg', 'male', '2024-05-07', '$2b$10$89RvGtZwIEd64BaKvSP4l.nTlewcHZWPLVHoIFgQKr.eA97BTpTdW'),
('12', 'rere', 'Employee', 'din611@gmail.com', '0976654', 'fdss', '20180827_103844.jpg', 'male', '0000-00-00', '$2b$10$8yx93gFJmJMZPQCuHDlHjuIUCC8V7.r5FmM8pae9tU.dtRhth6uOK'),
('14', 'finance', 'Finance', 'Finance@gmail.com', '0976654', 'fdss', 'Screenshot 2024-05-01 053455.png', 'male', '2024-05-07', '$2b$10$CCPnx.HrRAqwJ2BcFvQgbOo89qiGQmIVlhXmf.YIjQxv1EeSgISgi'),
('18999', 'dine mohame', 'HR-manager', 'HRmanager@gmail.com', '0976654', 'fdss', '20190907_152806.jpg', 'male', '2024-04-25', '$2b$10$ZTB9oYtKtJY7gDzP2/4m4.oHRtgRYjvCSuygtmm9aRFS6.Ih3hDf2'),
('2', 'dgdg', 'Employee', 'D@gmail.com', '938737464', 'hdhdgh', 'photo_1715532548674.png', 'male', '2024-05-12', '$2b$10$sqok8JUgYlEj0ZTYdas6yehVqCW/OxfOmNwFYiHMOT4tyVkKipUWu'),
('637373', 'Dine', 'Employee', 'moh@ga.com', '099887766', 'hdgdgd', 'photo_1715083458851.jpg', 'male', '2024-05-07', '$2b$10$Zkjdjjg9khGCr6Nlehnke.j89/qUaoKqwdZk.5ioR.F9rknZiGSHy'),
('65', 'Ahmed', 'Task-manager', 'dine62611@gmail.com', '0976654', 'fdss', '20190818_122059.jpg', 'male', '2024-05-09', '$2b$10$d94nHW8RLpBMrxH6JySZ6ejGeJtBFF9021qY3lUYjkqlwQZfYQmuy'),
('677770000', 'hhhhh', 'Employee', 'dacho@gmail.com', '099877', 'harar', 'photo_1715083141424.png', 'male', '2024-05-01', '$2b$10$6kavjit4CXG5HXdsZ7gPnOPWsMwK4kYrEPshaHPEAQbJ0gdLnPs..'),
('7464', 'fgh', 'Employee', 'dine6261@gmail.com', '0976654', 'fdss', 'C:\\fakepath\\Screenshot 2023-12-11 190227.png', 'male', '2024-04-16', '$2b$10$9YeuePELZM6P8nhT39H4NOit/IttL9.3iXJDKCHHyFasINmEPmyF2'),
('7868', 'fffff', 'Employee', 'd@gmail.com', '0998765', 'harar', 'C:\\fakepath\\download (2).jpg', 'male', '2024-05-23', '$2b$10$1k7g2lfA25hwzHjlSyvUzOKx4ySui.PEh8yddtwk68NI2vLpBmSUm');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` int(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 1222);

-- --------------------------------------------------------

--
-- Table structure for table `approveattendance`
--

CREATE TABLE `approveattendance` (
  `aid` int(11) NOT NULL,
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `present` varchar(100) NOT NULL DEFAULT 'present'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approveattendance`
--

INSERT INTO `approveattendance` (`aid`, `id`, `name`, `date`, `present`) VALUES
(84, '12', 'dine', '2024-04-29 04:26:30.901217', '1'),
(85, '12', 'dine', '2024-04-29 04:26:30.901217', '1'),
(86, '12', 'dine', '2024-04-29 05:20:46.120919', '1'),
(87, '12', 'dine', '2024-04-29 05:25:33.388714', '1'),
(88, '12', 'dine', '2024-04-29 05:30:22.827821', '1'),
(89, '12', 'dine', '2024-04-29 05:39:36.906036', '1'),
(90, '12', 'dine', '2024-04-29 05:43:37.961625', '1');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`name`, `id`, `date`) VALUES
('egegeg', '11', '2024-05-12 05:38:13.789994'),
('dineww', '12', '2024-05-12 05:00:55.745218');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `did` varchar(22) NOT NULL,
  `department` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`did`, `department`) VALUES
('00', 'info'),
('34', 'ITe'),
('45', 'wertyui');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `user` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `salary` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `cv` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `account` varchar(100) NOT NULL,
  `did` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `user`, `email`, `phone`, `salary`, `address`, `gender`, `cv`, `date`, `account`, `did`) VALUES
(1, 'dine', 'Admin@gmail.com', '0987765543', '234567890', 'harar', 'male', 'cv_1715283730594.png', '2024-05-08', '23456789', '00'),
(2, 'ewwwww', 'dacho@gmail.com', '0987623456', '2345678', 'hdgsdbs', 'male', 'cv_1715532576482.png', '2024-04-16', '1234567890', '34'),
(3, 'hgdgdg', 'Taskmanager@gmail.com', '0948474747', '7373636', 'hwhgsgds', 'female', 'C:\\fakepath\\20180827_085516.jpg', '2024-05-09', '0987645', '34'),
(4, 'gdgdgd', 'Din@tyy.com', '09875678', '2345678', 'hsgsgs', 'male', 'cv_1715199783445.jpg', '2024-05-17', '1234567890', '00'),
(5, 'dachas', 'dacho@gmail.com', '0987645', '234567', 'hdgsdbs', 'male', 'C:\\fakepath\\Screenshot 2023-12-11 190227.png', '2024-04-24', '1234567', '00'),
(6, 'dinee   ', 'dine6261@gmail.com', '098877644', '987663', 'harar', 'male', 'C:\\fakepath\\Screenshot 2023-12-11 190243.png', '2024-04-04', '10000162736363', '34'),
(7, 'ress dd', 'waha@gmail.com', '0948474', '53636', 'tete', 'male', 'cv_1715326440102.png', '2024-05-06', '633564747', '34'),
(8, 'fdss', 'Finance@gmail.com', '0976654', '456789567', 'hdgsdbs', 'male', 'C:\\fakepath\\Screenshot 2023-12-11 190227.png', '2024-04-09', '1836345678', '34');

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `id` varchar(234) NOT NULL,
  `name` varchar(124) NOT NULL,
  `description` varchar(333) NOT NULL,
  `dates` date NOT NULL,
  `enddate` date NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave`
--

INSERT INTO `leave` (`id`, `name`, `description`, `dates`, `enddate`, `action`) VALUES
('56789', 'dine mohammed', 'drftgyhujikrftgyhujikertfgyhujirtfgyhujikrtfgyhujirtyu', '2024-04-25', '2024-04-18', 'Approve'),
('7464', 'fgh', 'dfgghdshhdfhjdfhdfjhdfjhdfjhdfjhdfshjdfhdfsghgdfsghfvvvvvvvvvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbvb', '2024-05-06', '2024-05-13', 'Approve');

-- --------------------------------------------------------

--
-- Table structure for table `nemployee`
--

CREATE TABLE `nemployee` (
  `nid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `info` varchar(2000) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `cv` varchar(1000) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nemployee`
--

INSERT INTO `nemployee` (`nid`, `name`, `phone`, `address`, `info`, `gender`, `date`, `cv`, `action`) VALUES
(2, 'dine', '093484743', 'hagaf', 'dfghjjjdhfhhjfhdfkhcdhvbfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 'male', '2024-05-07', 'cv_1715107859859.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `oooo`
--

CREATE TABLE `oooo` (
  `id` int(11) NOT NULL,
  `men` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `sid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `account` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `salary` int(11) NOT NULL,
  `tax` varchar(200) NOT NULL,
  `net` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`sid`, `id`, `name`, `account`, `date`, `salary`, `tax`, `net`) VALUES
(37, 12, 'ewwwww', 1234567890, '2024-05-31', 2345678, '234567.8', '2111110.2'),
(38, 12, 'ewwwww', 1234567890, '2024-05-23', 2345678, '234567.8', '2111110.2');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `topic` varchar(2000) NOT NULL,
  `monday` varchar(200) NOT NULL,
  `tuesday` varchar(200) NOT NULL,
  `wednesday` varchar(200) NOT NULL,
  `thursday` varchar(200) NOT NULL,
  `friday` varchar(200) NOT NULL,
  `saturday` varchar(200) NOT NULL,
  `sunday` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`topic`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`) VALUES
('dgdgdf', 'dgdf', 'dfgd', 'dgff', 'dfdf', 'dffgd', 'dfcfd', 'dffd');

-- --------------------------------------------------------

--
-- Table structure for table `sumbmittask`
--

CREATE TABLE `sumbmittask` (
  `tid` varchar(233) NOT NULL,
  `id` varchar(22) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `date` date NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sumbmittask`
--

INSERT INTO `sumbmittask` (`tid`, `id`, `name`, `description`, `date`, `action`) VALUES
('788888', '12', 'tere', 'fghjkdfgshjdfghfgjklvbkhfhgbhjnbjvnjhvjnvnvnfnvhvhhfhb', '2024-05-21', 'Cancel'),
('99', '7464', 'fgh', 'dfghjkdfvgdfghjkfcgvbhnjvbhnjmfgvbhnjmkvbhnjmkfgvbhnjkmvbhnj', '2024-04-17', 'Approve');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `tid` varchar(20) NOT NULL,
  `id` varchar(22) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `dates` date NOT NULL,
  `enddate` date NOT NULL,
  `action` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`tid`, `id`, `type`, `description`, `dates`, `enddate`, `action`) VALUES
('34', '7464', 'Supervisor', 'borii ganama mana barnota aanaa sad 1ffaa sinana ganda1 deemun ademsaa baruf barsiisu isanii fi rakko jiru addan basuu akka nuf gabastuu guyya lama kessatti', '2024-04-11', '2024-04-24', 'hojedhu'),
('756', '11', 'Employee', 'fdghjdxfcgvhbjkdfgchbjncgfvbhjnfcgvbhjncfvgbhnjfgvbhjnvhbjn', '2024-05-10', '2024-06-09', 'Due'),
('788888', '12', 'Employee', 'fghjksdfghjkertyuiodfghjkldfghjkldfghjkldfghjkdfghjkfghj', '2024-05-24', '2024-05-25', 'Due');

-- --------------------------------------------------------

--
-- Table structure for table `taskpay`
--

CREATE TABLE `taskpay` (
  `pid` int(11) NOT NULL,
  `id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `tid` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taskpay`
--

INSERT INTO `taskpay` (`pid`, `id`, `name`, `amount`, `date`, `tid`) VALUES
(1, '7464', 'fdss', '3455', '2024-05-23', 34),
(2, '11', 'dine', '564747', '2024-05-03', 756);

-- --------------------------------------------------------

--
-- Table structure for table `vacancy`
--

CREATE TABLE `vacancy` (
  `head` varchar(200) NOT NULL,
  `vacancy` varchar(2000) NOT NULL,
  `register` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vacancy`
--

INSERT INTO `vacancy` (`head`, `vacancy`, `register`) VALUES
('beksisa qacarriii', 'birron barnota godinaa bale ogessa ict gulanta birron barnota oromiyaa basee gutan dorgomsise qacaru barbada hanga guyyyaa  ', 'to apply'),
('bekiissa', 'ghshfhfhghfhgfjgfgjfdhjvhghfhbhbhgg', 'to apply');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approveattendance`
--
ALTER TABLE `approveattendance`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `nemployee`
--
ALTER TABLE `nemployee`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `oooo`
--
ALTER TABLE `oooo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `sumbmittask`
--
ALTER TABLE `sumbmittask`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `aid` (`id`);

--
-- Indexes for table `taskpay`
--
ALTER TABLE `taskpay`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `approveattendance`
--
ALTER TABLE `approveattendance`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nemployee`
--
ALTER TABLE `nemployee`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oooo`
--
ALTER TABLE `oooo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `taskpay`
--
ALTER TABLE `taskpay`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`did`) REFERENCES `department` (`did`);

--
-- Constraints for table `nemployee`
--
ALTER TABLE `nemployee`
  ADD CONSTRAINT `nemployee_ibfk_1` FOREIGN KEY (`nid`) REFERENCES `employee` (`id`);

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`id`) REFERENCES `account` (`id`);
--
-- Database: `hsrent`
--
CREATE DATABASE IF NOT EXISTS `hsrent` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hsrent`;

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `name` varchar(100) NOT NULL,
  `id` int(20) NOT NULL,
  `gender` char(1) NOT NULL,
  `age` int(3) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`name`, `id`, `gender`, `age`, `email`) VALUES
('53', 2, 'm', 1, 'gd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tenant`
--
ALTER TABLE `tenant`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `innvohrms`
--
CREATE DATABASE IF NOT EXISTS `innvohrms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `innvohrms`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(40) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `role_as` varchar(200) NOT NULL,
  `password` varchar(40) NOT NULL,
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `fname`, `lname`, `sex`, `dob`, `email`, `phone`, `address`, `role_as`, `password`, `username`) VALUES
(3, 'nebil', 'omar', 'Male', '2001-09-11', 'nebilomar2023@gmail.com', '0986420035', 'harar', 'superadmin', '1234', 'Admin'),
(4, 'Dine', 'Mohammed', 'Male', '2001-02-10', 'dine62@gmail.com', '0963326261', 'harar', 'admin', '1234', 'HR Manager'),
(5, 'Hanan', 'Mohammed', 'Female', '2003-01-22', 'hanan@gmail.com', '0987654321', 'dire dawa', 'finance', '1234', 'Finance'),
(6, 'Umar', 'Man', 'Male', '2006-02-05', 'umarman@gmail.com', '0952535870', 'harar', 'accountant', '1234', 'accountant');

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'nebilomar@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_taken`
--

CREATE TABLE `attendance_taken` (
  `id` int(11) NOT NULL,
  `eid` varchar(20) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `attendance` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance_taken`
--

INSERT INTO `attendance_taken` (`id`, `eid`, `firstName`, `lastName`, `date`, `attendance`) VALUES
(19, '1', 'nebil', 'omar', '26-09-2023', 'Present'),
(20, '2', 'Hanan', 'Mohammed', '26-09-2023', 'Abscent'),
(21, '3', 'nebil', 'omar', '26-09-2023', 'Present'),
(22, '4', 'Dine', 'Mohammed', '26-09-2023', 'Present'),
(23, '5', 'dacho', 'man', '26-09-2023', 'Abscent'),
(24, '1', 'nebil', 'omar', '02-10-2023', 'Present'),
(25, '2', 'Hanan', 'Mohammed', '02-10-2023', 'Present'),
(26, '3', 'nebil', 'omar', '02-10-2023', 'Present'),
(27, '4', 'Dine', 'Mohammed', '02-10-2023', 'Present'),
(28, '5', 'dacho', 'man', '02-10-2023', 'Present'),
(29, '1', 'nebil', 'omar', '03-10-2023', 'Present'),
(30, '2', 'Hanan', 'Mohammed', '03-10-2023', 'Abscent'),
(31, '3', 'nebil', 'omar', '03-10-2023', 'Present'),
(32, '4', 'Dine', 'Mohammed', '03-10-2023', 'Present'),
(33, '5', 'dacho', 'man', '03-10-2023', 'Present'),
(34, '7', 'muhajir', 'kedir', '03-10-2023', 'Present'),
(41, '2', 'Hanan', 'Mohammed', '04-11-2023', 'Present'),
(42, '3', 'nebil', 'omar', '04-11-2023', 'Abscent'),
(43, '4', 'Dine', 'Mohammed', '04-11-2023', 'Present'),
(44, '5', 'dacho', 'man', '04-11-2023', 'Present'),
(45, '7', 'muhajir', 'kedir', '04-11-2023', 'Present'),
(46, '8', 'ddd', 'aaa', '04-11-2023', 'Present'),
(53, '2', 'Hanan', 'Mohammed', '08-11-2023', 'Present'),
(54, '3', 'nebil', 'omar', '08-11-2023', 'Abscent'),
(55, '4', 'Dine', 'Mohammed', '08-11-2023', 'Present'),
(56, '5', 'dacho', 'man', '08-11-2023', 'Present'),
(57, '7', 'muhajir', 'kedir', '08-11-2023', 'Present'),
(58, '8', 'ddd', 'aaa', '08-11-2023', 'Abscent'),
(59, '2', 'Hanan', 'Mohammed', '18-11-2023', 'Present'),
(60, '3', 'nebil', 'omar', '18-11-2023', 'Abscent'),
(61, '4', 'Dine', 'Mohammed', '18-11-2023', 'Present'),
(62, '5', 'dacho', 'man', '18-11-2023', 'Present'),
(63, '7', 'muhajir', 'kedir', '18-11-2023', 'Present'),
(64, '8', 'ddd', 'aaa', '18-11-2023', 'Present'),
(65, '2', 'Hanan', 'Mohammed', '05-12-2023', 'Present'),
(66, '4', 'Dine', 'Mohammed', '05-12-2023', 'Abscent'),
(67, '5', 'dacho', 'man', '05-12-2023', 'Abscent'),
(68, '7', 'muhajir', 'kedir', '05-12-2023', 'Abscent'),
(69, '8', 'ddd', 'aaa', '05-12-2023', 'Present'),
(70, '9', 'sami', 'shiferaw', '05-12-2023', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `create_attendance`
--

CREATE TABLE `create_attendance` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `month` varchar(40) NOT NULL,
  `morning` varchar(40) NOT NULL,
  `afternoon` varchar(40) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(200) NOT NULL,
  `DepartmentShortName` varchar(25) NOT NULL,
  `DepartmentCode` varchar(100) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Human resource', 'HR', 'HR01', '2023-08-30 07:14:06'),
(2, 'Human resource', 'HR', 'HR01', '2023-08-30 07:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nid` int(11) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dept` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `gender`, `contact`, `nid`, `address`, `dept`, `degree`, `pic`) VALUES
(2, 'Hanan', 'Mohammed', 'hanan@gmail.com', '1234', '2005-02-04', 'Female', '0987654321', 72543658, 'dire dawa', 'management', 'Bsc.', 'images/Snapchat-698795826.jpg'),
(4, 'Dine', 'Mohammed', 'dine62@gmail.com', '1234', '2001-05-15', 'Male', '0963326261', 2335, 'harar', 'creative', 'Bsc.', 'images/IMG_20220708_105423_075.jpg'),
(5, 'dacho', 'man', 'dacho@gmail.com', '1234', '2005-12-20', 'Male', '0983018283', 12354, 'Awaday', 'creative', 'Bsc.', 'images/Snapchat-1935960430.jpg'),
(7, 'muhajir', 'kedir', 'muhajir@gmail.com', '1234', '1998-01-12', 'Male', '0945998289', 2555, 'harar', 'management', 'Bsc.', 'images/IMG_20220708_105423_383.jpg'),
(8, 'ddd', 'aaa', 'dine62611@gmail.com', '1234', '2002-02-01', 'Male', '0976654', 123, 'fdss', 'cs', 'Degree', 'images/no.jpg'),
(9, 'sami', 'shiferaw', 'sami@gmail.com', '1234', '2023-11-29', 'Female', '9584736356', 12334, 'dff', 'sd', 'Degree', 'images/no.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave`
--

CREATE TABLE `employee_leave` (
  `id` int(11) DEFAULT NULL,
  `token` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `reason` char(100) DEFAULT NULL,
  `status` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee_leave`
--

INSERT INTO `employee_leave` (`id`, `token`, `start`, `end`, `reason`, `status`) VALUES
(0, 1, '2023-10-01', '2023-10-02', 'Emergency Leave', 'Pending'),
(5, 2, '2023-10-01', '2023-10-02', 'Emergency Leave', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `mark_attendance`
--

CREATE TABLE `mark_attendance` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `Sex` char(20) NOT NULL,
  `date` date NOT NULL,
  `Department` varchar(200) NOT NULL,
  `Attendance` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mark_attendance`
--

INSERT INTO `mark_attendance` (`id`, `FirstName`, `LastName`, `Sex`, `date`, `Department`, `Attendance`) VALUES
(1, 'nebil', 'omar', ' F', '2023-08-30', 'Computer science', 'present'),
(12, 'timaj', 'ramadan', ' F', '2023-08-31', 'Information System', 'Absent');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id` int(20) NOT NULL,
  `ref_no` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `type` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT NULL,
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `eid`, `pname`, `duedate`, `subdate`, `mark`, `status`) VALUES
(1, 2350, 'developing website', '2023-09-07', NULL, 0, 'Due'),
(2, 2350, 'developing website', '2023-09-07', NULL, 0, 'Due'),
(3, 2, 'developing website', '2023-09-09', '2023-09-10', 10, 'Submitted'),
(4, 2, 'developing website', '2023-09-11', '2023-09-30', 20, 'Submitted'),
(5, 3, 'graphics', '2023-09-23', '2023-09-30', 20, 'Submitted'),
(6, 5, 'graphics', '2023-10-02', '2023-10-03', 10, 'Submitted'),
(7, 7, 'analysing data', '2023-10-02', NULL, 0, 'Due');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`eid`, `points`) VALUES
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(6, 0),
(7, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(6, 0),
(7, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(6, 0),
(7, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(6, 0),
(7, 0),
(0, 0),
(0, 0),
(0, 0),
(0, 0),
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(20) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `Dob` date NOT NULL,
  `Department` varchar(200) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(200) NOT NULL,
  `Phonenumber` char(40) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, '12d', 'nebil', 'omar', 'nebilomar2023@gmail.com', '', 'Female', '2023-08-18', 'Fianance', 'harar', 'harar', 'Ethiopia', '0986420035', 1, '2023-08-30 11:08:04'),
(2, '12', 'nebil', 'omar', 'nebilomar2023@gmail.com', '', '', '0000-00-00', '', 'harar', 'harar', 'Ethiopia', '0986420035', 1, '2023-08-30 11:55:27'),
(3, '123', 'nebil', 'omar', 'nebilomar2023@gmail.com', '', 'Male', '2023-08-13', 'Fianance', 'harar', 'harar', 'Ethiopia', '0986420035', 1, '2023-08-30 13:29:33'),
(4, '234', 'fadil', 'jamal', 'james@gmail.com', '', 'Male', '2023-08-16', 'Human Resource', 'dire dawa', 'dire dawa', 'Ethiopia', '0987654321', 1, '2023-08-30 13:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `workday` varchar(20) NOT NULL,
  `position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `workday` varchar(20) NOT NULL,
  `basic_salary` double NOT NULL,
  `position` double NOT NULL,
  `pocket` double NOT NULL,
  `gross_salary` double NOT NULL,
  `incometax` double NOT NULL,
  `abaydam` double NOT NULL,
  `laptop` double NOT NULL,
  `beaden` decimal(50,0) NOT NULL,
  `pension` double NOT NULL,
  `deduction` double NOT NULL,
  `net_salary` double NOT NULL,
  `date` date NOT NULL,
  `sign` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(0, 10000, 0, 10000),
(1, 20000, 0, 20000),
(2, 10000, 0, 10000),
(3, 10000, 0, 10000),
(4, 2000, 0, 2000),
(5, 10000, 0, 10000),
(6, 20000, 0, 20000),
(7, 12000, 0, 12000),
(8, 123422, 0, 123422),
(9, 12234, 0, 12234);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_taken`
--
ALTER TABLE `attendance_taken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_attendance`
--
ALTER TABLE `create_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`token`);

--
-- Indexes for table `mark_attendance`
--
ALTER TABLE `mark_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance_taken`
--
ALTER TABLE `attendance_taken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `create_attendance`
--
ALTER TABLE `create_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mark_attendance`
--
ALTER TABLE `mark_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
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

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

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
('root', '[{\"db\":\"employeems\",\"table\":\"category\"},{\"db\":\"employeems\",\"table\":\"department\"},{\"db\":\"employeems\",\"table\":\"account\"},{\"db\":\"employeems\",\"table\":\"acount\"},{\"db\":\"employeems\",\"table\":\"13_02_2024\"},{\"db\":\"employeems\",\"table\":\"09_02_2024\"},{\"db\":\"employeems\",\"table\":\"10_02_2024\"},{\"db\":\"employeems\",\"table\":\"11_02_2024\"},{\"db\":\"employeems\",\"table\":\"admin\"}]');

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
('root', '2024-02-15 20:38:54', '{\"Console\\/Mode\":\"collapse\"}');

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
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
