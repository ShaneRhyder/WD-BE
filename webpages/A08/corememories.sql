-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2024 at 12:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corememories`
--

-- --------------------------------------------------------

--
-- Table structure for table `islandcontents`
--

CREATE TABLE `islandcontents` (
  `islandContentID` int(4) NOT NULL,
  `islandOfPersonalityID` int(4) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `content` varchar(300) NOT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islandcontents`
--

INSERT INTO `islandcontents` (`islandContentID`, `islandOfPersonalityID`, `image`, `content`, `color`) VALUES
(1, 1, 'seaside.jpg', 'Seaside - it is a big part of my childhood because our town is located in one. I used to always go to the seaside after school to catch crabs and other sea critters. I\'ve been really fond of animals since I was a kid and even walked barefoot in the mangrove forest to explore.', NULL),
(2, 1, 'burgerHauz.jpg', 'Burger Hauz - Burgers are one of the foods I started to like as a kid and remain my favorite to this day. Our hometown has, in my opinion, some of the best burgers. There\'s just something unique about them that I\'ve always tried to find in other burgers.', NULL),
(3, 1, 'cycling.jpg', 'Cycling - whenever I\'m back home and have the time, I go around our town in my bicycle. It helps me relax and see what\'s changed in our town over the years.', NULL),
(4, 2, 'guitar.jpg', 'Guitar Journey - I started playing guitar when I was 9 years old. My first 4 years started great. I learned a lot and had fun. But from there on, I started to lose interest for the instrument. I only recently started playing again back at senior high and only sparingly this college.', NULL),
(5, 2, 'musicTheory.jpg', 'Music Theory - Since I cannot play that much guitar this college, I found a way to still keep in touch with my musical side by studying music theory. Learning music theory has opened my eyes to a new world of music. I never knew that music was that complex.', NULL),
(6, 2, 'concerts.jpg', 'Concerts - I\'ve been to a couple of concerts now and all I can say is they were all amazing! It was a lot of fun. People just happily singing along to their favorite bands play their favorite songs. Such a joyful sight to see. I wish I can go to more of them.', NULL),
(7, 3, 'videoGames.jpg', 'Video Games - Video games are a big part of Computer Island. They are fun and help me relax. I started playing video games at a young age, and I am very grateful for it. They made my childhood feel more complete and fulfilling.', NULL),
(8, 3, 'youtube.jpg', 'YouTube - YouTube has been really helpful. Whenever I have a question, want to learn something new, watch a funny video, or pretty much anything else, YouTube is there to provide the videos I want to watch.', NULL),
(9, 3, 'tech-savvy.jpg', 'Tech-savviness - Being amazed by computers, as the curious kid I was, I asked the question, &quot;how do computers work?&quot;. This question has led me to where I am now. Not only do I know how computers work, but I now also learned a few things about the software side of it.', NULL),
(10, 4, 'nocheBuena.jpg', 'Dec 24th - The night before Christmas is the Noche Buena. We get to have a wonderful feast. This is the night where I get to eat my favorite Hamon and I really enjoy it because I only get to eat it this time of the year.', NULL),
(11, 4, 'christmasCelebration.jpg', 'Dec 25th - Christmas is a really special day because it is the celebration of the birth of our Lord and Savior, Jesus Christ. During this time of the year, we go on a family trip where we first attend the Holy Mass. After that, we celebrate by traveling to different places and trying out local food.', NULL),
(12, 4, 'christmasCarols.jpg', 'Christmas Carols - The spirit of Christmas can be felt through Christmas Carols. I used to participate in this tradition when I was younger. It was one of the best experiences I have had. The money you make by doing it is not a whole lot but it\'s the experience that matters.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `islandsofpersonality`
--

CREATE TABLE `islandsofpersonality` (
  `islandOfPersonalityID` int(4) NOT NULL,
  `name` varchar(40) NOT NULL,
  `shortDescription` varchar(300) DEFAULT NULL,
  `longDescription` varchar(900) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islandsofpersonality`
--

INSERT INTO `islandsofpersonality` (`islandOfPersonalityID`, `name`, `shortDescription`, `longDescription`, `color`, `image`, `status`) VALUES
(1, 'Hometown Island', 'Hometown Island has a special place in my heart.', 'A lot of core memories were formed here. It is where I grew up and learned most of the things I know today. It is where I made a lot of friends. It is where I spend time with my family. And lastly, it is my home.', '#FFFAA1', 'hometownIsland.jpg', 'Standing'),
(2, 'Music Island', 'Music Island is a place to relax and calm down.', 'I started developing a special bond with music when I started playing the guitar. Being able to play an instrument changed how I view and hear music. I started to enjoy music even more.', '#4560FF', 'musicIsland.jpg', 'Standing'),
(3, 'Computer Island', 'Computer Island is a place for learning, exploration, and games. ', 'Computers have always played a big part in my education and happiness. It pretty much provided everything I needed to learn and at the same time, explore new things. It is also my source of enjoyment, video games to be specific.', '#48DC85', 'computerIsland.jpg', 'Standing'),
(4, 'Christmas Island', 'Christmas Island is full of blessings.', 'Christmas Island is full of joyful events and lots of presents. It is that time of the year everyone goes out for a trip and celebrates. I\'ve been through many Christmas celebrations and all I can say is that all of them were amazing!', '#F86060', 'christmasIsland.jpg', 'Standing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `islandcontents`
--
ALTER TABLE `islandcontents`
  ADD PRIMARY KEY (`islandContentID`);

--
-- Indexes for table `islandsofpersonality`
--
ALTER TABLE `islandsofpersonality`
  ADD PRIMARY KEY (`islandOfPersonalityID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `islandcontents`
--
ALTER TABLE `islandcontents`
  MODIFY `islandContentID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `islandsofpersonality`
--
ALTER TABLE `islandsofpersonality`
  MODIFY `islandOfPersonalityID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
