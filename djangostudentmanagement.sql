-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2024 at 09:07 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djangostudentmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_emailaddress`
--

INSERT INTO `account_emailaddress` (`id`, `email`, `verified`, `primary`, `user_id`) VALUES
(1, 'devit.heng1209@gmail.com', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add lecturer', 7, 'add_lecturer'),
(26, 'Can change lecturer', 7, 'change_lecturer'),
(27, 'Can delete lecturer', 7, 'delete_lecturer'),
(28, 'Can view lecturer', 7, 'view_lecturer'),
(29, 'Can add student', 8, 'add_student'),
(30, 'Can change student', 8, 'change_student'),
(31, 'Can delete student', 8, 'delete_student'),
(32, 'Can view student', 8, 'view_student'),
(33, 'Can add site', 9, 'add_site'),
(34, 'Can change site', 9, 'change_site'),
(35, 'Can delete site', 9, 'delete_site'),
(36, 'Can view site', 9, 'view_site'),
(37, 'Can add avatar', 10, 'add_avatar'),
(38, 'Can change avatar', 10, 'change_avatar'),
(39, 'Can delete avatar', 10, 'delete_avatar'),
(40, 'Can view avatar', 10, 'view_avatar'),
(41, 'Can add email address', 11, 'add_emailaddress'),
(42, 'Can change email address', 11, 'change_emailaddress'),
(43, 'Can delete email address', 11, 'delete_emailaddress'),
(44, 'Can view email address', 11, 'view_emailaddress'),
(45, 'Can add email confirmation', 12, 'add_emailconfirmation'),
(46, 'Can change email confirmation', 12, 'change_emailconfirmation'),
(47, 'Can delete email confirmation', 12, 'delete_emailconfirmation'),
(48, 'Can view email confirmation', 12, 'view_emailconfirmation'),
(49, 'Can add social account', 13, 'add_socialaccount'),
(50, 'Can change social account', 13, 'change_socialaccount'),
(51, 'Can delete social account', 13, 'delete_socialaccount'),
(52, 'Can view social account', 13, 'view_socialaccount'),
(53, 'Can add social application', 14, 'add_socialapp'),
(54, 'Can change social application', 14, 'change_socialapp'),
(55, 'Can delete social application', 14, 'delete_socialapp'),
(56, 'Can view social application', 14, 'view_socialapp'),
(57, 'Can add social application token', 15, 'add_socialtoken'),
(58, 'Can change social application token', 15, 'change_socialtoken'),
(59, 'Can delete social application token', 15, 'delete_socialtoken'),
(60, 'Can view social application token', 15, 'view_socialtoken'),
(61, 'Can add subject', 16, 'add_subject'),
(62, 'Can change subject', 16, 'change_subject'),
(63, 'Can delete subject', 16, 'delete_subject'),
(64, 'Can view subject', 16, 'view_subject'),
(65, 'Can add class', 17, 'add_class'),
(66, 'Can change class', 17, 'change_class'),
(67, 'Can delete class', 17, 'delete_class'),
(68, 'Can view class', 17, 'view_class'),
(69, 'Can add enrollment', 18, 'add_enrollment'),
(70, 'Can change enrollment', 18, 'change_enrollment'),
(71, 'Can delete enrollment', 18, 'delete_enrollment'),
(72, 'Can view enrollment', 18, 'view_enrollment');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$kDs5FibweYJoXejiiF8pYY$DIVEVZCjQ+qc7juDnDuFyIbr1iH8b34PhDApxN22/WY=', '2024-02-16 07:44:23.536802', 1, 'vitvit', '', '', 'vitsuperuser@gmail.com', 1, 1, '2024-02-12 08:16:23.413212'),
(2, '!vf1F9Z5w2mSPx5ic6PC7RUcLiGIqsMSTz3Czdbsf', '2024-02-16 05:58:16.821750', 0, 'heng', 'Heng', 'Devit', 'devit.heng1209@gmail.com', 0, 1, '2024-02-12 08:18:16.809994'),
(3, 'pbkdf2_sha256$720000$Q1gvrKMxzUMcdGM4UFGGFO$DezmIR1CrP9zyFMQEMiKZzN066b9eUfe6phsVFT1LT4=', NULL, 0, 'cina', '', '', 'cina12345@gmail.com', 0, 1, '2024-02-14 10:59:05.000000'),
(4, '!0V4Ogtlzrw3VsrRUzsB7h8wGOfrGYV1VeQJMIREF', NULL, 0, 'khujnos@gmail.com', 'Khu', 'Jnos', 'khujnos@gmail.com', 0, 1, '2024-02-16 04:33:56.003181'),
(5, '!v0hm0PQXF8dVo1mR6Xd62zVPCIrjLEm8UMuvxtJD', NULL, 0, 'mab@gmail.com', 'Mr.', 'Mab', 'mab@gmail.com', 0, 1, '2024-02-16 04:35:01.305558'),
(6, '!IkkZ3oNHf3Cr60nsF1XQF0IViQ7g9sVHoERYGS9y', NULL, 0, 'khustar@gmail.com', 'Khu', 'Star', 'khustar@gmail.com', 0, 1, '2024-02-16 04:44:31.367992'),
(7, '!6jLiX9SnNzxupatHpHaOHBcYU5srmlGFe0PynHO5', NULL, 0, 'last', 'The', 'Last', 'last@gmail.com', 0, 1, '2024-02-16 04:47:12.001645'),
(8, '!U0I6JgEdIk0jbfrRtpqO6zutQWutgEQTKYdPWuRk', NULL, 0, 'dodo', 'Mr', 'DODO', 'do@gmail.com', 0, 1, '2024-02-16 06:56:23.650991'),
(9, '!Abp9zLAUCyuk2TRHh33853rvsh8k8PmGChO5D4pm', NULL, 0, 'kosol', 'Chib', 'Kosol', 'kosol@gmail.com', 0, 1, '2024-02-16 07:16:36.851577'),
(10, '!FjSULw3AookJnWhd6g7j25liB8b4egkr5tFfHhMz', '2024-02-16 08:04:19.000000', 1, 'stu', 'Mr.', 'Pakrigna', 'stu@gmail.com', 1, 1, '2024-02-16 07:19:23.000000'),
(11, 'pbkdf2_sha256$720000$5g4JM41YlQd86P0sj7xkBv$f7OhmKRRDfOIagQEp1MlRNNWJVUppLQNDWf5GmXf8Ms=', '2024-02-16 07:25:48.083871', 0, 'vit@gmail.com', 'vit', 'vit', 'vit@gmail.com', 0, 1, '2024-02-16 07:24:50.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 3, 3),
(4, 3, 4),
(5, 3, 5),
(6, 3, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 3, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 3, 16),
(17, 3, 17),
(18, 3, 18),
(19, 3, 19),
(20, 3, 20),
(21, 3, 21),
(22, 3, 22),
(23, 3, 23),
(24, 3, 24),
(25, 3, 25),
(26, 3, 26),
(27, 3, 27),
(28, 3, 28),
(29, 3, 29),
(30, 3, 30),
(31, 3, 31),
(32, 3, 32),
(33, 3, 33),
(34, 3, 34),
(35, 3, 35),
(36, 3, 36),
(37, 3, 37),
(38, 3, 38),
(39, 3, 39),
(40, 3, 40),
(41, 3, 41),
(42, 3, 42),
(43, 3, 43),
(44, 3, 44),
(45, 3, 45),
(46, 3, 46),
(47, 3, 47),
(48, 3, 48),
(49, 3, 49),
(50, 3, 50),
(51, 3, 51),
(52, 3, 52),
(53, 3, 53),
(54, 3, 54),
(55, 3, 55),
(56, 3, 56),
(57, 3, 57),
(58, 3, 58),
(59, 3, 59),
(60, 3, 60),
(61, 3, 61),
(62, 3, 62),
(63, 3, 63),
(64, 3, 64),
(65, 3, 65),
(66, 3, 66),
(67, 3, 67),
(68, 3, 68),
(69, 3, 69),
(70, 3, 70),
(71, 3, 71),
(72, 3, 72),
(73, 10, 1),
(74, 10, 2),
(75, 10, 3),
(76, 10, 4),
(77, 10, 5),
(78, 10, 6),
(79, 10, 7),
(80, 10, 8),
(81, 10, 9),
(82, 10, 10),
(83, 10, 11),
(84, 10, 12),
(85, 10, 13),
(86, 10, 14),
(87, 10, 15),
(88, 10, 16),
(89, 10, 17),
(90, 10, 18),
(91, 10, 19),
(92, 10, 20),
(93, 10, 21),
(94, 10, 22),
(95, 10, 23),
(96, 10, 24),
(97, 10, 25),
(98, 10, 26),
(99, 10, 27),
(100, 10, 28),
(101, 10, 29),
(102, 10, 30),
(103, 10, 31),
(104, 10, 32),
(105, 10, 33),
(106, 10, 34),
(107, 10, 35),
(108, 10, 36),
(109, 10, 37),
(110, 10, 38),
(111, 10, 39),
(112, 10, 40),
(113, 10, 41),
(114, 10, 42),
(115, 10, 43),
(116, 10, 44),
(117, 10, 45),
(118, 10, 46),
(119, 10, 47),
(120, 10, 48),
(121, 10, 49),
(122, 10, 50),
(123, 10, 51),
(124, 10, 52),
(125, 10, 53),
(126, 10, 54),
(127, 10, 55),
(128, 10, 56),
(129, 10, 57),
(130, 10, 58),
(131, 10, 59),
(132, 10, 60),
(133, 10, 61),
(134, 10, 62),
(135, 10, 63),
(136, 10, 64),
(137, 10, 65),
(138, 10, 66),
(139, 10, 67),
(140, 10, 68),
(141, 10, 69),
(142, 10, 70),
(143, 10, 71),
(144, 10, 72);

-- --------------------------------------------------------

--
-- Table structure for table `avatar_avatar`
--

CREATE TABLE `avatar_avatar` (
  `id` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `avatar` varchar(1024) NOT NULL,
  `date_uploaded` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-02-12 08:16:58.221546', '1', 'Google', 1, '[{\"added\": {}}]', 14, 1),
(2, '2024-02-12 08:23:14.821476', '1', '1 Kok Dara KokDara@gmail.com 0987654321 2021-12-01 Male PP Jane Smith 123-456-7890 C++', 1, '[{\"added\": {}}]', 8, 1),
(3, '2024-02-12 08:33:03.485080', '1', '1 Long Pakrigna Pakrigna@gmail.com 0285689008 C++ img/lecture_profiles/e2719775fe9fe7ac00f607172c92858f.jpg', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-02-13 05:10:51.844375', '1', '1 C++', 1, '[{\"added\": {}}]', 16, 1),
(5, '2024-02-13 05:10:57.687148', '2', '2 Design', 1, '[{\"added\": {}}]', 16, 1),
(6, '2024-02-13 05:11:07.943716', '3', '3 Java', 1, '[{\"added\": {}}]', 16, 1),
(7, '2024-02-13 05:11:41.441500', '1', '1 Prasat KokSomrong 5PM-8:30PM', 1, '[{\"added\": {}}]', 17, 1),
(8, '2024-02-14 06:20:28.013664', '1', '3 John Doe john.doe@example.com 1234567890 2000-01-15 Male New York Mary Doe 987-654-3210 Java img/Student_profiles/Profile.jpg 123 enrolled in 1 Prasat KokSomrong 5PM-8:30PM for 3 Java with lecturer ', 1, '[{\"added\": {}}]', 18, 1),
(9, '2024-02-14 06:55:28.246480', '1', '1 Kok Dara KokDara@gmail.com 0987654321 Science img/lecture_profiles/1537860611456.jpg dara123', 1, '[{\"added\": {}}]', 7, 1),
(10, '2024-02-14 06:55:59.822824', '2', '2 Long Pakrigna Pakrigna@gmail.com 0987123456 Science img/lecture_profiles/images.jpg na123', 1, '[{\"added\": {}}]', 7, 1),
(11, '2024-02-14 06:57:14.615312', '3', '3 John Cina Cina@gmail.com 0123456789 English img/lecture_profiles/Screenshot_2024-01-23_164040.png cina123', 1, '[{\"added\": {}}]', 7, 1),
(12, '2024-02-14 07:00:58.742515', '1', '1 Heng Lundy Lundy@gmail.com 0285689008 2021-12-01 Male PP Jane Smith 123-456-7890 2 Science img/Student_profiles/Screenshot_2024-01-23_164132.png lundy123', 1, '[{\"added\": {}}]', 8, 1),
(13, '2024-02-14 07:03:55.232552', '1', '4 Michael Johnson michael.johnson@example.com 5551234567 1999-09-10 Male 789 Elm St, Village Michelle Johnson 5559876543 3 English img/Student_profiles/michael_johnson.jpg password789 enrolled in 3 Cl', 1, '[{\"added\": {}}]', 18, 1),
(14, '2024-02-14 07:05:01.510528', '2', '1 Heng Lundy Lundy@gmail.com 0285689008 2021-12-01 Male PP Jane Smith 123-456-7890 2 Science img/Student_profiles/Screenshot_2024-01-23_164132.png lundy123 enrolled in 2 Class B Tuesday 10:00 AM - 12:', 1, '[{\"added\": {}}]', 18, 1),
(15, '2024-02-14 07:05:38.907295', '3', '3 Jane Smith jane.smith@example.com 987654321 2001-03-20 Female 456 Oak St, Town John Smith 123456789 2 Science img/Student_profiles/jane_smith.jpg password456 enrolled in 2 Class B Tuesday 10:00 AM -', 1, '[{\"added\": {}}]', 18, 1),
(16, '2024-02-14 07:06:12.309208', '4', '6 David Williams david.williams@example.com 5559876543 2000-11-05 Male 654 Cedar St, Forest Diana Williams 5551237890 2 Science img/Student_profiles/david_williams.jpg passwordxyz enrolled in 2 Class ', 1, '[{\"added\": {}}]', 18, 1),
(17, '2024-02-14 10:59:05.642493', '3', 'cina', 1, '[{\"added\": {}}]', 4, 1),
(18, '2024-02-14 10:59:15.560189', '3', 'cina', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(19, '2024-02-14 10:59:21.649782', '3', 'cina', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(20, '2024-02-16 04:30:24.788517', '4', '4 Khu Tmey Khumab@gmail.com 0987654321 Mathematics img/lecture_profiles/1537860611456_ED9KpjT.jpg mab123', 1, '[{\"added\": {}}]', 7, 1),
(21, '2024-02-16 04:33:56.006180', '5', '5 Khu Jnos khujnos@gmail.com 0987123456 English img/lecture_profiles/aesthetic-spider-man-marvel-desktop-wallpaper-preview.jpg khujnos123', 1, '[{\"added\": {}}]', 7, 1),
(22, '2024-02-16 04:35:01.308638', '7', '7 Mr. Mab mab@gmail.com 0987123456 2021-12-01 Female PP Jane Smith 123-456-7890 2 Science img/Student_profiles/1537860611456.jpg mabmab123', 1, '[{\"added\": {}}]', 8, 1),
(23, '2024-02-16 04:44:31.371512', '6', '6 Khu Star khustar@gmail.com 0285689008 Science img/lecture_profiles/aesthetic-spider-man-marvel-desktop-wallpaper-preview_TaCw7Zq.jpg khustar@gmail.com', 1, '[{\"added\": {}}]', 7, 1),
(24, '2024-02-16 04:47:12.003612', '7', '7 The Last last@gmail.com 0285689008 Science img/lecture_profiles/1537860611456_GM8KJ6Y.jpg last123', 1, '[{\"added\": {}}]', 7, 1),
(25, '2024-02-16 06:56:23.655000', '8', '8 Mr DODO do@gmail.com 098765432 Science img/lecture_profiles/1537860611456_3VP7fab.jpg do123', 1, '[{\"added\": {}}]', 7, 1),
(26, '2024-02-16 07:16:36.854086', '9', '9 Chib Kosol kosol@gmail.com 0123456789 Science img/lecture_profiles/aesthetic-spider-man-marvel-desktop-wallpaper-preview_si2L33N.jpg pbkdf2_sha256$720000$gbxtLBmyxoJ4bkP1QhwNEo$5yoOlKRhxDaH2wjAc4S63', 1, '[{\"added\": {}}]', 7, 1),
(27, '2024-02-16 07:19:23.106327', '8', '8 Mr. Pakrigna stu@gmail.com 0987123456 2021-12-01 Male PP Jane Smith 123-456-7890 2 Science img/Student_profiles/aesthetic-spider-man-marvel-desktop-wallpaper-preview.jpg pbkdf2_sha256$720000$xxth8KE', 1, '[{\"added\": {}}]', 8, 1),
(28, '2024-02-16 07:24:50.833990', '11', 'vit@gmail.com', 1, '[{\"added\": {}}]', 4, 1),
(29, '2024-02-16 07:25:15.381993', '11', 'vit@gmail.com', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Last login\"]}}]', 4, 1),
(30, '2024-02-16 08:04:32.346569', '10', 'stu', 2, '[{\"changed\": {\"fields\": [\"Email address\", \"Staff status\", \"Superuser status\", \"User permissions\", \"Last login\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(11, 'account', 'emailaddress'),
(12, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'avatar', 'avatar'),
(5, 'contenttypes', 'contenttype'),
(17, 'myapp', 'class'),
(18, 'myapp', 'enrollment'),
(7, 'myapp', 'lecturer'),
(8, 'myapp', 'student'),
(16, 'myapp', 'subject'),
(6, 'sessions', 'session'),
(9, 'sites', 'site'),
(13, 'socialaccount', 'socialaccount'),
(14, 'socialaccount', 'socialapp'),
(15, 'socialaccount', 'socialtoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-02-12 08:14:54.217397'),
(2, 'auth', '0001_initial', '2024-02-12 08:14:54.624468'),
(3, 'account', '0001_initial', '2024-02-12 08:14:54.750051'),
(4, 'account', '0002_email_max_length', '2024-02-12 08:14:54.762970'),
(5, 'account', '0003_alter_emailaddress_create_unique_verified_email', '2024-02-12 08:14:54.784577'),
(6, 'account', '0004_alter_emailaddress_drop_unique_email', '2024-02-12 08:14:54.944191'),
(7, 'account', '0005_emailaddress_idx_upper_email', '2024-02-12 08:14:54.949300'),
(8, 'admin', '0001_initial', '2024-02-12 08:14:55.049597'),
(9, 'admin', '0002_logentry_remove_auto_add', '2024-02-12 08:14:55.055596'),
(10, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-12 08:14:55.064967'),
(11, 'contenttypes', '0002_remove_content_type_name', '2024-02-12 08:14:55.120431'),
(12, 'auth', '0002_alter_permission_name_max_length', '2024-02-12 08:14:55.167322'),
(13, 'auth', '0003_alter_user_email_max_length', '2024-02-12 08:14:55.180001'),
(14, 'auth', '0004_alter_user_username_opts', '2024-02-12 08:14:55.187002'),
(15, 'auth', '0005_alter_user_last_login_null', '2024-02-12 08:14:55.233109'),
(16, 'auth', '0006_require_contenttypes_0002', '2024-02-12 08:14:55.234107'),
(17, 'auth', '0007_alter_validators_add_error_messages', '2024-02-12 08:14:55.241140'),
(18, 'auth', '0008_alter_user_username_max_length', '2024-02-12 08:14:55.256074'),
(19, 'auth', '0009_alter_user_last_name_max_length', '2024-02-12 08:14:55.269657'),
(20, 'auth', '0010_alter_group_name_max_length', '2024-02-12 08:14:55.284421'),
(21, 'auth', '0011_update_proxy_permissions', '2024-02-12 08:14:55.290421'),
(22, 'auth', '0012_alter_user_first_name_max_length', '2024-02-12 08:14:55.302418'),
(23, 'avatar', '0001_initial', '2024-02-12 08:14:55.365890'),
(24, 'avatar', '0002_add_verbose_names_to_avatar_fields', '2024-02-12 08:14:55.392600'),
(25, 'avatar', '0003_auto_20170827_1345', '2024-02-12 08:14:55.400760'),
(27, 'sessions', '0001_initial', '2024-02-12 08:14:55.462311'),
(28, 'sites', '0001_initial', '2024-02-12 08:14:55.492769'),
(29, 'sites', '0002_alter_domain_unique', '2024-02-12 08:14:55.505723'),
(30, 'socialaccount', '0001_initial', '2024-02-12 08:14:55.843056'),
(31, 'socialaccount', '0002_token_max_lengths', '2024-02-12 08:14:55.879710'),
(32, 'socialaccount', '0003_extra_data_default_dict', '2024-02-12 08:14:55.887707'),
(33, 'socialaccount', '0004_app_provider_id_settings', '2024-02-12 08:14:55.928606'),
(34, 'socialaccount', '0005_socialtoken_nullable_app', '2024-02-12 08:14:56.187446'),
(35, 'socialaccount', '0006_alter_socialaccount_extra_data', '2024-02-12 08:14:56.234041'),
(40, 'myapp', '0001_initial', '2024-02-14 06:32:57.527323'),
(41, 'myapp', '0002_lecturer_password_student_password', '2024-02-14 06:32:57.561638'),
(42, 'myapp', '0003_subject', '2024-02-14 06:32:57.582323'),
(43, 'myapp', '0004_class', '2024-02-14 06:32:57.604895'),
(44, 'myapp', '0005_enrollment', '2024-02-14 06:32:57.786677'),
(45, 'myapp', '0006_alter_lecturer_course', '2024-02-14 06:32:57.878209'),
(46, 'myapp', '0007_alter_student_course', '2024-02-14 06:34:09.049188'),
(47, 'myapp', '0008_lecturer_username_student_username', '2024-02-16 04:22:32.939748');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3y8xrh0hqrqlqgr8vtoutubt6nhryuel', '.eJxVjMEOwiAQRP-FsyEsIASP3v0GsrssUjVtUtqT8d9tkx70Npn3Zt4q47q0vHaZ81DURYE6_XaE_JRxB-WB433SPI3LPJDeFX3Qrm9Tkdf1cP8OGva2rZ0DZGMFIgLZ4l2CWKsnrja6WINhIipJOKCkLQUKBALJJz47U736fAH3kDiw:1raB2A:aKKRRhPA-uLMu0NqseAQWiVNRG8-3KNSshza3YwzJg8', '2024-02-28 08:54:26.558863'),
('9ra6c0g293y7cwv7w60za7hatzhy3u3a', '.eJwVykEKg0AMRuG7_GtBhS5a7yEIpUhMp3ZEk8FEEMS7O-4eH--AKUeaiVk38d6cPKB5H5CwOxqUUb5hL1EgrcrBLNusY5QsxpryjJy0-b9PtNJyDzgLDFX9m56PdumEXmPL-JwXF74kRw:1rasBR:jSlJ9p1r_FqZLbL_GaJV-u-5QM2RJ2Yz5ovzkIeMmgc', '2024-03-01 06:58:53.599359'),
('fo50lhxxc357e9iycoen2gc9yic0ods8', 'e30:1ra6oh:LRnjkHDRjMFX5kLTUT9e3hgt5EBF-nMSOGaobGlgFc4', '2024-02-28 04:24:15.993441'),
('m0ym0uzcb0lkz0wt9td75ce502jiltmn', 'e30:1rassq:wTT2ua0GCPNtcnJuOd1pQv_fBxJKZ50XKcAx0fjBMIA', '2024-03-01 07:43:44.702138'),
('mbyululrqhkc2c81xovqjhezjowwf2sg', '.eJxVjMEOwiAQRP-FsyEsIASP3v0GsrssUjVtUtqT8d9tkx70Npn3Zt4q47q0vHaZ81DURYE6_XaE_JRxB-WB433SPI3LPJDeFX3Qrm9Tkdf1cP8OGva2rZ0DZGMFIgLZ4l2CWKsnrja6WINhIipJOKCkLQUKBALJJz47U736fAH3kDiw:1rasMv:Ebk5QVTgUWB1gIeiUO1XWMoHIzPHojBn85JDeg0PK3U', '2024-03-01 07:10:45.779771'),
('q1gfinpd8f2elp873wjfiognzsm374wo', '.eJxVjMEOwiAQRP-FsyEsIASP3v0GsrssUjVtUtqT8d9tkx70Npn3Zt4q47q0vHaZ81DURYE6_XaE_JRxB-WB433SPI3LPJDeFX3Qrm9Tkdf1cP8OGva2rZ0DZGMFIgLZ4l2CWKsnrja6WINhIipJOKCkLQUKBALJJz47U736fAH3kDiw:1rZWCU:_uBntLiIcTar-psyVB-tfOg7UfE5js5diDJs9mmoPBc', '2024-02-26 13:18:22.328671'),
('v89otdxjm5ihac0nzzyuosd9fz4folz0', '.eJxVjMEOwiAQRP-FsyEsIASP3v0GsrssUjVtUtqT8d9tkx70Npn3Zt4q47q0vHaZ81DURYE6_XaE_JRxB-WB433SPI3LPJDeFX3Qrm9Tkdf1cP8OGva2rZ0DZGMFIgLZ4l2CWKsnrja6WINhIipJOKCkLQUKBALJJz47U736fAH3kDiw:1raTHK:4vGxwyCmM5Vr1FYEgWQwVp7_Z2tWMDlgeODKvVzzmYE', '2024-02-29 04:23:18.345243');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(2, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_class`
--

CREATE TABLE `myapp_class` (
  `ClassID` int(11) NOT NULL,
  `ClassName` varchar(100) NOT NULL,
  `Class_Schedule` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_class`
--

INSERT INTO `myapp_class` (`ClassID`, `ClassName`, `Class_Schedule`) VALUES
(1, 'Class A', 'Monday 9:00 AM - 11:00 AM'),
(2, 'Class B', 'Tuesday 10:00 AM - 12:00 PM'),
(3, 'Class C', 'Wednesday 1:00 PM - 3:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_enrollment`
--

CREATE TABLE `myapp_enrollment` (
  `id` bigint(20) NOT NULL,
  `enrollment_date` datetime(6) NOT NULL,
  `class_enrolled_id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_enrollment`
--

INSERT INTO `myapp_enrollment` (`id`, `enrollment_date`, `class_enrolled_id`, `lecturer_id`, `student_id`, `subject_id`) VALUES
(1, '2024-02-14 07:03:55.230585', 3, 3, 4, 3),
(2, '2024-02-14 07:05:01.507030', 2, 1, 1, 2),
(3, '2024-02-14 07:05:38.906296', 2, 1, 3, 2),
(4, '2024-02-14 07:06:12.306185', 2, 1, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `myapp_lecturer`
--

CREATE TABLE `myapp_lecturer` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `course_id` int(11) NOT NULL,
  `profile_picture` varchar(100) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `USERNAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_lecturer`
--

INSERT INTO `myapp_lecturer` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `course_id`, `profile_picture`, `password`, `USERNAME`) VALUES
(1, 'Kok', 'Dara', 'KokDara@gmail.com', '0987654321', 2, 'img/lecture_profiles/1537860611456.jpg', 'dara123', '2024-02-16 04:22:32.908800+00:00'),
(2, 'Long', 'Pakrigna', 'Pakrigna@gmail.com', '0987123456', 2, 'img/lecture_profiles/images.jpg', 'na123', '2024-02-16 04:22:32.908800+00:00'),
(3, 'John', 'Cina', 'Cina@gmail.com', '0123456789', 3, 'img/lecture_profiles/Screenshot_2024-01-23_164040.png', 'cina123', '2024-02-16 04:22:32.908800+00:00'),
(4, 'Khu', 'Tmey', 'Khumab@gmail.com', '0987654321', 1, 'img/lecture_profiles/1537860611456_ED9KpjT.jpg', 'mab123', 'KhuMab'),
(5, 'Khu', 'Jnos', 'khujnos@gmail.com', '0987123456', 3, 'img/lecture_profiles/aesthetic-spider-man-marvel-desktop-wallpaper-preview.jpg', 'khujnos123', 'KhuJnos'),
(6, 'Khu', 'Star', 'khustar@gmail.com', '0285689008', 2, 'img/lecture_profiles/aesthetic-spider-man-marvel-desktop-wallpaper-preview_TaCw7Zq.jpg', 'khustar@gmail.com', 'khustar'),
(7, 'The', 'Last', 'last@gmail.com', '0285689008', 2, 'img/lecture_profiles/1537860611456_GM8KJ6Y.jpg', 'last123', 'last'),
(8, 'Mr', 'DODO', 'do@gmail.com', '098765432', 2, 'img/lecture_profiles/1537860611456_3VP7fab.jpg', 'do123', 'dodo'),
(9, 'Chib', 'Kosol', 'kosol@gmail.com', '0123456789', 2, 'img/lecture_profiles/aesthetic-spider-man-marvel-desktop-wallpaper-preview_si2L33N.jpg', 'pbkdf2_sha256$720000$gbxtLBmyxoJ4bkP1QhwNEo$5yoOlKRhxDaH2wjAc4S63J40Yeo80r6aBo6M5PxEiZs=', 'kosol');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_student`
--

CREATE TABLE `myapp_student` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `parent_guardian_name` varchar(255) NOT NULL,
  `parent_guardian_phone_number` varchar(20) NOT NULL,
  `course_id` int(11) NOT NULL,
  `profile_picture` varchar(100) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `USERNAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_student`
--

INSERT INTO `myapp_student` (`student_id`, `first_name`, `last_name`, `email`, `phone_number`, `date_of_birth`, `gender`, `address`, `parent_guardian_name`, `parent_guardian_phone_number`, `course_id`, `profile_picture`, `password`, `USERNAME`) VALUES
(1, 'Heng', 'Lundy', 'Lundy@gmail.com', '0285689008', '2021-12-01', 'Male', 'PP', 'Jane Smith', '123-456-7890', 2, 'img/Student_profiles/Screenshot_2024-01-23_164132.png', 'lundy123', '2024-02-16 04:22:32.925829+00:00'),
(2, 'John', 'Doe', 'john.doe@example.com', '123456789', '2000-05-15', 'Male', '123 Main St, City', 'Jane Doe', '987654321', 1, 'img/Student_profiles/Screenshot_2024-01-23_164132.png', 'password123', '2024-02-16 04:22:32.925829+00:00'),
(3, 'Jane', 'Smith', 'jane.smith@example.com', '987654321', '2001-03-20', 'Female', '456 Oak St, Town', 'John Smith', '123456789', 2, 'img/Student_profiles/Screenshot_2024-01-23_164132.png', 'password456', '2024-02-16 04:22:32.925829+00:00'),
(4, 'Michael', 'Johnson', 'michael.johnson@example.com', '5551234567', '1999-09-10', 'Male', '789 Elm St, Village', 'Michelle Johnson', '5559876543', 3, 'img/Student_profiles/Screenshot_2024-01-23_164132.png', 'password789', '2024-02-16 04:22:32.925829+00:00'),
(5, 'Emily', 'Brown', 'emily.brown@example.com', '9871234567', '2002-07-25', 'Female', '321 Pine St, Hamlet', 'Edward Brown', '9875554321', 1, 'img/Student_profiles/Screenshot_2024-01-23_164132.png', 'passwordabc', '2024-02-16 04:22:32.925829+00:00'),
(6, 'David', 'Williams', 'david.williams@example.com', '5559876543', '2000-11-05', 'Male', '654 Cedar St, Forest', 'Diana Williams', '5551237890', 2, 'img/Student_profiles/Screenshot_2024-01-23_164132.png', 'passwordxyz', '2024-02-16 04:22:32.925829+00:00'),
(7, 'Mr.', 'Mab', 'mab@gmail.com', '0987123456', '2021-12-01', 'Female', 'PP', 'Jane Smith', '123-456-7890', 2, 'img/Student_profiles/1537860611456.jpg', 'mabmab123', 'Mabmab'),
(8, 'Mr.', 'Pakrigna', 'stu@gmail.com', '0987123456', '2021-12-01', 'Male', 'PP', 'Jane Smith', '123-456-7890', 2, 'img/Student_profiles/aesthetic-spider-man-marvel-desktop-wallpaper-preview.jpg', 'pbkdf2_sha256$720000$xxth8KE81Vi3JSMfJqLG1M$jmR5oDX5jkqJMj8orNWTVCWsN3FcPrXLiUIsQZfkhd0=', 'stu');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_subject`
--

CREATE TABLE `myapp_subject` (
  `SubjectID` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_subject`
--

INSERT INTO `myapp_subject` (`SubjectID`, `SubjectName`) VALUES
(1, 'Mathematics'),
(2, 'Science'),
(3, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(200) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`extra_data`)),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialaccount`
--

INSERT INTO `socialaccount_socialaccount` (`id`, `provider`, `uid`, `last_login`, `date_joined`, `extra_data`, `user_id`) VALUES
(1, 'google', '118011128485912714495', '2024-02-16 05:58:16.811207', '2024-02-12 08:18:16.831399', '{\"iss\": \"https://accounts.google.com\", \"azp\": \"472641664540-8g54j3tpibdeorjq319mln5pfl2uh4ft.apps.googleusercontent.com\", \"aud\": \"472641664540-8g54j3tpibdeorjq319mln5pfl2uh4ft.apps.googleusercontent.com\", \"sub\": \"118011128485912714495\", \"email\": \"devit.heng1209@gmail.com\", \"email_verified\": true, \"at_hash\": \"6ufLE-HJRrcLV2houWB5Eg\", \"name\": \"Heng Devit\", \"picture\": \"https://lh3.googleusercontent.com/a/ACg8ocLI5NrvYSyBZ9d4qsF6I9Ni-EF_0YgA04ij7X-cNraO_w=s96-c\", \"given_name\": \"Heng\", \"family_name\": \"Devit\", \"locale\": \"en\", \"iat\": 1708063094, \"exp\": 1708066694}', 2);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `provider_id` varchar(200) NOT NULL,
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`settings`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialapp`
--

INSERT INTO `socialaccount_socialapp` (`id`, `provider`, `name`, `client_id`, `secret`, `key`, `provider_id`, `settings`) VALUES
(1, 'google', 'Google', '472641664540-8g54j3tpibdeorjq319mln5pfl2uh4ft.apps.googleusercontent.com', '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', '', '', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` bigint(20) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialapp_sites`
--

INSERT INTO `socialaccount_socialapp_sites` (`id`, `socialapp_id`, `site_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_emailaddress_user_id_email_987c8728_uniq` (`user_id`,`email`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `avatar_avatar`
--
ALTER TABLE `avatar_avatar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `avatar_avatar_user_id_ae13b50b_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `myapp_class`
--
ALTER TABLE `myapp_class`
  ADD PRIMARY KEY (`ClassID`);

--
-- Indexes for table `myapp_enrollment`
--
ALTER TABLE `myapp_enrollment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_enrollment_class_enrolled_id_a464d3c4_fk_myapp_cla` (`class_enrolled_id`),
  ADD KEY `myapp_enrollment_lecturer_id_abd7b383_fk_myapp_lecturer_id` (`lecturer_id`),
  ADD KEY `myapp_enrollment_student_id_f1cd5612_fk_myapp_student_student_id` (`student_id`),
  ADD KEY `myapp_enrollment_subject_id_596a75d0_fk_myapp_subject_SubjectID` (`subject_id`);

--
-- Indexes for table `myapp_lecturer`
--
ALTER TABLE `myapp_lecturer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_lecturer_course_id_d3436f8f` (`course_id`);

--
-- Indexes for table `myapp_student`
--
ALTER TABLE `myapp_student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `myapp_student_course_id_9a7f8d8f` (`course_id`);

--
-- Indexes for table `myapp_subject`
--
ALTER TABLE `myapp_subject`
  ADD PRIMARY KEY (`SubjectID`);

--
-- Indexes for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- Indexes for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `avatar_avatar`
--
ALTER TABLE `avatar_avatar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `myapp_class`
--
ALTER TABLE `myapp_class`
  MODIFY `ClassID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `myapp_enrollment`
--
ALTER TABLE `myapp_enrollment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `myapp_lecturer`
--
ALTER TABLE `myapp_lecturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `myapp_student`
--
ALTER TABLE `myapp_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `myapp_subject`
--
ALTER TABLE `myapp_subject`
  MODIFY `SubjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `avatar_avatar`
--
ALTER TABLE `avatar_avatar`
  ADD CONSTRAINT `avatar_avatar_user_id_ae13b50b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `myapp_enrollment`
--
ALTER TABLE `myapp_enrollment`
  ADD CONSTRAINT `myapp_enrollment_class_enrolled_id_a464d3c4_fk_myapp_cla` FOREIGN KEY (`class_enrolled_id`) REFERENCES `myapp_class` (`ClassID`),
  ADD CONSTRAINT `myapp_enrollment_lecturer_id_abd7b383_fk_myapp_lecturer_id` FOREIGN KEY (`lecturer_id`) REFERENCES `myapp_lecturer` (`id`),
  ADD CONSTRAINT `myapp_enrollment_student_id_f1cd5612_fk_myapp_student_student_id` FOREIGN KEY (`student_id`) REFERENCES `myapp_student` (`student_id`),
  ADD CONSTRAINT `myapp_enrollment_subject_id_596a75d0_fk_myapp_subject_SubjectID` FOREIGN KEY (`subject_id`) REFERENCES `myapp_subject` (`SubjectID`);

--
-- Constraints for table `myapp_lecturer`
--
ALTER TABLE `myapp_lecturer`
  ADD CONSTRAINT `myapp_lecturer_course_id_d3436f8f_fk_myapp_subject_SubjectID` FOREIGN KEY (`course_id`) REFERENCES `myapp_subject` (`SubjectID`);

--
-- Constraints for table `myapp_student`
--
ALTER TABLE `myapp_student`
  ADD CONSTRAINT `myapp_student_course_id_9a7f8d8f_fk_myapp_subject_SubjectID` FOREIGN KEY (`course_id`) REFERENCES `myapp_subject` (`SubjectID`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
