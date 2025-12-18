-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql105.byetcluster.com
-- Generation Time: Nov 29, 2025 at 12:28 AM
-- Server version: 11.4.7-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_39564077_jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `job_id` int(11) UNSIGNED NOT NULL,
  `applied_on` datetime NOT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `user_id`, `job_id`, `applied_on`, `resume`, `status`) VALUES
(1, 80, 16, '2025-10-15 00:19:22', '1760512762_sample_resume.pdf', 'Pending'),
(2, 80, 5, '2025-10-15 00:32:44', '1760513564_Web_Service_Security_and_Standards.pdf', 'Pending'),
(3, 19, 5, '2025-10-15 00:43:15', '1760514195_google cyber.pdf', 'Pending'),
(4, 98, 20, '2025-10-15 08:58:37', '1760543917_sample_resume.pdf', 'Pending'),
(5, 100, 5, '2025-10-15 21:34:06', '1760589246_sample_resume.pdf', 'Pending'),
(6, 19, 21, '2025-10-15 21:47:51', '1760590071_sample_resume.pdf', 'Pending'),
(7, 80, 22, '2025-10-15 22:38:06', '1760593086_sample_resume.pdf', 'Pending'),
(8, 103, 5, '2025-10-24 02:51:29', '1761299489_SEO-5.pdf', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `applied_jobs`
--

CREATE TABLE `applied_jobs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `applied_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `message`, `submitted_at`) VALUES
(1, 'Manav Shailesh Mehta', 'manav3mehta@gmail.com', 'i have a doubt', '2025-07-25 14:04:55'),
(2, 'Manav Shailesh Mehta', 'manav3mehta@gmail.com', 'i have a doubt', '2025-07-26 05:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`id`, `user_id`, `company_name`) VALUES
(1, 31, 'google'),
(2, 35, 'microsoft'),
(3, 36, 'microsoft'),
(4, 38, 'adinath'),
(5, 39, 'adinath'),
(6, 40, 'adinath'),
(7, 41, 'adinath'),
(8, 42, 'sisco'),
(9, 50, 'Google'),
(10, 53, 'Aegis'),
(11, 54, 'Aegis'),
(12, 56, 'Aegis'),
(13, 57, 'Aegis'),
(14, 58, 'Aegis'),
(15, 59, 'Aegis'),
(16, 60, 'Aegis'),
(17, 61, 'Aegis'),
(18, 62, 'Aegis'),
(19, 63, 'Aegis'),
(20, 75, 'google'),
(21, 77, 'google'),
(22, 79, 'tcs'),
(23, 88, 'google'),
(24, 92, 'google'),
(25, 96, 'google'),
(26, 101, 'MANAV');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `salary_range` varchar(50) DEFAULT NULL,
  `job_type` enum('Full-Time','Part-Time','Internship','Remote') DEFAULT NULL,
  `experience_required` varchar(100) DEFAULT NULL,
  `skills_required` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `company_name` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `employer_id`, `title`, `description`, `location`, `salary_range`, `job_type`, `experience_required`, `skills_required`, `created_at`, `company_name`, `tags`) VALUES
(5, 22, 'Security Analyst', 'Cyber-Security complete knowledge', 'Mumbai', '50000-75000', 'Full-Time', '2 years', 'Python,SQL', '2025-07-30 16:30:18', 'microsoft', 'python'),
(7, 22, 'Data handling', 'good knowledge of excel', 'Ahmedabad', '20000-30000', 'Part-Time', '1 years', 'Excel knowledge', '2025-07-30 17:09:12', 'MNC', 'excel'),
(8, 25, 'Front-end developer', 'proper knowledge of frontend languages', 'Ahmedabad', '20000-30000', 'Full-Time', '1 years', 'html,css', '2025-07-31 04:53:59', 'IT', 'frontend'),
(9, 22, 'Front-end developer', 'good knowledge', 'Ahmedabad', '20000-30000', 'Full-Time', '1 years', 'html,css', '2025-07-31 11:54:38', 'ITI', 'frontend'),
(10, 22, 'Front-end developer', 'good knowledge', 'Ahmedabad', '20000-30000', 'Full-Time', '1 years', 'html,css', '2025-07-31 11:55:05', 'IITS', 'frontend'),
(11, 42, 'Back end developer', 'java,python,php', 'pune', '30000-40000', 'Full-Time', '2 years', 'java,c,c++', '2025-07-31 15:52:24', 'SISCO', 'backend'),
(12, 61, 'Software Development', '5 year experience needed', 'Ahmedabad', '40000', 'Full-Time', '5', 'JAVA,python', '2025-08-07 05:48:39', 'Flipkart', 'Backend'),
(13, 61, 'Software Development', '5 year experience needed', 'Ahmedabad', '40000', 'Full-Time', '5', 'JAVA,python', '2025-08-07 05:49:29', 'TCS', 'full-stack'),
(14, 4, 'Software Engineer', 'should have a good developer knowledge', 'pune', '30000-40000', 'Full-Time', '2 years', 'java,c,c++', '2025-08-11 06:43:27', 'Intel', 'c,java'),
(15, 4, 'Software Engineer', 'should have a good developer knowledge', 'pune', '30000-40000', 'Full-Time', '2 years', 'java,c,c++', '2025-08-11 06:43:50', 'Amazon', 'backend'),
(16, 4, 'ethical hacking', 'proper security and hacking knowledge', 'mumbai', '30000-40000', 'Full-Time', '2 years', 'python,sql', '2025-08-11 07:06:35', 'google', NULL),
(17, 77, 'Data Scientist', 'good knowledge of excel+data management', 'mumbai', '30000-40000', 'Remote', '2 years', 'python,sql,knowledge of excel', '2025-08-18 16:40:20', 'google', ''),
(18, 92, 'Full Stack Web devloper', 'good knowledge', 'Ahmedabad', '30000-40000', 'Full-Time', '2 years', 'Html,css,js', '2025-09-04 05:44:53', 'Aegis Softech', ''),
(19, 96, 'software developer', 'software developer', 'Ahmedabad', '30000-40000', 'Full-Time', '2 years', 'Html,css,js', '2025-09-25 05:51:44', 'google', ''),
(20, 4, 'Software tester', 'experienced', 'rajkot', '20,000', 'Part-Time', '3 years', 'Backend', '2025-10-15 15:56:26', 'XYZ', ''),
(21, 101, 'Cyber analyst', 'having good knowledge of cyber', 'Banglore', '50000-60000', 'Remote', '3 years', 'Python,c++,c', '2025-10-16 04:46:49', 'Sisco', ''),
(22, 4, 'Demo', 'having knowledge of lang', 'rajkot', '20,000', 'Part-Time', '1 years', 'php,sql', '2025-10-16 05:36:37', 'microsoft', '');

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker_education`
--

CREATE TABLE `jobseeker_education` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `university` varchar(255) DEFAULT NULL,
  `completion_year` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jobseeker_education`
--

INSERT INTO `jobseeker_education` (`id`, `user_id`, `degree`, `university`, `completion_year`) VALUES
(1, 1, 'bca', 'atmiya', 2025);

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker_profiles`
--

CREATE TABLE `jobseeker_profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `work_experience` text DEFAULT NULL,
  `education` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobseeker_profiles`
--

INSERT INTO `jobseeker_profiles` (`id`, `user_id`, `bio`, `skills`, `work_experience`, `education`) VALUES
(1, 5, 'hello, i am software engineer by profession', 'c,c++,java', NULL, NULL),
(2, 9, '', 'c,c++,java', NULL, NULL),
(3, 15, 'ds,ś,lsdx cm cxx', 'xc lxls', NULL, NULL),
(4, 73, NULL, 'C,c++', '2-3ywars', 'C,c++,java'),
(5, 76, NULL, 'Python, sql', '2 years', 'ethical hacking '),
(6, 3, NULL, 'c,c++,java', '2-3 years', ''),
(7, 78, NULL, 'c,c++,java', '2-3', ''),
(8, 80, NULL, 'c,c++,java', '2-3 year', 'backend'),
(9, 81, NULL, 'c,c++,java', '2-3', 'backend'),
(10, 82, NULL, 'c,c++,java', '2-3', 'backend'),
(11, 1, NULL, 'python', '2-3', 'software developer'),
(12, 83, NULL, 'C++, Python, PHP, C, Java, ML', 'Data scientist', 'BCA Atmiya University'),
(13, 85, NULL, 'excel', '2-3 years', NULL),
(14, 18, NULL, NULL, NULL, NULL),
(15, 86, NULL, NULL, NULL, 'BCA'),
(16, 87, NULL, NULL, NULL, NULL),
(17, 89, NULL, NULL, NULL, NULL),
(18, 93, NULL, 'c,c++,java', '1 year', 'BCA'),
(19, 94, NULL, 'c,c++,java', '1-2', 'BCA'),
(20, 95, NULL, 'c,c++,java', NULL, NULL),
(21, 19, NULL, 'c,c++,java,sql,php', '1-2 years', 'BCA'),
(22, 13, NULL, NULL, NULL, NULL),
(23, 98, NULL, NULL, NULL, NULL),
(24, 100, NULL, 'c,c++,java', '1-2 years', 'BCA'),
(25, 102, NULL, 'Excel, microbiology ', '10 years', 'Masters complete '),
(26, 103, NULL, 'C,c++,python', NULL, NULL),
(27, 104, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker_skills`
--

CREATE TABLE `jobseeker_skills` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jobseeker_skills`
--

INSERT INTO `jobseeker_skills` (`id`, `user_id`, `skill_name`) VALUES
(1, 1, 'c,c++');

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker_skills1`
--

CREATE TABLE `jobseeker_skills1` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saved_jobs`
--

CREATE TABLE `saved_jobs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `saved_on` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `saved_jobs`
--

INSERT INTO `saved_jobs` (`id`, `user_id`, `job_id`, `saved_on`) VALUES
(1, 73, 5, '2025-08-11 06:17:52'),
(3, 80, 5, '2025-08-28 04:47:16'),
(4, 83, 5, '2025-08-29 13:57:33'),
(5, 19, 7, '2025-10-15 04:02:26'),
(6, 98, 7, '2025-10-15 15:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('jobseeker','employer','admin') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resume` varchar(255) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_expiry` datetime DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`, `resume`, `reset_token`, `reset_expiry`, `profile_photo`, `profile_picture`) VALUES
(1, 'manav', 'man@gmail.com', '$2y$10$LjxFNDT/syLi3mOCDJJOROLIjVAtmi.cqjTuMiOSjbfdkFy4BdnNe', 'jobseeker', '2025-07-24 11:28:18', '', NULL, NULL, '', NULL),
(2, 'manav', 'manav@gmail.com', '$2y$10$d/ECkqg5vijC0YhWxfbL3OxmivUpb3Z9RpZgwl5azjTHdbw0TOuw2', 'jobseeker', '2025-07-24 11:41:38', NULL, NULL, NULL, NULL, NULL),
(3, 'manav', 'manav1@gmail.com', '$2y$10$40GmBIzAMuHZ6euAVfAIJ.sDht9psJAkLFoQ4hDmIjx1sLrWaUoFa', 'jobseeker', '2025-07-24 12:03:35', NULL, NULL, NULL, NULL, '1756560343_3.jpg'),
(4, 'manav', 'man234@gmail.com', '$2y$10$iyKpLupVw6HbvKpSuP47CuERyPk.DeskYniKuUxkqFR1fNVgD8TfO', 'employer', '2025-07-24 12:28:37', NULL, NULL, NULL, NULL, NULL),
(5, 'manav', 'm12@gmail.com', '$2y$10$4zORlIYWHpI4V9WuUMyZ6e015GURwG/ieYIci/7SFD9WHqBw2xrw6', 'jobseeker', '2025-07-24 13:28:23', '5_sample_resume.pdf', NULL, NULL, NULL, NULL),
(6, 'manav', 'm123@gmail.com', '$2y$10$hzXdRW/yasEkxuGiZR5QfOpfeq084rGsQbaz0lmSBGqbbVjmb1aKW', 'jobseeker', '2025-07-24 14:24:18', NULL, NULL, NULL, NULL, NULL),
(7, 'manav', 'm456@gmail.com', '$2y$10$uPp854jKyhrKuUTmFQ6q7Oj.UsSkr59r520db/DTT8eb0ZmB/QnKq', 'jobseeker', '2025-07-24 14:32:57', NULL, NULL, NULL, NULL, NULL),
(8, 'manav', 'm89@gmail.com', '$2y$10$8oRXytep5hA5nxJG3orPZ.Pgyj3j3E6RYGJQycOM1333NkA47h7WC', 'jobseeker', '2025-07-24 16:56:35', NULL, NULL, NULL, NULL, NULL),
(9, 'manav', 'm98@gmail.com', '$2y$10$ANffbzHjbAWAb7LnSIAjzO29SdYYYaelQomr/a3e2ZOFu31y2c9nO', 'jobseeker', '2025-07-24 16:59:07', NULL, NULL, NULL, NULL, NULL),
(10, 'manav', 'm49@gmail.com', '$2y$10$39Wbwcuktw46sNPYuxX3l.n2yCigikg02R1PYmvRkqqwYep6F0WAy', 'employer', '2025-07-24 17:38:56', NULL, NULL, NULL, NULL, NULL),
(11, 'manav', 'm50@gmail.com', '$2y$10$dY67vyf81eoejSiLb32ZXOZT1x6V0gwmaKcrfSl0cAYYwZDvhXZ2W', 'jobseeker', '2025-07-24 18:04:52', NULL, NULL, NULL, NULL, NULL),
(13, 'admin', 'admin@example.com', '$2y$10$/hA4TTbrWQkLcbW4cDujj.9dynm69e79mdGuhEyBswCt7TzaYaioy', 'jobseeker', '2025-07-24 18:16:10', NULL, NULL, NULL, NULL, NULL),
(14, 'manav', 'manav145@gmail.com', '$2y$10$u1oWhK6UpEZnIjsglG9wxeY7V2rSXG2pdoOf9F0vK9UaA3eKaS7LW', 'jobseeker', '2025-07-25 07:14:22', NULL, NULL, NULL, NULL, NULL),
(15, 'bhavya', 'bh23@gmail.com', '$2y$10$k3WTlpJd4CreemU3IrI63OZ/Z5GeJpR2DxIX.a59i/WHxgxVvX4bK', 'jobseeker', '2025-07-25 07:27:57', NULL, NULL, NULL, NULL, NULL),
(17, 'm12@gmail.com', 'manav34mehta@gmail.com', '$2y$10$K9u2dNFH7gl27rVW9Ic8y.z53Hz5aCvmVhBsw6sYxK8Ug4/vaMT8C', 'jobseeker', '2025-07-25 12:17:38', NULL, NULL, NULL, NULL, NULL),
(18, 'vaidik', 'vad23@gmail.com', '$2y$10$gxzCk.PWPaimfxUDAmLZhenrB3qxDOEYZWKuSQ/e5aTDp2bSV7wV2', 'jobseeker', '2025-07-25 13:56:17', NULL, NULL, NULL, NULL, '1756559953_18.jpg'),
(19, 'm12@gmail.com', 'manav3mehta@gmail.com', '$2y$10$gn55xwpaZqDzucBuWOJsfeNrBvp2pAkDi0YTkaSorAfFNGEPPW5oe', 'jobseeker', '2025-07-26 05:43:45', NULL, NULL, NULL, NULL, '1760435049_19.jpg'),
(20, 'Manav', 'nam23@gmail.com', '$2y$10$vimxXpjKETssdU98TabNRub3XRF.oqO0LobVfX376g3g.qRVAXoA6', 'jobseeker', '2025-07-26 05:49:48', NULL, NULL, NULL, NULL, NULL),
(21, 'virat', 'vir@gmail.com', '$2y$10$LPaZHKiatiilK3sE0x/tauCrJrtK5M9QgCfVWmcYv9DKGDY/yTL7i', 'jobseeker', '2025-07-30 14:54:59', NULL, 'd57657f96c60b63574003b8c58f04815583755a1c39ec37b9f5654ba06a8fa6468eb228bc32ec06d5561df5893b1f3817af7', '2025-07-30 09:09:04', NULL, NULL),
(22, 'manav', 'manav3456mehta@gmail.com', '$2y$10$q1GBjeQPLCoG.KZooaimMObe9lQ7.obDyQORmTpVbwBI0qmv02KRm', 'employer', '2025-07-30 16:28:44', NULL, 'f3d9db244eae27e2a4fd8982206a6db0ddda39f3930844f6c6a45dca18667f1a9c9294e1cd79fc017bebd17a8a87e58790fc', '2025-07-30 22:29:44', NULL, NULL),
(23, 'Vaidik', 'Vaidikdhamecha@gmail.com', '$2y$10$CGR41v5qxmB8ctVvkjOfouRPRng/pCiRFzYVCvgrmoRG3xAZAUBau', 'jobseeker', '2025-07-30 16:42:51', NULL, NULL, NULL, NULL, NULL),
(24, 'Vaishali', 'v@gmail.com', '$2y$10$CdK4/ae4rIAa.l93aOVBDOS20hboZCGKTUAzzIX2hRycyBVuGv7cG', 'jobseeker', '2025-07-30 17:17:21', NULL, NULL, NULL, NULL, NULL),
(25, 'vaidik', 'vd@gmail.com', '$2y$10$HDddRm05v.8N17FZ5czNeuZnoS4s2C/A13j.Z6duwZRch0Wnvi24u', 'employer', '2025-07-31 04:51:55', NULL, NULL, NULL, NULL, NULL),
(26, 'Manav', 'm...a@gmail.com', '$2y$10$WTGg6wB8lixAPHGkF6tnV.GM1I/KIgFICHclcQisLjpvEWHcR3XlS', 'jobseeker', '2025-07-31 06:20:22', NULL, NULL, NULL, NULL, NULL),
(27, 'Manav', 'devkansara629@gmaul.com', '$2y$10$84s88wcHoAG5pqmzvyCXtuw4vUX8UMGlKkwPAZUTWomCWdUf06hYW', 'jobseeker', '2025-07-31 06:21:41', NULL, NULL, NULL, NULL, NULL),
(28, 'Vaidik', 'vaidikdhamecha22@gmail.com', '$2y$10$2Zpp6nzTZGUvjXdD5gtgL.Rq1tev9eH50gefrSXEBI5X8EztMTb/O', 'jobseeker', '2025-07-31 08:47:13', NULL, NULL, NULL, NULL, NULL),
(29, 'vaidik', 'vd23@gmail.com', '$2y$10$MAGtcP.PG7gg36UbYxGp9.eFGYSsxWYbyHL.dSlorWLQ/Q9jKLxPC', 'employer', '2025-07-31 12:06:42', NULL, NULL, NULL, NULL, NULL),
(30, 'manav', 'mth@gmail.com', '$2y$10$E1PmwAHBSoPDxF2bu78dTuUO/B7XIoc7SLooCBqexzR8KMa.8t5Wi', 'employer', '2025-07-31 12:09:00', NULL, NULL, NULL, NULL, NULL),
(31, 'manav', 'mtha@gmail.com', '$2y$10$aDqXGUk1hXX3SLiuKKT/gexehmtDo01nWdNVih3weChQeLXUzv47q', 'employer', '2025-07-31 12:10:14', NULL, NULL, NULL, NULL, NULL),
(32, 'man', 'm@gmail.com', '$2y$10$RjFmUw6FMuqVcpqnd2p33.cd/SdwWSwsvnazyJXQUFIwcyEC9ZfOG', 'jobseeker', '2025-07-31 12:10:58', NULL, NULL, NULL, NULL, NULL),
(33, 'jigar', 'jigs@gmail.com', '$2y$10$jvIxKBwj5KekrlGPZl3LteeRXyZtVkLY7DU6l7ZNXMt5TNmblnRvq', 'jobseeker', '2025-07-31 14:55:51', NULL, NULL, NULL, NULL, NULL),
(34, 'atul', 'at@gmail.com', '$2y$10$6GUK.S9VrFJuC2U1QZltIui2X/fY2wxfvHArUYU6TQOkDb6aLMcvO', 'jobseeker', '2025-07-31 15:06:44', NULL, NULL, NULL, NULL, NULL),
(35, 'atul', 'at1@gmail.com', '$2y$10$5zgSO14ROsJ6GE/ln.3SFOs.B4tvS5NHZQygmejrh/oVEZZ5GNgUG', 'employer', '2025-07-31 15:07:10', NULL, NULL, NULL, NULL, NULL),
(36, 'atul', 'at2@gmail.com', '$2y$10$/91gUdwwc/AusQuvrF46IuRAbT3T3HZm8h0UcHUhEteokicdZgz82', 'employer', '2025-07-31 15:09:38', NULL, NULL, NULL, NULL, NULL),
(37, 'mehul', 'me@gmail.com', '$2y$10$/Dww8DQyEY9Hv.veVWdmmuLo7nOLVTakhuPPClJfz6iXzPAQUUwyO', 'jobseeker', '2025-07-31 15:17:47', NULL, NULL, NULL, NULL, NULL),
(38, 'shailesh', 'sh@gmail.com', '$2y$10$OIWZsSIjK.bxrijZEHuJfu3HW3yEurRsYEqs1u6KpKaJCAUjqW3m2', 'employer', '2025-07-31 15:25:34', NULL, NULL, NULL, NULL, NULL),
(39, 'shailesh', 'sh1@gmail.com', '$2y$10$mnhDOcyV91f7Eszp2kQxruRoYoEAMYAZNm0.IWRY2FnPckUDHRjpO', 'employer', '2025-07-31 15:26:08', NULL, NULL, NULL, NULL, NULL),
(40, 'shailesh', 'sh12@gmail.com', '$2y$10$BzOR33bwQU6u0bnrnTVUguYwHNuD/Hf26dKsspe451sF0LxgErrSi', 'employer', '2025-07-31 15:28:14', NULL, NULL, NULL, NULL, NULL),
(41, 'jigar', 'jigs1@gmail.com', '$2y$10$F/.pXpa1eaHRArx.ABWtruSh3hnXDlDtqYGAsScdtIAPW6QcPmmHO', 'employer', '2025-07-31 15:28:55', NULL, NULL, NULL, NULL, NULL),
(42, 'mahaveer', 'ma@gmail.com', '$2y$10$0wI2kXuBlxFvW4iccGa3SOINlIMUqSMAzl3ZQttYKNlFmAf/4qdXa', 'employer', '2025-07-31 15:40:13', NULL, NULL, NULL, NULL, NULL),
(43, 'Atharva', 'ath@gmail.com', '$2y$10$Di98L1It4nUX925LUVy2IuhsS3NvM5cavgccXbfOVF0g.ilE0sy2O', 'jobseeker', '2025-07-31 16:03:31', NULL, NULL, NULL, NULL, NULL),
(44, 'atharva1', 'ath1@gmail.com', '$2y$10$2/7AELc6IDqg0Wkh2tHsCOj4gYacOeZwsLqYYvqT9VY3kmhKv5Awa', 'jobseeker', '2025-07-31 16:04:32', NULL, NULL, NULL, NULL, NULL),
(45, 'vidyut', 'vid@gmail.com', '$2y$10$cobyBu4t0k3PzJYC8QBb3efmb9pVV0SPpqDDZ/HNCMDlZoMCR2Z4a', 'jobseeker', '2025-07-31 16:07:51', NULL, NULL, NULL, NULL, NULL),
(46, 'vidhi', 'vi@gmail.com', '$2y$10$478BuUcmGV/vDmoABa9tN.Io9Xg0070ln3zbCe9JijbceabviUWOa', 'jobseeker', '2025-07-31 16:16:06', NULL, NULL, NULL, NULL, NULL),
(47, 'tanya', 'tan@gmail.com', '$2y$10$s8NO9qN7xcz79LJIEKWh9ez8hFhPwFYODz42QWtHdR4sbeQxveikW', 'jobseeker', '2025-07-31 16:45:20', NULL, NULL, NULL, NULL, NULL),
(48, 'tanya', 'tan1@gmail.com', '$2y$10$9cEyc7gGy6cyLSCJARNvaO8H5joysysqJ1XX4YGO7WRxVEqW4p7pm', 'jobseeker', '2025-07-31 17:16:51', NULL, NULL, NULL, NULL, NULL),
(49, 'Dharmesh', 'd@gmail.com', '$2y$10$cM1fo9JNIG6pfvTIFrKrtOetEVOvHCLwdD4dL7W9dUN9kB20Pzjvm', 'jobseeker', '2025-08-01 16:26:41', NULL, NULL, NULL, NULL, NULL),
(50, 'Kajol', 'kaj@gmail.com', '$2y$10$oQcNNAo/TYTUjyxwO1q0.uw.vFc/AAYT2fcVGI/8A3yCZT3dQ5d5e', 'employer', '2025-08-05 06:39:31', NULL, NULL, NULL, NULL, NULL),
(51, 'Kajol', 'kaj1@gmail.com', '$2y$10$FejK.Lu78gbatwHnlpfpBON24kCsq2XPyY0Z5lCM2WH0t9Q60yWa6', 'jobseeker', '2025-08-05 06:40:00', NULL, NULL, NULL, NULL, NULL),
(52, 'Jay', 'jay@gmail.com', '$2y$10$jpztj8KGjypx7oN3OCcXq.75t9pJL0OPPRwNO1XCrH2CWE2JC16jW', 'jobseeker', '2025-08-07 04:43:58', NULL, NULL, NULL, NULL, NULL),
(53, 'Jay', 'jay1@gmail.com', '$2y$10$KLs/gIbNwr4QdCys6asiU.9eu2wLcqbFE0VzKMvbyl7..oI6aciW6', 'employer', '2025-08-07 04:44:26', NULL, NULL, NULL, NULL, NULL),
(54, 'Het', 'het@gmail.com', '$2y$10$5zZ/TGl..w8Ne7XUrwSlle11GlHNdnSd5FslXDwhbb8QnUDwKP5m.', 'employer', '2025-08-07 04:57:33', NULL, NULL, NULL, NULL, NULL),
(55, 'Het', 'het1@gmail.com', '$2y$10$1ZLi/J5rzSIDV8FJCQqPl.cRiXYa56n4EYnB0LbddOh7b5HG3xax2', 'jobseeker', '2025-08-07 04:58:48', NULL, NULL, NULL, NULL, NULL),
(56, 'Het', 'het11@gmail.com', '$2y$10$Y49HpbydbfuYEodFV.cQe.KTMgZQElfY67tDLfS6tm3X/Bp/DE4b2', 'employer', '2025-08-07 05:00:22', NULL, NULL, NULL, NULL, NULL),
(57, 'Het', 'het111@gmail.com', '$2y$10$BC2v86B9DKnYE4HvfqjwU.h7JIsbXf5Wnugn64zi5bOSrSndQFtam', 'employer', '2025-08-07 05:05:35', NULL, NULL, NULL, NULL, NULL),
(58, 'Het', 'het1111@gmail.com', '$2y$10$IWjxBcAZ6jhV.bJKsc10POfu5FUjI7f441uvQlv/UvvFiDZzacYCW', 'employer', '2025-08-07 05:06:00', NULL, NULL, NULL, NULL, NULL),
(59, 'Het', 'het11111@gmail.com', '$2y$10$pqm1qVyK.BtXEPVwc5PTSObNH0iedRzkcxeVwngcr.ARaI6xi.Bnu', 'employer', '2025-08-07 05:13:53', NULL, NULL, NULL, NULL, NULL),
(60, 'Tyg', 'ty@gmail.com', '$2y$10$jBM8Eldu3BKkOQ0EvMC.s.1D6RqbN38FW/I7N1Wx01lYE74Mrcnwe', 'employer', '2025-08-07 05:16:12', NULL, NULL, NULL, NULL, NULL),
(61, 'Ved', 'vd2@gmail.com', '$2y$10$y4piKbwqweJHBg3PxCGDRupyfowbVnInKoQW6G2i5rX.5es/BFRri', 'employer', '2025-08-07 05:19:35', NULL, NULL, NULL, NULL, NULL),
(62, 'Vaishali', 'vm@gmail.com', '$2y$10$8k48r9wOOCa96WcwXaGXZOkK9mn/GPSEFFkh/huEjJwMxluis/rk6', 'employer', '2025-08-07 05:22:23', NULL, NULL, NULL, NULL, NULL),
(63, 'chinmaye', 'ch@gmail.com', '$2y$10$hVOWVJrKKWO/ymJZRy8XCeXo5pbGudBURojvKnhq18.hyKw4Eejp2', 'employer', '2025-08-07 07:45:07', NULL, NULL, NULL, NULL, NULL),
(64, 'chinmaye', 'ch2@gmail.com', '$2y$10$Udfz4di.ybauWsGXECH96.entt6ECceiKQBwm/AOnJkGceNJq6xOK', 'jobseeker', '2025-08-07 11:56:00', NULL, NULL, NULL, NULL, NULL),
(65, 'jenil', 'jen@gmail.com', '$2y$10$D6w1oFtZv3AHyquN4kQlr.qtcWpjmj7lSWHePG81gxln/CQvdsX5W', 'jobseeker', '2025-08-07 13:21:30', NULL, NULL, NULL, NULL, NULL),
(66, 'Vaibhav', 'Vaibhavdhamecha@gmail.com', '$2y$10$Ct5E5WjLw43/SFOD9hVaSO3J6jVDOIBgTy6B6NyUqhUJaSPLYVkEO', 'jobseeker', '2025-08-07 17:37:21', NULL, NULL, NULL, NULL, NULL),
(67, 'Abc', '123@gmail.com', '$2y$10$zSwohvqXg5PO59oxTSMJUuwTdlHpt3Os882RTaDIH4y/DpJuSk06q', 'jobseeker', '2025-08-10 05:08:27', NULL, NULL, NULL, NULL, NULL),
(68, 'Miral', 'mm@gmail.com', '$2y$10$s6BF59hlPr/UsUhY0InMI.NxDZKmnlqf3fV3xGVnl8r5kgjyTU3Yi', 'jobseeker', '2025-08-10 05:16:14', NULL, NULL, NULL, NULL, NULL),
(69, 'manav', 'manav68@gmail.com', '$2y$10$QVVNKl4tsvX.au.TGN62AuRhfzmN9Rwp/9k3lJ9yRukTUEcpcH4ki', 'jobseeker', '2025-08-10 09:28:42', NULL, NULL, NULL, NULL, NULL),
(70, 'manav', 'manav45@gmail.com', '$2y$10$NhqIUfNGo8eANu4Rk2pv7urBHzc2cFPm3C9bLlbRCSqNpJ8IS98Zy', 'jobseeker', '2025-08-10 09:53:19', NULL, NULL, NULL, NULL, NULL),
(71, 'palak', 'pm@gmai.com', '$2y$10$.gSG9ngtYiFw9IbLKRJbG.Hjdy3kcwJAlIds4MZy9OCyXFIyjjKRO', 'jobseeker', '2025-08-10 10:11:10', NULL, NULL, NULL, NULL, NULL),
(72, 'manav', 'mt@gmail.com', '$2y$10$c4hufKyOJc0fB7Yh7X2HiO2rDex0PC7cuePq4l8bz94uwTl0lY3LW', 'jobseeker', '2025-08-10 10:12:45', NULL, NULL, NULL, NULL, NULL),
(73, 'kavyaa', 'kk@gmail.com', '$2y$10$nolfAH2uurDif30od3UQ9uqY8Kv98AEXP01dboDOU87EYPSZ0G346', 'jobseeker', '2025-08-10 10:13:42', '1754895163_sample_resume.pdf', NULL, NULL, NULL, NULL),
(74, 'kavyaa', 'kk1@gmail.com', '$2y$10$EHIRPRXbTGUzmZcX/FfrjuuFy49IRv8fi.yvITONSSpNsYh936qXa', 'employer', '2025-08-10 17:56:17', NULL, NULL, NULL, NULL, NULL),
(75, 'kavyaa', 'kk2@gmail.com', '$2y$10$2PXHznBsBT059Fkxk/p5/eJSDdT5e.xStQ7eQ8kNOf5HAfA9dl/R2', 'employer', '2025-08-10 17:56:41', NULL, NULL, NULL, NULL, NULL),
(76, 'Hemat', 'hem@gmail.com', '$2y$10$PhXVlj.bxGYWj2f1Y2FFWOuRY.oJ1gDdT.Aaf81B207owbsniK3se', 'jobseeker', '2025-08-11 08:14:52', NULL, NULL, NULL, NULL, NULL),
(77, 'manava', 'msv@gmail.com', '$2y$10$pbTBA4Xqn08hp6P80Ve2XOhIvKEgAbAn/IE2y8Ac0CgNtzXJ9mySK', 'employer', '2025-08-18 16:37:15', NULL, NULL, NULL, NULL, NULL),
(78, 'manav', 'm99@gmail.com', '$2y$10$/QFiaCx9vOgrrrZOoKxZtOnU9dwZHuUM1NOR5ZkS7Md/I5H8wfxR2', 'jobseeker', '2025-08-25 13:50:42', NULL, NULL, NULL, NULL, NULL),
(79, 'manav', 'm94@gmail.com', '$2y$10$XK0upfcJQWY31KM2qcotIurzbRe8QGQQbKaJVOhb3ZNKKoCiy8U56', 'employer', '2025-08-25 13:53:37', NULL, NULL, NULL, NULL, NULL),
(80, 'dev', 'dev@gmail.com', '$2y$10$3H3doa32D97/JvTDZBRJBuz54MxX.GIRl/TzrZDAcJs0mZy8lzSeW', 'jobseeker', '2025-08-28 04:28:49', NULL, NULL, NULL, NULL, '1760543158_80.jpg'),
(81, 'vaidik', 'vaidik@gmail.com', '$2y$10$/ZuoWOj8ExgvwZU9UgyBsOL3zafd68RgQEBr8RWszmXtOk5x/8gQi', 'jobseeker', '2025-08-28 04:36:15', NULL, NULL, NULL, NULL, NULL),
(82, 'Manav', 'manav33mehta@gmail.com', '$2y$10$bd5vLFMIOFNo9ugps0TUnuZNvG1iXnOPQylTQ58A1dx5sgvgbl6xy', 'jobseeker', '2025-08-28 07:32:43', '', NULL, NULL, NULL, NULL),
(83, 'Maulik', 'maulik@gmail.com', '$2y$10$pe2AuHu3qb3./AEpRDTXT.SCfwTb2qbFlKvtuQeXcAjzaablJEKx6', 'jobseeker', '2025-08-29 13:56:30', NULL, NULL, NULL, NULL, NULL),
(84, 'utkarsh', 'atm@gmail.com', '$2y$10$DteUmwxmdOENUMT.ABTay..upPsXD3aLn5Q44TWdgjyw1xx1mUAI2', 'jobseeker', '2025-08-30 09:46:45', NULL, NULL, NULL, NULL, NULL),
(85, 'utkarsh1', 'atm1@gmail.com', '$2y$10$JKbAGtrHWrPnNW7Akz.65OPPWFjtT1gQR4/0vUgAKFZqXB5NK1DBi', 'jobseeker', '2025-08-30 09:47:48', NULL, NULL, NULL, NULL, NULL),
(86, 'pankaj', 'pt@gmail.com', '$2y$10$HBIt/KAFItmnYJMUA7dEZOVL4yOX0ZNWrLyqrGrODBdR6Wt/Dixfu', 'jobseeker', '2025-08-30 13:39:10', NULL, NULL, NULL, NULL, NULL),
(87, 'Manav Mehta', 'manav31mehta@gmail.com', '$2y$10$Ez8hkFG9Ru/BDUxFMPn00OCdUYGUmP0AQDO8xItPa2nKEW.uY0/pq', 'jobseeker', '2025-08-30 13:48:45', NULL, NULL, NULL, NULL, '1756561769_87.jpg'),
(88, 'vaishali Mehta', 'v31mehta@gmail.com', '$2y$10$2iuxJ8Tzamd8yw3ImZwQ5.WW3qHVXdYyGrSVNt.FWGVzV1Xh4Wf46', 'employer', '2025-08-31 09:57:07', NULL, NULL, NULL, NULL, NULL),
(89, 'jay sojitra', 'jay3@gmail.com', '$2y$10$lnqy653TaWaHUR.it8bDYOkj0jsvMSomY21lbwOht4Qv.BF9VC9o.', 'jobseeker', '2025-09-04 05:37:36', NULL, NULL, NULL, NULL, NULL),
(90, 'jay sojitra', 'jay34@gmail.com', '$2y$10$RKXeCJ3HyMhY1G9Sl9svCeFlvrP7hXxjW7R0j3qNSJP1Vx9Gyt1yy', 'jobseeker', '2025-09-04 05:38:31', NULL, NULL, NULL, NULL, NULL),
(91, 'jay sojitra', 'jay3456@gmail.com', '$2y$10$dDZSnI.n.FzqLJWFLBy/PO5DxQ89ftYAQrvdWtWq5XGJzYQ/wJtXy', 'jobseeker', '2025-09-04 05:40:32', NULL, NULL, NULL, NULL, NULL),
(92, 'jay sojitra', 'jay34578@gmail.com', '$2y$10$106LSdZpcEwk7YYs3.TwJe1gIU22ThqGfXvFM71E//AUK2fiNVu6e', 'employer', '2025-09-04 05:41:33', NULL, NULL, NULL, NULL, NULL),
(93, 'Manav Mehta', 'manav48mehta@gmail.com', '$2y$10$Tv3hyMr.0kp4wU9yhlMqveszVtZ3BwzWuXSWHR2.CY701hH0stNNS', 'jobseeker', '2025-09-11 04:36:35', '1757565919_sample_resume.pdf', NULL, NULL, NULL, '1757568633_93.png'),
(94, 'Manav Mehta', 'manav36mehta@gmail.com', '$2y$10$JyzrgEngd3qO63pSvucAMuk.mqoQ//iYYFJDlbsvPu5jVJvF1dnfq', 'jobseeker', '2025-09-18 04:31:21', NULL, NULL, NULL, NULL, '1758170023_94.jpg'),
(95, 'Manav Mehta', 'manav63@gmail.com', '$2y$10$4JAd0.EkECiSSQ5.a.iup.vrLZ1NrWgpXT0lI5QRLVsoloXFsze/y', 'jobseeker', '2025-09-25 04:34:23', '1758774924_sample_resume.pdf', NULL, NULL, NULL, NULL),
(96, 'Manav Mehta', 'manav56@gmail.com', '$2y$10$tWM5UuJbY90jRZ9A4SfWJu6AJVp9V0qokdkWm3fiDH4gACUx2KJ5q', 'employer', '2025-09-25 05:50:32', NULL, NULL, NULL, NULL, NULL),
(97, 'Manav Mehta', 'mn88@gmail.com', '$2y$10$fiyDAv8T6vrzHR5cYhW5l.S84XEf4LHLS0us8tmWXusVzsL5sGD.q', 'jobseeker', '2025-10-14 10:34:48', NULL, NULL, NULL, NULL, NULL),
(98, 'Manav Mehta', 'manav39mehta@gmail.com', '$2y$10$mfeRyvld9a7HaLnAYNILIuBls65YK4oXYjZcVpZo2j/B738kFdQFK', 'jobseeker', '2025-10-15 15:57:52', NULL, NULL, NULL, NULL, NULL),
(99, 'Manav Mehta', 'manav93@gmail.com', '$2y$10$6Sdu6ofv7oiGqeVX.O1Zm..42v5p0VlpMSKP9aH1WdgAnjvxaRvUa', 'jobseeker', '2025-10-16 04:24:20', NULL, NULL, NULL, NULL, NULL),
(100, 'Manav Mehta', 'man86@gmail.com', '$2y$10$2m6M3xlo2U52sFHfptsGsuB2rLW8.DgVIpKQAiArdkRVgabjKsRR6', 'jobseeker', '2025-10-16 04:25:30', NULL, NULL, NULL, NULL, NULL),
(101, 'Manav Mehta', 'mm46@gmail.com', '$2y$10$uw.f8i2LoivRuC2ZCF.7iumvRN2BSyFSLiEGcN.wp9nYlaQnX9Mem', 'employer', '2025-10-16 04:36:18', NULL, NULL, NULL, NULL, NULL),
(102, 'Asmita Dhamecha', 'asmitadhamecha53@gmail.com', '$2y$10$wnkfTLLTsymZng8mLqvGWOsM8xB.Cpda.MTfycUn8VDmZ2kUtRBn2', 'jobseeker', '2025-10-18 05:38:10', NULL, NULL, NULL, NULL, NULL),
(103, 'Jenil Mehta', 'jen34@gmail.com', '$2y$10$H6Zi719TwmdZDfggfK4DX.tGpGXvFZdsak1plXzaJ/8G/R5i9wGzK', 'jobseeker', '2025-10-24 09:48:46', NULL, NULL, NULL, NULL, '1761299408_103.jpg'),
(104, 'Manav Mehta', 'mvs88@gmail.com', '$2y$10$2tUp8ZAHTYkci4VTZ1mWK.PBwRMZfcPMYTBgfU9/pELbf.bHCF6.a', 'jobseeker', '2025-11-25 11:33:59', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `profile_picture`, `mobile`) VALUES
(1, NULL, '8849544704');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `applied_jobs`
--
ALTER TABLE `applied_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employer_id` (`employer_id`);

--
-- Indexes for table `jobseeker_education`
--
ALTER TABLE `jobseeker_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `jobseeker_profiles`
--
ALTER TABLE `jobseeker_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `jobseeker_skills`
--
ALTER TABLE `jobseeker_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `jobseeker_skills1`
--
ALTER TABLE `jobseeker_skills1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `applied_jobs`
--
ALTER TABLE `applied_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `jobseeker_education`
--
ALTER TABLE `jobseeker_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobseeker_profiles`
--
ALTER TABLE `jobseeker_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `jobseeker_skills`
--
ALTER TABLE `jobseeker_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobseeker_skills1`
--
ALTER TABLE `jobseeker_skills1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applied_jobs`
--
ALTER TABLE `applied_jobs`
  ADD CONSTRAINT `applied_jobs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applied_jobs_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`employer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobseeker_profiles`
--
ALTER TABLE `jobseeker_profiles`
  ADD CONSTRAINT `jobseeker_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
