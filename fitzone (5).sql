-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2022 at 05:39 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitzone`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_physician`
--

CREATE TABLE `add_physician` (
  `p_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_place` varchar(50) NOT NULL,
  `p_pin` int(11) NOT NULL,
  `p_gender` varchar(10) NOT NULL,
  `p_email` varchar(50) NOT NULL,
  `p_qualification` varchar(50) NOT NULL,
  `p_phone` bigint(11) NOT NULL,
  `p_experience` varchar(50) NOT NULL,
  `license_no` varchar(10) NOT NULL,
  `up_license` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_physician`
--

INSERT INTO `add_physician` (`p_id`, `login_id`, `p_name`, `p_place`, `p_pin`, `p_gender`, `p_email`, `p_qualification`, `p_phone`, `p_experience`, `license_no`, `up_license`) VALUES
(2, 156, 'Dr. Alexander', 'Trivandrum', 643232, 'Male', 'alexander@gmail.com', 'Orthopedist (M.D. or D.O.)', 8743231234, '2 Yr', 'MD0734L', 'license.pdf'),
(4, 164, 'Dr. Sara', 'Alappuzha', 612983, 'Female', 'swarnaadaas308@gmail.com', 'MBBS', 9823487655, '3 Yr', 'MD0833L', 'license.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `add_trainer`
--

CREATE TABLE `add_trainer` (
  `t_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `t_name` varchar(50) NOT NULL,
  `t_place` varchar(50) NOT NULL,
  `t_pin` int(11) NOT NULL,
  `t_gender` varchar(10) NOT NULL,
  `t_email` varchar(50) NOT NULL,
  `certification` varchar(50) NOT NULL,
  `t_phone` bigint(11) NOT NULL,
  `t_experience` varchar(50) NOT NULL,
  `t_aadhar` bigint(50) NOT NULL,
  `t_upaadhar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_trainer`
--

INSERT INTO `add_trainer` (`t_id`, `login_id`, `t_name`, `t_place`, `t_pin`, `t_gender`, `t_email`, `certification`, `t_phone`, `t_experience`, `t_aadhar`, `t_upaadhar`) VALUES
(5, 100, 'Devid ', 'Kollam', 651235, 'Male', 'swarnaadaas308@gmail.com', 'NCSF(National Council on Strength & Fitness)', 8765230987, '2 Yr', 340098762090, 'aadhar.jpg'),
(6, 102, 'Kelvin', 'Trivandrum', 654589, 'Male', 'kelvin@gmail.com', 'FM(Fitness Mentors)', 9854231009, '3 Yr', 900234543343, 'aadhar.jpg'),
(7, 123, 'Mary', 'Calicut', 642345, 'Female', 'mary@gmail.com', 'ACSM(American College of Sports Medicine)', 7634562309, '2 Yr', 872002200123, 'aadhar.jpg'),
(9, 160, 'Catherina', 'Calicut', 612323, 'Female', 'catherina@gmail.com', 'AFAA(Athletics and Fitness Association of America)', 6712126539, '4 Yr and Above', 671200901121, 'aadhar.jpg'),
(10, 161, 'Lal', 'Thrissur', 612345, 'Male', 'lal@gmail.com', 'NSCA(National Strength and Conditioning Associatio', 9123564378, '3 Yr', 120096732567, 'aadhar.jpg'),
(11, 162, 'Bella', 'Ernakulam', 629812, 'Female', 'bella@gmail.com', 'ACE(The American Council on Exercise)', 7612398123, '2 Yr', 763452009876, 'aadhar.jpg'),
(12, 163, 'Ebin', 'Kollam', 654891, 'Male', 'ebin@gmail.com', 'NCSF(National Council on Strength & Fitness)', 7123763248, '2 Yr', 670012678732, 'aadhar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_booking`
--

CREATE TABLE `appointment_booking` (
  `b_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `logid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `b_date` date NOT NULL,
  `slot` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment_booking`
--

INSERT INTO `appointment_booking` (`b_id`, `u_id`, `p_id`, `logid`, `name`, `email`, `phone`, `b_date`, `slot`) VALUES
(65, 51, 4, 72, 'Pooja', 'pooja@gmail.com', '7821474836', '2022-07-15', '14'),
(66, 66, 2, 130, 'Pooja', 'pooja@gmail.com', '7821474836', '2022-07-15', '6'),
(67, 72, 2, 136, 'Sagar', 'sagar@gmail.com', '7898123243', '2022-07-15', '1'),
(68, 76, 2, 140, 'Ankit', 'ankit@gmail.com', '4578963214', '2022-07-19', '2'),
(69, 64, 2, 128, 'Veena', 'veena@gmail.com', '8923224556', '2022-07-19', '5');

-- --------------------------------------------------------

--
-- Table structure for table `p_schedule`
--

CREATE TABLE `p_schedule` (
  `ps_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_id` int(11) NOT NULL,
  `ps_day` varchar(10) NOT NULL,
  `ps_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_schedule`
--

INSERT INTO `p_schedule` (`ps_id`, `p_name`, `p_id`, `ps_day`, `ps_time`) VALUES
(1, 'NIL', 0, 'NIL', 'NIL'),
(7, 'Dr. Alexander', 2, 'Monday', 'Morning'),
(8, 'Dr. Alexander', 2, 'Tuesday', 'Afternoon'),
(13, 'Dr. Alexander', 2, 'Wednesday', 'Evening'),
(15, 'Dr. Sara', 4, 'Thursday', 'Morning'),
(16, 'Dr. Sara', 4, 'Friday', 'Afternoon'),
(17, 'Dr. Sara', 4, 'Saturday', 'Evening');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `login_id` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `uname`, `pwd`, `role`) VALUES
(72, 'pooja@gmail.com', 'Pooja#123', 'user'),
(82, 'admin', 'admin', 'admin'),
(100, 'devid@gmail.com', '1001', 'trainer'),
(102, 'kelvin@gmail.com', '1002', 'trainer'),
(104, 'reetha@gmail.com', 'Reetha#123', 'user'),
(108, 'farhan@gmail.com', 'Farhan#123', 'user'),
(123, 'mary@gmail.com', '1003', 'trainer'),
(124, 'badhra@gmail.com', 'Badhra#123', 'user'),
(125, 'rohan@gmail.com', 'Rohan#123', 'user'),
(127, 'gagan@gmail.com', 'Gagan#123', 'user'),
(128, 'veena@gmail.com', 'Veena#123', 'user'),
(129, 'nitha@gmail.com', 'Nitha#123', 'user'),
(130, 'johan@gmail.com', 'Johan#123', 'user'),
(131, 'lenin@gmail.com', 'Lenin#123', 'user'),
(132, 'oliver@gmail.com', 'Oliver#123', 'user'),
(133, 'powrnami@gmail.com', 'Powrnami#123', 'user'),
(134, 'sreddha@gmail.com', 'Sreddha#123', 'user'),
(135, 'ram@gmail.com', 'Ram#123', 'user'),
(136, 'sagar@gmail.com', 'Sagar#123', 'user'),
(137, 'arnav@gmail.com', 'Arnav#123', 'user'),
(138, 'mouna@gmail.com', 'Mouna#123', 'user'),
(139, 'tuybah@gmail.com', 'Tuybah#123', 'user'),
(140, 'ankit@gmail.com', 'Ankit#123', 'user'),
(156, 'alexander@gmail.com', '10001', 'physician'),
(160, 'catherina@gmail.com', '1004', 'trainer'),
(161, 'lal@gmail.com', '1005', 'trainer'),
(162, 'bella@gmail.com', '1006', 'trainer'),
(163, 'ebin@gmail.com', '1007', 'trainer'),
(164, 'sara@gmail.com', '10002', 'physician'),
(165, 'swarnadas308@gmail.com', 'Swarna#123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `u_id` int(11) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(20) NOT NULL,
  `month` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `name`, `u_id`, `amount`, `date`, `status`, `month`) VALUES
(30, 'Lenin', 131, '500', '2022-07-11 22:54:12', 'Paid', 'January'),
(36, 'Lenin', 131, '500', '2022-07-14 09:52:01', 'Paid', 'February'),
(37, 'Pooja', 72, '800', '2022-07-14 09:54:38', 'Paid', 'January'),
(38, 'Pooja', 72, '800', '2022-07-14 09:55:25', 'Paid', 'February');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slot`
--

CREATE TABLE `tbl_slot` (
  `slot_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `slot` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slot`
--

INSERT INTO `tbl_slot` (`slot_id`, `p_id`, `slot`, `status`) VALUES
(1, 2, '8am-8:30am', 1),
(2, 2, '8:30am-9am', 1),
(3, 2, '9am-9:30am', 1),
(4, 2, '9:30am-10am', 1),
(5, 2, '3pm-3:30pm', 1),
(6, 2, '3:30pm-4pm', 1),
(7, 2, '4pm-4:30pm', 1),
(8, 2, '4:30pm-5pm', 1),
(9, 4, '8am-8:30am', 1),
(10, 4, '8:30am-9am', 1),
(11, 4, '9am-9:30am', 1),
(12, 4, '9:30am-10am', 1),
(13, 4, '3pm-3:30pm', 1),
(14, 4, '3:30pm-4pm', 1),
(15, 4, '4pm-4:30pm', 1),
(16, 4, '4:30pm-5pm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_schedule`
--

CREATE TABLE `t_schedule` (
  `ts_id` int(11) NOT NULL,
  `t_name` varchar(50) NOT NULL,
  `t_id` int(11) NOT NULL,
  `ts_day` varchar(10) NOT NULL,
  `ts_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_schedule`
--

INSERT INTO `t_schedule` (`ts_id`, `t_name`, `t_id`, `ts_day`, `ts_time`) VALUES
(2, 'Devid', 5, 'Monday', 'Morning'),
(3, 'Kelvin', 6, 'Monday', 'Afternoon'),
(4, 'Mary', 7, 'Monday', 'Evening'),
(116, 'Catherina', 9, 'Tuesday', 'Morning'),
(117, 'Lal', 10, 'Tuesday', 'Afternoon'),
(118, 'Bella', 11, 'Tuesday', 'Evening'),
(119, 'Ebin', 12, 'Monday', 'Morning'),
(120, 'Devid ', 5, 'Tuesday', 'Afternoon'),
(121, 'Kelvin', 6, 'Tuesday', 'Evening'),
(122, 'Mary', 7, 'Wednesday', 'Morning'),
(123, 'Ebin', 12, 'Wednesday', 'Afternoon'),
(124, 'Lal', 10, 'Thursday', 'Evening'),
(125, 'Kelvin', 6, 'Friday', 'Afternoon'),
(126, 'Catherina', 9, 'Thursday', 'Morning'),
(127, 'Bella', 11, 'Friday', 'Morning'),
(128, 'Bella', 11, 'Wednesday', 'Afternoon'),
(129, 'Devid ', 5, 'Wednesday', 'Afternoon'),
(130, 'Lal', 10, 'Saturday', 'Morning'),
(131, 'Bella', 11, 'Saturday', 'Afternoon'),
(132, 'Catherina', 9, 'Saturday', 'Evening'),
(133, 'Devid ', 5, 'Monday', 'Afternoon');

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `u_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `phone` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`u_id`, `login_id`, `name`, `place`, `pin`, `gender`, `email`, `dob`, `phone`) VALUES
(51, 72, 'Pooja', 'Kottayam', 652324, 'Female', 'pooja@gmail.com', '2001-06-04', 7821474836),
(58, 104, 'Reetha', 'Malappuram', 674323, 'Female', 'reetha@gmail.com', '1996-12-31', 6509123434),
(59, 108, 'Farhan', 'Palakkad', 612345, 'Male', 'farhan@gmail.com', '1998-04-05', 9239487564),
(60, 124, 'Badhra', 'Calicut', 674532, 'Female', 'badhra@gmail.com', '2006-06-14', 7623232345),
(61, 125, 'Rohan', 'Pathanamthitta', 652345, 'Male', 'rohan@gmail.com', '2002-03-10', 9823454345),
(63, 127, 'Gagan', 'Alappuzha', 652345, 'Male', 'gagan@gmail.com', '2001-06-04', 7623438778),
(64, 128, 'Veena', 'Wayanad', 673454, 'Female', 'veena@gmail.com', '1998-07-21', 8923224556),
(65, 129, 'Nitha', 'Malappuram', 654534, 'Female', 'nitha@gmail.com', '1999-11-29', 8712346566),
(66, 130, 'Johan', 'Kollam', 654356, 'Male', 'johan@gmail.com', '2006-12-19', 9823123434),
(67, 131, 'Lenin', 'Trivandrum', 674322, 'Male', 'lenin@gmail.com', '1997-10-14', 7632435432),
(68, 132, 'Oliver', 'Idukki', 653434, 'Male', 'oliver@gmail.com', '1996-12-18', 8732435454),
(69, 133, 'Powrnami', 'Kottayam', 675432, 'Female', 'powrnami@gmail.com', '2000-07-26', 8798983232),
(70, 134, 'Sreddha', 'Palakkad', 673434, 'Female', 'sreddha@gmail.com', '2003-05-17', 7676453232),
(71, 135, 'Ram', 'Kasaragod', 673423, 'Male', 'ram@gmail.com', '1995-10-24', 6732324545),
(72, 136, 'Sagar', 'Kannur', 654323, 'Male', 'sagar@gmail.com', '1997-09-17', 7898123243),
(73, 137, 'Arnav', 'Trivandrum', 653234, 'Male', 'arnav@gmail.com', '1998-02-11', 9087656767),
(74, 138, 'Mouna', 'Ernakulam', 654323, 'Female', 'mouna@gmail.com', '2003-06-10', 8765765432),
(75, 139, 'Tuybah', 'Malappuram', 675434, 'Female', 'tuybah@gmail.com', '2001-01-27', 9876543234),
(76, 140, 'Ankit', 'Kasaragod', 676789, 'Male', 'ankit@gmail.com', '2000-02-23', 4578963214),
(86, 165, 'Swarna', 'Wayanad', 673593, 'Female', 'swarnadas308@gmail.com', '1999-08-30', 6238310328);

-- --------------------------------------------------------

--
-- Table structure for table `user_tr`
--

CREATE TABLE `user_tr` (
  `ut_id` int(11) NOT NULL,
  `u_id` int(20) NOT NULL,
  `name` varchar(55) NOT NULL,
  `ts_day` varchar(10) NOT NULL,
  `ts_time` varchar(20) NOT NULL,
  `t_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_tr`
--

INSERT INTO `user_tr` (`ut_id`, `u_id`, `name`, `ts_day`, `ts_time`, `t_name`) VALUES
(17, 76, 'Ankit', 'Thursday', 'Morning', 'Catherina'),
(33, 51, 'Pooja', 'Monday', 'Morning', 'Devid'),
(34, 72, 'Sagar', 'Monday', 'Evening', 'Mary'),
(35, 72, 'Sagar', 'Tuesday', 'Afternoon', 'Lal'),
(36, 72, 'Sagar', 'Wednesday', 'Morning', 'Mary'),
(37, 67, 'Lenin', 'Monday', 'Morning', 'Devid'),
(38, 67, 'Lenin', 'Saturday', 'Afternoon', 'Bella'),
(39, 72, 'Sagar', 'Thursday', 'Morning', 'Catherina'),
(40, 72, 'Sagar', 'Friday', 'Afternoon', 'Kelvin'),
(41, 51, 'Pooja', 'Tuesday', 'Evening', 'Bella'),
(42, 51, 'Pooja', 'Wednesday', 'Morning', 'Mary'),
(43, 51, 'Pooja', 'Thursday', 'Evening', 'Lal'),
(44, 51, 'Pooja', 'Friday', 'Morning', 'Bella'),
(45, 59, 'Farhan', 'Saturday', 'Morning', 'Lal'),
(46, 59, 'Farhan', 'Tuesday', 'Evening', 'Kelvin'),
(47, 68, 'Oliver', 'Wednesday', 'Afternoon', 'Ebin'),
(48, 68, 'Oliver', 'Monday', 'Morning', 'Devid'),
(49, 74, 'Mouna', 'Friday', 'Evening', 'Devid '),
(50, 74, 'Mouna', 'Wednesday', 'Morning', 'Mary'),
(51, 71, 'Ram', 'Saturday', 'Afternoon', 'Bella'),
(52, 71, 'Ram', 'Tuesday', 'Morning', 'Catherina'),
(53, 71, 'Ram', 'Wednesday', 'Afternoon', 'Bella'),
(54, 71, 'Ram', 'Thursday', 'Morning', 'Catherina'),
(55, 63, 'Gagan', 'Monday', 'Evening', 'Mary'),
(56, 63, 'Gagan', 'Wednesday', 'Morning', 'Mary'),
(57, 63, 'Gagan', 'Friday', 'Morning', 'Bella'),
(58, 65, 'Nitha', 'Saturday', 'Evening', 'Catherina'),
(59, 61, 'Rohan', 'Monday', 'Evening', 'Mary'),
(60, 61, 'Rohan', 'Tuesday', 'Evening', 'Kelvin'),
(61, 61, 'Rohan', 'Wednesday', 'Afternoon', 'Ebin'),
(62, 64, 'Veena', 'Monday', 'Afternoon', 'Kelvin'),
(63, 64, 'Veena', 'Tuesday', 'Evening', 'Bella'),
(64, 64, 'Veena', 'Wednesday', 'Morning', 'Mary'),
(65, 60, 'Badhra', 'Saturday', 'Afternoon', 'Devid '),
(66, 58, 'Reetha', 'Saturday', 'Evening', 'Catherina'),
(67, 75, 'Tuybah', 'Wednesday', 'Afternoon', 'Ebin'),
(68, 73, 'Arnav', 'Tuesday', 'Evening', 'Bella'),
(69, 70, 'Sreddha', 'Monday', 'Afternoon', 'Kelvin'),
(70, 69, 'Powrnami', 'Friday', 'Evening', 'Devid '),
(71, 76, 'Ankit', 'Thursday', 'Evening', 'Lal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_physician`
--
ALTER TABLE `add_physician`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `add_trainer`
--
ALTER TABLE `add_trainer`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `appointment_booking`
--
ALTER TABLE `appointment_booking`
  ADD PRIMARY KEY (`b_id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `p_schedule`
--
ALTER TABLE `p_schedule`
  ADD PRIMARY KEY (`ps_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_slot`
--
ALTER TABLE `tbl_slot`
  ADD PRIMARY KEY (`slot_id`);

--
-- Indexes for table `t_schedule`
--
ALTER TABLE `t_schedule`
  ADD PRIMARY KEY (`ts_id`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `user_tr`
--
ALTER TABLE `user_tr`
  ADD PRIMARY KEY (`ut_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_physician`
--
ALTER TABLE `add_physician`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `add_trainer`
--
ALTER TABLE `add_trainer`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `appointment_booking`
--
ALTER TABLE `appointment_booking`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `p_schedule`
--
ALTER TABLE `p_schedule`
  MODIFY `ps_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_slot`
--
ALTER TABLE `tbl_slot`
  MODIFY `slot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `t_schedule`
--
ALTER TABLE `t_schedule`
  MODIFY `ts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `user_reg`
--
ALTER TABLE `user_reg`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `user_tr`
--
ALTER TABLE `user_tr`
  MODIFY `ut_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_physician`
--
ALTER TABLE `add_physician`
  ADD CONSTRAINT `add_physician_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `tbl_login` (`login_id`);

--
-- Constraints for table `add_trainer`
--
ALTER TABLE `add_trainer`
  ADD CONSTRAINT `add_trainer_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `tbl_login` (`login_id`);

--
-- Constraints for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD CONSTRAINT `user_reg_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `tbl_login` (`login_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
