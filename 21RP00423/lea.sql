-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 08:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lea`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseName` varchar(50) NOT NULL,
  `courseCode` varchar(10) DEFAULT NULL,
  `courseDescription` varchar(255) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseName`, `courseCode`, `courseDescription`, `price`) VALUES
(1, 'Introduction to Java', 'JAVA101', 'Learn the basics of Java programming.', 99.99),
(2, 'Web Development Fund', 'WEB101', 'Build web applications using HTML, CSS, and JavaScript.', 149.99),
(3, 'Database Design and ', 'DB101', 'Learn about databases and SQL query language.', 119.99);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `id` bigint(20) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_description` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`id`, `course_code`, `course_description`, `course_name`, `price`) VALUES
(2, 'WEB111', 'Building Web Applications with HTML, CSS, and JavaScript', 'Web Development Basics', 149.99),
(3, 'DB101', 'Introduction to Databases and SQL', 'Database Fundamentals', 119.99),
(4, 'PYT101', 'Learn Python Programming for Beginners', 'Python Basics', 79.99),
(5, 'SQL201', 'Advanced SQL Queries and Database Management', 'Advanced SQL', 149.99),
(6, 'WEB201', 'Building Dynamic Web Applications with React and Node.js', 'Advanced Web Development', 230.99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code` (`courseCode`);

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
