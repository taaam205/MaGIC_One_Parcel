-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2020 at 08:01 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parcel_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `email_backups`
--

CREATE TABLE `email_backups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trackingID` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `optional` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_backups`
--

INSERT INTO `email_backups` (`id`, `from`, `to`, `trackingID`, `optional`, `created_at`, `updated_at`) VALUES
(1, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'UHBFISB504150FD', NULL, '2019-12-15 10:17:18', '2019-12-15 10:17:18'),
(2, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'ERA734122170MY', 'dhur mia', '2019-12-15 10:18:00', '2019-12-15 10:18:00'),
(3, 'abd.razak@mymagic.my', 'yazwan@mymagic.my', 'GGGG685452', 'optional', '2019-12-15 19:18:24', '2019-12-15 19:18:24'),
(4, 'abd.razak@mymagic.my', 'yazwan@mymagic.my', 'GGGG6854SS', NULL, '2019-12-15 19:29:18', '2019-12-15 19:29:18'),
(5, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'GGGG6854SS', 'hghg', '2019-12-15 19:47:51', '2019-12-15 19:47:51'),
(6, 'abd.razak@mymagic.my', 'yee.siang@mymagic.my', '93001810025', NULL, '2019-12-15 19:58:04', '2019-12-15 19:58:04'),
(7, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'my19907007053f', NULL, '2019-12-15 20:32:18', '2019-12-15 20:32:18'),
(8, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'my19907007053f', NULL, '2019-12-15 20:32:21', '2019-12-15 20:32:21'),
(9, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'my19907007053f', NULL, '2019-12-15 20:32:24', '2019-12-15 20:32:24'),
(10, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'ERB062350871MY', NULL, '2019-12-15 22:30:42', '2019-12-15 22:30:42'),
(11, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MYSU000002956452', NULL, '2019-12-15 22:31:07', '2019-12-15 22:31:07'),
(12, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MYSU000002954230', NULL, '2019-12-15 22:31:21', '2019-12-15 22:31:21'),
(13, 'abd.razak@mymagic.my', 'hazel.hassan@mymagic.my', 'ERA663858397MY', NULL, '2019-12-15 22:31:52', '2019-12-15 22:31:52'),
(14, 'abd.razak@mymagic.my', 'hazel.hassan@mymagic.my', 'NVMYSXCMYM29591523', NULL, '2019-12-15 22:32:44', '2019-12-15 22:32:44'),
(15, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', '620134073568', NULL, '2019-12-15 22:33:45', '2019-12-15 22:33:45'),
(16, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', '620132917082', NULL, '2019-12-15 22:34:00', '2019-12-15 22:34:00'),
(17, 'abd.razak@mymagic.my', 'siti.azrah@mymagic.my', 'MY40233088308', NULL, '2019-12-15 22:34:31', '2019-12-15 22:34:31'),
(18, 'abd.razak@mymagic.my', 'zul.helmi@mymagic.my', 'ERB069774760MY', 'big parcel', '2019-12-15 22:35:37', '2019-12-15 22:35:37'),
(19, 'abd.razak@mymagic.my', 'ahmad.farhan@mymagic.my', 'H-CYB-DE', NULL, '2019-12-15 22:36:58', '2019-12-15 22:36:58'),
(20, 'abd.razak@mymagic.my', 'ahmad.farhan@mymagic.my', 'MYMP000017099719', NULL, '2019-12-15 22:37:29', '2019-12-15 22:37:29'),
(21, 'abd.razak@mymagic.my', 'amirah.shahira@mymagic.my', 'EP677857799MY', NULL, '2019-12-15 22:37:53', '2019-12-15 22:37:53'),
(22, 'abd.razak@mymagic.my', 'syafiruddin@mymagic.my', 'ERA665091364MY', NULL, '2019-12-15 22:38:13', '2019-12-15 22:38:13'),
(23, 'abd.razak@mymagic.my', 'zul.helmi@mymagic.my', 'ERB)60055165MY', NULL, '2019-12-15 22:38:37', '2019-12-15 22:38:37'),
(24, 'abd.razak@mymagic.my', 'amirah@mymagic.my', 'ERA615548109MY', NULL, '2019-12-15 22:39:12', '2019-12-15 22:39:12'),
(25, 'abd.razak@mymagic.my', 'hafiza@mymagic.my', 'XYKVM7', NULL, '2019-12-15 22:41:01', '2019-12-15 22:41:01'),
(26, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', '5920130944797599', NULL, '2019-12-15 22:41:35', '2019-12-15 22:41:35'),
(27, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'UB068709760SG', NULL, '2019-12-15 22:42:52', '2019-12-15 22:42:52'),
(28, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MYSU000002879308', NULL, '2019-12-15 22:43:36', '2019-12-15 22:43:36'),
(29, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'UB068709760SG', NULL, '2019-12-15 22:43:53', '2019-12-15 22:43:53'),
(30, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', '5920118637231069', NULL, '2019-12-15 22:44:09', '2019-12-15 22:44:09'),
(31, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'UB059227733SG', NULL, '2019-12-15 22:44:20', '2019-12-15 22:44:20'),
(32, 'abd.razak@mymagic.my', 'izzat@mymagic.my', 'ERB056677089MY', NULL, '2019-12-15 22:44:44', '2019-12-15 22:44:44'),
(33, 'abd.razak@mymagic.my', 'salbiah@mymagic.my', 'FE302828773MY', 'DOCUMENTS FROM ABBIE HOSANNA', '2019-12-15 23:55:06', '2019-12-15 23:55:06'),
(34, 'abd.razak@mymagic.my', 'yo.hong@mymagic.my', '620137096023', NULL, '2019-12-16 01:00:52', '2019-12-16 01:00:52'),
(35, 'abd.razak@mymagic.my', 'yo.hong@mymagic.my', '620130112451', NULL, '2019-12-16 01:01:08', '2019-12-16 01:01:08'),
(36, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', '620135696961', NULL, '2019-12-16 01:01:21', '2019-12-16 01:01:21'),
(37, 'abd.razak@mymagic.my', 'yo.hong@mymagic.my', '620133992367', NULL, '2019-12-16 01:01:53', '2019-12-16 01:01:53'),
(38, 'abd.razak@mymagic.my', 'amirah.shahira@mymagic.my', '620133403211', NULL, '2019-12-16 01:02:21', '2019-12-16 01:02:21'),
(39, 'abd.razak@mymagic.my', 'roslin@mymagic.my', 'MYMP000017341338', NULL, '2019-12-16 18:53:32', '2019-12-16 18:53:32'),
(40, 'abd.razak@mymagic.my', 'amirah@mymagic.my', 'MY19588665134Q', NULL, '2019-12-16 19:45:19', '2019-12-16 19:45:19'),
(41, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MY19677593324F', NULL, '2019-12-16 19:45:32', '2019-12-16 19:45:32'),
(42, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MY191760289805', NULL, '2019-12-16 19:45:44', '2019-12-16 19:45:44'),
(43, 'abd.razak@mymagic.my', 'azila@mymagic.my', '600052828419', NULL, '2019-12-16 20:27:02', '2019-12-16 20:27:02'),
(44, 'abd.razak@mymagic.my', 'muqri@mymagic.my', 'W1000018023700', NULL, '2019-12-16 20:36:53', '2019-12-16 20:36:53'),
(45, 'abd.razak@mymagic.my', 'azila@mymagic.my', '45262817460', NULL, '2019-12-16 21:12:47', '2019-12-16 21:12:47'),
(46, 'abd.razak@mymagic.my', 'nur.nadia@mymagic.my', '060301657797148', NULL, '2019-12-17 20:32:18', '2019-12-17 20:32:18'),
(47, 'abd.razak@mymagic.my', 'nur.nadia@mymagic.my', '060301657797148', NULL, '2019-12-17 20:32:21', '2019-12-17 20:32:21'),
(48, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MY19196216538Q', NULL, '2019-12-17 20:32:34', '2019-12-17 20:32:34'),
(49, 'abd.razak@mymagic.my', 'amirah.shahira@mymagic.my', 'ERB077638911MY', NULL, '2019-12-17 20:38:34', '2019-12-17 20:38:34'),
(50, 'abd.razak@mymagic.my', 'shi.yuan@mymagic.my', '620142178508', NULL, '2019-12-17 23:09:27', '2019-12-17 23:09:27'),
(51, 'abd.razak@mymagic.my', 'ganes@mymagic.my', '620139593343', NULL, '2019-12-17 23:09:57', '2019-12-17 23:09:57'),
(52, 'abd.razak@mymagic.my', 'khairulmazwan@mymagic.my', '620141575956', NULL, '2019-12-17 23:10:20', '2019-12-17 23:10:20'),
(53, 'abd.razak@mymagic.my', 'izzat@mymagic.my', '630037486689', NULL, '2019-12-17 23:10:45', '2019-12-17 23:10:45'),
(54, 'abd.razak@mymagic.my', 'ganes@mymagic.my', '620139326824', NULL, '2019-12-17 23:11:00', '2019-12-17 23:11:00'),
(55, 'abd.razak@mymagic.my', 'izzwan.dzulkifli@mymagic.my', 'MY197748607314', NULL, '2019-12-18 19:49:40', '2019-12-18 19:49:40'),
(56, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MY195498058795', NULL, '2019-12-18 19:49:57', '2019-12-18 19:49:57'),
(57, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MY19753190104I', NULL, '2019-12-18 19:50:08', '2019-12-18 19:50:08'),
(58, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'UA312985559TO', NULL, '2019-12-18 20:21:07', '2019-12-18 20:21:07'),
(59, 'abd.razak@mymagic.my', 'abdul.hafiz@mymagic.my', '566198586-8838', NULL, '2019-12-18 23:00:50', '2019-12-18 23:00:50'),
(60, 'abd.razak@mymagic.my', 'ganes@mymagic.my', '620136916619', NULL, '2019-12-19 00:15:28', '2019-12-19 00:15:28'),
(61, 'abd.razak@mymagic.my', 'nur.nadia@mymagic.my', 'GAM007396908', NULL, '2019-12-19 18:48:50', '2019-12-19 18:48:50'),
(62, 'abd.razak@mymagic.my', 'roslin@mymagic.my', 'GAM007380078', NULL, '2019-12-19 18:49:10', '2019-12-19 18:49:10'),
(63, 'abd.razak@mymagic.my', 'amirah@mymagic.my', 'NVMYSXCMYM98172911', NULL, '2019-12-19 18:57:42', '2019-12-19 18:57:42'),
(64, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MY19599540041V', NULL, '2019-12-19 19:14:13', '2019-12-19 19:14:13'),
(65, 'abd.razak@mymagic.my', 'roslin@mymagic.my', '600600053996833', NULL, '2019-12-19 21:41:50', '2019-12-19 21:41:50'),
(66, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', '620145319205', 'heavy parcel', '2019-12-22 19:50:37', '2019-12-22 19:50:37'),
(67, 'abd.razak@mymagic.my', 'khairulmazwan@mymagic.my', '620146014893', NULL, '2019-12-22 20:29:15', '2019-12-22 20:29:15'),
(68, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', '620133540460', NULL, '2019-12-22 20:29:25', '2019-12-22 20:29:25'),
(69, 'abd.razak@mymagic.my', 'amirah@mymagic.my', 'MY19403914158J', NULL, '2019-12-22 20:53:14', '2019-12-22 20:53:14'),
(70, 'abd.razak@mymagic.my', 'amirah@mymagic.my', 'my196167355329', NULL, '2019-12-23 19:14:35', '2019-12-23 19:14:35'),
(71, 'abd.razak@mymagic.my', 'yo.hong@mymagic.my', 'ep669082589my', NULL, '2019-12-23 19:33:02', '2019-12-23 19:33:02'),
(72, 'abd.razak@mymagic.my', 'khairulmazwan@mymagic.my', 'eh873277352my', NULL, '2019-12-23 19:33:44', '2019-12-23 19:33:44'),
(73, 'abd.razak@mymagic.my', 'ganes@mymagic.my', 'MYMP000017597903', NULL, '2019-12-25 18:54:22', '2019-12-25 18:54:22'),
(74, 'abd.razak@mymagic.my', 'ganes@mymagic.my', '620148256539', NULL, '2019-12-25 22:12:04', '2019-12-25 22:12:04'),
(75, 'abd.razak@mymagic.my', 'khairulmazwan@mymagic.my', '620148201798', NULL, '2019-12-25 22:12:21', '2019-12-25 22:12:21'),
(76, 'abd.razak@mymagic.my', 'khairulmazwan@mymagic.my', '620146386507', NULL, '2019-12-25 22:12:34', '2019-12-25 22:12:34'),
(77, 'abd.razak@mymagic.my', 'daren@mymagic.my', '5920168100300639', NULL, '2019-12-26 19:36:42', '2019-12-26 19:36:42'),
(78, 'abd.razak@mymagic.my', 'amirah.shahira@mymagic.my', 'EH702736239MY', NULL, '2019-12-26 19:44:27', '2019-12-26 19:44:27'),
(79, 'abd.razak@mymagic.my', 'khairulmazwan@mymagic.my', 'ERB125446114MY', NULL, '2019-12-26 19:45:05', '2019-12-26 19:45:05'),
(80, 'abd.razak@mymagic.my', 'daren@mymagic.my', 'ERB130417518MY', NULL, '2019-12-26 19:45:28', '2019-12-26 19:45:28'),
(81, 'abd.razak@mymagic.my', 'zul.helmi@mymagic.my', '5920197425997049', NULL, '2019-12-26 22:33:49', '2019-12-26 22:33:49'),
(82, 'abd.razak@mymagic.my', 'syafiruddin@mymagic.my', '5920137657054249', NULL, '2019-12-26 22:34:15', '2019-12-26 22:34:15'),
(83, 'abd.razak@mymagic.my', 'khairulmazwan@mymagic.my', '5920178377426389', NULL, '2019-12-26 22:34:36', '2019-12-26 22:34:36'),
(84, 'abd.razak@mymagic.my', 'amirah.shahira@mymagic.my', 'EH702736239MY', NULL, '2019-12-29 23:04:30', '2019-12-29 23:04:30'),
(85, 'abd.razak@mymagic.my', 'ganes@mymagic.my', 'MY19273054851Q', NULL, '2019-12-29 23:05:37', '2019-12-29 23:05:37'),
(86, 'abd.razak@mymagic.my', 'syafiruddin@mymagic.my', '620151691336', NULL, '2019-12-29 23:06:26', '2019-12-29 23:06:26'),
(87, 'abd.razak@mymagic.my', 'shafiq@mymagic.my', 'ERB068797591MY', NULL, '2019-12-29 23:06:59', '2019-12-29 23:06:59'),
(88, 'abd.razak@mymagic.my', 'ganes@mymagic.my', 'SGN8177193500056', NULL, '2019-12-29 23:08:27', '2019-12-29 23:08:27'),
(89, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'UA313760562TO', NULL, '2019-12-29 23:08:49', '2019-12-29 23:08:49'),
(90, 'abd.razak@mymagic.my', 'khairulmazwan@mymagic.my', '5920182878927429', NULL, '2019-12-29 23:09:22', '2019-12-29 23:09:22'),
(91, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'NVMYSXCMYM64272943', NULL, '2019-12-29 23:09:45', '2019-12-29 23:09:45'),
(92, 'abd.razak@mymagic.my', 'khairulmazwan@mymagic.my', 'NVMYSXCMYM73453192', NULL, '2019-12-29 23:10:05', '2019-12-29 23:10:05'),
(93, 'abd.razak@mymagic.my', 'syafiruddin@mymagic.my', 'MY19793015306K', NULL, '2019-12-30 18:45:39', '2019-12-30 18:45:39'),
(94, 'abd.razak@mymagic.my', 'afidz@mymagic.my', '5920138323417589', NULL, '2019-12-30 22:56:59', '2019-12-30 22:56:59'),
(95, 'abd.razak@mymagic.my', 'ganes@mymagic.my', '620153068939', NULL, '2019-12-30 22:57:14', '2019-12-30 22:57:14'),
(96, 'abd.razak@mymagic.my', 'anusia@mymagic.my', 'NULL', NULL, '2019-12-30 22:58:02', '2019-12-30 22:58:02'),
(97, 'abd.razak@mymagic.my', 'ganes@mymagic.my', 'MY190080929365', NULL, '2020-01-01 19:09:29', '2020-01-01 19:09:29'),
(98, 'abd.razak@mymagic.my', 'ganes@mymagic.my', 'MYCA02287522', NULL, '2020-01-01 19:11:08', '2020-01-01 19:11:08'),
(99, 'abd.razak@mymagic.my', 'izzwan.dzulkifli@mymagic.my', 'MY191962516028', NULL, '2020-01-01 19:11:25', '2020-01-01 19:11:25'),
(100, 'abd.razak@mymagic.my', 'shafiq@mymagic.my', '5920155582419069', NULL, '2020-01-01 20:08:40', '2020-01-01 20:08:40'),
(101, 'abd.razak@mymagic.my', 'muhd.haziq@mymagic.my', '0136155485', NULL, '2020-01-01 20:09:55', '2020-01-01 20:09:55'),
(102, 'abd.razak@mymagic.my', 'amirra@mymagic.my', 'ERB142250024MY', NULL, '2020-01-01 21:59:19', '2020-01-01 21:59:19'),
(103, 'abd.razak@mymagic.my', 'amirra@mymagic.my', 'ERB140644222MY', NULL, '2020-01-01 21:59:45', '2020-01-01 21:59:45'),
(104, 'abd.razak@mymagic.my', 'hafiza@mymagic.my', 'ERB113283918MY', NULL, '2020-01-01 22:00:18', '2020-01-01 22:00:18'),
(105, 'abd.razak@mymagic.my', 'hazel.hassan@mymagic.my', 'ERA645891710MY', NULL, '2020-01-01 22:00:37', '2020-01-01 22:00:37'),
(106, 'abd.razak@mymagic.my', 'ahmad.farhan@mymagic.my', '600056643508', NULL, '2020-01-02 00:37:21', '2020-01-02 00:37:21'),
(107, 'abd.razak@mymagic.my', 'amirra@mymagic.my', '620153174049', NULL, '2020-01-02 00:37:56', '2020-01-02 00:37:56'),
(108, 'abd.razak@mymagic.my', 'amirra@mymagic.my', '620153217429', NULL, '2020-01-02 00:38:11', '2020-01-02 00:38:11'),
(109, 'abd.razak@mymagic.my', 'nurdhaniah@mymagic.my', '620151384324', NULL, '2020-01-02 00:38:29', '2020-01-02 00:38:29'),
(110, 'abd.razak@mymagic.my', 'ahmad.syahrir@mymagic.my', 'EP637604156MY', NULL, '2020-01-02 20:05:31', '2020-01-02 20:05:31'),
(111, 'abd.razak@mymagic.my', 'siti.azrah@mymagic.my', 'EP687140623MY', NULL, '2020-01-02 20:05:48', '2020-01-02 20:05:48'),
(112, 'abd.razak@mymagic.my', 'amirah.shahira@mymagic.my', 'ENA002602105MY', NULL, '2020-01-02 20:09:03', '2020-01-02 20:09:03'),
(113, 'abd.razak@mymagic.my', 'hazel.hassan@mymagic.my', 'EN141267465MY', NULL, '2020-01-02 20:09:22', '2020-01-02 20:09:22'),
(114, 'abd.razak@mymagic.my', 'daren@mymagic.my', '5020014774695820', NULL, '2020-01-02 23:24:54', '2020-01-02 23:24:54'),
(115, 'abd.razak@mymagic.my', 'saiful.adzhar@mymagic.my', 'LPG000007484945', NULL, '2020-01-05 19:18:49', '2020-01-05 19:18:49'),
(116, 'abd.razak@mymagic.my', 'saiful.adzhar@mymagic.my', 'MYX230001242551', NULL, '2020-01-05 19:19:02', '2020-01-05 19:19:02'),
(117, 'abd.razak@mymagic.my', 'masita@mymagic.my', 'MYmP000017880698', NULL, '2020-01-05 19:19:13', '2020-01-05 19:19:13'),
(118, 'abd.razak@mymagic.my', 'amirah.shahira@mymagic.my', 'ERB115850324MY', NULL, '2020-01-05 19:19:37', '2020-01-05 19:19:37'),
(119, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MY82067479343', NULL, '2020-01-05 19:29:25', '2020-01-05 19:29:25'),
(120, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MY19193485579B', NULL, '2020-01-05 20:03:39', '2020-01-05 20:03:39'),
(121, 'abd.razak@mymagic.my', 'amirra@mymagic.my', 'MY195294714206', NULL, '2020-01-05 20:07:04', '2020-01-05 20:07:04'),
(122, 'abd.razak@mymagic.my', 'afidz@mymagic.my', 'MY19588233489C', NULL, '2020-01-05 20:07:18', '2020-01-05 20:07:18'),
(123, 'abd.razak@mymagic.my', 'afidz@mymagic.my', 'MY19010614663B', NULL, '2020-01-05 20:07:32', '2020-01-05 20:07:32'),
(124, 'abd.razak@mymagic.my', 'afidz@mymagic.my', 'MY19182857101K', NULL, '2020-01-05 20:07:42', '2020-01-05 20:07:42'),
(125, 'abd.razak@mymagic.my', 'ganes@mymagic.my', 'MY192379548053', NULL, '2020-01-05 20:07:52', '2020-01-05 20:07:52'),
(126, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MY190062836107', NULL, '2020-01-06 20:11:42', '2020-01-06 20:11:42'),
(127, 'abd.razak@mymagic.my', 'salbiah@mymagic.my', 'EHA039545542MY', NULL, '2020-01-06 20:12:07', '2020-01-06 20:12:07'),
(128, 'abd.razak@mymagic.my', 'amirra@mymagic.my', 'MY198117515536', NULL, '2020-01-06 20:12:38', '2020-01-06 20:12:38'),
(129, 'abd.razak@mymagic.my', 'shafiq@mymagic.my', 'EHA113349438MY', NULL, '2020-01-06 20:13:04', '2020-01-06 20:13:04'),
(130, 'abd.razak@mymagic.my', 'ganes@mymagic.my', 'MY19608884315O', NULL, '2020-01-06 20:13:15', '2020-01-06 20:13:15'),
(131, 'abd.razak@mymagic.my', 'afidz@mymagic.my', 'ERB148534585MY', NULL, '2020-01-06 20:13:28', '2020-01-06 20:13:28'),
(132, 'abd.razak@mymagic.my', 'kingsley.tan@mymagic.my', 'MY20243792717H', NULL, '2020-01-06 20:13:50', '2020-01-06 20:13:50'),
(133, 'abd.razak@mymagic.my', 'hazel.hassan@mymagic.my', 'MY82095904726', NULL, '2020-01-06 20:14:28', '2020-01-06 20:14:28'),
(134, 'abd.razak@mymagic.my', 'ganes@mymagic.my', 'ERB168199313MY', NULL, '2020-01-06 20:15:19', '2020-01-06 20:15:19'),
(135, 'abd.razak@mymagic.my', 'saiful.adzhar@mymagic.my', 'LPG000007269895', NULL, '2020-01-07 19:28:56', '2020-01-07 19:28:56'),
(136, 'abd.razak@mymagic.my', 'kingsley.tan@mymagic.my', 'MY20373927667K', NULL, '2020-01-07 19:29:11', '2020-01-07 19:29:11'),
(137, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MY20458611994U', NULL, '2020-01-07 19:29:25', '2020-01-07 19:29:25'),
(138, 'abd.razak@mymagic.my', 'hendree@mymagic.my', 'MYMP000018014606', NULL, '2020-01-07 19:30:19', '2020-01-07 19:30:19'),
(139, 'abd.razak@mymagic.my', 'hafiza@mymagic.my', '5020014814802960', NULL, '2020-01-07 21:11:59', '2020-01-07 21:11:59'),
(140, 'abd.razak@mymagic.my', 'ganes@mymagic.my', '620159615305', NULL, '2020-01-07 22:03:51', '2020-01-07 22:03:51'),
(141, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', '620159895836', NULL, '2020-01-07 22:04:12', '2020-01-07 22:04:12'),
(142, 'abd.razak@mymagic.my', 'helmy@mymagic.my', '620157175498', NULL, '2020-01-07 22:04:40', '2020-01-07 22:04:40'),
(143, 'abd.razak@mymagic.my', 'khairulmazwan@mymagic.my', '620160595182', NULL, '2020-01-07 22:05:07', '2020-01-07 22:05:07'),
(144, 'abd.razak@mymagic.my', 'khairulmazwan@mymagic.my', '600058732794', NULL, '2020-01-08 22:29:58', '2020-01-08 22:29:58'),
(145, 'abd.razak@mymagic.my', 'izzat@mymagic.my', '630040805806', NULL, '2020-01-08 22:32:44', '2020-01-08 22:32:44'),
(146, 'abd.razak@mymagic.my', 'adzim@mymagic.my', '620162406905', NULL, '2020-01-08 22:33:10', '2020-01-08 22:33:10'),
(147, 'abd.razak@mymagic.my', 'muhammad.khaliq@mymagic.my', 'MYMP000018057139', NULL, '2020-01-09 17:49:00', '2020-01-09 17:49:00'),
(148, 'abd.razak@mymagic.my', 'muhammad.khaliq@mymagic.my', 'MYMP000018033690', NULL, '2020-01-09 17:49:18', '2020-01-09 17:49:18'),
(149, 'abd.razak@mymagic.my', 'hazel.hassan@mymagic.my', 'erb117520246my', NULL, '2020-01-09 18:50:35', '2020-01-09 18:50:35'),
(150, 'abd.razak@mymagic.my', 'syamil@mymagic.my', 'EN100639547MY', NULL, '2020-01-09 18:51:07', '2020-01-09 18:51:07'),
(151, 'abd.razak@mymagic.my', 'adzim@mymagic.my', 'erb181835853my', NULL, '2020-01-09 18:52:11', '2020-01-09 18:52:11'),
(152, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MY20036132049F', NULL, '2020-01-09 19:05:20', '2020-01-09 19:05:20'),
(153, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MY20147663640I', NULL, '2020-01-09 19:05:30', '2020-01-09 19:05:30'),
(154, 'abd.razak@mymagic.my', 'amirah@mymagic.my', 'MY20564238971X', NULL, '2020-01-09 19:05:51', '2020-01-09 19:05:51'),
(155, 'abd.razak@mymagic.my', 'amirah.shahira@mymagic.my', 'MY20171991810C', NULL, '2020-01-09 19:06:04', '2020-01-09 19:06:04'),
(156, 'abd.razak@mymagic.my', 'afidz@mymagic.my', '7300085087', NULL, '2020-01-10 00:11:47', '2020-01-10 00:11:47'),
(157, 'abd.razak@mymagic.my', 'izzat@mymagic.my', 'ERB189197321MY', NULL, '2020-01-12 19:24:37', '2020-01-12 19:24:37'),
(158, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'ERB189293005MY', NULL, '2020-01-12 19:24:49', '2020-01-12 19:24:49'),
(159, 'abd.razak@mymagic.my', 'amirra@mymagic.my', 'MY201890845083', NULL, '2020-01-12 19:52:00', '2020-01-12 19:52:00'),
(160, 'abd.razak@mymagic.my', 'amirra@mymagic.my', 'MY201890845083', NULL, '2020-01-12 19:52:04', '2020-01-12 19:52:04'),
(161, 'abd.razak@mymagic.my', 'ros.sarip@mymagic.my', 'MY20934386791P', NULL, '2020-01-12 19:52:19', '2020-01-12 19:52:19'),
(162, 'abd.razak@mymagic.my', 'muhammad.khaliq@mymagic.my', 'MY20443527612U', NULL, '2020-01-12 19:52:50', '2020-01-12 19:52:50'),
(163, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'CJMY205409138444R', NULL, '2020-01-12 20:05:52', '2020-01-12 20:05:52'),
(164, 'abd.razak@mymagic.my', 'izzwan.dzulkifli@mymagic.my', '5920139496508690', NULL, '2020-01-14 18:39:53', '2020-01-14 18:39:53'),
(165, 'abd.razak@mymagic.my', 'kamalia@mymagic.my', 'MY40209344352', NULL, '2020-01-14 18:40:15', '2020-01-14 18:40:15'),
(166, 'abd.razak@mymagic.my', 'kamalia@mymagic.my', 'NVMYSXCMYM32632932', NULL, '2020-01-14 18:40:45', '2020-01-14 18:40:45'),
(167, 'abd.razak@mymagic.my', 'masita@mymagic.my', 'GAM007693554', NULL, '2020-01-14 18:41:02', '2020-01-14 18:41:02'),
(168, 'abd.razak@mymagic.my', 'abdul.hafiz@mymagic.my', 'LDNMY20200113', 'Happy Chinese New Year to You and Your Family!\r\n-Summit Holiday', '2020-01-15 00:13:19', '2020-01-15 00:13:19'),
(169, 'abd.razak@mymagic.my', 'salbiah@mymagic.my', '600059907305', NULL, '2020-01-15 00:31:45', '2020-01-15 00:31:45'),
(170, 'abd.razak@mymagic.my', 'siti.azrah@mymagic.my', 'RU687007505NL', NULL, '2020-01-15 20:25:50', '2020-01-15 20:25:50'),
(171, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'ERB221105466MY', NULL, '2020-01-19 18:21:35', '2020-01-19 18:21:35'),
(172, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MY201820716763', NULL, '2020-01-19 19:16:59', '2020-01-19 19:16:59'),
(173, 'abd.razak@mymagic.my', 'amirah@mymagic.my', 'ZNV293363676-3454', NULL, '2020-01-19 19:48:35', '2020-01-19 19:48:35'),
(174, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MYX230001143191', NULL, '2020-01-21 19:35:50', '2020-01-21 19:35:50'),
(175, 'abd.razak@mymagic.my', 'abdul.hafiz@mymagic.my', 'ERB120266787MY', NULL, '2020-01-21 19:36:21', '2020-01-21 19:36:21'),
(176, 'abd.razak@mymagic.my', 'muqri@mymagic.my', 'MYMP000018468295', NULL, '2020-01-21 19:37:30', '2020-01-21 19:37:30'),
(177, 'abd.razak@mymagic.my', 'amirah.shahira@mymagic.my', 'ERB230882208MY', NULL, '2020-01-21 19:38:37', '2020-01-21 19:38:37'),
(178, 'abd.razak@mymagic.my', 'tanvir@mymagic.my', 'MYMP000018512824', NULL, '2020-01-22 18:35:08', '2020-01-22 18:35:08'),
(179, 'abd.razak@mymagic.my', 'khairulmazwan@mymagic.my', '620175303213', NULL, '2020-01-23 20:44:47', '2020-01-23 20:44:47'),
(180, 'tanvir@mymagic.my', 'tanvir@mymagic.my', '620148201798', 'dada', '2020-01-28 08:41:23', '2020-01-28 08:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_23_101613_create_permission_tables', 2),
(5, '2019_12_08_081743_create_staff_table', 3),
(8, '2019_12_15_174338_create_email_backups_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 8),
(1, 'App\\User', 9),
(1, 'App\\User', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2019-11-23 04:26:24', '2019-11-23 04:26:24');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(4, 'Abd Razak Abd Rahim', 'abd.razak@mymagic.my', '2019-12-09 01:22:48', '2019-12-09 01:22:48'),
(5, 'Abdul Aiman Abdul Jamil', 'abdul.aiman@mymagic.my', '2019-12-09 01:22:58', '2019-12-09 01:22:58'),
(6, 'Abdul Hafiz Abdul Jamil', 'abdul.hafiz@mymagic.my', '2019-12-09 01:23:08', '2019-12-09 01:23:08'),
(7, 'Abdul Hafiz Abdul Rahman', 'hafiz.rahman@mymagic.my', '2019-12-09 01:23:31', '2019-12-09 01:23:31'),
(8, 'Abdul Qayyum Adzim Azmi', 'adzim@mymagic.my', '2019-12-09 01:23:41', '2019-12-09 01:23:41'),
(9, 'Afidz Che Rosli', 'afidz@mymagic.my', '2019-12-09 01:23:50', '2019-12-09 01:23:50'),
(10, 'Ahmad Farhan Hamizu', 'ahmad.farhan@mymagic.my', '2019-12-09 01:23:59', '2019-12-09 01:23:59'),
(11, 'Ahmad Syahrir Mohd Shuib', 'ahmad.syahrir@mymagic.my', '2019-12-09 01:24:08', '2019-12-09 01:24:08'),
(12, 'Aicholpon Satybaldieva', 'chopa@mymagic.my', '2019-12-09 01:24:17', '2019-12-09 01:24:17'),
(13, 'Amirah Izzah Mohd Najib', 'amirah.izzah@mymagic.my', '2019-12-09 01:24:29', '2019-12-09 01:24:29'),
(14, 'Amirah Mahyudin', 'amirah@mymagic.my', '2019-12-09 01:24:38', '2019-12-09 01:24:38'),
(15, 'Amirah Shahira', 'amirah.shahira@mymagic.my', '2019-12-09 01:24:48', '2019-12-09 01:24:48'),
(16, 'Amiruddin Abdul Shukor', 'amiruddin@mymagic.my', '2019-12-09 01:24:58', '2019-12-09 01:24:58'),
(17, 'Andi Suswandi', 'andi@mymagic.my', '2019-12-09 01:25:47', '2019-12-09 01:25:47'),
(18, 'Anis Afina Shahran', 'anis.afina@mymagic.my', '2019-12-09 01:25:54', '2019-12-09 01:25:54'),
(19, 'Anusia Sri Ramu', 'anusia@mymagic.my', '2019-12-09 01:26:03', '2019-12-09 01:26:03'),
(20, 'Athesankari Paramasivam', 'athesankari@mymagic.my', '2019-12-09 01:26:26', '2019-12-09 01:26:26'),
(21, 'Atiqah Marlan', 'atiqah@mymagic.my', '2019-12-09 01:26:33', '2019-12-09 01:26:33'),
(22, 'Daren Tan De Zhern', 'daren@mymagic.my', '2019-12-09 01:26:39', '2019-12-09 01:26:39'),
(23, 'Datuk Abdul Malik Baba', 'malik@mymagic.my', '2019-12-09 01:26:45', '2019-12-09 01:26:45'),
(24, 'David Lim Heng Rui', 'david@mymagic.my', '2019-12-09 01:26:52', '2019-12-09 01:26:52'),
(25, 'Dhanushita Rajasingham', 'dhanushita@mymagic.my', '2019-12-09 01:27:00', '2019-12-09 01:27:00'),
(26, 'Dvya Delilaa Clarence', 'dvya@mymagic.my', '2019-12-09 01:27:07', '2019-12-09 01:27:07'),
(27, 'Dzuleira Abu Bakar', 'dzuleira@mymagic.my', '2019-12-09 01:27:14', '2019-12-09 01:27:14'),
(28, 'Farah Liana Mohamad Shahari', 'farah.liana@mymagic.my', '2019-12-09 01:27:24', '2019-12-09 01:27:24'),
(29, 'Farah Othman', 'farah@mymagic.my', '2019-12-09 01:27:31', '2019-12-09 01:27:31'),
(30, 'Ganes Raam', 'ganes@mymagic.my', '2019-12-09 01:27:38', '2019-12-09 01:27:38'),
(31, 'Ganesh Kumar Bangah', 'ganesh@mymagic.my', '2019-12-09 01:27:47', '2019-12-09 01:27:47'),
(32, 'Gayatri Rajamohan', 'gayatri@mymagic.my', '2019-12-09 01:27:55', '2019-12-09 01:27:55'),
(33, 'Hazel Hassan', 'hazel.hassan@mymagic.my', '2019-12-09 01:28:49', '2019-12-09 01:28:49'),
(34, 'Hazwan Hisyam Ahmad Supian', 'hazwan@mymagic.my', '2019-12-09 01:28:55', '2019-12-09 01:28:55'),
(35, 'Helmy Zamri', 'helmy@mymagic.my', '2019-12-09 01:29:03', '2019-12-09 01:29:03'),
(36, 'Ibrahim Amir Kamaruddin', 'ibrahim.amir@mymagic.my', '2019-12-09 01:29:10', '2019-12-09 01:29:10'),
(37, 'John Son Oei', 'john-sonoei@mymagic.my', '2019-12-09 01:29:25', '2019-12-09 01:29:25'),
(38, 'Kamalia Abd Aziz', 'kamalia@mymagic.my', '2019-12-09 01:29:33', '2019-12-09 01:29:33'),
(39, 'Kavita Geeva', 'kavita@mymagic.my', '2019-12-09 01:29:42', '2019-12-09 01:29:42'),
(40, 'Keivigan Arigukhan Arimuthu', 'keivigan@mymagic.my', '2019-12-09 01:29:59', '2019-12-09 01:29:59'),
(41, 'Khairinn Basharuddin', 'khairin@mymagic.my', '2019-12-09 01:30:06', '2019-12-09 01:30:06'),
(42, 'Khairul Mazwan Ibrahim Pati', 'khairulmazwan@mymagic.my', '2019-12-09 01:30:13', '2019-12-09 01:30:13'),
(43, 'Khalid Yashaiya', 'khalid@mymagic.my', '2019-12-09 01:30:21', '2019-12-09 01:30:21'),
(44, 'Kingsley Tan Kok Yih', 'kingsley.tan@mymagic.my', '2019-12-09 01:30:27', '2019-12-09 01:30:27'),
(45, 'Lim Shi Yuan', 'shi.yuan@mymagic.my', '2019-12-09 01:30:34', '2019-12-09 01:30:34'),
(46, 'Masita Hasim', 'masita@mymagic.my', '2019-12-09 01:30:42', '2019-12-09 01:30:42'),
(47, 'Md Hendree Johari', 'hendree@mymagic.my', '2019-12-09 01:30:50', '2019-12-09 01:30:50'),
(48, 'Mimi Aminah', 'mimi@mymagic.my', '2019-12-09 01:31:09', '2019-12-09 01:31:09'),
(49, 'Mohamed Yusnee Rahmat Mohd Yusof', 'yusnee@mymagic.my', '2019-12-09 01:31:17', '2019-12-09 01:31:17'),
(50, 'Mohd Hanafi Shahrain', 'hanafi@mymagic.my', '2019-12-09 01:31:23', '2019-12-09 01:31:23'),
(51, 'Mohd Hasbullah Mohd Noor', 'hasbullah@mymagic.my', '2019-12-09 01:31:35', '2019-12-09 01:31:35'),
(52, 'Mohd Izzat Mohd Fadzil', 'izzat@mymagic.my', '2019-12-09 01:31:43', '2019-12-09 01:31:43'),
(53, 'Mohd Nizam Habibur Rahman', 'mohd.nizam@mymagic.my', '2019-12-09 01:31:51', '2019-12-09 01:31:51'),
(54, 'Mohd Rizalman Mohd Ali', 'rizalman@mymagic.my', '2019-12-09 01:31:59', '2019-12-09 01:31:59'),
(55, 'Mohd Zul Helmi Muhamad Husin', 'zul.helmi@mymagic.my', '2019-12-09 01:32:06', '2019-12-09 01:32:06'),
(56, 'Muhammad Adib Mohd Iskandar', 'muhammad.adib@mymagic.my', '2019-12-09 01:32:13', '2019-12-09 01:32:13'),
(57, 'Muhammad Amirul Izzat Abu Samah', 'amirul.izzat@mymagic.my', '2019-12-09 01:32:20', '2019-12-09 01:32:20'),
(58, 'Muhammad Ashraf Abu Talib', 'muhammad.ashraf@mymagic.my', '2019-12-09 01:32:29', '2019-12-09 01:32:29'),
(59, 'Muhammad Haidar Hussin', 'haidar@mymagic.my', '2019-12-09 01:32:38', '2019-12-09 01:32:38'),
(60, 'Muhammad Haziq Mohd Nazri', 'muhd.haziq@mymagic.my', '2019-12-09 01:32:45', '2019-12-09 01:32:45'),
(61, 'Muhammad Izzwan Dzulkifli', 'izzwan.dzulkifli@mymagic.my', '2019-12-09 01:32:53', '2019-12-09 01:32:53'),
(62, 'Muhammad Khaliq', 'muhammad.khaliq@mymagic.my', '2019-12-09 01:33:01', '2019-12-09 01:33:01'),
(63, 'Muhammad Muqri Abdullah Zawawi', 'muqri@mymagic.my', '2019-12-09 01:33:07', '2019-12-09 01:33:07'),
(64, 'Muhammad Shafiq Mohd Taib', 'shafiq@mymagic.my', '2019-12-09 01:33:15', '2019-12-09 01:33:15'),
(65, 'Muhammad Zulfadli Abang', 'zulfadli@mymagic.my', '2019-12-09 01:33:22', '2019-12-09 01:33:22'),
(66, 'Muna Irsalina Mohd Jamil', 'salina.jamil@mymagic.my', '2019-12-09 01:33:28', '2019-12-09 01:33:28'),
(67, 'Ng Kar Sin', 'karsin@mymagic.my', '2019-12-09 01:33:37', '2019-12-09 01:33:37'),
(68, 'Norkhairul Hafiza Hamzah', 'hafiza@mymagic.my', '2019-12-09 01:34:01', '2019-12-09 01:34:01'),
(69, 'Nur Aina Azmi', 'nuraina@mymagic.my', '2019-12-09 01:34:07', '2019-12-09 01:34:07'),
(70, 'Nur Amirah Shahirah Saidin', 'nur.amirah@mymagic.my', '2019-12-09 01:34:15', '2019-12-09 01:34:15'),
(71, 'Nur Amirra Soraya Mohamad Amin', 'amirra@mymagic.my', '2019-12-09 01:34:21', '2019-12-09 01:34:21'),
(72, 'Nur Azila Azlan', 'azila@mymagic.my', '2019-12-09 01:34:31', '2019-12-09 01:34:31'),
(73, 'Nur Nadia Salehuddin', 'nur.nadia@mymagic.my', '2019-12-09 01:34:40', '2019-12-09 01:34:40'),
(74, 'Nuramira Husna', 'nuramira.husna@mymagic.my', '2019-12-09 01:34:47', '2019-12-09 01:34:47'),
(75, 'Nurdhaniah Ahmad Shafri', 'nurdhaniah@mymagic.my', '2019-12-09 01:34:54', '2019-12-09 01:34:54'),
(76, 'Nurien Hidayu Muhammad Rusly', 'nurien.hidayu@mymagic.my', '2019-12-09 01:35:00', '2019-12-09 01:35:00'),
(77, 'Nurirman Muzarif Shamsul Imran Shamsul Imran', 'nurirman@mymagic.my', '2019-12-09 01:35:08', '2019-12-09 01:35:08'),
(78, 'Nur\'Liani Kiplie', 'liani@mymagic.my', '2019-12-09 01:35:18', '2019-12-09 01:35:18'),
(79, 'Nurul Shaheera Latif', 'nurul.shaheera@mymagic.my', '2019-12-09 01:35:36', '2019-12-09 01:35:36'),
(80, 'Pradeeban Letsumanasingam', 'pradeeban@mymagic.my', '2019-12-09 01:35:49', '2019-12-09 01:35:49'),
(81, 'Puteri Nur Anati Binti Redhuan', 'puteri@mymagic.my', '2019-12-09 01:40:34', '2019-12-09 01:40:34'),
(82, 'Rajen Dorairaj', 'rajen@mymagic.my', '2019-12-09 01:40:42', '2019-12-09 01:40:42'),
(83, 'Reshmi Hariharan', 'reshmi@mymagic.my', '2019-12-09 01:40:49', '2019-12-09 01:40:49'),
(84, 'Ros Sarip', 'ros.sarip@mymagic.my', '2019-12-09 01:41:02', '2019-12-09 01:41:02'),
(85, 'Rosaan Ramasamy', 'rosaan@mymagic.my', '2019-12-09 01:41:31', '2019-12-09 01:41:31'),
(86, 'Roslin Mohd Daud', 'roslin@mymagic.my', '2019-12-09 01:41:37', '2019-12-09 01:41:37'),
(87, 'Sabil Fahmee', 'sabil@mymagic.my', '2019-12-09 01:41:51', '2019-12-09 01:41:51'),
(88, 'Saffa Latif', 'saffa@mymagic.my', '2019-12-09 01:42:01', '2019-12-09 01:42:01'),
(89, 'Saiful IzwanI brahim', 'saiful.izwan@mymagic.my', '2019-12-09 01:42:07', '2019-12-09 01:42:07'),
(90, 'Saiful Nor Adzhar', 'saiful.adzhar@mymagic.my', '2019-12-09 01:42:14', '2019-12-09 01:42:14'),
(91, 'Shaari Alwi', 'shaari@mymagic.my', '2019-12-09 01:42:22', '2019-12-09 01:42:22'),
(92, 'Sharifah Alya Afrina Syed Azhar', 'sharifah.alya@mymagic.my', '2019-12-09 01:42:28', '2019-12-09 01:42:28'),
(93, 'Shaza Lina Shahrudin', 'shaza@mymagic.my', '2019-12-09 01:42:33', '2019-12-09 01:42:33'),
(94, 'Siti Aishah Redzuan Lu', 'siti.aishah@mymagic.my', '2019-12-09 01:42:39', '2019-12-09 01:42:39'),
(95, 'Siti Azrah Ab Aziz', 'siti.azrah@mymagic.my', '2019-12-09 01:42:45', '2019-12-09 01:42:45'),
(96, 'Siti Nursuha Mohammad Safri', 'nursuha@mymagic.my', '2019-12-09 01:42:59', '2019-12-09 01:42:59'),
(97, 'Siti Salbiah Norazan', 'salbiah@mymagic.my', '2019-12-09 01:43:07', '2019-12-09 01:43:07'),
(98, 'Syafie Mustafa', 'syafiruddin@mymagic.my', '2019-12-09 01:43:13', '2019-12-09 01:43:13'),
(99, 'Syamil Zuhairi', 'syamil@mymagic.my', '2019-12-09 01:43:20', '2019-12-09 01:43:20'),
(100, 'Syazwani Ismail', 'syazwani@mymagic.my', '2019-12-09 01:43:25', '2019-12-09 01:43:25'),
(101, 'Syed Khalid Alwee Aljuned', 'syed.khalid@mymagic.my', '2019-12-09 01:43:32', '2019-12-09 01:43:32'),
(102, 'Tan Yee Siang', 'yee.siang@mymagic.my', '2019-12-09 01:43:38', '2019-12-09 01:43:38'),
(103, 'Tanvir Ahmed Mehedi', 'tanvir@mymagic.my', '2019-12-09 01:43:48', '2019-12-09 01:43:48'),
(104, 'Tariq Ismail Mustafa', 'tariq@mymagic.my', '2019-12-09 01:43:55', '2019-12-09 01:43:55'),
(105, 'Viviantie Sarjuni', 'viviantie@mymagic.my', '2019-12-09 01:44:03', '2019-12-09 01:44:03'),
(106, 'Wong Chi ying', 'chi.ying@mymagic.my', '2019-12-09 01:44:11', '2019-12-09 01:44:11'),
(107, 'Yazwan Saedon', 'yazwan@mymagic.my', '2019-12-09 01:44:17', '2019-12-09 01:44:17'),
(108, 'YBhg Dato’ Abdul Rahman Dato’Mohd Hashim', 'abdul.rahman@mymagic.my', '2019-12-09 01:44:23', '2019-12-09 01:44:23'),
(109, 'YBrs Dr Anis Mahmod', 'dr.anis@mymagic.my', '2019-12-09 01:44:30', '2019-12-09 01:44:30'),
(110, 'YBrs Professor Dr. Rofina Yasmin Othman', 'prof.yasmin@mymagic.my', '2019-12-09 01:44:36', '2019-12-09 01:44:36'),
(111, 'YBrs. Dr Grace Lee Hwee Ling', 'dr.gracelee@mymagic.my', '2019-12-09 01:44:42', '2019-12-09 01:44:42'),
(112, 'Yo Hong Quang', 'yo.hong@mymagic.my', '2019-12-09 01:44:47', '2019-12-09 01:44:47'),
(113, 'Zahuri Mat Ibrahim', 'zahuri@mymagic.my', '2019-12-09 01:44:53', '2019-12-09 01:44:53'),
(114, 'Zurina Johari', 'zurina@mymagic.my', '2019-12-09 01:44:59', '2019-12-09 01:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'TAM', 'taaam205@gmail.com', NULL, '$2y$10$8.chOL2O0mXm9RQvtrwGj.S5lpNohTEmwQ.azAa.yPgDzCmT.CSSu', NULL, '2019-12-05 19:08:59', '2019-12-05 19:08:59'),
(8, 'Tanvir Ahmed Mehedi', 'tanvir@mymagic.my', NULL, '$2y$10$UWxRSnFLQmaky9nIN453JeV7zGugIGsPXJEZlOoPq5BZe89mCkrP2', NULL, '2019-12-05 10:11:29', '2019-12-05 10:11:29'),
(10, 'Abd Razak Abd Rahim', 'abd.razak@mymagic.my', NULL, '$2y$10$a3W6j.vMtTTR8Mkx/YEW1OlzaCKJZuLbXQ6rJe/lSeFHHvvrtnXrW', 'p40OOj02Fycxa7dUnRtmck8ZDNOWhpOyoS4tarjCaitk5jv5ZetlIzkxvZ8O', '2019-12-05 19:23:23', '2019-12-05 19:23:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email_backups`
--
ALTER TABLE `email_backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email_backups`
--
ALTER TABLE `email_backups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
