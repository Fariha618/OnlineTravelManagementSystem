-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 05:07 PM
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
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'dd70e1dbb152ee610baf7dca178a1e2a', '2020-05-11 11:18:49');

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
(4, 10, 'peze0001@algonquinlive.com', '2022-08-10', '2022-08-11', NULL, '2022-08-10 14:58:30', 1, NULL, '2022-08-10 15:00:24'),
(5, 14, 'kaur0334@algonquinlive.com', '2022-08-13', '2022-08-12', NULL, '2022-08-10 15:01:25', 2, 'a', '2022-08-10 15:04:15'),
(6, 13, 'prot000312@algonquinlive.com', '2022-08-05', '2022-08-06', NULL, '2022-08-10 15:05:43', 2, 'u', '2022-08-10 15:05:48');

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
(10, 'Ottawa City Tour By Land and Water', 'Family Package', '44 Sparks Street', 38, 'Parliament Hill, Canadian Museum of Civilization, Hybrid Land and water vehicle', 'Maximize your time in Ottawa and Gatineau on a whirlwind sightseeing tour by land and water in an amphibious vehicle! Aboard the outrageous \"amphibus,\" pass main city attractions like Parliament Hill, the National Gallery of Canada, the National War Memorial Monument and more. When cruising along the street gets dry, plunge into the Ottawa River to see the city from a different angle. Fun for the whole family! Wind through the streets of Canada’s capital, passing national landmarks like Parliament Hill and the Canadian Museum of Civilization Spy lovely bridges and riverside sites as you float down the Ottawa River Hear fascinating history and facts about the area from a bilingual guide Experience the unique ‘amphibus,’ a hybrid land and water vehicle\r\n\r\nRead more about Ottawa City Tour by Land and Water - https://www.viator.com/tours/Ottawa/Ottawa-City-Tour-by-Land-and-Water/d622-6178DIVE?mcid=56757', 'package1.jpg', '2022-08-10 14:15:18', NULL),
(11, 'Ottawa Boat Cruise - Paul\'s Boat Line', 'Family Package', '160 Rue Laurier, Gatineau, QC J8X 3W1, Canada', 42, 'Bilingual commentaries All Fees and Taxes Hotel pick up & drop-off', 'See the sights in Canada’s Capital from the Ottawa River during this narrated tour onboard the Paula D. Look out at Canada’s Parliament Buildings from the river and snap photos of the spectacular city views. Marvel at the mix of natural beauty and modern, urban development while enjoying refreshments or cocktails from the boat’s canteen. Sightseeing river cruise along the Ottawa River Views of Ottawa landmarks and natural beauty Narrated by a tour guide in French and English Snack, drinks, and alcoholic beverages available from the boat’s cant\r\n\r\nRead more about Ottawa Boat Cruise - Paul\'s Boat Line - https://www.viator.com/tours/Ottawa/Ottawa-River-Tours/d622-60236P1?mcid=56757', 'package2.jpg', '2022-08-10 14:18:18', NULL),
(12, 'Ottawa Hop-On Hop-Off Sightseeing Tour', 'Couple Package', '44 Sparks St., Ottawa, ON K1P 5A5, Canada', 50, 'Professional driver and guide Transport by double decker bus or trolley Local taxes Gratuities Food and drinks Admissions to attractions and sites', 'See the best of Ottawa without the stress of public transit and taxis on this hop-on hop-off guided bus tour. With your 1-day pass, hop aboard the double-decker, open-top bus for a panoramic sightseeing excursion. Great for kids and adults, your ticket offers the chance to see over 75 sites at more than a dozen strategically placed stops. Hop off at every stop, or just take in views on the full city loop. Guided Ottawa bus tour Enjoy a photo stop at the Canadian Museum of Civilization Stop in the Ottawa\'s oldest and largest public market, known as Byward Market Pass Rideau Hall, the official residence of the Governor General of Canada Enjoy spectacular views of the southern banks of the Ottawa River with a drive through Parliament Hill\r\n\r\nRead more about Ottawa Hop-On Hop-Off Sightseeing Tour - https://www.viator.com/tours/Ottawa/Ottawa-City-Sightseeing-Tour/d622-3400_7?mcid=56757', 'package3.jpg', '2022-08-10 14:20:55', NULL),
(13, 'Haunted Ottawa Jail Tour', 'Group Package', '46 Sparks St., Ottawa, ON K1P 5A8, Canada', 90, 'Local guide Professional guide Gratuities Hotel pickup and drop-off', 'Let Ottawa’s supernatural history capture your attention on this ghost walk and tour of the Old Carleton County Jail. Alongside a costumed guide, visit haunted spots such as Canada’s last functioning gallows and Carleton County Jail—now a haunted hostel—and listen to terrifying tales of unlawful hangings, faceless ghosts, and infamous assassinations. Choose from two departure times. Ghost tour of Old Carleton County Jail in Ottawa Suited to travelers interested in the supernatural Tour the reputedly haunted Carleton County Jail, a spooky 19th-century structure Hear tales of faceless ghosts, levitating coins, and unlawful hangings Choose from two evening departure times What\'s Included.', 'package4.jpg', '2022-08-10 14:22:28', NULL),
(14, 'Ultimate Ottawa Tour', 'Group Package', '100 Kent St Enter on your left from Kent Street, Ottawa, Ontario K1P 5R7 Canada', 200, 'Air-conditioned vehicle Transport by air-conditioned minivan Gratuities Food & Drink', 'Take a tour through Ottawa, Canada’s capital city. The city is full of important landmarks, interesting architecture, and fascinating history. Take this tour to discover all the capital holds, including Parliament Hill, a behind the scenes tour of the Royal Canadian Mint, and a river cruise to end your five-six hour tour in a nice relaxing way. Hit the highlights of Ottawa in one busy day Your guide will share stories and history of the city and landmarks Round trip transportation from your downtown hotel included See 55 Ottawa landmarks from the boat on your cruise.', 'package5.jpg', '2022-08-10 14:24:21', NULL);

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
(8, 'Fariha Reza', '6132637906', 'reza0036@algonquinlive.com', 'dd70e1dbb152ee610baf7dca178a1e2a', '2022-08-10 13:24:55', NULL),
(9, 'Kamelia Pezeshki', '6137000059', 'peze0001@algonquinlive.com', 'dd70e1dbb152ee610baf7dca178a1e2a', '2022-08-10 13:26:28', NULL),
(10, 'Lyubov Protasova', '613456789', 'prot000312@algonquinlive.com', 'dd70e1dbb152ee610baf7dca178a1e2a', '2022-08-10 13:33:22', NULL),
(11, 'Kamalpreet Kaur', '6139814506', 'kaur0334@algonquinlive.com', 'dd70e1dbb152ee610baf7dca178a1e2a', '2022-08-10 13:34:34', '2022-08-10 13:38:18');

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
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
