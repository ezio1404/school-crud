-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2018 at 01:33 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `rbl_subject`
--

CREATE TABLE `rbl_subject` (
  `sub_idno` int(11) NOT NULL,
  `sub_code` varchar(255) NOT NULL,
  `sub_desc` varchar(255) NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `room_no` int(11) NOT NULL,
  `prof_idno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `course_idno` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_desc` varchar(255) NOT NULL,
  `course_office` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_professor`
--

CREATE TABLE `tbl_professor` (
  `prof_idno` int(11) NOT NULL,
  `prof_fname` varchar(255) NOT NULL,
  `prof_lname` varchar(255) NOT NULL,
  `prof_mi` varchar(1) NOT NULL,
  `prof_email` varchar(255) NOT NULL,
  `prof_phone` varchar(11) NOT NULL,
  `prof_age` int(11) NOT NULL,
  `prof_bday` date NOT NULL,
  `prof_exp` int(11) NOT NULL,
  `prof_status` varchar(255) NOT NULL,
  `prof_gender` varchar(255) NOT NULL,
  `prof_addr` varchar(255) NOT NULL,
  `prof_password` varchar(255) NOT NULL,
  `course_idno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `stud_idno` int(11) NOT NULL,
  `stud_fname` varchar(255) NOT NULL,
  `stud_lname` varchar(255) NOT NULL,
  `stud_mi` varchar(1) NOT NULL,
  `stud_email` varchar(255) NOT NULL,
  `stud_phone` varchar(11) NOT NULL,
  `stud_age` int(11) NOT NULL,
  `stud_bday` date NOT NULL,
  `stud_year` int(1) NOT NULL,
  `course_idno` int(11) NOT NULL,
  `stud_status` varchar(255) NOT NULL DEFAULT 'Active',
  `stud_gender` varchar(255) NOT NULL,
  `stud_addr` varchar(255) NOT NULL,
  `stud_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rbl_subject`
--
ALTER TABLE `rbl_subject`
  ADD PRIMARY KEY (`sub_idno`),
  ADD KEY `prof_idno` (`prof_idno`);

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`course_idno`);

--
-- Indexes for table `tbl_professor`
--
ALTER TABLE `tbl_professor`
  ADD PRIMARY KEY (`prof_idno`),
  ADD KEY `course_idno` (`course_idno`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`stud_idno`),
  ADD UNIQUE KEY `stud_phone` (`stud_phone`),
  ADD KEY `tbl_student_ibfk_1` (`course_idno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rbl_subject`
--
ALTER TABLE `rbl_subject`
  MODIFY `sub_idno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `course_idno` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rbl_subject`
--
ALTER TABLE `rbl_subject`
  ADD CONSTRAINT `rbl_subject_ibfk_1` FOREIGN KEY (`prof_idno`) REFERENCES `tbl_professor` (`prof_idno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_professor`
--
ALTER TABLE `tbl_professor`
  ADD CONSTRAINT `tbl_professor_ibfk_1` FOREIGN KEY (`course_idno`) REFERENCES `tbl_course` (`course_idno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD CONSTRAINT `tbl_student_ibfk_1` FOREIGN KEY (`course_idno`) REFERENCES `tbl_course` (`course_idno`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
