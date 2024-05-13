-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 01:25 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'Marisil', 'Lungay', '186500183_1635533253298338_7753991751523322464_n.jpg', '2024-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(1) NOT NULL,
  `time_out` time NOT NULL,
  `num_hr` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `employee_id`, `date`, `time_in`, `status`, `time_out`, `num_hr`) VALUES
(86, 5, '2024-04-24', '07:00:00', 1, '00:00:00', 6),
(87, 6, '2024-04-24', '01:00:00', 1, '00:00:00', 6),
(88, 7, '2024-04-24', '01:00:00', 1, '00:00:00', 6),
(89, 8, '2024-04-24', '01:00:00', 1, '00:00:00', 6),
(90, 9, '2024-04-24', '07:00:00', 1, '00:00:00', 6),
(91, 10, '2024-04-24', '14:27:57', 0, '00:00:00', 0),
(92, 11, '2024-04-24', '07:00:00', 1, '00:00:00', 6),
(93, 12, '2024-04-24', '15:45:49', 0, '00:00:00', 0),
(94, 13, '2024-04-24', '17:19:33', 0, '00:00:00', 0),
(95, 5, '2024-04-25', '08:29:33', 0, '09:52:41', 1.3833333333333),
(96, 6, '2024-04-25', '08:33:19', 0, '10:11:01', 1.6166666666667),
(97, 7, '2024-04-25', '08:38:22', 0, '11:17:50', 2.65),
(98, 8, '2024-04-25', '08:39:10', 0, '12:55:08', 3.25),
(99, 9, '2024-04-25', '08:46:08', 0, '09:55:50', 1.15),
(100, 10, '2024-04-25', '08:47:45', 0, '11:13:47', 2.4333333333333),
(101, 11, '2024-04-25', '08:55:15', 0, '12:54:51', 3.9833333333333),
(102, 13, '2024-04-25', '09:33:21', 0, '12:54:28', 3.35),
(103, 12, '2024-04-25', '09:46:36', 0, '12:54:23', 3.1166666666667),
(104, 14, '2024-04-25', '09:48:17', 0, '00:00:00', 0),
(105, 15, '2024-04-25', '07:00:00', 1, '00:00:00', 6),
(106, 5, '2024-04-27', '07:00:00', 1, '00:00:00', 6),
(107, 6, '2024-04-27', '08:28:50', 0, '00:00:00', 0),
(108, 7, '2024-04-27', '08:28:51', 0, '00:00:00', 0),
(109, 8, '2024-04-27', '07:00:00', 1, '00:00:00', 6),
(110, 9, '2024-04-27', '07:00:00', 1, '00:00:00', 6),
(111, 10, '2024-04-27', '07:00:00', 1, '00:00:00', 6),
(112, 11, '0000-00-00', '08:00:00', 0, '00:00:00', 7),
(113, 5, '2024-05-01', '07:00:00', 1, '00:00:00', 6),
(114, 6, '2024-05-01', '07:00:00', 1, '00:00:00', 6),
(115, 7, '2024-05-01', '07:00:00', 1, '00:00:00', 6),
(116, 5, '2024-05-04', '01:00:00', 1, '00:00:00', 6),
(117, 5, '2024-05-04', '01:00:00', 1, '00:00:00', 6),
(118, 6, '2024-05-04', '01:00:00', 1, '00:00:00', 6),
(119, 7, '2024-05-04', '01:00:00', 1, '00:00:00', 6),
(120, 8, '2024-05-04', '01:00:00', 1, '00:00:00', 6),
(121, 9, '2024-05-04', '01:00:00', 1, '00:00:00', 6),
(122, 10, '2024-05-04', '07:00:00', 1, '00:00:00', 6),
(123, 20, '2024-05-04', '01:00:00', 1, '00:00:00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `cashadvance`
--

CREATE TABLE `cashadvance` (
  `id` int(11) NOT NULL,
  `date_advance` date NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cashadvance`
--

INSERT INTO `cashadvance` (`id`, `date_advance`, `employee_id`, `amount`) VALUES
(4, '2024-04-24', '11', 1000),
(5, '2024-05-04', '20', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `deductions`
--

INSERT INTO `deductions` (`id`, `description`, `amount`) VALUES
(1, 'SSS', 270),
(3, 'PhilHealth', 470);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `birthdate` date NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `position_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `firstname`, `lastname`, `address`, `birthdate`, `contact_info`, `gender`, `position_id`, `schedule_id`, `photo`, `created_on`) VALUES
(5, '1', 'Harlie', 'Quipit', 'Lanao', '2024-04-01', '09126324568', 'Male', 1, 1, 'luffy.jpg', '2024-04-24'),
(6, '2', 'Christian', 'Policher', 'Lanao', '2024-04-02', '09126324568', 'Male', 1, 1, '', '2024-04-24'),
(7, '3', 'Piolo', 'Mutia', 'Ozamiz', '2024-04-03', '09126354886', 'Male', 1, 1, '', '2024-04-24'),
(8, '4', 'George', 'Dumalagan', 'Pagadian', '2024-04-05', '09123456789', 'Male', 1, 1, '', '2024-04-24'),
(9, '5', 'Japet', 'Javier', 'Ozamiz', '2024-03-31', '09123456789', 'Male', 1, 1, '', '2024-04-24'),
(10, '6', 'Jhastine', 'Ucab', 'Molave', '2024-04-26', '09123456780', 'Male', 1, 1, '', '2024-04-24'),
(11, '7', 'Warren', 'Villafranca', 'Ozamiz', '2024-04-27', '09126354886', 'Male', 1, 1, '', '2024-04-24'),
(12, 'LGD096183275', 'Esteve', 'Docor', 'Ozamiz', '2024-04-25', '09126324568', 'Male', 1, 1, '', '2024-04-24'),
(13, 'GJF451297680', 'Kervin', 'Maestrado', 'Ozamiz', '2024-04-24', '09126354886', 'Male', 1, 1, '', '2024-04-24'),
(14, 'UGK507468392', 'Jandy', 'Maak', 'Ozamiz', '2024-04-08', '09126324568', 'Male', 1, 1, '', '2024-04-25'),
(15, 'QWX726350148', 'Shierly', 'Gimeno', 'ozamiz', '2024-04-24', '09126324568', 'Female', 1, 1, '', '2024-04-25'),
(16, 'BCX674189302', 'Renz', 'Himaak', 'Ozamiz', '2024-05-01', '12477817481', 'Male', 1, 1, '', '2024-05-04'),
(20, 'SMA142567938', 'Ellenmae', 'Jaug', 'Ozamiz', '2024-05-01', '767687', 'Female', 1, 1, '', '2024-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `overtime`
--

CREATE TABLE `overtime` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `hours` double NOT NULL,
  `rate` double NOT NULL,
  `date_overtime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `overtime`
--

INSERT INTO `overtime` (`id`, `employee_id`, `hours`, `rate`, `date_overtime`) VALUES
(4, '5', 2.0166666666667, 40, '2024-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `description`, `rate`) VALUES
(1, 'Baker', 30);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `time_in`, `time_out`) VALUES
(1, '05:00:00', '16:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashadvance`
--
ALTER TABLE `cashadvance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtime`
--
ALTER TABLE `overtime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `cashadvance`
--
ALTER TABLE `cashadvance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `overtime`
--
ALTER TABLE `overtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
