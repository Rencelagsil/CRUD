-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2025 at 03:18 AM
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
-- Database: `student_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `student_id`, `password`) VALUES
(1, '2311600102', 'Lathougs'),
(2, '2311600104', 'Lathougs');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `street_address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state_province` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `zip_code` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `strand` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `middle_name`, `last_name`, `birthdate`, `student_id`, `street_address`, `city`, `state_province`, `country`, `zip_code`, `email`, `strand`, `level`) VALUES
(107, 'Rence', 'Diamoda', 'Lagsil', '2003-08-12', '2311600102', 'Polomolok, South Cotabato', 'Polomolok', 'South Cotabato', 'Philippines', '9504', 'lagsilrence@gmail.com', 'HUMSS', 'Grade 12'),
(108, 'Justine', 'A.', 'Moril', '2005-08-12', '12345', 'Polomolok, South Cotabato', 'Polomolok', 'South Cotabato', 'Philippines', '9504', 'fauzi@gmail.com', 'STEM', 'Grade 11'),
(109, 'Jayvee', 'C. ', 'Bajarias', '3004-09-12', '2311600105', 'Polomolok, South Cotabato', 'Polomolok', 'South Cotabato', 'Philippines', '9504', 'jbj@gmail.com', 'ABM', 'Grade 11'),
(110, 'Raph', 'Sho', 'Visayas', '2001-11-12', '2311600103', 'Polomolok, South Cotabato', 'Polomolok', 'South Cotabato', 'Philippines', '9504', 'raph@gmail.com', 'HUMSS', 'Grade 11'),
(111, 'Johar', 'Datu', 'Gogo', '2001-08-12', '2311600104', 'Polomolok, South Cotabato', 'Polomolok', 'South Cotabato', 'Philippines', '9504', 'gogo@gmail.com', 'ABM', 'Grade 11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
