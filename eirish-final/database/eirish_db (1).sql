-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2022 at 05:10 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eirish_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendancee`
--

CREATE TABLE `attendancee` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dateTime` varchar(50) NOT NULL,
  `logType` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendancee`
--

INSERT INTO `attendancee` (`id`, `emp_id`, `name`, `dateTime`, `logType`) VALUES
(36, 36, 'Julianne Santos', '17-11-2022 21:39:17', 'IN'),
(37, 37, 'Roi Albert B. Mutuc', '17-11-2022 21:39:17', 'IN'),
(38, 38, 'Leo Gonsales', '17-11-2022 21:39:17', 'IN'),
(39, 39, 'John Ellery Manlapas', '17-11-2022 21:39:17', 'IN'),
(40, 40, 'Lebron James', '17-11-2022 21:39:17', 'IN'),
(41, 41, 'Aren Gerard De Jesus', '17-11-2022 21:39:17', 'OUT'),
(42, 42, 'Kareem Abdul Jabbar', '17-11-2022 21:39:17', 'OUT'),
(43, 43, 'Joseph Mercado', '17-11-2022 21:39:17', 'OUT'),
(44, 44, 'Wally Santos', '17-11-2022 21:39:17', 'OUT'),
(45, 45, 'Rea Benito', '17-11-2022 21:39:17', 'OUT');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `rate` double NOT NULL,
  `phonenumber` varchar(45) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `birth_date` date NOT NULL,
  `civil_status` varchar(45) NOT NULL,
  `emergency_name` varchar(45) NOT NULL,
  `emergency_contact` varchar(45) NOT NULL,
  `job_id` int(11) NOT NULL,
  `salary_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `emp_id`, `name`, `address`, `position`, `rate`, `phonenumber`, `sex`, `birth_date`, `civil_status`, `emergency_name`, `emergency_contact`, `job_id`, `salary_id`) VALUES
(36, '', 'Julianne Santos', 'Bulacan', 'Mason', 350, '09489600121', 'Female', '0000-00-00', 'Single', 'Roi Albert', '0975432451', 0, 0),
(37, '', 'Roi Albert B. Mutuc', 'Bulacan', 'Staff', 500, '09489600121', 'Male', '0000-00-00', 'Single', 'Julianne Santos', '0975432451', 0, 0),
(38, '', 'Leo Gonsales', 'Pampanga', 'Owner', 20000, '09489600121', 'Male', '0000-00-00', 'Married', 'Roi Albert', '0975432451', 0, 0),
(39, '39', 'John Ellery Manlapas', 'Cavite', 'Mason', 350, '09489600121', 'Male', '0000-00-00', 'Married', 'Roi Albert', '0975432451', 0, 0),
(40, '', 'Lebron James', 'Baguio', 'Mason', 350, '09489600121', 'Male', '0000-00-00', 'Married', 'Julianne Santos', '0975432451', 0, 0),
(41, '', 'Aren Gerard De Jesus', 'Pampanga', 'Mason', 350, '09489600121', 'Male', '0000-00-00', 'Single', 'Julianne Santos', '0975432451', 0, 0),
(42, '', 'Kareem Abdul Jabbar', 'Pampanga', 'Staff', 500, '09489600121', 'Male', '0000-00-00', 'Married', 'Julianne Santos', '0975432451', 0, 0),
(43, '', 'Joseph Mercado', 'Pampanga', 'Mason', 350, '09489600121', 'Male', '0000-00-00', 'Single', 'Roi Albert', '0975432451', 0, 0),
(44, '', 'Wally Santos', 'Davao', 'Mason', 350, '09489600121', 'Male', '0000-00-00', 'Single', 'Roi Albert', '0975432451', 0, 0),
(45, '', 'Rea Benito', 'Bulacan', 'Mason', 350, '09489600121', 'Female', '0000-00-00', 'Married', 'Julianne Santos', '0975432451', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `days` varchar(50) NOT NULL,
  `rate` double NOT NULL,
  `overtime` varchar(50) NOT NULL,
  `gross_salary` varchar(100) NOT NULL,
  `deductions` varchar(100) NOT NULL,
  `net_salary` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`id`, `emp_id`, `name`, `days`, `rate`, `overtime`, `gross_salary`, `deductions`, `net_salary`) VALUES
(36, 36, 'Julianne Santos', '10', 350, '150', '20000', '100', '5000'),
(37, 37, 'Roi Albert B. Mutuc', '10', 500, '150', '20000', '100', '5000'),
(38, 38, 'Leo Gonsales', '5', 2000, '0', '50000', '100', '60,000'),
(39, 39, 'John Ellery Manlapas', '10', 350, '150', '20000', '100', '5000'),
(40, 40, 'Lebron James', '10', 350, '150', '20000', '100', '5000'),
(41, 41, 'Aren Gerard De Jesus', '10', 350, '150', '20000', '100', '5000'),
(42, 42, 'Kareem Abdul Jabbar', '7', 500, '150', '20000', '100', '5000'),
(43, 43, 'Joseph Mercado', '10', 350, '150', '20000', '100', '5000'),
(44, 44, 'Wally Santos', '10', 350, '150', '20000', '100', '5000'),
(45, 45, 'Rea Benito', '10', 350, '150', '20000', '100', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `reg_date`) VALUES
(1, 'Roi', 'pogisiroi26@gmail.com', '$2y$10$tiLkknaeRhB0hPqiIDSpoONjOq/VnfVlqr3TlDzUlb8V06SBmZtEi', '2022-11-06 13:54:06'),
(2, 'admin', 'roi.albert.90@gmail.com', '$2y$10$yzo.6mRJUrPlqn5THioWUebJl5LEwLKBHqdBCSgICmpOXPN1.X.n.', '2022-11-06 14:53:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendancee`
--
ALTER TABLE `attendancee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendancee`
--
ALTER TABLE `attendancee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
