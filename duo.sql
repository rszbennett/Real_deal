-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 30, 2021 at 04:07 PM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duo`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messagesId` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `messageText` text NOT NULL,
  `seen` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messagesId`, `sender`, `receiver`, `messageText`, `seen`) VALUES
(1, 1, 2, 'Szia', 1),
(2, 2, 1, 'Hello!', 1),
(3, 1, 3, 'Helló. Szeretnék érdeklődni a ház iránt. Esetleg tudna adni egy telefonszámot?', 1),
(4, 1, 3, 'Komoly érdeklődő vagyok!', 0),
(5, 2, 1, 'CSá', 1),
(6, 2, 1, 'Szia', 1);

-- --------------------------------------------------------

--
-- Table structure for table `realestate`
--

CREATE TABLE `realestate` (
  `realEstateId` int(11) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Cost` varchar(50) NOT NULL,
  `Bedrooms` int(11) NOT NULL,
  `Bathrooms` int(11) NOT NULL,
  `SquareMeter` int(11) NOT NULL,
  `Active` tinyint(4) NOT NULL,
  `Request` tinyint(4) NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `realestate`
--

INSERT INTO `realestate` (`realEstateId`, `Address`, `Cost`, `Bedrooms`, `Bathrooms`, `SquareMeter`, `Active`, `Request`, `CreatedBy`, `CreatedAt`) VALUES
(4, 'Kossuth Lajos 17.', '5990', 1, 1, 120, 1, 0, 1, '2021-08-30 08:14:27'),
(5, 'Gárdonyi Géza 65.', '7990', 1, 1, 130, 1, 0, 3, '2021-08-30 08:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersId` int(11) NOT NULL,
  `usersName` varchar(150) NOT NULL,
  `usersEMailAdress` varchar(200) NOT NULL,
  `usersTelNum` varchar(50) NOT NULL,
  `usersBirthDay` date NOT NULL,
  `usersPassword` text NOT NULL,
  `usersRights` tinyint(4) NOT NULL,
  `usersActive` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersId`, `usersName`, `usersEMailAdress`, `usersTelNum`, `usersBirthDay`, `usersPassword`, `usersRights`, `usersActive`) VALUES
(1, 'Rácz Szabó Bennett', 'griffin.brs@gmail.com', '0621290278', '2000-10-19', '$2y$15$EXsS3F36NqADUaXnZcZqruXOJuWpuYOnryxyZXaZ.nBNg6UnHK6RK', 1, 1),
(2, 'Szakali István', 'szakaliiisti@gmail.com', '0621234567', '2000-02-14', '$2y$15$vHY0y4.nJXW07E0rvxCd.unYH.s5oEGai9UHS10u73ZHqnGOg9YaS', 0, 1),
(3, 'Teleki Hilda', 'telekihilda@gmail.com', '0639876543', '1984-02-04', '$2y$15$ncOysM17a4u5nUZKb4199efRTaHdLz1FdHhvTiMenXVmd/9RPWMoG', 1, 1),
(4, 'dawd', 'valami@valamii', '045757575', '2000-02-14', '$2y$15$JupnGEH.cXkLRiKPhrVq9uINtxOkThrjhgAHLAMk.c3mo17Vh5E3G', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messagesId`);

--
-- Indexes for table `realestate`
--
ALTER TABLE `realestate`
  ADD PRIMARY KEY (`realEstateId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messagesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `realestate`
--
ALTER TABLE `realestate`
  MODIFY `realEstateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
