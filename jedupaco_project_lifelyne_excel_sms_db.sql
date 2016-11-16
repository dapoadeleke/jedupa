-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2016 at 06:31 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jedupaco_project_lifelyne_excel_sms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_assessment_timetable`
--

CREATE TABLE `tb_assessment_timetable` (
  `assessment_timetable_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_batch`
--

CREATE TABLE `tb_batch` (
  `batch_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_class`
--

CREATE TABLE `tb_class` (
  `class_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `student_department_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(200) NOT NULL,
  `class_level_id` int(11) NOT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_class`
--

INSERT INTO `tb_class` (`class_id`, `school_id`, `student_department_id`, `name`, `code`, `class_level_id`, `date_created`) VALUES
(1, 1, 1, 'Junior Secondary School One A', 'J S S 1 A', 1, '2016-11-07 17:52:46'),
(2, 1, 1, 'Junior Secondary School One B', 'J S S 1 B', 1, '2016-11-07 17:53:40'),
(3, 1, 1, 'Junior Secondary School Two', 'J S S 2', 2, '2016-11-07 17:57:41'),
(4, 1, 1, 'Junior Secondary School Three A', 'J S S 3 A', 3, '2016-11-07 17:58:28'),
(5, 1, 1, 'Junior Secondary School Three B', 'J S S 3 B', 3, '2016-11-07 17:58:58'),
(6, 1, 1, 'Junior Secondary School Three C', 'J S S 3 C', 3, '2016-11-07 17:59:26'),
(7, 1, 2, 'Senior Secondary School One A', 'S S 1 A', 4, '2016-11-07 18:02:07'),
(8, 1, 4, 'Senior Secondary School One B', 'S S 1 B', 4, '2016-11-07 18:04:33'),
(9, 1, 3, 'Senior Secondary School One C', 'S S 1 C', 4, '2016-11-07 18:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_class_basic_subject`
--

CREATE TABLE `tb_class_basic_subject` (
  `class_basic_subject_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_class_level`
--

CREATE TABLE `tb_class_level` (
  `class_level_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_class_level`
--

INSERT INTO `tb_class_level` (`class_level_id`, `school_id`, `name`, `date_created`) VALUES
(1, 1, 'Level 1', '2016-11-07 17:40:10'),
(2, 1, 'Level 2', '2016-11-07 17:40:17'),
(3, 1, 'Level 3', '2016-11-07 17:40:21'),
(4, 1, 'Level 4', '2016-11-07 18:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `tb_class_period`
--

CREATE TABLE `tb_class_period` (
  `class_period_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `class_timing_set_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime NOT NULL,
  `is_break` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_class_timing_set`
--

CREATE TABLE `tb_class_timing_set` (
  `class_timing_set_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_country`
--

CREATE TABLE `tb_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `currency_type` varchar(10) DEFAULT NULL,
  `time_zone_id` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_employee`
--

CREATE TABLE `tb_employee` (
  `employee_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `employee_department_id` int(11) DEFAULT NULL,
  `employee_category_id` int(11) DEFAULT NULL,
  `employee_position_id` int(11) DEFAULT NULL,
  `date_joined` date DEFAULT NULL,
  `employee_code` varchar(100) DEFAULT NULL,
  `tb_employee_grade_level_id` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `student_department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_employee_category`
--

CREATE TABLE `tb_employee_category` (
  `employee_category_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_employee_department`
--

CREATE TABLE `tb_employee_department` (
  `employee_department_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `is_ative` int(11) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_employee_grade_level`
--

CREATE TABLE `tb_employee_grade_level` (
  `tb_employee_grade_level_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_employee_position`
--

CREATE TABLE `tb_employee_position` (
  `employee_position_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_registered` datetime NOT NULL,
  `employee_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_employee_subject`
--

CREATE TABLE `tb_employee_subject` (
  `employee_subject_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_grade_level_payroll`
--

CREATE TABLE `tb_grade_level_payroll` (
  `tb_grade_level_payroll_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `employee_grade_level_id` int(11) NOT NULL,
  `payroll_category_id` int(11) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_grading_system`
--

CREATE TABLE `tb_grading_system` (
  `grading_system_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `grade_scale` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_parent`
--

CREATE TABLE `tb_parent` (
  `parent_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_payroll_category`
--

CREATE TABLE `tb_payroll_category` (
  `tb_payroll_category_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_school`
--

CREATE TABLE `tb_school` (
  `school_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `code` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL,
  `address1` varchar(200) NOT NULL,
  `address2` varchar(200) NOT NULL,
  `phone1` varchar(100) NOT NULL,
  `phone2` varchar(100) NOT NULL,
  `status_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `auto_gen_student_id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `website` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `auto_gen_employee_id` int(11) NOT NULL,
  `auto_gen_parent_id` int(11) NOT NULL,
  `motto` varchar(1000) NOT NULL,
  `rc_number` varchar(50) NOT NULL,
  `time_zone_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_school`
--

INSERT INTO `tb_school` (`school_id`, `name`, `logo`, `code`, `date_created`, `address1`, `address2`, `phone1`, `phone2`, `status_id`, `country_id`, `state_id`, `language_id`, `auto_gen_student_id`, `email`, `website`, `password`, `auto_gen_employee_id`, `auto_gen_parent_id`, `motto`, `rc_number`, `time_zone_id`) VALUES
(1, 'Oxford College Abuja', 'badge4.jpg', 'O C A', '0000-00-00 00:00:00', 'PO Box 80, Area 11, Garki', '', '08020803585', '08102937011', 0, 1, 1, 0, 1, 'info@oxfordcollege.com', 'www.oxfordcollege.com', '', 1, 1, 'Up And On', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_score_group`
--

CREATE TABLE `tb_score_group` (
  `score_group_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_session`
--

CREATE TABLE `tb_session` (
  `session_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `grading_system_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_session_quota`
--

CREATE TABLE `tb_session_quota` (
  `session_quota_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` int(100) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_state`
--

CREATE TABLE `tb_state` (
  `id` int(2) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_state`
--

INSERT INTO `tb_state` (`id`, `name`, `country_id`) VALUES
(1, 'Abia', 1),
(2, 'Adamawa', 1),
(3, 'Akwa Ibom', 1),
(4, 'Anambra', 1),
(5, 'Bauchi', 1),
(6, 'Benue', 1),
(7, 'Borno', 1),
(8, 'Cross River', 1),
(9, 'Delta', 1),
(10, 'Gobe', 1),
(11, 'Enugu', 1),
(12, 'Bayelsa', 1),
(13, 'Ebonyi', 1),
(14, 'Edo', 1),
(15, 'Ekiti', 1),
(16, 'Imo', 1),
(17, 'Jigawa', 1),
(18, 'Kaduna', 1),
(19, 'Kano', 1),
(20, 'Katsina', 1),
(21, 'Kebbi', 1),
(22, 'Kogi', 1),
(23, 'Kwara', 1),
(24, 'Lagos', 1),
(25, 'Nasarawa', 1),
(26, 'Niger', 1),
(27, 'Ogun', 1),
(28, 'Ondo', 1),
(29, 'Osun', 1),
(30, 'Oyo', 1),
(31, 'Plateau', 1),
(32, 'Rivers', 1),
(33, 'Sokoto', 1),
(34, 'Taraba', 1),
(35, 'Yobe', 1),
(36, 'Zamfara', 1),
(37, 'FCT', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_student`
--

CREATE TABLE `tb_student` (
  `student_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_department_id` int(11) NOT NULL,
  `registration_number` varchar(100) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_admitted` datetime NOT NULL,
  `batch_id` int(11) NOT NULL,
  `student_category_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_relationship` varchar(50) NOT NULL,
  `class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_student_additional_detail`
--

CREATE TABLE `tb_student_additional_detail` (
  `student_additional_detail_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_additional_field_id` int(11) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_student_additional_field`
--

CREATE TABLE `tb_student_additional_field` (
  `student_additional_field_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_student_category`
--

CREATE TABLE `tb_student_category` (
  `student_category_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_student_category_subject`
--

CREATE TABLE `tb_student_category_subject` (
  `student_category_subject_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `subject_category_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_student_department`
--

CREATE TABLE `tb_student_department` (
  `student_department_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(20) NOT NULL,
  `type_of_result` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_student_department`
--

INSERT INTO `tb_student_department` (`student_department_id`, `school_id`, `name`, `code`, `type_of_result`, `date_created`) VALUES
(1, 1, 'default', 'DFT', NULL, '2016-11-07 17:40:47'),
(2, 1, 'Science', 'Sci', NULL, '2016-11-07 18:00:14'),
(3, 1, 'Arts', 'Arts', NULL, '2016-11-07 18:00:29'),
(4, 1, 'Commercial', 'Com', NULL, '2016-11-07 18:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `tb_subject`
--

CREATE TABLE `tb_subject` (
  `subject_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `credit_unit` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `score_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_subject_assessment_timetable`
--

CREATE TABLE `tb_subject_assessment_timetable` (
  `subject_assessment_timetable_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `assessment_timetable_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_subject_category`
--

CREATE TABLE `tb_subject_category` (
  `subject_category_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_time_zone`
--

CREATE TABLE `tb_time_zone` (
  `time_zone_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `othernames` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `marital_status` varchar(50) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `phone1` varchar(50) NOT NULL,
  `phone2` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `privilege_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_weekday`
--

CREATE TABLE `tb_weekday` (
  `weekday` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_weekday_class_period`
--

CREATE TABLE `tb_weekday_class_period` (
  `weekday_class_period_id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `weekday_id` int(11) DEFAULT NULL,
  `class_timing_id` int(11) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_class`
--
CREATE TABLE `vw_class` (
`class_id` int(11)
,`school_id` int(11)
,`student_department_id` int(11)
,`name` varchar(100)
,`code` varchar(200)
,`level_id` int(11)
,`level_name` varchar(50)
,`date_created` datetime
,`department_name` varchar(100)
,`department_code` varchar(20)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_class`
--
DROP TABLE IF EXISTS `vw_class`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_class`  AS  select `tb_class`.`class_id` AS `class_id`,`tb_class`.`school_id` AS `school_id`,`tb_class`.`student_department_id` AS `student_department_id`,`tb_class`.`name` AS `name`,`tb_class`.`code` AS `code`,`tb_class_level`.`class_level_id` AS `level_id`,`tb_class_level`.`name` AS `level_name`,`tb_class`.`date_created` AS `date_created`,`tb_student_department`.`name` AS `department_name`,`tb_student_department`.`code` AS `department_code` from ((`tb_class` join `tb_student_department` on((`tb_class`.`student_department_id` = `tb_student_department`.`student_department_id`))) join `tb_class_level` on((`tb_class_level`.`class_level_id` = `tb_class`.`class_level_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_assessment_timetable`
--
ALTER TABLE `tb_assessment_timetable`
  ADD PRIMARY KEY (`assessment_timetable_id`);

--
-- Indexes for table `tb_batch`
--
ALTER TABLE `tb_batch`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `tb_class`
--
ALTER TABLE `tb_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `tb_class_basic_subject`
--
ALTER TABLE `tb_class_basic_subject`
  ADD PRIMARY KEY (`class_basic_subject_id`);

--
-- Indexes for table `tb_class_level`
--
ALTER TABLE `tb_class_level`
  ADD PRIMARY KEY (`class_level_id`);

--
-- Indexes for table `tb_class_period`
--
ALTER TABLE `tb_class_period`
  ADD PRIMARY KEY (`class_period_id`);

--
-- Indexes for table `tb_class_timing_set`
--
ALTER TABLE `tb_class_timing_set`
  ADD PRIMARY KEY (`class_timing_set_id`);

--
-- Indexes for table `tb_country`
--
ALTER TABLE `tb_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tb_employee_category`
--
ALTER TABLE `tb_employee_category`
  ADD PRIMARY KEY (`employee_category_id`);

--
-- Indexes for table `tb_employee_department`
--
ALTER TABLE `tb_employee_department`
  ADD PRIMARY KEY (`employee_department_id`);

--
-- Indexes for table `tb_employee_grade_level`
--
ALTER TABLE `tb_employee_grade_level`
  ADD PRIMARY KEY (`tb_employee_grade_level_id`);

--
-- Indexes for table `tb_employee_position`
--
ALTER TABLE `tb_employee_position`
  ADD PRIMARY KEY (`employee_position_id`);

--
-- Indexes for table `tb_employee_subject`
--
ALTER TABLE `tb_employee_subject`
  ADD PRIMARY KEY (`employee_subject_id`);

--
-- Indexes for table `tb_grade_level_payroll`
--
ALTER TABLE `tb_grade_level_payroll`
  ADD PRIMARY KEY (`tb_grade_level_payroll_id`);

--
-- Indexes for table `tb_grading_system`
--
ALTER TABLE `tb_grading_system`
  ADD PRIMARY KEY (`grading_system_id`);

--
-- Indexes for table `tb_parent`
--
ALTER TABLE `tb_parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `tb_school`
--
ALTER TABLE `tb_school`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `tb_score_group`
--
ALTER TABLE `tb_score_group`
  ADD PRIMARY KEY (`score_group_id`);

--
-- Indexes for table `tb_session`
--
ALTER TABLE `tb_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `tb_session_quota`
--
ALTER TABLE `tb_session_quota`
  ADD PRIMARY KEY (`session_quota_id`);

--
-- Indexes for table `tb_state`
--
ALTER TABLE `tb_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_student`
--
ALTER TABLE `tb_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tb_student_additional_detail`
--
ALTER TABLE `tb_student_additional_detail`
  ADD PRIMARY KEY (`student_additional_detail_id`);

--
-- Indexes for table `tb_student_additional_field`
--
ALTER TABLE `tb_student_additional_field`
  ADD PRIMARY KEY (`student_additional_field_id`);

--
-- Indexes for table `tb_student_category`
--
ALTER TABLE `tb_student_category`
  ADD PRIMARY KEY (`student_category_id`);

--
-- Indexes for table `tb_student_category_subject`
--
ALTER TABLE `tb_student_category_subject`
  ADD PRIMARY KEY (`student_category_subject_id`);

--
-- Indexes for table `tb_student_department`
--
ALTER TABLE `tb_student_department`
  ADD PRIMARY KEY (`student_department_id`);

--
-- Indexes for table `tb_subject`
--
ALTER TABLE `tb_subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `tb_subject_assessment_timetable`
--
ALTER TABLE `tb_subject_assessment_timetable`
  ADD PRIMARY KEY (`subject_assessment_timetable_id`);

--
-- Indexes for table `tb_subject_category`
--
ALTER TABLE `tb_subject_category`
  ADD PRIMARY KEY (`subject_category_id`);

--
-- Indexes for table `tb_time_zone`
--
ALTER TABLE `tb_time_zone`
  ADD PRIMARY KEY (`time_zone_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tb_weekday`
--
ALTER TABLE `tb_weekday`
  ADD PRIMARY KEY (`weekday`);

--
-- Indexes for table `tb_weekday_class_period`
--
ALTER TABLE `tb_weekday_class_period`
  ADD PRIMARY KEY (`weekday_class_period_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_assessment_timetable`
--
ALTER TABLE `tb_assessment_timetable`
  MODIFY `assessment_timetable_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_batch`
--
ALTER TABLE `tb_batch`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_class`
--
ALTER TABLE `tb_class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_class_basic_subject`
--
ALTER TABLE `tb_class_basic_subject`
  MODIFY `class_basic_subject_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_class_level`
--
ALTER TABLE `tb_class_level`
  MODIFY `class_level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_class_period`
--
ALTER TABLE `tb_class_period`
  MODIFY `class_period_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_class_timing_set`
--
ALTER TABLE `tb_class_timing_set`
  MODIFY `class_timing_set_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_country`
--
ALTER TABLE `tb_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_employee_category`
--
ALTER TABLE `tb_employee_category`
  MODIFY `employee_category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_employee_department`
--
ALTER TABLE `tb_employee_department`
  MODIFY `employee_department_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_employee_grade_level`
--
ALTER TABLE `tb_employee_grade_level`
  MODIFY `tb_employee_grade_level_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_employee_position`
--
ALTER TABLE `tb_employee_position`
  MODIFY `employee_position_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_employee_subject`
--
ALTER TABLE `tb_employee_subject`
  MODIFY `employee_subject_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_grade_level_payroll`
--
ALTER TABLE `tb_grade_level_payroll`
  MODIFY `tb_grade_level_payroll_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_grading_system`
--
ALTER TABLE `tb_grading_system`
  MODIFY `grading_system_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_school`
--
ALTER TABLE `tb_school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_score_group`
--
ALTER TABLE `tb_score_group`
  MODIFY `score_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_session`
--
ALTER TABLE `tb_session`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_session_quota`
--
ALTER TABLE `tb_session_quota`
  MODIFY `session_quota_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_state`
--
ALTER TABLE `tb_state`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `tb_student`
--
ALTER TABLE `tb_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_student_additional_detail`
--
ALTER TABLE `tb_student_additional_detail`
  MODIFY `student_additional_detail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_student_additional_field`
--
ALTER TABLE `tb_student_additional_field`
  MODIFY `student_additional_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_student_category`
--
ALTER TABLE `tb_student_category`
  MODIFY `student_category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_student_category_subject`
--
ALTER TABLE `tb_student_category_subject`
  MODIFY `student_category_subject_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_student_department`
--
ALTER TABLE `tb_student_department`
  MODIFY `student_department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_subject`
--
ALTER TABLE `tb_subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_subject_assessment_timetable`
--
ALTER TABLE `tb_subject_assessment_timetable`
  MODIFY `subject_assessment_timetable_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_subject_category`
--
ALTER TABLE `tb_subject_category`
  MODIFY `subject_category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_time_zone`
--
ALTER TABLE `tb_time_zone`
  MODIFY `time_zone_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_weekday`
--
ALTER TABLE `tb_weekday`
  MODIFY `weekday` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_weekday_class_period`
--
ALTER TABLE `tb_weekday_class_period`
  MODIFY `weekday_class_period_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
