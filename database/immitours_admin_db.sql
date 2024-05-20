-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2024 at 04:07 PM
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
-- Database: `db_crm_fareforyou`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `b_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `booked_date_time` datetime NOT NULL,
  `buy_price` double NOT NULL,
  `sell_price` double NOT NULL,
  `profit` double NOT NULL,
  `status` int(1) NOT NULL,
  `u_id` int(11) NOT NULL,
  `p_sta` int(1) NOT NULL,
  `l_p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`b_id`, `tour_id`, `c_id`, `booked_date_time`, `buy_price`, `sell_price`, `profit`, `status`, `u_id`, `p_sta`, `l_p_id`) VALUES
(1, 11, 2, '2024-01-04 00:00:00', 0, 0, 0, 0, 5, 0, 2),
(2, 11, 3, '2024-01-08 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(3, 11, 4, '2024-01-12 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(4, 11, 5, '2024-01-13 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(5, 9, 6, '2024-02-02 00:00:00', 0, 0, 0, 0, 7, 1, 1),
(6, 11, 7, '2024-01-22 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(7, 11, 8, '2024-01-24 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(8, 11, 9, '2024-01-31 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(9, 11, 10, '2024-01-29 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(10, 11, 11, '2024-01-29 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(11, 11, 12, '2024-01-29 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(12, 9, 13, '2024-02-12 00:00:00', 0, 0, 0, 0, 7, 1, 1),
(13, 9, 14, '2024-01-17 00:00:00', 0, 0, 0, 0, 8, 2, 1),
(14, 11, 15, '2024-01-30 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(15, 11, 16, '2024-01-31 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(16, 11, 17, '2024-01-31 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(17, 11, 18, '2024-02-01 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(18, 11, 19, '2024-02-03 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(19, 11, 20, '2024-02-03 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(20, 11, 21, '2024-02-06 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(21, 11, 22, '2024-02-06 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(22, 11, 23, '2024-02-06 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(23, 9, 24, '2024-02-12 00:00:00', 0, 0, 0, 0, 7, 0, 1),
(24, 11, 25, '2024-02-07 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(25, 11, 26, '2024-02-08 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(26, 11, 27, '2024-02-14 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(27, 11, 28, '2024-02-14 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(28, 11, 29, '2024-02-28 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(29, 11, 30, '2024-02-17 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(30, 11, 31, '2024-02-21 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(31, 11, 32, '2024-02-24 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(32, 11, 33, '2024-02-26 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(33, 11, 34, '2024-02-28 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(34, 11, 35, '2024-03-02 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(35, 11, 36, '2024-03-02 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(36, 11, 37, '2024-03-02 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(37, 11, 38, '2024-03-04 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(38, 11, 39, '2024-03-04 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(39, 11, 40, '2024-02-05 00:00:00', 0, 0, 0, 0, 8, 2, 1),
(40, 9, 41, '2024-01-15 00:00:00', 0, 0, 0, 0, 8, 2, 1),
(41, 9, 42, '2024-02-12 00:00:00', 0, 0, 0, 0, 8, 2, 1),
(42, 9, 43, '2024-01-26 00:00:00', 0, 0, 0, 0, 8, 2, 1),
(43, 11, 44, '2024-01-27 00:00:00', 0, 0, 0, 0, 8, 1, 2),
(44, 11, 45, '2024-03-09 00:00:00', 0, 0, 0, 0, 7, 0, 4),
(45, 11, 46, '2024-03-09 00:00:00', 0, 0, 0, 0, 7, 0, 4),
(46, 11, 47, '2024-03-09 00:00:00', 0, 0, 0, 0, 5, 0, 2),
(47, 11, 48, '2024-03-13 00:00:00', 0, 0, 0, 0, 5, 0, 2),
(48, 11, 49, '2024-03-14 00:00:00', 0, 0, 0, 0, 5, 0, 2),
(49, 11, 50, '2024-03-14 00:00:00', 0, 0, 0, 0, 5, 0, 2),
(50, 11, 51, '2024-03-15 00:00:00', 0, 0, 0, 0, 5, 0, 2),
(51, 11, 52, '2024-03-22 00:00:00', 0, 0, 0, 0, 5, 0, 2),
(52, 11, 53, '2024-03-18 00:00:00', 0, 0, 0, 0, 5, 0, 2),
(53, 11, 54, '2024-03-20 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(54, 9, 55, '2024-01-26 00:00:00', 0, 0, 0, 0, 8, 1, 1),
(55, 9, 56, '2024-03-05 00:00:00', 0, 0, 0, 0, 8, 1, 1),
(56, 9, 57, '2024-03-01 00:00:00', 0, 0, 0, 0, 8, 1, 1),
(57, 9, 58, '2024-02-28 00:00:00', 0, 0, 0, 0, 8, 1, 1),
(58, 9, 59, '2024-02-27 00:00:00', 0, 0, 0, 0, 8, 1, 1),
(59, 9, 60, '2024-02-27 00:00:00', 0, 0, 0, 0, 8, 1, 2),
(60, 11, 61, '2024-03-24 00:00:00', 0, 0, 0, 0, 5, 1, 2),
(61, 9, 62, '2024-02-26 00:00:00', 0, 0, 0, 0, 8, 1, 2),
(62, 9, 63, '2024-02-26 00:00:00', 0, 0, 0, 0, 8, 1, 2),
(63, 9, 64, '2024-02-27 00:00:00', 0, 0, 0, 0, 8, 1, 2),
(64, 9, 65, '2024-02-28 00:00:00', 0, 0, 0, 0, 8, 0, 2),
(65, 9, 66, '2024-02-27 00:00:00', 0, 0, 0, 0, 8, 0, 2),
(66, 9, 67, '2024-02-07 00:00:00', 0, 0, 0, 0, 5, 0, 1),
(67, 9, 68, '2024-02-14 00:00:00', 0, 0, 0, 0, 5, 1, 1),
(68, 9, 69, '2024-02-21 00:00:00', 0, 0, 0, 0, 5, 1, 1),
(69, 9, 70, '2024-02-21 00:00:00', 0, 0, 0, 0, 5, 0, 1),
(70, 9, 71, '2024-02-28 00:00:00', 0, 0, 0, 0, 5, 0, 1),
(71, 9, 72, '2024-03-18 00:00:00', 0, 0, 0, 0, 7, 0, 1),
(72, 9, 73, '2024-03-21 00:00:00', 0, 0, 0, 0, 5, 0, 1),
(73, 9, 74, '2024-03-27 00:00:00', 0, 0, 0, 0, 5, 0, 1),
(74, 11, 75, '2024-03-28 00:00:00', 0, 0, 0, 0, 5, 0, 2),
(75, 9, 76, '2024-03-28 00:00:00', 0, 0, 0, 0, 8, 0, 1),
(76, 14, 77, '2024-03-28 00:00:00', 0, 0, 0, 0, 11, 1, 1),
(77, 9, 78, '2024-03-29 00:00:00', 0, 0, 0, 0, 8, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_info`
--

CREATE TABLE `tbl_customer_info` (
  `c_id` int(11) NOT NULL,
  `c_f_name` varchar(255) NOT NULL,
  `c_l_name` varchar(255) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_phone_no` varchar(45) NOT NULL,
  `c_city` varchar(45) NOT NULL,
  `c_address` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `passport_no` varchar(45) NOT NULL,
  `invoice_c_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer_info`
--

INSERT INTO `tbl_customer_info` (`c_id`, `c_f_name`, `c_l_name`, `c_email`, `c_phone_no`, `c_city`, `c_address`, `date_of_birth`, `passport_no`, `invoice_c_date`) VALUES
(3, 'ABDUL WADOOD SS', 'MOHAMED REYAZATH ', 'REYAZATH7@GMAIL.COM', '', '', '', '0000-00-00', '', '2024-04-01 18:10:24'),
(4, 'MOHAMED NILAMDEEN', 'MOHAMED RIZMY', 'RIZMY21@YAHOO.COM', '+447446865644', '', '', '0000-00-00', '', '2024-04-02 00:12:11'),
(5, 'FATHIMA SHAHINAZ', 'MOHAMED NAWASDEEN', 'shahinaznawaz123@icloud.com', '+447355299608', '', '', '0000-00-00', '', '2024-03-04 21:00:43'),
(6, 'Tanya  Criselda ', 'Urabang', 'tanyacrizie@yahoo.co.uk', '+44549768392', '', '', '0000-00-00', '', '2024-03-05 13:29:33'),
(7, 'MOHAMED MAKOON', 'MOHAMED RAZMIE MR', 'RAZMIEM@GOOGLEMAIL.COM', '+447977577597', '', '', '0000-00-00', '', '2024-03-05 14:25:48'),
(8, 'MUFEED', 'FARZAAN MOHAMMED ', 'MUFEED.REEF@YAHOO.COM', '+447703722436', '', '', '0000-00-00', '', '2024-03-05 14:42:39'),
(9, 'OLUSALA', 'ANTHONY', 'anthonyolusola10@gmail.com', '+447438567894', '', '', '0000-00-00', '', '2024-03-05 15:02:47'),
(10, 'MOHAMED', 'MUZAMMIL', 'MUZA0232@GMAIL.COM', '+447460333524', '', '', '0000-00-00', '', '2024-03-05 15:15:15'),
(11, 'MOHAMED ISMATH', 'MOHAMED GHAZALY', 'GHAZALYUK@YAHOO.COM', '+447404757706', '', '', '0000-00-00', '', '2024-03-05 15:29:22'),
(12, 'AHMED', 'HAMZAH', 'YASMIN-MUFEED@HOTMAIL.COM', ' +447751140141', '', '', '0000-00-00', '', '2024-03-05 16:14:52'),
(13, 'Colleen ', 'Cattigan', 'ccattigan@googlemail.com', '07853091291', '', '', '0000-00-00', '', '2024-03-05 16:16:12'),
(14, 'Anjham', 'Hussain', 'anjham.hussain@yahoo.com', '07594337600', '', '', '0000-00-00', '', '2024-03-05 16:34:32'),
(15, 'IMTHIYAZ', 'FATHIMA FAZMILA', 'fazmilarefai@yahoo.com', '07766169577', '', '', '0000-00-00', '', '2024-03-05 17:42:58'),
(16, 'MOHAMED RINOOS', 'SHUMS SHAMRA', 'rinoosdlm@yahoo.com', '+447842613035', '', '', '0000-00-00', '', '2024-03-05 18:07:39'),
(17, 'SHERIFFDEEN', 'MOHAMED HAZIK', 'haziks1@gmail.com', '', '', '', '0000-00-00', '', '2024-04-01 18:12:50'),
(18, 'MOHAMED ISMATH', 'MOHAMED GHAZALY', 'GHAZALYUK@YAHOO.COM', '+44 7404 757706', '', '', '0000-00-00', '', '2024-03-05 18:54:52'),
(19, 'MARIKKAR', 'MARYAM RISWAN', 'Ymriswan2000@gmail.com', '+44Â 7411Â 417200', '', '', '0000-00-00', '', '2024-03-05 19:10:47'),
(20, 'YUNUS RISWAN', 'MARIKKAR', 'Ymriswan2000@gmail.com', '+44Â 7411Â 417200', '', '', '0000-00-00', '', '2024-03-05 19:43:44'),
(21, 'VIJAY ', 'SEVENKINGS', 'Viji1112002@yahoo.co.uk', '07872 327481', '', '', '0000-00-00', '', '2024-03-05 20:00:41'),
(22, 'VIJAY', 'SEVENKINGS', 'Viji1112002@yahoo.co.uk', '07872 327481', '', '', '0000-00-00', '', '2024-03-05 20:11:46'),
(23, 'VIJAY ', 'SEVENKINGS', 'Viji1112002@yahoo.co.uk', '07872 327481', '', '', '0000-00-00', '', '2024-03-05 20:18:17'),
(24, 'Uduwavidanalage Don Sanchitha Sahan', 'Uduwavidana', 'sanchithau@gmail.com', '+4407762025343', '', '', '0000-00-00', '', '2024-03-05 20:27:25'),
(25, 'MOHAMED IRSHAD', 'IBRAHIM', 'applegreen1990@hotmail.com', '+447894281620', '', '', '0000-00-00', '', '2024-03-05 20:33:42'),
(26, 'ALEXANDRA', 'DRAGOI', 'alexandra.dragoi@hotmail.com', '+4447903615240', '', '', '0000-00-00', '', '2024-03-06 10:07:33'),
(27, 'SYED IBURAHIM', 'SHEIK NIZAMUDEEN', 'nizam8@yahoo.com', '+44 7968 842271', '', '', '0000-00-00', '', '2024-03-06 10:45:56'),
(28, 'MOHAMED SAFRAZ', 'MOHAMED JABIR', 'safaiyers@me.com', '+94 77 732 0007', '', '', '0000-00-00', '', '2024-03-06 11:22:48'),
(29, 'CHRISTOPHER', 'HERFT', 'herft_uk@hotmail.com', '+447469951644', '', '', '0000-00-00', '', '2024-03-06 11:32:50'),
(30, 'CHRISTOPHER', 'HERFT', 'herft_uk@hotmail.com', '+447469951644', '', '', '0000-00-00', '', '2024-03-06 13:18:37'),
(31, 'KAVITHEESAN', 'ANANTHARASA', 'Kavirajgold1@yahoo.com', '+44 7533 491025', '', '', '0000-00-00', '', '2024-03-06 13:44:21'),
(32, 'FATHIMA ZAHARA ', 'AZHAR', 'Fathimazahi35@gmail.com', '+44 7833 829721', '', '', '0000-00-00', '', '2024-03-06 14:14:34'),
(33, 'MOHAMMED HAZIK', 'SHERIFFDEEN', 'Haziks1@gmail.com', '+44 7385 587520', '', '', '0000-00-00', '', '2024-03-06 14:27:14'),
(34, 'HAZIK', 'SHERIFFDEEN', 'Haziks1@gmail.com', '+44 7385 587520', '', '', '0000-00-00', '', '2024-03-06 14:34:56'),
(35, 'MOHAMED ASIR', 'SABDEEN', 'Mohamed.Asir.Sabdeen@gmail.com', '+44 7925 665629', '', '', '0000-00-00', '', '2024-03-06 15:20:12'),
(36, 'MOHAMED ASIR', 'SABDEEN', 'Mohamed.Asir.Sabdeen@gmail.com', '+44 7925 665629', '', '', '0000-00-00', '', '2024-03-06 15:24:03'),
(37, 'AAMIR', 'MOHAMED JAWFER', 'aamirjawfer@gmail.com', '+44Â 7466Â 246705', '', '', '0000-00-00', '', '2024-03-06 15:31:06'),
(38, 'VARSHIL', 'CHATRANI', 'varshil.chhatrani@gmail.com', '+44 7518 058068', '', '', '0000-00-00', '', '2024-03-06 15:52:31'),
(39, 'MOHAMED THAHIR', 'MOHAMED', 'Shiraz.thahir@gmail.com', '+44 7535 248482', '', '', '0000-00-00', '', '2024-03-06 16:07:02'),
(40, 'Karima', 'Amaraoui', 'Karimaamraoui2021@gmail.com', '07940 274751', '', '', '0000-00-00', '', '2024-03-07 12:10:53'),
(41, 'Tracey', 'Horrocks', 'horrocks23@btinternet.com', '07851519339', '', '', '0000-00-00', '', '2024-03-07 12:16:44'),
(42, 'Kate', 'Horrocks', 'Katehorrocks_x@outlook.com', '07756 100382', '', '', '0000-00-00', '', '2024-03-07 12:38:13'),
(43, 'Kay', 'Redman', 'Kay_redman@hotmail.com', '07770679246', '', '', '0000-00-00', '', '2024-03-08 16:01:47'),
(44, 'Dharshan', 'Sivasubramaniam', 'dharshvin@yahoo.co.uk', '07572 614058', '', '', '0000-00-00', '', '2024-03-08 16:11:06'),
(45, 'MOHAMED', 'RAMEEZ', 'rameez906@yahoo.co.uk', '+44 7954 299225', '', '', '0000-00-00', '', '2024-03-09 15:29:44'),
(46, 'MOHAMED', 'RAMEEZ', 'rameez906@yahoo.co.uk', '+44 7954 299225', '', '', '0000-00-00', '', '2024-03-09 15:30:25'),
(47, 'FATHIMA SHAREEHA', 'MOHAMED RAMEEZ', 'rameez906@yahoo.co.uk', '+44 7954 299225', '', '', '0000-00-00', '', '2024-03-21 11:23:09'),
(48, 'LEELARATHNA', 'DEWUNDARAGE', 'leelarathna75@hotmail.com', '+94 77 967 7414', '', '', '0000-00-00', '', '2024-03-21 11:53:20'),
(49, 'HARSHANI THILINI', 'WARNAPURA    ', 'harshani@hotmail.com', '+447379687788', '', '', '0000-00-00', '', '2024-03-21 12:31:05'),
(50, 'HARSHANI THILINI', 'WARNAPURA', 'harshani4@hotmail.com', '+447379687788', '', '', '0000-00-00', '', '2024-03-21 12:33:11'),
(51, 'MOHAMED SAFRAZ', 'MOHAMED JABIR', 'safaiyers@me.com', '+94 77 732 0007', '', '', '0000-00-00', '', '2024-03-21 12:50:49'),
(52, 'MOHAMED', 'MOHAMED THAHIR', 'Shiraz.thahir@gmail.com', '+44 7535 248482', '', '', '0000-00-00', '', '2024-03-21 13:31:06'),
(53, 'REDHA ZAINUL ABDEEN', 'REFAI', 'redharefai4@gmail.com', '07418 057058', '', '', '0000-00-00', '', '2024-03-21 14:30:53'),
(54, 'FATHIMA AFRITHA', 'MOHAMED RAFEEK', 'Salamathhotel@yahoo.com', '+44Â 7480Â 848543', '', '', '0000-00-00', '', '2024-03-21 14:43:56'),
(55, 'Laura ', 'Jenkins', 'laurabethjenkins121@icloud.com', '07761416046', '', '', '0000-00-00', '', '2024-03-22 14:10:10'),
(56, 'Janet', 'Ramakrishnan Fisher', 'mocha2128@hotmail.com', '07539578295', '', '', '0000-00-00', '', '2024-03-22 14:25:04'),
(57, 'Olubukunola', 'Nwosa', 'bukky35@hotmail.com', '+353 87 953 4097 ', '', '', '0000-00-00', '', '2024-03-22 14:33:48'),
(58, 'Thania', 'Khan', 'Euromarks1@yahoo.co.uk', '07504643095', '', '', '0000-00-00', '', '2024-03-22 14:41:45'),
(59, 'Amal', 'Taha', 'amaltaha11@gmail.com', '+44 7511 068698', '', '', '0000-00-00', '', '2024-03-25 14:37:01'),
(60, 'Honida ', ' Abdalla Ali', 'hamodymayar2016@gmail.com', '+44 7506 442159', '', '', '0000-00-00', '', '2024-03-25 14:46:20'),
(61, 'MOHAMED ABDUL CADER', 'MOHAMED HIJAVI', 'hijavicader@gmail.com', '+44 7763 796838', '', '', '0000-00-00', '', '2024-03-25 15:07:28'),
(62, 'Musheera  ', 'Abdelbare Osman', 'musheera2211@gmail.com', '+44 7455 779822', '', '', '0000-00-00', '', '2024-03-25 15:40:03'),
(63, 'Salma', 'Majzob', 'salmarahaf@mail.com', '07542806596 ', '', '', '0000-00-00', '', '2024-03-25 15:47:20'),
(64, 'Shaima', ' Ismail', 'amaltaha11@gmail.com', '+44 7450 343315', '', '', '0000-00-00', '', '2024-03-25 16:08:14'),
(65, 'Ehssan ', ' Hamed', 'omritaj88@gmail.com', '+44 7539 424804', '', '', '0000-00-00', '', '2024-03-25 16:20:03'),
(66, 'Nahid', 'Ibrahim', 'azizazouz99@yahoo.com', '+44 7307 349031', '', '', '0000-00-00', '', '2024-03-25 17:11:10'),
(67, 'LILIIA ', 'SOKIL', 'lilchuk91@ukr.net', '07379494839', '', '', '0000-00-00', '', '2024-03-25 18:41:01'),
(68, 'Ana Quijada ', 'Benjumea', 'eldesvandecandela@gmail.com', '07549919792', '', '', '0000-00-00', '', '2024-03-25 19:00:25'),
(69, 'RAJEEV', 'THAKUR', 'Rajeev_dublin@yahoo.co.uk', '00447459885619', '', '', '0000-00-00', '', '2024-03-26 14:18:03'),
(70, 'APRIL LOUISE', 'TIPPLE', 'Tipple449@btinternet.com', '07789216036', '', '', '0000-00-00', '', '2024-03-26 14:52:55'),
(71, 'GEMMA', 'MOORCROFT ', 'Gemmamoorcroft121@gmail.com', '07481905827 ', '', '', '0000-00-00', '', '2024-03-26 18:48:05'),
(72, 'Louise ', 'Marie  Tracey', 'lmdoyle@hotmail.co.uk', '07825159548', '', '', '0000-00-00', '', '2024-03-27 15:43:46'),
(73, 'Liam Shaun ', 'Penney', 'li4mpenney@gmail.com', '07463762833', '', '', '0000-00-00', '', '2024-03-28 13:03:53'),
(74, 'LOUISA JANE', 'HYNES', 'louisa35@mail.com', '07907151369', '', '', '0000-00-00', '', '2024-03-28 13:39:37'),
(75, 'SHAHNAWAZ', 'MARY INFANTA RUFINA', 'rufinagerald@gmail.com', '+44 7799 854256', '', '', '0000-00-00', '', '2024-03-29 13:14:16'),
(76, 'Francisca  ', 'De Albuquerque Da Silva Filha', 'Francisca677@hotmail.com', '07842008958', '', '', '0000-00-00', '', '2024-03-29 13:21:49'),
(77, 'Gerard', 'Mackay', 'gerardmckay45@gmail.com', '+447709254321', '', '', '0000-00-00', '', '2024-03-29 14:49:13'),
(78, 'Fathima Zahara', 'Azhar', 'Fathimazahi35@gmail.com', '07375797795', '', '', '0000-00-00', '', '2024-03-30 18:37:46'),
(79, 'asda', 'asdas', 'asd', '1232112', 'asd', 'wqeqweqw', '2024-04-24', '213123', '2024-04-02 00:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_flights_itenery`
--

CREATE TABLE `tbl_flights_itenery` (
  `f_i_id` int(11) NOT NULL,
  `airline` mediumtext NOT NULL,
  `flight_no` varchar(150) NOT NULL,
  `depart_time` datetime NOT NULL,
  `depart_from` varchar(150) NOT NULL,
  `arrive_time` datetime NOT NULL,
  `at_airport` varchar(150) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `transit` varchar(150) NOT NULL,
  `flight_reference` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_flights_itenery`
--

INSERT INTO `tbl_flights_itenery` (`f_i_id`, `airline`, `flight_no`, `depart_time`, `depart_from`, `arrive_time`, `at_airport`, `duration`, `transit`, `flight_reference`, `p_id`, `b_id`) VALUES
(8, '', 'QR006', '2024-01-07 08:05:00', 'LONDON HEATHROW', '2024-01-07 17:45:00', 'DOHA', '9 HOURS 40 MINUTES', '', '', 0, 1),
(9, '', 'QR658', '2024-01-07 18:35:00', 'DOHA', '2024-01-08 01:55:00', 'COLOMBO', '7 HOURS 19 MINUTES', '', '', 0, 1),
(10, '', 'QR661', '2024-01-29 11:15:00', 'COLOMBO', '2024-01-29 14:00:00', 'DOHA', '4 HOURS 45 MINUTES', '', '', 0, 1),
(11, '', 'QR015', '2024-01-29 15:15:00', 'DOHA', '2024-01-29 19:50:00', 'LONDON HEATHROW', '4 HOURS 40 MINUTES', '', '', 0, 1),
(12, '', 'QR006', '2024-01-08 08:05:00', 'LONDON HEATHROW', '2024-01-08 17:45:00', 'DOHA', '9 HOURS 40 MINUTES', '', '', 0, 2),
(13, '', 'QR662', '2024-01-08 19:35:00', 'DOHA', '2024-01-09 02:55:00', 'COLOMBO', '7 HOURS 20 MINUTES', '', '', 0, 2),
(14, '', 'QR661', '2024-01-19 11:15:00', 'COLOMBO', '2024-01-19 14:00:00', 'DOHA', '4 HOURS 45 MINUTES', '', '', 0, 2),
(15, '', 'QR015', '2024-01-19 15:15:00', 'DOHA', '2024-03-19 19:50:00', 'LONDON HEATHROW', '4 HOURS 35 MINUTES', '', '', 0, 2),
(16, 'https://www.pnrconverter.com/images/airlines/ai.svg', '162', '2024-07-17 09:45:00', 'London Heathrow Airport', '2024-07-17 22:50:00', 'Delhi Indira Gandhi Airport Delhi', '8 h & 35 m', '', '', 6, 3),
(17, 'https://www.pnrconverter.com/images/airlines/ai.svg', '514', '2024-07-18 03:35:00', 'Delhi Indira Gandhi Airport', '2024-07-18 06:25:00', 'Kempegowda Airport Bengaluru', '2 h & 50 m', '', '', 6, 3),
(18, 'https://www.pnrconverter.com/images/airlines/ul.svg', '172', '2024-07-29 21:10:00', 'Kempegowda Airport', '2024-07-29 22:40:00', 'Bandaranaike Intl Airport Colombo', '1 h & 30 m', '', '', 6, 3),
(19, 'https://www.pnrconverter.com/images/airlines/ul.svg', '225', '2024-08-28 18:25:00', 'Bandaranaike Intl Airport', '2024-08-28 21:40:00', 'Dubai Intl Airport Dubai', '4 h & 45 m', '', '', 6, 3),
(20, 'https://www.pnrconverter.com/images/airlines/qr.svg', '1007', '2024-09-03 11:45:00', 'Dubai Intl Airport', '2024-09-03 12:00:00', 'Doha Hamad Intl Airport Doha', '1 h & 15 m', '', '', 6, 3),
(21, 'https://www.pnrconverter.com/images/airlines/qr.svg', '5', '2024-09-03 16:45:00', 'Doha Hamad Intl Airport', '2024-09-03 22:00:00', 'London Heathrow Airport London', '7 h & 15 m', '', '', 6, 3),
(22, '', 'QR006', '2024-01-21 08:05:00', 'LONDON HEATHROW', '2024-01-21 17:45:00', 'DOHA', '9 HOURS 40 MINUTES', '', '', 0, 4),
(23, '', 'QR658', '2024-01-21 18:35:00', 'DOHA', '2024-01-22 01:55:00', 'COLOMBO', '7 HOURS 20 MINUTES', '', '', 0, 4),
(24, '', 'QR663', '2024-02-04 04:25:00', 'COLOMBO', '2024-02-04 07:10:00', 'DOHA', '2 HOURS 35 MINUTES', '', '', 0, 4),
(25, '', 'QR007', '2024-02-04 08:45:00', 'DOHA', '2024-02-04 13:20:00', 'LONDON HEATHROW', '3 HOURS 45 MINUTES', '', '', 0, 4),
(26, 'https://www.pnrconverter.com/images/airlines/ek.svg', '8403', '2024-07-23 08:05:00', 'London Gatwick Airport (LGW)', '2024-07-23 10:25:00', 'Paris Charles de Gaulle Airport (CDG)', '', '', '', 0, 5),
(27, 'https://www.pnrconverter.com/images/airlines/ek.svg', '8408', '2024-07-26 21:55:00', 'Paris Charles de Gaulle Airport (CDG)', '2024-07-26 22:05:00', 'London Gatwick Airport (LGW)', '', '', '', 0, 5),
(28, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK007', '2024-02-02 20:20:00', 'LONDON HEATHROW', '2024-02-03 07:20:00', 'DUBAI', '', '', '', 0, 6),
(29, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK648', '2024-02-03 16:10:00', 'DUBAI', '2024-02-03 21:55:00', 'COLOMBO', '', '', '', 0, 6),
(30, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK651', '2024-02-11 09:55:00', 'COLOMBO', '2024-02-11 12:50:00', 'DUBAI', '', '', '', 0, 6),
(31, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK005', '2024-02-11 16:05:00', 'DUBAI', '2024-02-11 20:00:00', 'LONDON HEATHROW', '', '', '', 0, 6),
(32, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'GF002', '2024-01-30 09:30:00', 'LONDON HEATHROW', '2024-01-30 19:10:00', 'BAHRAIN', '', '', '', 0, 7),
(33, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'GF144', '2024-01-30 23:45:00', 'BAHRAIN', '2024-01-31 09:35:00', 'COLOMBO', '', '', '', 0, 7),
(34, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'GF145', '2024-03-14 17:00:00', 'COLOMBO', '2024-03-14 22:10:00', 'BAHRAIN', '', '', '', 0, 7),
(35, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'GF007', '2024-03-15 02:10:00', 'BAHRAIN', '2024-03-15 06:35:00', 'LONDON HEATHROW', '', '', '', 0, 7),
(36, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'VS411', '2024-02-25 22:15:00', 'LONDON HEATHROW', '2024-02-26 05:45:00', 'MURTALA AIRPORT', '', '', '', 0, 8),
(37, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'VS412', '2024-03-19 09:15:00', 'MURTALA AIRPORT', '2024-03-19 14:50:00', 'LONDON HEATHROW', '', '', '', 0, 8),
(38, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK653', '2024-02-05 15:18:00', 'COLOMBO', '2024-02-02 02:05:00', 'DUBAI', '', '', '', 0, 9),
(39, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK007', '2024-02-02 03:10:00', 'DUBAI', '2024-02-02 07:10:00', 'LONDON HEATHROW', '', '', '', 0, 9),
(40, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK653', '2024-02-01 20:15:00', 'COLOMBO', '2024-02-02 02:05:00', 'DUBAI', '', '', '', 0, 10),
(41, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK007', '2024-02-02 03:10:00', 'DUBAI', '2024-02-02 07:10:00', 'LONDON HEATHROW', '', '', '', 0, 10),
(42, 'https://www.pnrconverter.com/images/airlines/ek.svg', '4698', '2024-03-23 19:10:00', 'Edinburgh Airport (EDI)', '2024-03-23 22:05:00', 'Paris Charles de Gaulle Airport (CDG)', '', '', '', 0, 12),
(43, 'https://www.pnrconverter.com/images/airlines/ek.svg', '3242', '2024-03-26 13:55:00', 'Paris Charles de Gaulle Airport (CDG)', '2024-03-26 14:45:00', 'Edinburgh Airport (EDI)', '', '', '', 0, 12),
(44, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'UL504', '2024-02-05 20:40:00', 'LONDON HEATHROW', '2024-02-06 12:35:00', 'COLOMBO', '', '', '', 0, 11),
(45, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'UL503', '2024-02-15 12:55:00', 'COLOMBO', '2024-02-15 19:10:00', 'LONDON HEATHROW', '', '', '', 0, 11),
(46, 'https://www.pnrconverter.com/images/airlines/ek.svg', '38', '2025-01-30 20:50:00', 'Birmingham Airport', '2025-01-31 07:50:00', 'Dubai Intl Airport Dubai', '7 h & 0 m', '', '', 24, 14),
(47, 'https://www.pnrconverter.com/images/airlines/ek.svg', '652', '2025-01-31 09:40:00', 'Dubai Intl Airport', '2025-01-31 18:20:00', 'Bandaranaike Intl Airport Colombo', '7 h & 10 m', '', '', 24, 14),
(48, 'https://www.pnrconverter.com/images/airlines/ek.svg', '653', '2025-02-20 20:15:00', 'Bandaranaike Intl Airport', '2025-02-20 21:25:00', 'Male Intl Airport Male', '1 h & 40 m', '', '', 24, 14),
(49, 'https://www.pnrconverter.com/images/airlines/ek.svg', '2211', '2025-02-20 23:30:00', 'Male Intl Airport', '2025-02-21 02:45:00', 'Dubai Intl Airport Dubai', '4 h & 15 m', '', '', 24, 14),
(50, 'https://www.pnrconverter.com/images/airlines/ek.svg', '38', '2025-01-30 20:50:00', 'Birmingham Airport', '2025-01-31 07:50:00', 'Dubai Intl Airport Dubai', '7 h & 0 m', '', '', 24, 14),
(51, 'https://www.pnrconverter.com/images/airlines/ek.svg', '652', '2025-01-31 09:40:00', 'Dubai Intl Airport', '2025-01-31 18:20:00', 'Bandaranaike Intl Airport Colombo', '7 h & 10 m', '', '', 24, 14),
(52, 'https://www.pnrconverter.com/images/airlines/ek.svg', '653', '2025-02-20 20:15:00', 'Bandaranaike Intl Airport', '2025-02-20 21:25:00', 'Male Intl Airport Male', '1 h & 40 m', '', '', 24, 14),
(53, 'https://www.pnrconverter.com/images/airlines/ek.svg', '2211', '2025-02-20 23:30:00', 'Male Intl Airport', '2025-02-21 02:45:00', 'Dubai Intl Airport Dubai', '4 h & 15 m', '', '', 24, 14),
(54, 'https://www.pnrconverter.com/images/airlines/ek.svg', '39', '2025-02-21 07:40:00', 'Dubai Intl Airport', '2025-02-21 11:40:00', 'Birmingham Airport Birmingham', '8 h & 0 m', '', '', 24, 14),
(55, 'https://www.pnrconverter.com/images/airlines/ul.svg', '504', '2025-02-02 20:40:00', 'London Heathrow Airport', '2025-02-03 12:35:00', 'Bandaranaike Intl Airport Colombo', '10 h & 25 m', '', '', 25, 15),
(56, 'https://www.pnrconverter.com/images/airlines/ul.svg', '503', '2025-02-10 12:55:00', 'Bandaranaike Intl Airport', '2025-02-10 19:10:00', 'London Heathrow Airport London', '11 h & 45 m', '', '', 25, 15),
(57, 'https://www.pnrconverter.com/images/airlines/ul.svg', '504', '2025-02-09 20:40:00', 'London Heathrow Airport', '2025-02-10 12:35:00', 'Bandaranaike Intl Airport Colombo', '10 h & 25 m', '', '', 27, 16),
(58, 'https://www.pnrconverter.com/images/airlines/ul.svg', '503', '2025-02-27 12:55:00', 'Bandaranaike Intl Airport', '2025-02-27 19:10:00', 'London Heathrow Airport London', '11 h & 45 m', '', '', 27, 16),
(59, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK649', '2024-02-06 02:55:00', 'COLOMBO', '2024-02-06 05:55:00', 'DUBAI', '', '', '', 0, 17),
(60, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK001', '2024-02-06 07:45:00', 'DUBAI', '2024-02-06 11:40:00', 'LONDON HEATHROW', '', '', '', 0, 17),
(61, 'https://www.pnrconverter.com/images/airlines/ek.svg', '38', '2024-07-07 21:40:00', 'Birmingham Airport', '2024-07-08 07:55:00', 'Dubai Intl Airport Dubai', '7 h & 15 m', '', '', 30, 18),
(62, 'https://www.pnrconverter.com/images/airlines/ek.svg', '648', '2024-07-08 16:10:00', 'Dubai Intl Airport', '2024-07-08 22:10:00', 'Bandaranaike Intl Airport Colombo', '4 h & 30 m', '', '', 30, 18),
(63, 'https://www.pnrconverter.com/images/airlines/ek.svg', '653', '2024-08-11 20:35:00', 'Bandaranaike Intl Airport', '2024-08-12 02:00:00', 'Dubai Intl Airport Dubai', '6 h & 55 m', '', '', 30, 18),
(64, 'https://www.pnrconverter.com/images/airlines/ek.svg', '39', '2024-08-12 07:40:00', 'Dubai Intl Airport', '2024-08-12 12:25:00', 'Birmingham Airport Birmingham', '7 h & 45 m', '', '', 30, 18),
(65, 'https://www.pnrconverter.com/images/airlines/ek.svg', '38', '2024-07-07 21:40:00', 'Birmingham Airport', '2024-07-08 07:55:00', 'Dubai Intl Airport Dubai', '7 h & 15 m', '', '', 39, 19),
(66, 'https://www.pnrconverter.com/images/airlines/ek.svg', '648', '2024-07-08 16:10:00', 'Dubai Intl Airport', '2024-07-08 22:10:00', 'Bandaranaike Intl Airport Colombo', '4 h & 30 m', '', '', 39, 19),
(67, 'https://www.pnrconverter.com/images/airlines/ek.svg', '651', '2024-07-23 10:05:00', 'Bandaranaike Intl Airport', '2024-07-23 12:55:00', 'Dubai Intl Airport Dubai', '4 h & 20 m', '', '', 39, 19),
(68, 'https://www.pnrconverter.com/images/airlines/ek.svg', '5', '2024-07-23 15:45:00', 'Dubai Intl Airport', '2024-07-23 20:15:00', 'London Heathrow Airport London', '7 h & 30 m', '', '', 39, 19),
(69, 'https://www.pnrconverter.com/images/airlines/uk.svg', '16', '2024-03-29 22:40:00', 'London Heathrow Airport', '2024-03-30 13:10:00', 'Chhatrapati Shivaji Airport Mumbai', '9 h & 0 m', '', '', 40, 20),
(70, 'https://www.pnrconverter.com/images/airlines/ai.svg', '681', '2024-03-30 17:15:00', 'Chhatrapati Shivaji Airport', '2024-03-30 19:15:00', 'Cochin Intl Airport Kochi', '2 h & 0 m', '', '', 40, 20),
(71, 'https://www.pnrconverter.com/images/airlines/ul.svg', '166', '2024-04-03 10:20:00', 'Cochin Intl Airport', '2024-04-03 11:30:00', 'Bandaranaike Intl Airport Colombo', '1 h & 10 m', '', '', 40, 20),
(72, 'https://www.pnrconverter.com/images/airlines/tk.svg', '731', '2024-04-15 06:50:00', 'Bandaranaike Intl Airport', '2024-04-15 12:45:00', 'Istanbul Airport Istanbul', '8 h & 25 m', '', '', 40, 20),
(73, 'https://www.pnrconverter.com/images/airlines/tk.svg', '1997', '2024-04-15 14:10:00', 'Istanbul Airport', '2024-04-15 16:20:00', 'London Gatwick Airport London', '4 h & 10 m', '', '', 40, 20),
(74, 'https://www.pnrconverter.com/images/airlines/uk.svg', '16', '2024-03-29 22:40:00', 'London Heathrow Airport', '2024-03-30 13:10:00', 'Chhatrapati Shivaji Airport Mumbai', '9 h & 0 m', '', '', 43, 21),
(75, 'https://www.pnrconverter.com/images/airlines/ai.svg', '681', '2024-03-30 17:15:00', 'Chhatrapati Shivaji Airport', '2024-03-30 19:15:00', 'Cochin Intl Airport Kochi', '2 h & 0 m', '', '', 43, 21),
(76, 'https://www.pnrconverter.com/images/airlines/ul.svg', '166', '2024-04-03 10:20:00', 'Cochin Intl Airport', '2024-04-03 11:30:00', 'Bandaranaike Intl Airport Colombo', '1 h & 10 m', '', '', 43, 21),
(77, 'https://www.pnrconverter.com/images/airlines/qr.svg', '661', '2024-04-21 11:10:00', 'Bandaranaike Intl Airport', '2024-04-21 13:40:00', 'Doha Hamad Intl Airport Doha', '5 h & 0 m', '', '', 43, 21),
(78, 'https://www.pnrconverter.com/images/airlines/qr.svg', '5', '2024-04-21 16:45:00', 'Doha Hamad Intl Airport', '2024-04-21 22:00:00', 'London Heathrow Airport London', '7 h & 15 m', '', '', 43, 21),
(79, 'https://www.pnrconverter.com/images/airlines/uk.svg', '16', '2024-03-29 22:40:00', 'London Heathrow Airport', '2024-03-30 13:10:00', 'Chhatrapati Shivaji Airport Mumbai', '9 h & 0 m', '', '', 44, 22),
(80, 'https://www.pnrconverter.com/images/airlines/ai.svg', '681', '2024-03-30 17:15:00', 'Chhatrapati Shivaji Airport', '2024-03-30 19:15:00', 'Cochin Intl Airport Kochi', '2 h & 0 m', '', '', 44, 22),
(81, 'https://www.pnrconverter.com/images/airlines/ul.svg', '166', '2024-04-03 10:20:00', 'Cochin Intl Airport', '2024-04-03 11:30:00', 'Bandaranaike Intl Airport Colombo', '1 h & 10 m', '', '', 44, 22),
(82, 'https://www.pnrconverter.com/images/airlines/tk.svg', '731', '2024-04-15 06:50:00', 'Bandaranaike Intl Airport', '2024-04-15 12:45:00', 'Istanbul Airport Istanbul', '8 h & 25 m', '', '', 44, 22),
(83, 'https://www.pnrconverter.com/images/airlines/tk.svg', '1997', '2024-04-15 14:10:00', 'Istanbul Airport', '2024-04-15 16:20:00', 'London Gatwick Airport London', '4 h & 10 m', '', '', 44, 22),
(84, 'https://www.pnrconverter.com/images/airlines/ek.svg', '522', '2024-06-22 05:55:00', 'London Stansted Airport (STN)', '2024-06-22 08:50:00', 'Tarbes-Lourdes-PyrÌ©nÌ©es Airport, Tarbes (LDE)', '', '', '', 0, 23),
(85, 'https://www.pnrconverter.com/images/airlines/ek.svg', '2182', '2024-06-24 18:40:00', 'Tarbes-Lourdes-PyrÌ©nÌ©es Airport, Tarbes (LDE)', '2024-06-24 20:05:00', 'Orly Airport, Paris (ORY)', '', '', '', 0, 23),
(86, 'https://www.pnrconverter.com/images/airlines/ek.svg', '3528', '2024-06-28 10:50:00', 'Orly Airport, Paris (ORY)', '2024-06-28 15:05:00', 'Orly Airport, Paris (ORY)', '', '', '', 0, 23),
(87, 'https://www.pnrconverter.com/images/airlines/ek.svg', '3021', '2024-07-02 16:05:00', 'Santorini Airport, Thira (JTR)', '2024-07-02 17:30:00', 'Rome Leonardo Da Vinci Fiumicino Airport (FCO)', '', '', '', 0, 23),
(88, 'https://www.pnrconverter.com/images/airlines/qr.svg', '12', '2024-04-22 19:25:00', 'London Heathrow Airport', '2024-04-23 04:10:00', 'Doha Hamad Intl Airport Doha', '6 h & 45 m', '', '', 46, 24),
(89, 'https://www.pnrconverter.com/images/airlines/qr.svg', '654', '2024-04-23 08:45:00', 'Doha Hamad Intl Airport', '2024-04-23 16:20:00', 'Bandaranaike Intl Airport Colombo', '5 h & 5 m', '', '', 46, 24),
(90, 'https://www.pnrconverter.com/images/airlines/qr.svg', '661', '2024-05-02 11:10:00', 'Bandaranaike Intl Airport', '2024-05-02 13:40:00', 'Doha Hamad Intl Airport Doha', '5 h & 0 m', '', '', 46, 24),
(91, 'https://www.pnrconverter.com/images/airlines/qr.svg', '15', '2024-05-02 15:10:00', 'Doha Hamad Intl Airport', '2024-05-02 20:25:00', 'London Heathrow Airport London', '7 h & 15 m', '', '', 46, 24),
(92, 'https://www.pnrconverter.com/images/airlines/qr.svg', '16', '2024-07-09 21:55:00', 'London Heathrow Airport', '2024-07-10 06:40:00', 'Doha Hamad Intl Airport Doha', '6 h & 45 m', '', '', 47, 25),
(93, 'https://www.pnrconverter.com/images/airlines/qr.svg', '654', '2024-07-10 10:10:00', 'Doha Hamad Intl Airport', '2024-07-10 17:45:00', 'Bandaranaike Intl Airport Colombo', '5 h & 5 m', '', '', 47, 25),
(94, 'https://www.pnrconverter.com/images/airlines/qr.svg', '655', '2024-08-23 20:20:00', 'Bandaranaike Intl Airport', '2024-08-23 22:50:00', 'Doha Hamad Intl Airport Doha', '5 h & 0 m', '', '', 47, 25),
(95, 'https://www.pnrconverter.com/images/airlines/qr.svg', '107', '2024-08-24 02:45:00', 'Doha Hamad Intl Airport', '2024-08-24 08:00:00', 'London Heathrow Airport London', '7 h & 15 m', '', '', 47, 25),
(96, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK016', '2024-02-17 13:35:00', 'LONDON GATWICK', '2024-02-18 00:40:00', 'DUBAI', '', '', '', 0, 26),
(97, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK544', '2024-02-18 02:50:00', 'DUBAI', '2024-02-18 08:15:00', 'CHENNAI', '', '', '', 0, 26),
(98, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK545', '2024-02-21 09:45:00', 'CHENNAI', '2024-02-21 12:40:00', 'DUBAI', '', '', '', 0, 26),
(99, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK009', '2024-02-21 14:25:00', 'DUBAI', '2024-02-21 18:25:00', 'LONDON GATWICK', '', '', '', 0, 26),
(100, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'CX238', '2024-02-19 16:50:00', 'LONDON HEATHROW', '2024-02-20 16:40:00', 'HONGKONG', '', '', '', 0, 27),
(101, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'CX751', '2024-02-20 14:30:00', 'HONGKONG', '2024-02-20 16:40:00', 'BANGKOK', '', '', '', 0, 27),
(102, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'U0759', '2024-02-26 12:00:00', 'BANGKOK', '2024-02-26 15:45:00', 'HONGKONG', '', '', '', 0, 27),
(103, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'CX257', '2024-03-03 08:25:00', 'HONGKONG', '2024-03-03 15:00:00', 'LONDON HEATHROW', '', '', '', 0, 27),
(104, 'https://www.pnrconverter.com/images/airlines/ul.svg', '504', '2024-03-26 20:40:00', 'London Heathrow Airport', '2024-03-27 12:35:00', 'Bandaranaike Intl Airport Colombo', '10 h & 25 m', '', '', 53, 28),
(105, 'https://www.pnrconverter.com/images/airlines/ul.svg', '503', '2024-04-16 13:05:00', 'Bandaranaike Intl Airport', '2024-04-16 20:00:00', 'London Heathrow Airport London', '11 h & 25 m', '', '', 53, 28),
(106, 'https://www.pnrconverter.com/images/airlines/ul.svg', '504', '2024-03-26 20:40:00', 'London Heathrow Airport', '2024-03-27 12:35:00', 'Bandaranaike Intl Airport Colombo', '10 h & 25 m', '', '', 55, 29),
(107, 'https://www.pnrconverter.com/images/airlines/ul.svg', '503', '2024-04-16 13:05:00', 'Bandaranaike Intl Airport', '2024-04-16 20:00:00', 'London Heathrow Airport London', '11 h & 25 m', '', '', 55, 29),
(108, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'QR016', '2024-02-22 21:30:00', 'LONDON HEATHROW', '2024-02-23 07:10:00', 'DOHA', '', '', '', 0, 30),
(109, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'QR654', '2024-02-23 09:10:00', 'DOHA', '2024-02-23 16:30:00', 'COLOMBO', '', '', '', 0, 30),
(110, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'QR663', '2024-03-01 04:25:00', 'COLOMBO', '2024-03-01 07:10:00', 'DOHA', '', '', '', 0, 30),
(111, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'QR007', '2024-03-01 08:45:00', 'DOHA', '2024-03-01 13:20:00', 'LONDON HEATHROW', '', '', '', 0, 30),
(112, 'https://www.pnrconverter.com/images/airlines/qr.svg', '10', '2024-06-02 09:00:00', 'London Heathrow Airport', '2024-06-02 17:45:00', 'Doha Hamad Intl Airport Doha', '6 h & 45 m', '', '', 57, 31),
(113, 'https://www.pnrconverter.com/images/airlines/qr.svg', '662', '2024-06-02 18:30:00', 'Doha Hamad Intl Airport', '2024-06-03 02:05:00', 'Bandaranaike Intl Airport Colombo', '5 h & 5 m', '', '', 57, 31),
(114, 'https://www.pnrconverter.com/images/airlines/qr.svg', '659', '2024-06-19 04:55:00', 'Bandaranaike Intl Airport', '2024-06-19 07:25:00', 'Doha Hamad Intl Airport Doha', '5 h & 0 m', '', '', 57, 31),
(115, 'https://www.pnrconverter.com/images/airlines/qr.svg', '7', '2024-06-19 08:55:00', 'Doha Hamad Intl Airport', '2024-06-19 14:10:00', 'London Heathrow Airport London', '7 h & 15 m', '', '', 57, 31),
(116, 'https://www.pnrconverter.com/images/airlines/ul.svg', '503', '2024-04-30 13:05:00', 'Bandaranaike Intl Airport', '2024-04-30 20:00:00', 'London Heathrow Airport London', '11 h & 25 m', '', '', 59, 32),
(117, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK649', '2024-03-01 02:55:00', 'COLOMBO', '2024-03-01 05:55:00', 'DUBAI', '', '', '', 0, 33),
(118, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK015', '2024-03-01 07:40:00', 'DUBAI', '2024-03-01 11:40:00', 'LONDON GATWICK', '', '', '', 0, 33),
(119, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK016', '2024-04-13 14:35:00', 'LONDON GATWICK', '2024-04-14 00:40:00', 'DUBAI', '', '', '', 0, 33),
(120, 'https://www.pnrconverter.com/images/airlines/ek.svg', 'EK650', '2024-04-14 02:40:00', 'DUBAI', '2024-04-14 08:35:00', 'COLOMBO', '', '', '', 0, 33),
(121, 'https://www.pnrconverter.com/images/airlines/ey.svg', '18', '2024-05-01 21:55:00', 'London Heathrow Airport', '2024-05-02 07:45:00', 'Abu Dhabi Intl Airport ', '6 h & 50 m', '', '', 61, 34),
(122, 'https://www.pnrconverter.com/images/airlines/ey.svg', '390', '2024-05-02 09:20:00', 'Abu Dhabi Intl Airport', '2024-05-02 15:25:00', 'Bandaranaike Intl Airport Colombo', '4 h & 35 m', '', '', 61, 34),
(123, 'https://www.pnrconverter.com/images/airlines/ey.svg', '395', '2024-05-14 09:05:00', 'Bandaranaike Intl Airport', '2024-05-14 12:20:00', 'Abu Dhabi Intl Airport ', '4 h & 45 m', '', '', 61, 34),
(124, 'https://www.pnrconverter.com/images/airlines/ey.svg', '17', '2024-05-14 14:15:00', 'Abu Dhabi Intl Airport', '2024-05-14 18:45:00', 'London Heathrow Airport London', '7 h & 30 m', '', '', 61, 34),
(125, 'https://www.pnrconverter.com/images/airlines/ey.svg', '18', '2024-05-01 21:55:00', 'London Heathrow Airport', '2024-05-02 07:45:00', 'Abu Dhabi Intl Airport ', '6 h & 50 m', '', '', 63, 35),
(126, 'https://www.pnrconverter.com/images/airlines/ey.svg', '390', '2024-05-02 09:20:00', 'Abu Dhabi Intl Airport', '2024-05-02 15:25:00', 'Bandaranaike Intl Airport Colombo', '4 h & 35 m', '', '', 63, 35),
(127, 'https://www.pnrconverter.com/images/airlines/ey.svg', '395', '2024-05-14 09:05:00', 'Bandaranaike Intl Airport', '2024-05-14 12:20:00', 'Abu Dhabi Intl Airport ', '4 h & 45 m', '', '', 63, 35),
(128, 'https://www.pnrconverter.com/images/airlines/ey.svg', '17', '2024-05-14 14:15:00', 'Abu Dhabi Intl Airport', '2024-05-14 18:45:00', 'London Heathrow Airport London', '7 h & 30 m', '', '', 63, 35),
(129, 'https://www.pnrconverter.com/images/airlines/tk.svg', '7799', '2024-03-13 12:45:00', 'London Stansted Airport', '2024-03-13 19:35:00', 'Istanbul Sabiha Gokcen Intl Airport Istanbul', '3 h & 50 m', '', '', 64, 36),
(130, 'https://www.pnrconverter.com/images/airlines/tk.svg', '910', '2024-03-13 22:30:00', 'Istanbul Sabiha Gokcen Intl Airport', '2024-03-14 02:25:00', 'Jeddah King Abdulaziz Intl Airport Jeddah', '3 h & 55 m', '', '', 64, 36),
(131, 'https://www.pnrconverter.com/images/airlines/tk.svg', '145', '2024-03-20 06:50:00', 'King Khaled International Airport', '2024-03-20 11:35:00', 'Istanbul Airport Istanbul', '4 h & 45 m', '', '', 64, 36),
(132, 'https://www.pnrconverter.com/images/airlines/tk.svg', '1997', '2024-03-20 14:45:00', 'Istanbul Airport', '2024-03-20 16:05:00', 'London Gatwick Airport London', '4 h & 20 m', '', '', 64, 36),
(133, 'https://www.pnrconverter.com/images/airlines/ek.svg', '30', '2024-03-30 15:50:00', 'London Heathrow Airport', '2024-03-31 02:40:00', 'Dubai Intl Airport Dubai', '6 h & 50 m', '', '', 65, 37),
(134, 'https://www.pnrconverter.com/images/airlines/ek.svg', '376', '2024-03-31 03:45:00', 'Dubai Intl Airport', '2024-03-31 13:00:00', 'Bangkok Suvarnabhumi Airport Bangkok', '6 h & 15 m', '', '', 65, 37),
(135, 'https://www.pnrconverter.com/images/airlines/ek.svg', '375', '2024-04-15 09:30:00', 'Bangkok Suvarnabhumi Airport', '2024-04-15 13:00:00', 'Dubai Intl Airport Dubai', '6 h & 30 m', '', '', 65, 37),
(136, 'https://www.pnrconverter.com/images/airlines/ek.svg', '7', '2024-04-22 02:30:00', 'Dubai Intl Airport', '2024-04-22 07:05:00', 'London Heathrow Airport London', '7 h & 35 m', '', '', 65, 37),
(137, 'https://www.pnrconverter.com/images/airlines/ek.svg', '12', '2024-03-06 09:40:00', 'London Gatwick Airport', '2024-03-06 20:30:00', 'Dubai Intl Airport Dubai', '6 h & 50 m', '', '', 66, 38),
(138, 'https://www.pnrconverter.com/images/airlines/ek.svg', '11', '2024-04-05 02:45:00', 'Dubai Intl Airport', '2024-04-05 07:20:00', 'London Gatwick Airport London', '7 h & 35 m', '', '', 66, 38),
(139, 'https://www.pnrconverter.com/images/airlines/ek.svg', '12', '2024-08-10 10:05:00', 'London Gatwick Airport (LGW)', '2024-08-01 08:00:00', 'Dubai Intl Airport (DXB)', '', '', '', 0, 44),
(140, 'https://www.pnrconverter.com/images/airlines/ek.svg', '2454', '2024-08-02 01:10:00', 'Dubai Intl Airport (DXB)', '2024-08-02 09:25:00', 'Bandaranaike Intl Airport, Colombo (CMB)', '', '', '', 0, 44),
(141, 'https://www.pnrconverter.com/images/airlines/ek.svg', '649', '2024-08-08 03:05:00', 'Bandaranaike Intl Airport, Colombo (CMB)', '2024-08-08 05:50:00', 'Dubai Intl Airport (DXB)', '', '', '', 0, 44),
(142, 'https://www.pnrconverter.com/images/airlines/ek.svg', '15', '2024-09-08 08:00:00', 'Dubai Intl Airport (DXB)', '2024-09-08 12:35:00', 'London Gatwick Airport (LGW)', '', '', '', 0, 44),
(143, '', 'EK12', '2024-08-01 10:05:00', 'LONDON GATWICK', '2024-08-01 20:00:00', 'DUBAI', '', '', '', 0, 46),
(144, '', 'EK2454', '2024-08-02 01:10:00', 'DUBAI', '2024-08-02 09:25:00', 'COLOMBO', '', '', '', 0, 46),
(145, '', 'EK649', '2024-09-08 03:05:00', 'COLOMBO', '2024-09-08 05:50:00', 'DUBAI', '', '', '', 0, 46),
(146, '', 'EK15', '2024-09-08 03:05:00', 'DUBAI', '2024-09-08 12:35:00', 'LONDON GATWICK', '', '', '', 0, 46),
(147, '', 'EK32', '2024-03-18 19:00:00', 'LONDON HEATHROW', '2024-03-19 05:50:00', 'DUBAI', '', '', '', 0, 47),
(148, '', 'EK41', '2024-06-13 10:20:00', 'DUBAI', '2024-06-13 15:05:00', 'LONDON HEATHROW', '', '', '', 0, 47),
(149, '', 'UK16', '2024-03-14 21:01:00', 'LONDON HEATHROW', '2024-03-15 11:20:00', 'CHHATRAPATI SHIVAJI INTL (BOM)', '', '', '', 0, 49),
(150, '', 'UK131', '2024-03-15 12:25:00', 'CHHATRAPATI SHIVAJI INTL (BOM)', '2024-03-15 15:00:00', 'COLOMBO', '', '', '', 0, 49),
(151, '', 'CX257', '2024-03-20 08:25:00', 'HONGKONG', '2024-03-20 15:00:00', 'LONDON HEATHROW', '', '', '', 0, 50),
(152, '', 'EK11', '2024-03-22 02:50:00', 'DUBAI', '2024-03-22 06:40:00', 'LONDON GATWICK', '', '', '', 0, 51),
(153, '', 'CZ304', '2024-05-07 22:10:00', 'LONDON HEATHROW', '2024-05-08 17:05:00', 'BAIYUN (CAN)', '', '', '', 0, 52),
(154, '', 'CZ321', '2024-05-08 21:15:00', 'BAIYUN (CAN)', '2024-05-09 08:40:00', 'TULLAMARINE (MEL)', '', '', '', 0, 52),
(155, '', 'CZ344', '2024-05-21 21:00:00', 'TULLAMARINE (MEL)', '2024-05-22 05:00:00', 'BAIYUN (CAN)', '', '', '', 0, 52),
(156, '', 'CZ303', '2024-05-22 13:30:00', 'BAIYUN (CAN)', '2024-05-22 19:10:00', 'LONDON HEATHROW', '', '', '', 0, 52),
(157, '', 'QR106', '2024-07-13 18:55:00', 'LONDON HEATHROW', '2024-07-14 03:40:00', 'DOHA', '', '', '', 0, 53),
(158, '', 'QR654', '2024-07-14 08:45:00', 'DOHA', '2024-07-14 16:20:00', 'COLOMBO', '', '', '', 0, 53),
(159, '', 'QR010', '2024-03-25 09:00:00', 'LONDON HEATHROW', '2024-06-02 17:45:00', 'DOHA', '', '', '', 0, 60),
(160, '', 'QR662', '2024-03-25 18:30:00', 'DOHA', '2024-06-03 02:05:00', 'COLOMBO', '', '', '', 0, 60),
(161, '', 'QR665', '2024-07-02 10:30:00', 'COLOMBO', '2024-07-02 10:30:00', 'DOHA', '', '', '', 0, 60),
(162, '', 'QR005', '2024-07-02 16:45:00', 'DOHA', '2024-07-07 22:00:00', 'LONDON HEATHROW', '', '', '', 0, 60),
(163, '', 'EZY2117', '2024-07-17 11:15:00', 'MANCHESTER', '2024-07-17 13:45:00', 'PARIS CHARLES DE GAULLE', '', '', '', 0, 66),
(164, '', 'EZY2118', '2024-07-19 14:20:00', 'PARIS CHARLES DE GAULLE', '2024-07-19 14:50:00', 'MANCHESTER', '', '', '', 0, 66),
(165, '', 'EJU8403', '2024-05-30 08:00:00', 'LONDON GATWICK', '2024-05-30 10:20:00', 'PARIS CHARLES DE GAULLE', '', '', '', 0, 67),
(166, '', 'EZY8408', '2024-06-02 22:00:00', 'PARIS CHARLES DE GAULLE', '2024-06-02 22:05:00', 'LONDON GATWICK', '', '', '', 0, 67),
(167, '', 'EJU4646', '2024-05-10 12:20:00', 'MANCHESTER', '2024-05-10 14:50:00', 'CDG', '', '', '', 0, 70),
(168, '', 'EZY2106', '2024-05-13 10:05:00', 'CDG', '2024-05-13 10:30:00', 'MANCHESTER', '', '', '', 0, 70),
(169, '', 'EY018', '2024-03-30 20:55:00', 'LONDON HEATHROW', '2024-03-30 07:55:00', 'ABU DHABI', '', '', '', 0, 74),
(170, '', 'EY272', '2024-03-31 09:25:00', 'ABU DHABI', '2024-03-31 15:15:00', 'CHENNAI', '', '', '', 0, 74),
(171, '', 'EY273', '2024-04-26 16:50:00', 'CHENNAI', '2024-04-26 16:50:00', 'ABU DHABI', '', '', '', 0, 74),
(172, '', 'EY011', '2024-04-27 02:05:00', 'ABU DHABI', '2024-04-27 06:45:00', 'LONDON HEATHROW', '', '', '', 0, 74),
(174, '', 'FR3948', '2024-04-05 21:50:00', 'Bournemouth', '2024-04-06 01:10:00', 'Alicante', '2h 20m', '', '', 0, 76),
(175, '', 'FR3949', '2024-04-11 05:45:00', 'Alicante', '2024-04-11 07:10:00', 'Bournemouth', '2h 25m', '', '', 0, 76);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_flight_cancellation_cost`
--

CREATE TABLE `tbl_flight_cancellation_cost` (
  `f_c_c_id` int(11) NOT NULL,
  `buy_amount` double NOT NULL,
  `sell_amount` double NOT NULL,
  `profit` double NOT NULL,
  `p_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_flight_date_change_cost`
--

CREATE TABLE `tbl_flight_date_change_cost` (
  `f_d_c_id` int(11) NOT NULL,
  `buy_amount` double NOT NULL,
  `sell_amount` double NOT NULL,
  `profit` double NOT NULL,
  `p_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hotel_date_cancellation_cost`
--

CREATE TABLE `tbl_hotel_date_cancellation_cost` (
  `d_c_c_id` int(11) NOT NULL,
  `buy_amount` double NOT NULL,
  `sell_amount` double NOT NULL,
  `profit` double NOT NULL,
  `h_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hotel_date_change_cost`
--

CREATE TABLE `tbl_hotel_date_change_cost` (
  `d_c_c_id` int(11) NOT NULL,
  `buy_amount` double NOT NULL,
  `sell_amount` double NOT NULL,
  `profit` double NOT NULL,
  `b_id` int(11) NOT NULL,
  `h_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hote_det`
--

CREATE TABLE `tbl_hote_det` (
  `h_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `h_name` varchar(255) NOT NULL,
  `check_in_date` datetime NOT NULL,
  `check_out_date` datetime NOT NULL,
  `room_type` varchar(255) NOT NULL,
  `board_basis` int(2) NOT NULL,
  `b_id` int(11) NOT NULL,
  `free_cancellation_date_deadline` date NOT NULL,
  `buy_amount` double NOT NULL,
  `sell_amount` double NOT NULL,
  `profit` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_hote_det`
--

INSERT INTO `tbl_hote_det` (`h_id`, `v_id`, `h_name`, `check_in_date`, `check_out_date`, `room_type`, `board_basis`, `b_id`, `free_cancellation_date_deadline`, `buy_amount`, `sell_amount`, `profit`) VALUES
(2, 6, 'HÃ´tel Explorers ', '2024-07-23 14:00:00', '2024-07-26 00:00:00', '1 x Family Room Bunk Bed for (3 adults ,2 children - 2,7 years ol', 2, 5, '2024-07-18', 645.08, 645.08, 0),
(3, 6, 'Campanile Val de France Ex Kyriad Disneyland', '2025-03-23 02:22:00', '2025-03-26 12:00:00', '1 x Family Room Capacity 4 People', 2, 12, '2025-03-21', 280.8, 280.8, 0),
(4, 6, 'Explorers Hotel 3*', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Crew 6 With Twin Beds ', 2, 13, '2024-08-02', 923.64, 1063.05, 0),
(6, 6, 'The Originals City, HÃ´tel Amys, Tarbes Sud ', '2024-06-22 02:00:00', '2024-06-24 12:59:00', '1 x Family Room Connecting Room', 1, 23, '2024-06-20', 152.04, 244.445, 0),
(7, 6, 'Short Stay Group Eiffel Village Apartments Paris ', '2024-06-24 14:00:00', '2024-06-26 12:00:00', '1 x Bedroom Double Apartment', 1, 23, '0000-00-00', 487.15, 487.15, 0),
(8, 6, 'B&B HOTEL prÃ¨s de DisneylandÂ® Paris 2*', '2024-04-10 02:00:00', '2024-04-13 12:00:00', '1 x Quadraple Room ', 2, 39, '2024-04-08', 382.47, 411.07, 0),
(9, 6, 'Campanile Val de France Ex Kyriad Disneyland 3*', '2024-05-22 02:00:00', '2024-05-24 12:00:00', '2 x Family Room', 2, 40, '2024-05-21', 512.08, 674.2, 0),
(10, 7, 'Campanile Val de France Ex Kyriad Disneyland 3*', '2024-05-22 02:00:00', '2024-05-24 12:00:00', '1 x Standard Room', 2, 0, '2024-05-22', 437, 478.02, 0),
(11, 7, 'Campanile Val de France Ex Kyriad Disneyland 3*', '2024-05-22 02:00:00', '2024-05-24 12:00:00', '1 x Standard Room', 2, 41, '2024-05-22', 437, 478.02, 0),
(12, 7, 'Hotel Explorers 3*', '2024-11-11 02:00:00', '2024-11-13 12:00:00', '1 x Quadruple Room', 2, 42, '0000-00-00', 210, 235.365, 0),
(20, 6, 'Residhome Val dEurope ', '2024-06-26 14:00:00', '2024-06-28 12:00:00', '1 x Family Apartment Capacity 4', 1, 23, '2024-06-26', 261.36, 261.36, 0),
(21, 6, 'Art Hotel Athens', '0000-00-00 00:00:00', '2024-06-30 12:00:00', '1 x Family Room Standard', 1, 23, '2024-06-26', 196.38, 196.38, 0),
(22, 6, 'Villa Manos ', '2024-06-30 14:00:00', '2024-07-02 12:00:00', '1 x Quadruple Room', 1, 23, '2024-06-08', 283.83, 283.83, 0),
(23, 7, 'Hotel Explorers 3*', '2024-11-11 02:00:00', '2024-11-13 12:00:00', '1 x Quadruple Room', 2, 54, '2024-11-06', 210, 217.5, 0),
(24, 6, 'B&B HOTEL prÃ¨s de DisneylandÂ® Paris 2*', '2025-01-02 02:00:00', '2025-01-04 12:00:00', '1 x Quadraple Room', 2, 55, '2024-12-31', 238.96, 263.233, 0),
(25, 7, 'Campanile Val de France Ex Kyriad Disneyland 3*', '2024-04-23 02:00:00', '2024-03-26 12:00:00', '1 x Quadruple Room ', 2, 56, '2024-03-21', 306, 318.33, 0),
(26, 7, 'Grand Magic Hotel 4*', '2024-04-11 02:00:00', '2024-04-14 12:00:00', '1 x Family Room ', 2, 57, '2024-04-07', 418, 419.9467, 0),
(27, 6, 'Hotel Campanile Val de France 3*', '2024-05-04 02:00:00', '2024-05-06 12:00:00', '1 x Standard Room', 2, 58, '2024-05-02', 208.99, 174.7775, 0),
(28, 6, 'Hotel Campanile Val de France 3*', '2024-05-04 02:00:00', '2024-05-06 12:00:00', '1 x Standard Room', 2, 59, '2024-05-02', 235.23, 236.393, 0),
(29, 6, 'Hotel Campanile Val de France 3*', '2024-05-04 02:00:00', '2024-05-06 12:00:00', '1 x Standard Room', 2, 61, '2024-04-02', 235.23, 236.393, 0),
(30, 6, 'Hotel Campanile Val de France 3*', '2024-05-04 02:00:00', '2024-05-06 12:00:00', '1 x Standard Room', 2, 62, '2024-05-02', 235.23, 202.3867, 0),
(31, 6, 'Hotel Campanile Val de France 3*', '2024-05-04 02:00:00', '2024-05-06 12:00:00', '1 x Standard Room', 2, 63, '2024-05-02', 235.23, 218.06, 0),
(32, 6, 'Hotel Campanile Val de France 3*', '2024-05-04 02:00:00', '2024-05-06 12:00:00', '1 x Standard Room', 2, 64, '2024-05-02', 235.23, 235.98, 0),
(33, 6, 'Hotel Campanile Val de France 3*', '2024-05-04 02:00:00', '2024-05-06 12:00:00', '1 x Standard Room', 2, 65, '0000-00-00', 235.23, 268.073, 0),
(34, 6, 'Campanile Val de France Ex Kyriad Disneyland 3***', '2024-07-18 18:45:00', '2024-07-20 18:45:00', 'Family Room Capacity 4 People', 2, 66, '2024-07-07', 292.66, 292.66, 0),
(35, 6, 'Campanile Val de France Ex Kyriad Disneyland 3*', '2024-05-30 19:15:00', '2024-06-02 19:15:00', '', 1, 67, '2024-05-28', 506, 594.67, 0),
(36, 6, 'B&B HOTEL prÃ¨s de DisneylandÂ® Paris', '2024-07-14 14:20:00', '2024-07-18 14:20:00', 'Standard Quadruple Room', 1, 68, '2024-07-11', 497, 513, 0),
(37, 6, 'Campanile Val de France Ex Kyriad Disneyland 3*', '2024-09-23 15:13:00', '2024-09-26 15:13:00', '4 x Family Room Capacity 4 People', 2, 69, '2024-09-21', 1191.24, 1463.59, 0),
(38, 6, 'HÃ´tel Explorers 3*', '2024-05-10 18:53:00', '2024-05-13 18:53:00', 'Double twin or Standard', 2, 70, '2024-05-08', 394.1, 404.1, 0),
(39, 6, 'Explorers Hotel Disneyland Paris', '2025-03-03 13:10:00', '2025-03-07 13:10:00', '02 x Family Room ', 1, 72, '2024-12-29', 1731, 1832.315, 0),
(40, 6, 'Campanile Val de France Ex Kyriad Disneyland', '2025-04-18 13:41:00', '2025-04-21 13:41:00', 'Standard Room Double or Twin', 2, 73, '2025-04-17', 353.36, 353.36, 0),
(41, 6, 'Hotel Campanile Val de France 3*', '2024-06-28 02:00:00', '2024-06-30 12:00:00', '1 x Family Capacity Room', 2, 75, '2024-06-26', 230.56, 278.56, 0),
(42, 7, 'Magic Villa Benidrom ', '2024-04-06 02:00:00', '2024-04-11 02:00:00', 'Junior Suite with pool view', 2, 76, '0000-00-00', 298, 328, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_other_charges`
--

CREATE TABLE `tbl_other_charges` (
  `o_c_id` int(11) NOT NULL,
  `o_c_name` varchar(150) NOT NULL,
  `buy_price` double NOT NULL,
  `sell_price` double NOT NULL,
  `b_id` int(11) NOT NULL,
  `v_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_other_charges`
--

INSERT INTO `tbl_other_charges` (`o_c_id`, `o_c_name`, `buy_price`, `sell_price`, `b_id`, `v_id`) VALUES
(1, 'DisneylandÂ® Paris Dated Ticket & Walt Disney Studios', 537.22, 1004.52, 5, 0),
(2, 'DisneylandÂ® Paris Dated Ticket & Walt Disney Studios x 2', 550.2, 550.2, 12, 0),
(4, 'Disneyland Park', 854.36, 993.77, 13, 0),
(5, 'Paris seine river hop on hop off', 132.78, 132.78, 13, 16),
(6, 'Disneyland Park Tickets', 648.33, 676.93, 39, 6),
(7, 'Disneyland Park Tickets', 878.84, 1040.96, 40, 0),
(8, 'Disneyland Park Tickets', 325.52, 366.54, 0, 6),
(9, 'Disneyland Park tickets', 325.52, 366.54, 41, 6),
(10, 'Disneyland Paris', 200, 225.365, 42, 6),
(11, 'Disneyland Paris Park Tickets', 198.41, 205.91, 54, 6),
(12, 'Disneyland Paris Park Tickets', 400, 424.273, 55, 6),
(13, 'Disneyland Paris Park Tickets', 539.34, 551.67, 56, 6),
(14, 'Disneyland Paris Park Tickets', 539.34, 551.67, 56, 6),
(15, 'Disneyland Paris Park Tickets', 558.92, 560.8667, 57, 6),
(16, 'Disneyland Park Tickets', 248.86, 214.6475, 58, 6),
(17, 'Disneyland Park', 368.23, 369.443, 59, 0),
(18, 'Disneyland Park Ticket', 368.28, 369.443, 61, 6),
(19, 'Disneyland Park', 378.3, 345.457, 62, 6),
(20, 'Disneyland Park', 368.29, 351.12, 63, 6),
(21, 'Disneyland Park', 505.52, 506.27, 64, 6),
(22, 'Disneyland Park', 378.3, 381.143, 65, 6),
(23, 'PARK TICKETS', 340.38, 340.38, 66, 6),
(24, 'PARK TICKETS', 747.46, 747.46, 67, 6),
(25, 'park ticktes', 636.04, 649.12, 68, 0),
(26, 'park tickets', 1154, 1163.84, 69, 0),
(27, 'park tickets', 286.31, 290.02, 70, 0),
(28, 'park tickets', 1269.11, 1293.05, 72, 0),
(29, 'park tickets', 360, 360, 73, 6),
(30, 'Disneyland Park Tickets', 366.9, 414.9, 75, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_partial_refunded`
--

CREATE TABLE `tbl_partial_refunded` (
  `p_r_id` int(11) NOT NULL,
  `h_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `o_c_id` int(11) NOT NULL,
  `paid_amount` double NOT NULL,
  `refunded_amount` double NOT NULL,
  `date_time` datetime NOT NULL,
  `b_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_passenger_flight_bookings`
--

CREATE TABLE `tbl_passenger_flight_bookings` (
  `p_id` int(11) NOT NULL,
  `lead_passenger` int(2) NOT NULL,
  `p_f_name` varchar(255) NOT NULL,
  `p_l_name` varchar(255) NOT NULL,
  `p_phone_no` varchar(45) NOT NULL,
  `p_email` varchar(255) NOT NULL,
  `e_ticket_no` varchar(150) NOT NULL,
  `buy_amount` double NOT NULL,
  `sell_amount` double NOT NULL,
  `pnr_ref` varchar(255) NOT NULL,
  `profit` double NOT NULL,
  `issued_date` date NOT NULL,
  `status` int(2) NOT NULL,
  `b_id` int(11) NOT NULL,
  `v_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_passenger_flight_bookings`
--

INSERT INTO `tbl_passenger_flight_bookings` (`p_id`, `lead_passenger`, `p_f_name`, `p_l_name`, `p_phone_no`, `p_email`, `e_ticket_no`, `buy_amount`, `sell_amount`, `pnr_ref`, `profit`, `issued_date`, `status`, `b_id`, `v_id`) VALUES
(2, 1, 'AJWAATH', 'ABDUL LATHEEF', '+94760044744', 'SKYCEYLONLTD@GMAIL.COM', '1573109908270', 794.59, 815, '', 0, '2024-01-04', 0, 1, 1),
(3, 1, 'ABDUL WADOOD', 'MOHAMED REYAZATH ', '+447860137034', 'REYAZATH7@GMAIL.COM', '1573109935679', 829.59, 850, '', 0, '2024-01-04', 0, 2, 1),
(6, 1, 'MOHAMED NILAMDEEN', 'MOHAMED RIZMY', '+447446865644', 'RIZMY21@YAHOO.COM', '0983200162518', 1121.59, 1165.2, '', 0, '2024-01-12', 0, 3, 1),
(7, 0, 'FATHIMA SAJEEDHA', 'MUHAMMADH ASHRAF', '', '', '6033200162523', 1121.59, 1165.2, '', 0, '2024-01-12', 0, 3, 1),
(8, 0, 'AALA', 'MOHAMED RIZMY', '', '', '0983200162520', 878.69, 922.3, '', 0, '2024-01-12', 0, 3, 1),
(9, 0, 'AYNA', 'MOHAMED RIZMY', '', '', '6033200162527', 878.69, 922.3, '', 0, '2024-01-12', 0, 3, 1),
(10, 1, 'FATHIMA SHAHINAZ', 'MOHAMED NAWASDEEN', '+447355299608', 'shahinaznawaz123@icloud.com', '1573200178088', 644.99, 665, '', 0, '2024-01-13', 0, 4, 1),
(12, 1, 'Tanya  Criselda ', 'Urabang', '+44549768392', 'tanyacrizie@yahoo.co.uk', 'K6T1PN2', 435.4, 435.4, '', 0, '2024-02-02', 0, 5, 3),
(15, 1, 'MOHAMED MAKOON', 'MOHAMED RAZMIE MR', '+447977577597', 'RAZMIEM@GOOGLEMAIL.COM', '1763200383711', 905.39, 925, '', 0, '2024-01-20', 0, 6, 1),
(16, 1, 'MUFEED', 'FARZAAN MOHAMMED ', '+447703722436', 'MUFEED.REEF@YAHOO.COM', '0723200459818', 673.99, 700, '', 0, '0000-00-00', 0, 7, 1),
(17, 1, 'OLUSALA', 'ANTHONY', '+447438567894', 'anthonyolusola10@gmail.com', '9323200550515', 812.19, 832, '', 0, '0000-00-00', 0, 8, 1),
(18, 1, 'MOHAMED', 'MUZAMMIL', '+447460333524', 'MUZA0232@GMAIL.COM', '1763200568895', 120, 221, '', 0, '2024-01-27', 0, 9, 1),
(19, 1, 'MOHAMED ISMATH', 'MOHAMED GHAZALY', '+447404757706', 'GHAZALYUK@YAHOO.COM', '1763200568898', 131, 131, '', 0, '2024-01-27', 0, 10, 0),
(20, 1, 'AHMED', 'HAMZAH', ' +447751140141', 'YASMIN-MUFEED@HOTMAIL.COM', '6033200596395', 851.09, 917, '', 0, '2024-01-29', 0, 11, 1),
(21, 0, 'MUFEED', 'YASMIN', '', '', '6033200596396', 851.09, 917, '', 0, '2024-01-29', 0, 11, 1),
(22, 1, 'Colleen ', 'Cattigan', '07853091291', 'ccattigan@googlemail.com', '', 50, 50, '', 0, '0000-00-00', 0, 12, 3),
(24, 1, 'IMTHIYAZ', 'FATHIMA FAZMILA', '07766169577', 'fazmilarefai@yahoo.com', '1763200640934', 894.47, 910, '', 0, '0000-00-00', 0, 14, 1),
(25, 1, 'MOHAMED RINOOS', 'SHUMS SHAMRA', '+447842613035', 'rinoosdlm@yahoo.com', '6033200656805', 871.19, 896.65, '', 0, '0000-00-00', 0, 15, 1),
(26, 0, 'MOHAMED RINOOS', 'AALIYA', '', '', '6033200656806', 142.89, 168.35, '', 0, '0000-00-00', 0, 15, 1),
(27, 1, 'SHERIFFDEEN', 'MOHAMED HAZIK', '07385 587520', 'haziks1@gmail.com', '6033200656820', 966.19, 1010, '', 0, '2024-01-31', 0, 16, 1),
(28, 0, 'ANANDA', 'ANNE SAKUNTHALA', '', '', '6033200656819', 966.19, 1010, '', 0, '2024-01-31', 0, 16, 1),
(29, 1, 'MOHAMED ISMATH', 'MOHAMED GHAZALY', '+44 7404 757706', 'GHAZALYUK@YAHOO.COM', '1763200715608', 233, 243, '', 0, '2024-02-01', 0, 17, 1),
(30, 1, 'MARIKKAR', 'MARYAM RISWAN', '+44Â 7411Â 417200', 'Ymriswan2000@gmail.com', '1763200761542', 956.97, 971.22, '', 0, '2024-02-03', 0, 18, 1),
(31, 0, 'RIHANA BUHARI', 'MARIKKAR', '', '', '1763200761543', 956.97, 971.22, '', 0, '2024-02-03', 0, 18, 1),
(32, 0, 'RISWAN MAHMOOD', 'MARIKKAR', '', '', '1763200761544', 956.97, 971.22, '', 0, '2024-02-03', 0, 18, 1),
(33, 0, 'SHAHDA RISWAN', 'MARIKKAR', '', '', '176200761545', 956.97, 971.22, '', 0, '2024-02-03', 0, 18, 1),
(34, 0, 'HUMAIRA RISWAN', 'MARIKKAR', '', '', '1763200761538', 737.97, 752.22, '', 0, '2024-02-03', 0, 18, 1),
(35, 0, 'KHADIJA RISWAN', 'MARIKKAR', '', '', '1763200761539', 737.97, 752.22, '', 0, '2024-02-03', 0, 18, 1),
(36, 0, 'ZAKARIYA RISWAN', 'MARIKKAR', '', '', '1763200761540', 737.97, 752.22, '', 0, '2024-02-03', 0, 18, 1),
(37, 0, 'MAIMUNA RISWAN', 'MARIKKAR', '', '', '1763200761541', 868.97, 883.22, '', 0, '2024-02-03', 0, 18, 1),
(39, 1, 'MARIKKAR', '', '+44Â 7411Â 417200', 'Ymriswan2000@gmail.com', '1763200761549', 956.87, 925.24, '', 0, '2024-02-03', 0, 19, 1),
(40, 1, 'MATHINI', 'SUBRAMANIAM', '07872 327481', 'Viji1112002@yahoo.co.uk', '2286647326516', 1146.59, 1247, '', 0, '2024-02-06', 0, 20, 1),
(41, 0, 'DEV', 'VIJAYAKANTHAN', '', '', '2286647326517', 939.29, 1074, '', 0, '2024-02-06', 0, 20, 1),
(42, 0, 'MITHRA', 'VIJAYAKANTHAN', '', '', '2286647326518', 939.29, 1074, '', 0, '2024-02-06', 0, 20, 1),
(43, 1, 'VIJAYAKANTHAN', 'VIJAYARAJAH', '07872 327481', 'Viji1112002@yahoo.co.uk', '2286647326534', 1116.19, 1214, '', 0, '2024-02-06', 0, 21, 1),
(44, 1, 'MANIKAM LINGESWARY', 'SUBRAMANIAM', '07872 327481', 'Viji1112002@yahoo.co.uk', '2286647326563', 1146.59, 1247, '', 0, '2024-02-06', 0, 22, 1),
(45, 1, 'Uduwavidanalage Don Sanchitha Sahan', 'Uduwavidana', '+4407762025343', 'sanchithau@gmail.com', '', 1267, 1367, '', 0, '0000-00-00', 0, 23, 1),
(46, 1, 'MOHAMED IRSHAD', 'IBRAHIM', '+447894281620', 'applegreen1990@hotmail.com', '1576647350018', 631.39, 665, '', 0, '2024-02-07', 0, 24, 1),
(47, 1, 'ALEXANDRA', 'DRAGOI', '+4447903615240', 'alexandra.dragoi@hotmail.com', '1576647351897', 1069.39, 1090, '', 0, '2024-02-08', 0, 25, 1),
(48, 0, 'MOHAMAD ARSHAD', 'KAFFAR', '', '', '1576647351898', 1069.39, 1090, '', 0, '2024-02-08', 0, 25, 1),
(49, 0, 'AADAM MOHAMED ', 'ARSHAD', '', '', '1576647351895', 833.39, 854, '', 0, '2024-02-08', 0, 25, 1),
(50, 0, 'ADNAN ADEEL', 'ARSHAD', '', '', '1576647351896', 833.39, 854, '', 0, '2024-02-08', 0, 25, 1),
(51, 1, 'SYED IBURAHIM', 'SHEIK NIZAMUDEEN', '+44 7968 842271', 'nizam8@yahoo.com', '1766647527646', 896.07, 930, '', 0, '2024-02-14', 0, 26, 1),
(52, 1, 'MOHAMED SAFRAZ', 'MOHAMED JABIR', '+94 77 732 0007', 'safaiyers@me.com', '1606647527662', 838.69, 890, '', 0, '2024-02-14', 0, 27, 1),
(53, 1, 'MENLIYA', 'HERFT', '+447469951644', 'herft_uk@hotmail.com', '6036647608003', 1033.59, 1092.82, '', 0, '2024-02-17', 0, 28, 1),
(54, 0, 'BRAYAN', 'HERFT', '', '', '6036647608002', 826.59, 876.59, '', 0, '2024-02-17', 0, 28, 1),
(55, 1, 'DANIEL T', 'HERFT', '+447469951644', 'herft_uk@hotmail.com', '6036647608008', 1194.59, 1244.59, '', 0, '2024-02-17', 0, 29, 1),
(56, 1, 'KAVITHEESAN', 'ANANTHARASA', '+44 7533 491025', 'Kavirajgold1@yahoo.com', '1576647686365', 1140.29, 1150, '', 0, '0000-00-00', 0, 30, 1),
(57, 1, 'FATHIMA ZAHARA ', 'AZHAR', '+44 7833 829721', 'Fathimazahi35@gmail.com', '1576647796859', 630.69, 682, '', 0, '2024-02-24', 0, 31, 1),
(58, 0, 'MOHAMED NASSAR', 'MOHAMED NAZEER', '', '', '1576647796860', 630.69, 682, '', 0, '2024-02-24', 0, 31, 1),
(59, 1, 'MOHAMMED HAZIK', 'SHERIFFDEEN', '+44 7385 587520', 'Haziks1@gmail.com', '6036647813657', 167, 187, '', 0, '2024-02-26', 0, 32, 1),
(60, 1, 'HAZIK', 'SHERIFFDEEN', '+44 7385 587520', 'Haziks1@gmail.com', '1766647881877', 1300.96, 1350, '', 0, '2024-02-28', 0, 33, 1),
(61, 1, 'MOHAMED ASIR', 'SABDEEN', '+44 7925 665629', 'Mohamed.Asir.Sabdeen@gmail.com', '6076647967066', 623.29, 645, '', 0, '2024-03-02', 0, 34, 1),
(62, 0, 'FARHANA BANU', 'SAHIR', '', '', '6076647967067', 623.29, 645, '', 0, '2024-03-02', 0, 34, 1),
(63, 1, 'SAQIB', 'SABDEEN', '+44 7925 665629', 'Mohamed.Asir.Sabdeen@gmail.com', '6076648019602', 623.29, 645, '', 0, '0000-00-00', 0, 35, 1),
(64, 1, 'AAMIR', 'MOHAMED JAWFER', '+44Â 7466Â 246705', 'aamirjawfer@gmail.com', '2356647981447', 521.86, 540, '', 0, '2024-03-02', 0, 36, 1),
(65, 1, 'VARSHIL', 'CHATRANI', '+44 7518 058068', 'varshil.chhatrani@gmail.com', '1766648005999', 1173.89, 1200, '', 0, '2024-03-04', 0, 37, 1),
(66, 1, 'MOHAMED THAHIR', 'MOHAMED', '+44 7535 248482', 'Shiraz.thahir@gmail.com', '1766648019562', 664.57, 795, '', 0, '2024-03-04', 0, 38, 1),
(67, 1, 'Tracey', 'Horrocks', '07851519339', 'horrocks23@btinternet.com', 'K6TF94R', 687.6, 849.72, '', 0, '0000-00-00', 0, 40, 3),
(68, 0, 'Kate', 'Horrocks', '07756 100382', 'Katehorrocks_x@outlook.com', '1234', 410.62, 451.64, '', 0, '0000-00-00', 0, 0, 3),
(69, 1, 'Kate', 'Horrocks', '07756 100382', 'Katehorrocks_x@outlook.com', '1234', 410.62, 451.64, '', 0, '0000-00-00', 0, 41, 3),
(70, 1, 'Kay', 'Redman', '07770679246', 'Kay_redman@hotmail.com', '1234', 740, 765.365, '', 0, '0000-00-00', 0, 42, 7),
(71, 1, 'Dharshan', 'Sivasubramaniam', '07572 614058', 'dharshvin@yahoo.co.uk', 'PA8O4U', 238.19, 260, '', 0, '2024-01-27', 0, 43, 5),
(72, 1, 'MOHAMED', 'RAMEEZ', '+44 7954 299225', 'rameez906@yahoo.co.uk', '176-6648150460', 3705.44, 4100, '', 0, '2024-03-09', 0, 44, 1),
(73, 1, 'FATHIMA SHAREEHA', 'MOHAMED RAMEEZ', '+44 7954 299225', 'rameez906@yahoo.co.uk', '1766648150460', 1024.36, 1123, '', 0, '2024-03-09', 0, 46, 1),
(74, 0, 'AYAAN', 'RAMEEZ', '', '', '1766648150461', 808.36, 907, '', 0, '2024-03-09', 0, 46, 1),
(75, 0, 'AKIL', 'RAMEEZ', '', '', '1766648150463', 936.36, 1035, '', 0, '2024-03-09', 0, 46, 1),
(76, 0, 'ANISAH', 'RAMEEZ', '', '', '1766648150462', 936.36, 1035, '', 0, '2024-03-09', 0, 46, 1),
(77, 1, 'LEELARATHNA', 'DEWUNDARAGE', '+94 77 967 7414', 'leelarathna75@hotmail.com', '1766648254812', 507.59, 530, '', 0, '2024-03-13', 0, 47, 1),
(78, 1, 'HARSHANI THILINI', 'WARNAPURA', '+447379687788', 'harshani4@hotmail.com', '2286648261676', 357.49, 377.5, '', 0, '0000-00-00', 0, 49, 1),
(79, 0, 'RAYAAN', 'MUZAMMIL', '', '', '2286648261675', 242.49, 262.5, '', 0, '2024-03-14', 0, 49, 1),
(80, 1, 'MOHAMED SAFRAZ', 'MOHAMED JABIR', '+94 77 732 0007', 'safaiyers@me.com', '1606648319113', 727, 823, '', 0, '2024-03-15', 0, 50, 1),
(81, 1, 'MOHAMED', 'MOHAMED THAHIR', '+44 7535 248482', 'Shiraz.thahir@gmail.com', '1766648254967', 110, 125, '', 0, '2024-03-15', 0, 51, 1),
(82, 1, 'REDHA ZAINUL ABDEEN', 'REFAI', '07418 057058', 'redharefai4@gmail.com', '7846648369960', 578.59, 590, '', 0, '2024-03-18', 0, 52, 1),
(83, 1, 'FATHIMA AFRITHA', 'MOHAMED RAFEEK', '+44Â 7480Â 848543', 'Salamathhotel@yahoo.com', '1576648410333', 618.89, 649.555, '', 0, '2024-03-20', 0, 53, 1),
(84, 0, 'MOHAMED KALEELLUMMA', 'MOHAMED RAFEEK', '', '', '1576648410334', 618.89, 634.2225, '', 0, '2024-03-20', 0, 53, 1),
(85, 0, 'SAFIYA', 'RAFEEK', '', '', '1576648410335', 530.89, 546.2225, '', 0, '2024-03-20', 0, 53, 1),
(86, 1, 'Laura ', 'Jenkins', '07761416046', 'laurabethjenkins121@icloud.com', '1234', 669.46, 676.96, '', 0, '0000-00-00', 0, 54, 7),
(87, 1, 'Janet', 'Ramakrishnan Fisher', '07539578295', 'mocha2128@hotmail.com', '1234', 386, 410.273, '', 0, '0000-00-00', 0, 55, 7),
(88, 1, 'Thania', 'Khan', '07504643095', 'Euromarks1@yahoo.co.uk', 'K6ZHK8F', 451.24, 453.1867, '', 0, '2024-02-27', 0, 57, 1),
(89, 1, 'MOHAMED ABDUL CADER', 'MOHAMED HIJAVI', '+44 7763 796838', 'hijavicader@gmail.com', '157-6648504677', 759.99, 800, '', 0, '2024-03-25', 0, 60, 1),
(90, 1, 'LILIIA ', 'SOKIL', '07379494839', 'lilchuk91@ukr.net', '', 92.77, 99.65, '', 0, '0000-00-00', 0, 66, 1),
(91, 0, 'OLEKSANDR', 'SOKIL', '', '', '', 92.77, 97.77, '', 0, '0000-00-00', 0, 66, 1),
(92, 0, 'VIKTORIIA', 'SOKIL', '', '', '', 79.77, 84.77, '', 0, '0000-00-00', 0, 66, 1),
(93, 0, 'OLEKSANDR', 'SOKIL', '', '', '', 79.77, 84.77, '', 0, '0000-00-00', 0, 66, 1),
(94, 1, 'Ana Quijada ', 'Benjumea', '07549919792', 'eldesvandecandela@gmail.com', 'K6WKXN9 ', 101.3, 145.635, '', 0, '2024-02-16', 0, 67, 3),
(95, 0, 'JuliÃ¡n Lorenzo ', 'DomÃ­nguez', '', '', 'K6WKXN9', 101.3, 129.635, '', 0, '2024-02-16', 0, 67, 1),
(96, 0, 'NicolÃ¡s Lorenzo ', 'Quijada', '', '', 'K6WKXN9', 88.3, 88.3, '', 0, '2024-02-16', 0, 67, 3),
(97, 0, 'Candela Herrero ', 'Quijada', '', '', 'K6WKXN9	', 101.3, 101.3, '', 0, '2024-02-16', 0, 67, 3),
(98, 1, 'RAJEEV', 'THAKUR', '00447459885619', 'Rajeev_dublin@yahoo.co.uk', '', 0, 0, '', 0, '0000-00-00', 0, 68, 1),
(99, 0, 'HANISH', 'THAKUR', '', '', '', 0, 0, '', 0, '0000-00-00', 0, 68, 1),
(100, 0, 'TANU', 'THAKUR', '', '', '', 0, 0, '', 0, '0000-00-00', 0, 68, 1),
(101, 0, 'ANGEL', 'THAKUR', '', '', '', 0, 0, '', 0, '0000-00-00', 0, 68, 1),
(102, 1, 'APRIL LOUISE', 'TIPPLE', '07789216036', 'Tipple449@btinternet.com', '', 0, 0, '', 0, '0000-00-00', 0, 69, 1),
(103, 0, 'STEWART', 'TIPPLE', '', '', '', 0, 0, '', 0, '0000-00-00', 0, 69, 1),
(104, 0, 'REBECCA ROSE', 'WESTLAKE', '', '', '', 0, 0, '', 0, '0000-00-00', 0, 69, 1),
(105, 0, 'JORDAN DANIEL', 'WESTLAKE', '', '', '', 0, 0, '', 0, '0000-00-00', 0, 69, 1),
(106, 0, 'GEORGIA ROSE ALICE', 'WESTLAKE', '', '', '', 0, 0, '', 0, '0000-00-00', 0, 69, 1),
(107, 0, 'MOLLY-MAY PATRICIA', 'WESTLAKE', '', '', '', 0, 0, '', 0, '0000-00-00', 0, 69, 1),
(108, 0, 'OLIVIA PATRICIA', 'WESTLAKE', '', '', '', 0, 0, '', 0, '0000-00-00', 0, 69, 1),
(109, 0, 'KIERAN', 'JOHNSTON-STANKIEWICZ', '', '', '', 0, 0, '', 0, '0000-00-00', 0, 69, 1),
(110, 0, 'ARABELLA MAY', 'JOHNSTON', '', '', '', 0, 0, '', 0, '0000-00-00', 0, 69, 1),
(111, 0, 'ZAK BRIAN', 'SALF', '', '', '', 0, 0, '', 0, '0000-00-00', 0, 69, 1),
(112, 0, 'CHARLIE GEORGE', 'SALF', '', '', '', 0, 0, '', 0, '0000-00-00', 0, 69, 1),
(113, 0, 'ELLIOTT STEWART ', 'SALF', '', '', '', 0, 0, '', 0, '0000-00-00', 0, 69, 1),
(114, 0, 'COURTNEY MARGARET', 'TIPPLE', '', '', '', 0, 0, '', 0, '0000-00-00', 0, 69, 1),
(115, 0, 'LEWIS DAVID ', 'SALF', '', '', '', 0, 0, '', 0, '0000-00-00', 0, 69, 1),
(116, 1, 'GEMMA', 'MOORCROFT ', '07481905827 ', 'Gemmamoorcroft121@gmail.com', 'K6ZMKWC', 74.81, 102.94, '', 0, '2024-02-28', 0, 70, 1),
(117, 0, 'ISABELLA ROSE', 'BALL', '', '', 'K6ZMKWC', 74.81, 102.94, '', 0, '2024-02-28', 0, 70, 1),
(118, 1, 'Liam Shaun ', 'Penney', '07463762833', 'li4mpenney@gmail.com', '', 108.3, 108.3, '', 0, '0000-00-00', 0, 72, 1),
(119, 0, 'Ayesha  Catherine', 'Penney', '', '', '', 108.3, 108.3, '', 0, '0000-00-00', 0, 72, 1),
(120, 0, 'Richard Mark', 'Penney', '', '', '', 105, 115, '', 0, '0000-00-00', 0, 72, 1),
(121, 0, 'Nathan Phillip', 'Varley', '', '', '', 105, 115, '', 0, '0000-00-00', 0, 72, 1),
(122, 0, 'Connor Mark', 'Varley', '', '', '', 105, 115, '', 0, '0000-00-00', 0, 72, 1),
(123, 0, 'Aubree Ann', 'Penney', '', '', '', 105, 115, '', 0, '0000-00-00', 0, 72, 1),
(124, 0, 'Abel Richard', 'Penney', '', '', '', 105, 115, '', 0, '0000-00-00', 0, 72, 1),
(125, 1, 'LOUISA JANE', 'HYNES', '07907151369', 'louisa35@mail.com', '', 112.5, 112.5, '', 0, '0000-00-00', 0, 73, 1),
(126, 0, 'AMY', 'LOUISE ', '', '', '', 112.5, 113.14, '', 0, '0000-00-00', 0, 73, 1),
(127, 1, 'SHAHNAWAZ', 'MARY INFANTA RUFINA', '+44 7799 854256', 'rufinagerald@gmail.com', '607-6648587452', 820.39, 857, '', 0, '2024-03-29', 0, 74, 1),
(129, 1, 'Francisca  ', 'De Albuquerque Da Silva Filha', '07842008958', 'Francisca677@hotmail.com', '1234', 208, 256, '', 0, '0000-00-00', 0, 75, 3),
(130, 1, 'Gerard', 'Mackay', '+447709254321', 'gerardmckay45@gmail.com', 'JW9W7A', 46.99, 78.77, '', 0, '2024-03-28', 0, 76, 1),
(132, 0, 'Shareeq', 'ahamedh', '1123123', 'ss@gmaail.com', '123123123', 1112, 1112, '', 0, '2024-04-08', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pay`
--

CREATE TABLE `tbl_pay` (
  `pay_id` int(11) NOT NULL,
  `p_t_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pay`
--

INSERT INTO `tbl_pay` (`pay_id`, `p_t_id`, `description`) VALUES
(4, 4, 'asdasd'),
(5, 5, 'asdas'),
(6, 3, 'wqwd'),
(7, 4, 'asdas');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_setup`
--

CREATE TABLE `tbl_payment_setup` (
  `ps_id` int(11) NOT NULL,
  `ps_date` date NOT NULL,
  `ps_amount` double NOT NULL,
  `ps_description` varchar(255) NOT NULL,
  `ps_status` int(1) NOT NULL,
  `b_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_payment_setup`
--

INSERT INTO `tbl_payment_setup` (`ps_id`, `ps_date`, `ps_amount`, `ps_description`, `ps_status`, `b_id`) VALUES
(1, '2024-03-18', 407, '', 0, 1),
(2, '2024-04-18', 408, '', 0, 1),
(3, '2024-03-26', 81, '', 0, 1),
(4, '2024-04-26', 81, '', 0, 1),
(5, '2024-05-26', 81, '', 0, 1),
(6, '2024-06-26', 81, '', 0, 1),
(7, '2024-07-26', 81, '', 0, 1),
(8, '2024-08-26', 81, '', 0, 1),
(9, '2024-09-26', 81, '', 0, 1),
(10, '2024-10-26', 81, '', 0, 1),
(11, '2024-11-26', 81, '', 0, 1),
(12, '2024-12-26', 86, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_type`
--

CREATE TABLE `tbl_payment_type` (
  `p_t_id` int(11) NOT NULL,
  `payment_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_payment_type`
--

INSERT INTO `tbl_payment_type` (`p_t_id`, `payment_type`) VALUES
(1, 'asd'),
(3, 'bank'),
(4, 'credit'),
(5, 'credit card'),
(6, 'aa'),
(7, 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tour`
--

CREATE TABLE `tbl_tour` (
  `tr_id` int(11) NOT NULL,
  `tr_title` varchar(255) NOT NULL,
  `tr_description` varchar(255) NOT NULL,
  `tr_duration` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tour`
--

INSERT INTO `tbl_tour` (`tr_id`, `tr_title`, `tr_description`, `tr_duration`, `image`) VALUES
(9, 'DisneyLand Paris', 'af', '2', ''),
(11, 'Flights Only', '', 'Flights Only', ''),
(12, 'Bedsonline', '', '', ''),
(14, 'Benidorm', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer`
--

CREATE TABLE `tbl_transfer` (
  `t_id` int(11) NOT NULL,
  `pick_up_point` varchar(150) NOT NULL,
  `drop_off` varchar(150) NOT NULL,
  `pick_up_date_time` datetime NOT NULL,
  `drop_off_date_time` datetime NOT NULL,
  `transfer_type` varchar(150) NOT NULL,
  `no_of_passenger` int(5) NOT NULL,
  `vehicle_type` varchar(150) NOT NULL,
  `description` varchar(255) NOT NULL,
  `buy_amount` double NOT NULL,
  `sell_amount` double NOT NULL,
  `profit` double NOT NULL,
  `date_change` date NOT NULL,
  `cancellation` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `v_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transfer`
--

INSERT INTO `tbl_transfer` (`t_id`, `pick_up_point`, `drop_off`, `pick_up_date_time`, `drop_off_date_time`, `transfer_type`, `no_of_passenger`, `vehicle_type`, `description`, `buy_amount`, `sell_amount`, `profit`, `date_change`, `cancellation`, `status`, `b_id`, `v_id`) VALUES
(1, 'Folkestone', ' CALAIS ', '2024-08-02 10:20:00', '0000-00-00 00:00:00', 'Shuttle ', 6, 'FORD S-MAX ', '', 258.99, 398.4, 56.81, '0000-00-00', 0, 0, 13, 0),
(2, 'CDG Airport', 'Campanile Val de France Ex Kyriad Disneyland 3*', '2024-05-22 10:00:00', '2024-05-24 20:00:00', 'Private standard minibus', 4, 'Minibus', '', 194.4, 356.52, 162.12, '0000-00-00', 0, 0, 40, 6),
(3, 'CDG Airport', 'Campanile Val de France Ex Kyriad Disneyland 3*', '2024-05-22 10:00:00', '2024-05-24 20:00:00', 'Private Minivan', 2, 'Minivan', 'Did not book because flights on pending\n(updated on 07th of march )', 154.78, 195.8, 41.02, '0000-00-00', 0, 0, 0, 14),
(4, 'Cdg Airport', 'Campanile Val de France Ex Kyriad Disneyland 3*', '2024-05-22 10:00:00', '2024-05-24 20:00:00', 'Private Minivan ', 2, 'Minivan', '', 157.78, 198.8, 38.02, '0000-00-00', 0, 0, 41, 0),
(5, 'CDG Airport', 'Hotel Explorers 3*', '2024-11-11 10:00:00', '2024-11-13 19:00:00', 'Private car', 1, 'Private Standard Car', '', 125.54, 150.905, 25.365, '0000-00-00', 0, 0, 42, 14),
(6, 'Paris Charles de Gaulle Airport (CDG)', 'Hotel Explorers 3*', '2024-11-11 09:00:00', '2024-11-13 19:00:00', 'Private vehicle', 3, 'Standard Car', '', 125.54, 133.04, 7.5, '0000-00-00', 0, 0, 54, 6),
(7, 'London St Pancras INT', 'Paris Gare du Nord', '2024-05-04 14:31:00', '2024-05-06 20:32:00', 'Train', 2, 'Euro Star Train', '', 343, 308.7875, -34.2125, '0000-00-00', 0, 0, 58, 17),
(8, 'London St Panras INT', 'Paris Gare du Nord', '2024-05-04 14:31:00', '2024-05-06 20:32:00', 'Train', 4, 'Train', '', 487, 488.163, 0, '0000-00-00', 0, 0, 59, 0),
(9, 'London St Pancras INT', 'Paris Gare du Nord', '2024-05-04 02:00:00', '2024-05-06 12:00:00', 'Train ', 4, 'Euro Star Rail', '', 487, 488.163, 1.163, '0000-00-00', 0, 0, 61, 17),
(10, 'London St Pancras INT', 'Paris Gare du Nord', '2024-05-04 14:31:00', '2024-05-06 20:32:00', 'Train', 3, 'Euro Star Rail', '', 542, 509.157, -32.843, '0000-00-00', 0, 0, 62, 17),
(11, ' London St Pancras INT  ', ' Paris Gare du Nord', '2024-05-04 14:31:00', '2024-05-06 20:32:00', 'Train', 3, 'Euro Star Train', '', 487, 469.83, -17.17, '0000-00-00', 0, 0, 63, 6),
(12, 'London St Pancras INT  ', 'Paris Gare du Nord', '2024-05-04 02:00:00', '2024-05-06 12:00:00', 'Train', 4, 'Euro Star ', '', 631, 631.75, 0.75, '0000-00-00', 0, 0, 64, 17),
(13, 'London St Pancras INT  ', 'Paris Gare du Nord', '2024-05-04 14:31:00', '2024-05-06 20:32:00', 'Train', 3, 'Euro Star Train', '', 542, 574.843, 32.843, '0000-00-00', 0, 0, 65, 6),
(14, 'CDG Airport ', 'B&B HOTEL prÃ¨s de DisneylandÂ® Paris', '2024-07-14 14:35:00', '2024-07-18 14:36:00', 'return', 4, 'Private car transfer ', '', 143.88, 159.88, -143.88, '0000-00-00', 0, 0, 68, 0),
(15, 'cdg', 'Campanile Val de France Ex Kyriad Disneyland', '2024-09-23 15:29:00', '2024-03-26 15:29:00', 'return', 14, 'private transfer 16 pax', '', 338.57, 608.57, 270, '0000-00-00', 0, 0, 69, 14),
(16, 'CDG Paris Charles de Gaulle', 'Explorers Hotel Disneyland Paris', '2025-03-03 13:12:00', '2025-03-07 13:12:00', 'return transfer', 7, 'Minibus', '', 173.03, 283.03, 0, '0000-00-00', 0, 0, 72, 0),
(17, 'Airport', 'Hotel', '2024-04-06 01:40:00', '2024-04-11 02:40:00', 'Shuttle ', 1, 'Bus', 'G2430459', 16.23, 46.23, 30, '0000-00-00', 0, 0, 76, 18);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer_cancellation_cost`
--

CREATE TABLE `tbl_transfer_cancellation_cost` (
  `t_c_c_id` int(11) NOT NULL,
  `buy_amount` double NOT NULL,
  `sell_amount` double NOT NULL,
  `profit` double NOT NULL,
  `t_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer_date_change_cost`
--

CREATE TABLE `tbl_transfer_date_change_cost` (
  `t_d_c_id` int(11) NOT NULL,
  `buy_amount` double NOT NULL,
  `sell_amount` double NOT NULL,
  `profit` double NOT NULL,
  `t_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_pass` varchar(255) NOT NULL,
  `u_acc_level` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`u_id`, `u_name`, `u_pass`, `u_acc_level`) VALUES
(1, 'admin', 'ff@23421', 1),
(5, 'matthew_ff001', '123', 4),
(6, 'bruce_ff002', '123', 1),
(7, 'Iyan_ff003', '123', 4),
(8, 'Zac_ff004', '123', 4),
(9, 'Barry_ff005', '123', 3),
(10, 'it', '123', 1),
(11, 'edward_ff006', '123', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor_det`
--

CREATE TABLE `tbl_vendor_det` (
  `v_id` int(11) NOT NULL,
  `v_name` varchar(255) NOT NULL,
  `v_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_vendor_det`
--

INSERT INTO `tbl_vendor_det` (`v_id`, `v_name`, `v_desc`) VALUES
(6, 'Bedsonline', ''),
(7, 'RateHAWK', ''),
(8, 'TBO', ''),
(9, '6Tour', ''),
(10, 'Travellander ', ''),
(11, 'Restal', ''),
(12, 'Stuba', ''),
(13, 'Get your guide ', ''),
(14, 'Airport Taxis', ''),
(15, 'Euro Tunnel', ''),
(16, 'Viator', ''),
(17, 'Euro Star', ''),
(18, 'Hoppa', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor_flights`
--

CREATE TABLE `tbl_vendor_flights` (
  `f_id` int(11) NOT NULL,
  `f_v_name` varchar(255) NOT NULL,
  `f_v_overview` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_vendor_flights`
--

INSERT INTO `tbl_vendor_flights` (`f_id`, `f_v_name`, `f_v_overview`) VALUES
(1, 'Brightsun', ''),
(2, 'Aviate', ''),
(4, 'BSP', ''),
(5, 'Swiss Air', ''),
(7, 'Air France', ''),
(8, 'Emirates', ''),
(9, 'EasyJet', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor_leads`
--

CREATE TABLE `tbl_vendor_leads` (
  `l_p_id` int(11) NOT NULL,
  `l_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_vendor_leads`
--

INSERT INTO `tbl_vendor_leads` (`l_p_id`, `l_name`) VALUES
(1, 'Meta Paid Add'),
(2, 'Referred '),
(3, 'Google Call'),
(4, 'Call In'),
(5, 'Existing Client ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `tbl_customer_info`
--
ALTER TABLE `tbl_customer_info`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_flights_itenery`
--
ALTER TABLE `tbl_flights_itenery`
  ADD PRIMARY KEY (`f_i_id`);

--
-- Indexes for table `tbl_flight_cancellation_cost`
--
ALTER TABLE `tbl_flight_cancellation_cost`
  ADD PRIMARY KEY (`f_c_c_id`);

--
-- Indexes for table `tbl_flight_date_change_cost`
--
ALTER TABLE `tbl_flight_date_change_cost`
  ADD PRIMARY KEY (`f_d_c_id`);

--
-- Indexes for table `tbl_hotel_date_cancellation_cost`
--
ALTER TABLE `tbl_hotel_date_cancellation_cost`
  ADD PRIMARY KEY (`d_c_c_id`);

--
-- Indexes for table `tbl_hotel_date_change_cost`
--
ALTER TABLE `tbl_hotel_date_change_cost`
  ADD PRIMARY KEY (`d_c_c_id`);

--
-- Indexes for table `tbl_hote_det`
--
ALTER TABLE `tbl_hote_det`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `tbl_other_charges`
--
ALTER TABLE `tbl_other_charges`
  ADD PRIMARY KEY (`o_c_id`);

--
-- Indexes for table `tbl_partial_refunded`
--
ALTER TABLE `tbl_partial_refunded`
  ADD PRIMARY KEY (`p_r_id`);

--
-- Indexes for table `tbl_passenger_flight_bookings`
--
ALTER TABLE `tbl_passenger_flight_bookings`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_pay`
--
ALTER TABLE `tbl_pay`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `tbl_payment_setup`
--
ALTER TABLE `tbl_payment_setup`
  ADD PRIMARY KEY (`ps_id`);

--
-- Indexes for table `tbl_payment_type`
--
ALTER TABLE `tbl_payment_type`
  ADD PRIMARY KEY (`p_t_id`);

--
-- Indexes for table `tbl_tour`
--
ALTER TABLE `tbl_tour`
  ADD PRIMARY KEY (`tr_id`);

--
-- Indexes for table `tbl_transfer`
--
ALTER TABLE `tbl_transfer`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `tbl_transfer_cancellation_cost`
--
ALTER TABLE `tbl_transfer_cancellation_cost`
  ADD PRIMARY KEY (`t_c_c_id`);

--
-- Indexes for table `tbl_transfer_date_change_cost`
--
ALTER TABLE `tbl_transfer_date_change_cost`
  ADD PRIMARY KEY (`t_d_c_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `tbl_vendor_det`
--
ALTER TABLE `tbl_vendor_det`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `tbl_vendor_flights`
--
ALTER TABLE `tbl_vendor_flights`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `tbl_vendor_leads`
--
ALTER TABLE `tbl_vendor_leads`
  ADD PRIMARY KEY (`l_p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `tbl_customer_info`
--
ALTER TABLE `tbl_customer_info`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tbl_flights_itenery`
--
ALTER TABLE `tbl_flights_itenery`
  MODIFY `f_i_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `tbl_flight_cancellation_cost`
--
ALTER TABLE `tbl_flight_cancellation_cost`
  MODIFY `f_c_c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hote_det`
--
ALTER TABLE `tbl_hote_det`
  MODIFY `h_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_other_charges`
--
ALTER TABLE `tbl_other_charges`
  MODIFY `o_c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_passenger_flight_bookings`
--
ALTER TABLE `tbl_passenger_flight_bookings`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `tbl_pay`
--
ALTER TABLE `tbl_pay`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_payment_setup`
--
ALTER TABLE `tbl_payment_setup`
  MODIFY `ps_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_payment_type`
--
ALTER TABLE `tbl_payment_type`
  MODIFY `p_t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_tour`
--
ALTER TABLE `tbl_tour`
  MODIFY `tr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_transfer`
--
ALTER TABLE `tbl_transfer`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_vendor_det`
--
ALTER TABLE `tbl_vendor_det`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_vendor_flights`
--
ALTER TABLE `tbl_vendor_flights`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_vendor_leads`
--
ALTER TABLE `tbl_vendor_leads`
  MODIFY `l_p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
