-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2025 at 04:17 PM
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
-- Database: `passbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `course_title` varchar(100) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `session` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `course_title`, `course_code`, `session`) VALUES
(2, 'BSc Software Engineering', '', '', ''),
(3, 'BSc Computer Science', '', '', ''),
(4, 'BSc Mathematics', '', '', ''),
(8, 'Library', '', '', ''),
(9, 'B.A. Hausa language', '', '', ''),
(10, 'B.A. Arabic', '', '', ''),
(11, 'B.A. English language', '', '', ''),
(12, 'B.A. Islamic Studies', '', '', ''),
(13, 'BSc Biological Science', '', '', ''),
(14, 'BSc Chemistry', '', '', ''),
(15, 'BSc. Physics', '', '', ''),
(16, 'B.A./Ed Arabic', '', '', ''),
(17, 'B.A./Ed Hausa', '', '', ''),
(18, 'B.A./Ed Islamic Studies', '', '', ''),
(19, 'B.A./Ed English Language', '', '', ''),
(20, 'B.A./Ed Mathematics', '', '', ''),
(21, 'B.A./Ed Physics', '', '', ''),
(22, 'B.A./Ed Chemistry', '', '', ''),
(23, 'B.A./Ed Biology', '', '', ''),
(24, 'B.A./Ed Geography', '', '', ''),
(25, 'BSc. Accounting', '', '', ''),
(26, 'BSc. Business Administration', '', '', ''),
(27, 'BSc. Economics', '', '', ''),
(28, 'BSc. Political Science', '', '', ''),
(29, 'BSc. Sociology', '', '', ''),
(30, 'BSc. Science Lab Tech', '', '', ''),
(31, 'BSc. Microbiology', '', '', ''),
(32, 'BSc. BioChemistry', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `course_title` varchar(1000) DEFAULT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `course_id` varchar(1000) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `course_title`, `course_code`, `session`, `image`, `course_id`, `file_path`) VALUES
(2, 'Computer science', 'SEN2321', '2025', 'uploads/Alqalam.png', '29', 'uploads/the-art-of-making-money.pdf'),
(4, 'Computer science', 'SEN2321', '2025', 'uploads/Alqalam.png', '29', 'uploads/Thinking fast and  slow.pdf'),
(5, 'art', 'SEN1312', '2023', 'uploads/The-Art-of-the-Start-2.0-8freebooks.net_ 2.pdf', '29', 'uploads/shadows.png'),
(11, 'art', '4545', '3434', 'uploads/landscape.png', '29', 'uploads/Quiz.docx'),
(12, 'art', 'SEN1312', '2020/2021', 'uploads/Preview.pdf', '29', 'uploads/Expense_Tracker.pdf'),
(13, 'Data Communication and Network', 'SEN3322', '2023/2024', 'uploads/Answers_to_Data.pdf', '2', 'uploads/Answers_to_Data.pdf'),
(16, 'Modelling and Simulation', 'SEN 4325', '2024/2025', 'uploads/Screenshot 2025-05-22 115452.png', '2', NULL),
(17, 'hjkl', 'ghjm,', '8080', 'uploads/400L Pass Q 2nd Semester.pdf', '32', NULL),
(18, 'dfghjk', 'fghnm,', '45678', 'uploads/Screenshot 2025-05-22 115452.png', '32', NULL),
(19, 'cvbn', ' hjjj', '4678', 'uploads/_OceanofPDF.com_The_Alchemist.pdf', '32', NULL),
(20, 'cvbn', ' hjjj', '4678', 'uploads/_OceanofPDF.com_The_Alchemist.pdf', '32', NULL),
(21, 'dfghjk', 'fghnm,', '45678', 'uploads/Screenshot 2025-05-22 115452.png', '32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'musajidda', 'musajidder@gmail.com', 'user', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'asmau', 'memesadichan@gmail.com', 'user', '25d55ad283aa400af464c76d713c07ad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
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
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
