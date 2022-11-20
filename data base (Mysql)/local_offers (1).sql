-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2021 at 01:58 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `local_offers`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Signup_ID` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Mobile_Number` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Signup_ID`, `FirstName`, `Last_Name`, `DOB`, `Mobile_Number`, `Email`, `Password`) VALUES
(1, 'Pasindu', 'Nishshanka', '2000-02-25', 771234568, 'pasindunishanka@gmail.com', 'pasi1234'),
(2, 'sajindu', 'shamalka', '2000-11-18', 717767117, 'sajindushamalka@gmail.com', 'saji1234'),
(3, 'sachitha', 'abekoon', '2000-05-05', 781145997, 'sachithaabekoon@gmail.com', 'sachi1234'),
(4, 'Kavindu', 'jayasinha', '2001-02-07', 781145999, 'kavindujayasingha@gmail.com', 'kavi4321'),
(23, 'asanka', 'nilman', '2007-06-05', 716655887, 'asanka@gmail.com', 'asanka1234'),
(24, 'gawesh', 'buwaneka', '2000-06-06', 717767118, 'gawesh@gmail.com', 'gawesh1234'),
(25, 'Sarath', 'Rohana', '1999-04-20', 759124951, 'rohana123@gmail.com', 'rohana1234'),
(26, '', '', '0000-00-00', 0, '', ''),
(27, '', '', '0000-00-00', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `Admin_ID` int(11) NOT NULL,
  `User_Name` varchar(20) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `User_Position` varchar(50) NOT NULL,
  `Age` int(11) NOT NULL,
  `DOB` date NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Mobile_Number` int(11) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `Income` int(11) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`Admin_ID`, `User_Name`, `User_ID`, `User_Position`, `Age`, `DOB`, `Email`, `Mobile_Number`, `NIC`, `Income`, `Password`) VALUES
(1, 'Saman Sliva', 112, 'Manager', 35, '2000-11-18', 'saman@gmai.com', 717767115, '200032366967', 50000, 'Saman1234'),
(2, 'Hiruni perera', 113, 'Secretary', 28, '1997-07-15', 'hiruni@gmail.com', 718867117, '200035311967', 40000, 'hiruni1234');

-- --------------------------------------------------------

--
-- Table structure for table `foreginnormal`
--

CREATE TABLE `foreginnormal` (
  `Tour_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Descriptiom` varchar(200) NOT NULL,
  `Price` float NOT NULL,
  `Tour_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foreginnormal`
--

INSERT INTO `foreginnormal` (`Tour_id`, `Name`, `Descriptiom`, `Price`, `Tour_code`) VALUES
(1, '8 Day Tour - Cultural Triangle & Hill Country - Foreign New Normal', 'This 8 day tour covers the cutural triangle & hill country of Sri Lanka combined with a wild life safari in Kaudulla National Park. This a private guided tour and your accommodation will be in comfort', 55000, 666),
(3, '8 Day Tour - Hill Country & Wildlife -Foreign New Normal', 'This tour covers the Hill Country of Sri Lanka including visits to Kandy Temple of The Tooth, Peradeniya Botanical Gardens. Also the tea country landscape in Nuwara Eliya and a wild life safari in Yal', 35000, 321),
(5, '10 Day Tour - Sri Lanka Culture, History, Tea Country & Wild Life - Foreign New Normal', 'This tour covers the cultural triangle of Sri Lanka including visits to Sigiriya Rock Fotress, Polonnaruwa Ruin City, Kandy Temple of The Tooth. Also the tea country landscape in Nuwara Eliya and two ', 60000, 896);

-- --------------------------------------------------------

--
-- Table structure for table `foreigfamily`
--

CREATE TABLE `foreigfamily` (
  `Tour_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Descriptiom` varchar(200) NOT NULL,
  `Price` float NOT NULL,
  `Tour_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foreigfamily`
--

INSERT INTO `foreigfamily` (`Tour_id`, `Name`, `Descriptiom`, `Price`, `Tour_code`) VALUES
(1, 'LUXURY IN PARADISE FOREIGN FAMILY TOUR ', 'This tour has been specifically designed for those who want to experience paradise in luxury. Stay at high-end properties as you enjoy the sights and sounds of this tropical island.', 35000, 997),
(2, 'SUBTLE LUXURY FOREIGN TOUR', 'Spend moments in luxury where ancient kings ruled, where you will find lush tea plantations and where many a wild animal calls home. Enjoy your stay in some of the most luxurious villas in the country', 23000, 123),
(4, 'HEAL WITH AYURVEDA  FOREIGN TOUR', 'There is absolutely no other way than Ayurveda which not only heals your mind but your body too. In this tour, you will get a chance to experience authentic Ayurveda amidst the scenic beauty of the so', 75000, 748);

-- --------------------------------------------------------

--
-- Table structure for table `foreignguides`
--

CREATE TABLE `foreignguides` (
  `Guider_id` int(11) NOT NULL,
  `Guider_name` varchar(100) NOT NULL,
  `Hire_price` float NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foreignguides`
--

INSERT INTO `foreignguides` (`Guider_id`, `Guider_name`, `Hire_price`, `age`) VALUES
(1, 'Janaka Hewawasam', 25000, 44),
(2, 'ansap nazeer', 22700, 39),
(3, 'Nishantha', 18000, 35);

-- --------------------------------------------------------

--
-- Table structure for table `foreignoffers`
--

CREATE TABLE `foreignoffers` (
  `Tour_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Descriptiom` varchar(200) NOT NULL,
  `Price` float NOT NULL,
  `Tour_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foreignoffers`
--

INSERT INTO `foreignoffers` (`Tour_id`, `Name`, `Descriptiom`, `Price`, `Tour_code`) VALUES
(1, 'ROMANTIC SRI LANKAN HIDEAWAY FOREIGN OFFERS', 'This romantic escape is an adventure that is waiting to be shared with that special someone.\r\n\r\nHighlights\r\nExplore 04 cities and gain an insight into life in the coast and in the hills\r\nLet the breat', 75000, 321),
(4, 'HONEYMOON BLISS TOUR FOREIGN OFFERS', 'This tour yields a leisurely experience of all that?s best in Sri Lanka with two-night stays in five of the island?s best boutique hotels where you and your new spouse will be treated with warm Sri La', 45000, 457),
(5, 'Taste of History foreign offers', 'Moderately fast paced short tour ideal for those visiting Sri Lanka for a short stay but would like to get a taste of Sri Lanka covering few gems of the cultural triangle. The traditional lunch experi', 63000, 987);

-- --------------------------------------------------------

--
-- Table structure for table `foreignspecial`
--

CREATE TABLE `foreignspecial` (
  `Tour_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Descriptiom` varchar(200) NOT NULL,
  `Price` float NOT NULL,
  `Tour_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foreignspecial`
--

INSERT INTO `foreignspecial` (`Tour_id`, `Name`, `Descriptiom`, `Price`, `Tour_code`) VALUES
(1, 'Northerly Charms Tour foreign special tour', 'Ancient kingdoms and diverse cultures provide the backdrop to the natural charms that highlight this tour as you head north.\r\n\r\nHighlights\r\n▪ Explore, compare and contrast the culture, customs, and tr', 55000, 999),
(3, 'Northern Discoveries Tour foreign special tour', 'Discover the sights and sounds of the Northern shores of Sri Lanka with just a hint of culture to pique your interest.\r\n\r\nHighlights\r\n• Explore the Negombo Town which is well known for its abundance o', 22500, 3645);

-- --------------------------------------------------------

--
-- Table structure for table `localfamily`
--

CREATE TABLE `localfamily` (
  `Tour_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Descriptiom` varchar(200) NOT NULL,
  `Price` float NOT NULL,
  `Tour_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `localfamily`
--

INSERT INTO `localfamily` (`Tour_id`, `Name`, `Descriptiom`, `Price`, `Tour_code`) VALUES
(1, 'TEA WITH A SIDE OF BEACH TOUR LOCAL FAMILY TOUR', 'This tour gives you the perfect opportunity to experience the cool hills and sunny beaches of Sri Lanka in luxury. Stay at two of the most exclusive hotels in the country, sample the best of Ceylon te', 75000, 456),
(2, 'SUN, SAND AND WAVES TOUR LOCAL FAMILY TOUR', 'From the lushness of mangroves to coconut palms that fringe the long curving beach to surfing waves, to whale & dolphin watching this tour will bring you an exhilarating experience of sun, sand, waves', 40000, 88),
(6, 'ENCHANTED NORTHERN & EASTERN COAST TOURS LOCAL FAMILY TOUR', 'Visit the remnants of one of Sri Lanka?s ancient kingdoms before touring the North and East of the country while enjoying the coastal highlights our little island of wonder has to offer. Visit little ', 60000, 558);

-- --------------------------------------------------------

--
-- Table structure for table `localguides`
--

CREATE TABLE `localguides` (
  `Guider_id` int(11) NOT NULL,
  `Guider_name` varchar(100) NOT NULL,
  `Hire_price` float NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `localguides`
--

INSERT INTO `localguides` (`Guider_id`, `Guider_name`, `Hire_price`, `age`) VALUES
(1, 'Amal Nishantha', 10000, 35),
(2, 'chamara', 15000, 45);

-- --------------------------------------------------------

--
-- Table structure for table `localnormal`
--

CREATE TABLE `localnormal` (
  `Tour_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Descriptiom` varchar(200) NOT NULL,
  `Price` float NOT NULL,
  `Tour_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `localnormal`
--

INSERT INTO `localnormal` (`Tour_id`, `Name`, `Descriptiom`, `Price`, `Tour_code`) VALUES
(2, 'Negombo City Tour & Lagoon Boat Trip with Lunch local normal tour', 'Negombo is a vibrant town which exhibits the influence of multiple cultures, faiths and nationalities. A coastal town that has seen many colonial invaders it is also in close proximity to the Internat', 10000, 222),
(7, 'Explore Colombo Day Tour local normal tour', 'This throbbing commercial capital is literally the main hub of the country with many public and private sector organizations headquartered here. The city tour of this port city favoured by merchants o', 15000, 6363),
(10, 'TROPICAL HIKES TOUR LOCAL NORMAL TOUR', 'Trek and hike through the paddy fields, tea plantations, spice gardens, waterfalls, streams, dense forests, hills and mountains of Sri Lanka. It will bring about a unique experience that cannot be obt', 30000, 356);

-- --------------------------------------------------------

--
-- Table structure for table `localspecial`
--

CREATE TABLE `localspecial` (
  `Tour_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Descriptiom` varchar(200) NOT NULL,
  `Price` float NOT NULL,
  `Tour_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `localspecial`
--

INSERT INTO `localspecial` (`Tour_id`, `Name`, `Descriptiom`, `Price`, `Tour_code`) VALUES
(2, 'Ramayana Trails local special your', 'Relive the legend of Ramayana in Sri Lanka by exploring many sites steeped in its history along the west coast, east coast and scenic hill country.\r\n\r\nHighlights\r\nExplore the legendary Munneswaram Tem', 100000, 555),
(3, 'HILL COUNTRY INDULGENCE LOCAL SPECIAL ', 'Sri Lanka\'s Hill Country is the island at its most scenic, a mist-wrapped land of emerald peaks and stupendous views, of hillsides carpeted with tea plantations and graced by astonishing waterfalls.\r\n', 56000, 556),
(6, 'TEA COUNTRY ADVENTURES LOCAL SPECIAL TOUR', 'Mist-shrouded mountains, rolling tea plantations, cascading waterfalls and quaint hilltop villages - these are some of the aspects of the enchanting hill country of Sri Lanka in our quick five day tou', 15000, 11111);

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `Tour_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Price` float NOT NULL,
  `Tour_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`Tour_id`, `Name`, `Description`, `Price`, `Tour_code`) VALUES
(1, 'HILL COUNTRY GRANDEUR LOCAL OFFERS TOUR', 'Sri Lanka’s hill country is a place where you can wear a fleece in the daytime and cuddle up beside a log fire in the evening. A region where you can walk to the end of the world and savour the silenc', 35000, 111),
(6, 'SUN, SAND AND WAVES TOUR LOCAL OFFRERS YOUR', 'From the lushness of mangroves to coconut palms that fringe the long curving beach to surfing waves, to whale & dolphin watching this tour will bring you an exhilarating experience of sun, sand, waves', 40000, 112),
(7, 'ROMANTIC SRI LANKAN GETAWAY LOCAL OFFERS TOUR', 'Escape to the tropics with your special someone and experience the cool breeze of romance.\r\n\r\nHighlights\r\n• Explore the cities of Colombo and Kandy as you get a glimpse into the culture and history of', 38000, 113),
(8, 'ROMANTIC SRI LANKAN HERITAGE & COAST TOURS LOCAL OFFERS TOUR', 'Take this tropical adventure and explore these ancient cities with someone special.\r\n\r\nHighlights\r\n• Discover the ancient capitals of Anuradhapura and Polonnaruwa\r\n\r\n• Be on the lookout for herds of e', 17000, 1115);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Signup_ID`);

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `foreginnormal`
--
ALTER TABLE `foreginnormal`
  ADD PRIMARY KEY (`Tour_id`);

--
-- Indexes for table `foreigfamily`
--
ALTER TABLE `foreigfamily`
  ADD PRIMARY KEY (`Tour_id`);

--
-- Indexes for table `foreignguides`
--
ALTER TABLE `foreignguides`
  ADD PRIMARY KEY (`Guider_id`);

--
-- Indexes for table `foreignoffers`
--
ALTER TABLE `foreignoffers`
  ADD PRIMARY KEY (`Tour_id`);

--
-- Indexes for table `foreignspecial`
--
ALTER TABLE `foreignspecial`
  ADD PRIMARY KEY (`Tour_id`);

--
-- Indexes for table `localfamily`
--
ALTER TABLE `localfamily`
  ADD PRIMARY KEY (`Tour_id`);

--
-- Indexes for table `localguides`
--
ALTER TABLE `localguides`
  ADD PRIMARY KEY (`Guider_id`);

--
-- Indexes for table `localnormal`
--
ALTER TABLE `localnormal`
  ADD PRIMARY KEY (`Tour_id`);

--
-- Indexes for table `localspecial`
--
ALTER TABLE `localspecial`
  ADD PRIMARY KEY (`Tour_id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`Tour_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `Signup_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `Admin_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `foreginnormal`
--
ALTER TABLE `foreginnormal`
  MODIFY `Tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `foreigfamily`
--
ALTER TABLE `foreigfamily`
  MODIFY `Tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `foreignguides`
--
ALTER TABLE `foreignguides`
  MODIFY `Guider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `foreignoffers`
--
ALTER TABLE `foreignoffers`
  MODIFY `Tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `foreignspecial`
--
ALTER TABLE `foreignspecial`
  MODIFY `Tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `localfamily`
--
ALTER TABLE `localfamily`
  MODIFY `Tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `localguides`
--
ALTER TABLE `localguides`
  MODIFY `Guider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `localnormal`
--
ALTER TABLE `localnormal`
  MODIFY `Tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `localspecial`
--
ALTER TABLE `localspecial`
  MODIFY `Tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `Tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
