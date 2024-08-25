-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 11:51 AM
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
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Name`, `EmailId`, `MobileNumber`, `Password`, `updationDate`) VALUES
(1, 'admin', 'Administrator', 'test@gmail.com', 7894561239, 'f925916e2754e5e03f75dd58a5733251', '2024-01-10 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this package.', '2024-01-16 06:38:36', 2, 'u', '2024-01-30 05:18:29'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2024-01-17 06:43:25', 1, NULL, '2024-01-31 01:21:17'),
(3, 4, 'abir@gmail.com', '2020-07-11', '2020-07-15', 'When I get conformation', '2024-01-17 06:44:39', 2, 'a', '2024-01-30 05:18:52'),
(4, 2, 'test@gmail.com', '2024-02-02', '2024-02-08', 'NA', '2024-01-31 02:03:27', 1, NULL, '2024-01-31 06:35:08'),
(5, 3, 'test@gmail.com', '2024-01-31', '2024-02-05', 'please offer some discount', '2024-01-31 05:21:52', 0, NULL, NULL),
(6, 2, 'garima12@gmail.com', '2024-03-01', '2024-03-05', 'NA', '2024-02-03 13:04:33', 1, NULL, '2024-02-03 13:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2024-01-18 06:31:38', 1),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2024-01-19 06:32:41', 1),
(5, 'hohn Doe', 'John12@gmail.com', '142536254', 'Test Subject', 'this is for testing', '2024-02-03 13:07:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblhotel`
--

CREATE TABLE `tblhotel` (
  `hid` varchar(100) NOT NULL,
  `hname` varchar(100) NOT NULL,
  `hlocation` varchar(100) NOT NULL,
  `hprice` varchar(100) NOT NULL,
  `himage` varchar(100) NOT NULL,
  `hdescription` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblhotel`
--

INSERT INTO `tblhotel` (`hid`, `hname`, `hlocation`, `hprice`, `himage`, `hdescription`) VALUES
('01', 'zam zam', 'abc', '99', 'h1.jpeg', 'most loved place'),
('02', 'Junction Hotel', 'kahatapitiya,Gampola', '50', 'h2.jpeg', 'nice'),
('03', 'Cinamon Grand Colombo', '77 Galle Road, Colombo 00300 Sri Lanka', '145', 'h03.jpg', 'a'),
('04', 'Residence by Uga Escapes', 'Park Street, Colombo ', '103', 'h04.jpg', 'https://www.tripadvisor.com/Hotel_Review-g293962-d7728518-Reviews-Residence_by_Uga_Escapes-Colombo_Western_Province.html'),
('05', 'Marino Beach Colombo', 'Marine Drive,Colombo ', '82', 'h05.jpg', 'https://www.tripadvisor.com/Hotel_Review-g293962-d14106301-Reviews-Marino_Beach_Colombo-Colombo_Western_Province.html'),
('06', 'Taj Samudra, Colombo', 'Galle Face Center Road, Colombo', '109', 'h06.jpg', 'https://www.tripadvisor.com/Hotel_Review-g293962-d304700-Reviews-Taj_Samudra_Colombo-Colombo_Western_Province.html'),
('07', 'The Kingsbury Hotel', 'Janadhipathi Mawatha, Colombo 1', '110', 'h07.jpg', 'https://www.tripadvisor.com/Hotel_Review-g293962-d3801214-Reviews-The_Kingsbury_Hotel-Colombo_Western_Province.html'),
('08', 'Granbell Hotel Colombo', 'Kollupitiya Road,Colombo', '54', 'h08.jpg', 'https://www.tripadvisor.com/Hotel_Review-g293962-d23958991-Reviews-Granbell_Hotel_Colombo-Colombo_Western_Province.html#/media/23958991/589114285:p/?albumid=101&type=0&category=101'),
('09', 'Mandarina Colombo', 'Galle Road,Colombo 03 ', '54', 'h09.jpg', 'https://www.tripadvisor.com/Hotel_Review-g293962-d12002902-Reviews-Mandarina_Colombo-Colombo_Western_Province.html');

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2024-01-25 06:56:29', NULL, '2024-01-30 05:20:14'),
(10, 'test@gmail.com', 'Other', 'Test Sample', '2024-01-31 05:24:40', NULL, NULL),
(13, 'garima12@gmail.com', 'Booking Issues', 'I want some information ragrding booking', '2024-02-03 13:06:00', 'Infromation provided', '2024-02-03 13:06:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																				<p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: small; font-weight: 700;\">terms and condition page</span></p>\r\n										\r\n										'),
(2, 'privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>\r\n										'),
(3, 'aboutus', '										<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to Tourism Management System!!!</span></div><span style=\"font-family: &quot;courier new&quot;;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify;\">Since then, our courteous and committed team members have always ensured a pleasant and enjoyable tour for the clients. This arduous effort has enabled TMS to be recognized as a dependable Travel Solutions provider with three offices Delhi.</span><span style=\"color: rgb(80, 80, 80); font-size: 13px;\">&nbsp;We have got packages to suit the discerning traveler\'s budget and savor. Book your dream vacation online. Supported quality and proposals of our travel consultants, we have a tendency to welcome you to decide on from holidays packages and customize them according to your plan.</span></span>\r\n										'),
(11, 'contact', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------J-890 Dwarka House New Delhi-110096</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltour`
--

CREATE TABLE `tbltour` (
  `tid` varchar(100) NOT NULL,
  `tname` varchar(100) NOT NULL,
  `tprice` varchar(100) NOT NULL,
  `tlocation` varchar(100) NOT NULL,
  `timage` varchar(100) NOT NULL,
  `trating` varchar(100) NOT NULL,
  `tdescription` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltour`
--

INSERT INTO `tbltour` (`tid`, `tname`, `tprice`, `tlocation`, `timage`, `trating`, `tdescription`) VALUES
('t01', 'Yala National Park -Full day Safari', '98', 'Tissamaharama,Southernprovince', 't01.jpg', '3.8', 'Ages 5-75, max of 4 per group\r\nDuration: 12h\r\nStart time: Check availability\r\nMobile ticket\r\nMeets a'),
('t02', 'Udawalawe National Park-Private Safari Tour', '27', 'Udawalawa,Sabaragamuwa Province', 't02.jpg', '2.3', 'Ages 0-99\r\nDuration: 4h\r\nStart time: Check availability\r\nMobile ticket\r\nMeets animal welfare guideli'),
('t03', 'Wilpattu National Park', '152', 'Negombo,Western Province', 't03.jpg', '2.5', 'Ages 0-99\r\nDuration: 10–16 hours\r\nStart time: Check availability\r\nMobile ticket\r\nMeets animal welfar'),
('t04', 'Colombo City Tour by Tuk Tuk-Private', '32', 'Colombo,Western Province', 't04.jpg', '3.7', 'Ages 6-75\r\nDuration: 4h\r\nStart time: Check availability\r\nMobile ticket\r\nLive guide: German, English,'),
('t05', 'Sea Turtle & Stilt Fishermen', '110', 'bentota,Southern Province', 't05.jpg', '1.4', 'Ages 1-99\r\nDuration: 8–10 hours\r\nStart time: Check availability\r\nMobile ticket\r\nLive guide: English'),
('t06', 'Kandy City Tour in a TukTuk', '10', 'Kandy,Central Province', 't06.jpg', '2.4', 'Ages 0-120\r\nDuration: 10h\r\nStart time: Check availability\r\nMobile ticket\r\nLive guide: English'),
('t07', 'Whale Watching Mirissa', '65', 'Mirissa,southern Province', 't07.jpg', '3.4', 'Ages 5-80, max of 45 per group\r\nDuration: 5h\r\nStart time: Check availability\r\nMobile ticket\r\nMeets a'),
('t08', 'Southern Sri Lanka Sightseeing', '80', 'Colombo,Western Province', 't08.jpg', '1.8', 'Ages 0-100\r\nDuration: 8–10 hours\r\nStart time: Check availability\r\nMobile ticket\r\nLive guide: English');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Swiss Paris Delight Premium 2020 (Group Package)', 'Group Package', 'Paris and Switzerland', 6000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport taxes - Accommodation for 3 nights in Paris and 3 nights in scenic Switzerland - Enjoy continental breakfasts every morning - Enjoy 5 Indian dinners in Mainland Europe - Exp', 'Pick this holiday for a relaxing vacation in Paris and Switzerland. Your tour embarks from Paris. Enjoy an excursion to popular attractions like the iconic Eiffel Tower. After experiencing the beautiful city, you will drive past mustard fields through Burgundy to reach Switzerland. While there, you can opt for a tour to Interlaken and then to the Trummelbach Falls. Photostop at Zurich Lake and a cable car ride to Mt. Titlis are the main highlights of the holiday.', '1581490262_2_1.jpg', '2024-07-15 05:21:58', '2024-01-30 05:20:49'),
(2, 'Bhutan Holidays - Thimphu and Paro Special', 'Family Package', 'Bhutan', 3000, 'Free Wi-fi, Free Breakfast, Free Pickup and drop facility ', 'Visit to Tiger\'s Nest Monastery | Complimentary services of a Professional Guide', 'BHUTAN-THIMPU-PARO-PUNAKHA-TOUR-6N-7D.jpeg', '2024-07-15 05:21:58', '2024-01-30 05:20:56'),
(3, 'Soulmate Special Bali - 7 Nights', 'Couple Package', 'Indonesia(Bali)', 5000, 'Free Pickup and drop facility, Free Wi-fi , Free professional guide', 'Airport transfers by private car | Popular Sightseeing included | Suitable for Couple and budget travelers', '1583140977_5_11.jpg', '2024-07-15 05:21:58', '2024-01-30 05:20:56'),
(4, 'Kerala - A Lovers Paradise - Value Added', 'Family Package', 'Kerala', 1000, 'Free Wi-fi, Free pick up and drop facility,', 'Visit Matupetty Dam, tea plantation and a spice garden | View sunset in Kanyakumari | AC Car at disposal for 2hrs extra (once per city)', 'images (2).jpg', '2024-07-15 05:21:58', '2024-01-30 05:20:56'),
(5, 'Short Trip To Dubai', 'Family', 'Dubai', 4500, 'Free pick up and drop facility, Free Wi-fi, Free breakfast', 'A Holiday Package for the entire family.', 'unnamed.jpg', '2024-07-15 05:21:58', '2024-01-30 05:20:56'),
(6, 'Sikkim Delight with Darjeeling (customizable)', 'Group', 'Sikkim', 3500, 'Free Breakfast, Free Pick up drop facility', 'Changu Lake and New Baba Mandir excursion | View the sunrise from Tiger Hill | Get Blessed at the famous Rumtek Monastery', 'download (2).jpg', '2024-07-15 05:21:58', '2024-01-30 05:20:56'),
(7, '6 Days in Guwahati and Shillong With Cherrapunji Excursion', 'Family Package', 'Guwahati(Sikkim)', 4500, 'Breakfast,  Accommodation » Pick-up » Drop » Sightseeing', 'After arrival at Guwahati airport meet our representative & proceed for Shillong. Shillong is the capital and hill station of Meghalaya, also known as Abode of Cloud, one of the smallest states in India. En route visit Barapani lake. By afternoon reach at Shillong. Check in to the hotel. Evening is leisure. Spent time as you want. Visit Police bazar. Overnight stay at Shillong.', '95995.jpg', '2024-07-15 05:21:58', '2024-01-30 05:20:56'),
(8, 'Grand Week in North East - Lachung, Lachen and Gangtok', 'Domestic Packages', 'Sikkim', 4500, 'Free Breakfast, Free Wi-fi', 'Changu Lakeand New Baba Mandir excursion | Yumthang Valley tour | Gurudongmar Lake excursion | Night stay in Lachen', 'download (3).jpg', '2024-07-15 05:21:58', '2024-01-30 05:20:56'),
(9, 'Gangtok & Darjeeling Holiday (Without Flights)', 'Family Package', 'Sikkim', 1000, 'Free Wi-fi, Free pickup and drop facility', 'Ideal tour for Family | Sightseeing in Gangtok and Darjeeling | Full day excursion to idyllic Changu Lake | Visit to Ghoom Monastery', '1540382781_shutterstock_661867435.jpg.jpg', '2024-07-15 05:21:58', '2024-01-30 05:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Manju Srivatav', '4456464654', 'manju@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:40'),
(2, 'Kishan', '9871987979', 'kishan@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(3, 'Salvi Chandra', '1398756416', 'salvi@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(4, 'Abir', '4789756456', 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(5, 'Test', '1987894654', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(9, 'Test Sample', '4654654564', 'testsample@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-31 06:32:51', NULL),
(10, 'Garima Singh', '1425362540', 'garima12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-02-03 13:03:43', '2024-02-03 13:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus`
--

CREATE TABLE `tbl_bus` (
  `bid` varchar(100) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `bfrom` varchar(100) NOT NULL,
  `bto` varchar(100) NOT NULL,
  `bprice` varchar(100) NOT NULL,
  `bimage` varchar(100) NOT NULL,
  `bduration` int(6) NOT NULL,
  `barrival` int(6) NOT NULL,
  `bdeparture` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bus`
--

INSERT INTO `tbl_bus` (`bid`, `bname`, `bfrom`, `bto`, `bprice`, `bimage`, `bduration`, `barrival`, `bdeparture`) VALUES
('b01', 'CTB', 'Gampola', 'Kandy', '50', 'b01.jpg', 30210, 2147483647, 130210),
('b02', 'CTB', 'Colombo', 'Gampola', '450', 'b02.jpg', 0, 2147483647, 43327),
('b03', 'Luxury', 'Jaffna', 'Colombo', '1020', 'b03.jpg', 2, 11, 5),
('b04', 'Semi Luxury', 'Galle', 'Vavuniya', '1420', 'b04.jpg', 12, 8, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tourpackage`
--

CREATE TABLE `tbl_tourpackage` (
  `packid` varchar(100) NOT NULL,
  `packname` varchar(100) NOT NULL,
  `packtype` varchar(100) NOT NULL,
  `packlocation` varchar(100) NOT NULL,
  `packprice` varchar(100) NOT NULL,
  `packimage` varchar(100) NOT NULL,
  `packimg1` varchar(100) NOT NULL,
  `packimg2` varchar(100) NOT NULL,
  `packimg3` varchar(100) NOT NULL,
  `packimg4` varchar(100) NOT NULL,
  `packimg5` varchar(100) NOT NULL,
  `packdetails` varchar(2500) NOT NULL,
  `packfeatures` varchar(2500) NOT NULL,
  `packduration` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tourpackage`
--

INSERT INTO `tbl_tourpackage` (`packid`, `packname`, `packtype`, `packlocation`, `packprice`, `packimage`, `packimg1`, `packimg2`, `packimg3`, `packimg4`, `packimg5`, `packdetails`, `packfeatures`, `packduration`) VALUES
('p01', 'Dreams And Thrills', 'Standard', 'Elle', '400', 'p01.jpg', 'p11.jpg', 'p12.jpg', 'p13.jpg', 'p14.jpg', 'p15.jpg', 'Nice Trip\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp', 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod.\r\n\r\nBuffet breakfast as per the Itinerary\r\nVisit eight villages showcasing Polynesian culture\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp\r\nAll toll tax, parking, fuel, and driver allowances\r\nComfortable and hygienic vehicle (SUV/Sedan) for sightseeing on all days as per the itinerary.', '15'),
('p02', 'Memorable Ceylon', 'Standard Package', 'Wilapaththuwa', '600', 'p02.jpg', 'p21.jpg', 'p22.jpg', 'p23.jpg', 'p24.jpg', 'p25.jpg', 'Nice Trip\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp', 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod.\r\n\r\nBuffet breakfast as per the Itinerary\r\nVisit eight villages showcasing Polynesian culture\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp\r\nAll toll tax, parking, fuel, and driver allowances\r\nComfortable and hygienic vehicle (SUV/Sedan) for sightseeing on all days as per the itinerary.', '10'),
('p03', 'The Best Of Geoffrey Bawa', 'Standard ', 'Tangalle', '350', 'p03.jpg', 'p31.jpg', 'p32.jpg', 'p33.jpg', 'p34.jpg', 'p35.jpg', 'Nice Trip\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp', 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod.\r\n\r\nBuffet breakfast as per the Itinerary\r\nVisit eight villages showcasing Polynesian culture\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp\r\nAll toll tax, parking, fuel, and driver allowances\r\nComfortable and hygienic vehicle (SUV/Sedan) for sightseeing on all days as per the itinerary.', '10'),
('p04', 'Into The Wild', 'Standard', 'Wilpattu', '620', 'p04.jpg', 'p41.jpg', 'p42.jpg', 'p43.jpg', 'p44.jpg', 'p45.jpg', 'Nice Trip\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp', 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod.\r\n\r\nBuffet breakfast as per the Itinerary\r\nVisit eight villages showcasing Polynesian culture\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp\r\nAll toll tax, parking, fuel, and driver allowances\r\nComfortable and hygienic vehicle (SUV/Sedan) for sightseeing on all days as per the itinerary.', '8'),
('p05', '11 Days Of Happiness', 'Standard', 'Pinnawala', '200', 'p05.jpg', 'p51.jpg', 'p52.jpg', 'p53.jpg', 'p54.jpg', 'p55.jpg', 'Nice Trip\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp', 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod.\r\n\r\nBuffet breakfast as per the Itinerary\r\nVisit eight villages showcasing Polynesian culture\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp\r\nAll toll tax, parking, fuel, and driver allowances\r\nComfortable and hygienic vehicle (SUV/Sedan) for sightseeing on all days as per the itinerary.', '18'),
('p06', 'A Short Stop In Paradise', 'Standard', 'Nuwaraeliya', '460', 'p06.jpg', 'p61.jpg', 'p62.jpg', 'p63.jpg', 'p64.jpg', 'p65.jpg', 'Nice Trip\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp', 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod.\r\n\r\nBuffet breakfast as per the Itinerary\r\nVisit eight villages showcasing Polynesian culture\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp\r\nAll toll tax, parking, fuel, and driver allowances\r\nComfortable and hygienic vehicle (SUV/Sedan) for sightseeing on all days as per the itinerary.', '14'),
('p07', 'The Ramayana Path', 'Standard', 'Ramayana', '800', 'p07.jpg', 'p71.jpg', 'p72.jpg', 'p73.jpg', 'p74.jpg', 'p75.jpg', 'Nice Trip\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp', 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod.\r\n\r\nBuffet breakfast as per the Itinerary\r\nVisit eight villages showcasing Polynesian culture\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp\r\nAll toll tax, parking, fuel, and driver allowances\r\nComfortable and hygienic vehicle (SUV/Sedan) for sightseeing on all days as per the itinerary.', '12'),
('p08', 'Fall In Love With Paradise', 'Standard', 'Kandy', '200', 'p08.jpg', 'p81.jpg', 'p82.jpg', 'p83.jpg', 'p84.jpg', 'p85.jpg', 'Nice Trip\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp', 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod.\r\n\r\nBuffet breakfast as per the Itinerary\r\nVisit eight villages showcasing Polynesian culture\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp\r\nAll toll tax, parking, fuel, and driver allowances\r\nComfortable and hygienic vehicle (SUV/Sedan) for sightseeing on all days as per the itinerary.', '7'),
('p09', 'Paradise On The Rail', 'Standard', 'Kandy', '900', 'p09.jpg', 'p91.jpg', 'p92.jpg', 'p93.jpg', 'p94.jpg', 'p95.jpg', 'Nice Trip\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp', 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod.\r\n\r\nBuffet breakfast as per the Itinerary\r\nVisit eight villages showcasing Polynesian culture\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp\r\nAll toll tax, parking, fuel, and driver allowances\r\nComfortable and hygienic vehicle (SUV/Sedan) for sightseeing on all days as per the itinerary.', '9'),
('p10', 'The Golf Tour Delight', 'Standard', '', '500', 'p10.jpg', 'p101.jpg', 'p102.jpg', 'p103.jpg', 'p104.jpg', 'p105.jpg', 'Nice Trip\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp', 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod.\r\n\r\nBuffet breakfast as per the Itinerary\r\nVisit eight villages showcasing Polynesian culture\r\nComplimentary Camel safari, Bonfire, and Cultural Dance at Camp\r\nAll toll tax, parking, fuel, and driver allowances\r\nComfortable and hygienic vehicle (SUV/Sedan) for sightseeing on all days as per the itinerary.', '8');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_train`
--

CREATE TABLE `tbl_train` (
  `trid` varchar(100) NOT NULL,
  `trname` varchar(100) NOT NULL,
  `trimage` varchar(100) NOT NULL,
  `trfrom` varchar(100) NOT NULL,
  `trto` varchar(100) NOT NULL,
  `trprice` varchar(100) NOT NULL,
  `trduration` int(6) NOT NULL,
  `trarrival` int(6) NOT NULL,
  `trdeoarture` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_train`
--

INSERT INTO `tbl_train` (`trid`, `trname`, `trimage`, `trfrom`, `trto`, `trprice`, `trduration`, `trarrival`, `trdeoarture`) VALUES
('tr01', 'Dunhinda Odssey', 'tr01.jpg', 'Colombo Fort', 'Badulla', '400', 7, 9, 6),
('tr02', 'Podi Menike', 'tr02.jpg', 'Colombo Fort', 'Badulla', '2000', 12, 6, 18),
('tr03', 'Intercity Express', 'tr03.jpg', 'Colombo Fort', 'Kandy', '1500', 3, 7, 9),
('tr04', 'Udarata Menike', 'tr04.jpg', 'Colombo Fort', 'Badulla', '2000', 12, 8, 18),
('tr05', 'Intercity Express', 'tr05.jpg', 'Colombo Fort', 'Kandy', '1500', 2, 10, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhotel`
--
ALTER TABLE `tblhotel`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltour`
--
ALTER TABLE `tbltour`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- Indexes for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `tbl_tourpackage`
--
ALTER TABLE `tbl_tourpackage`
  ADD PRIMARY KEY (`packid`);

--
-- Indexes for table `tbl_train`
--
ALTER TABLE `tbl_train`
  ADD PRIMARY KEY (`trid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
