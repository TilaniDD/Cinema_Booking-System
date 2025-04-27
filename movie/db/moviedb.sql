-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 02:36 PM
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
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `movielist`
--

CREATE TABLE `movielist` (
  `movieId` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Genre` varchar(25) DEFAULT NULL,
  `Director` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imdb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movielist`
--

INSERT INTO `movielist` (`movieId`, `Name`, `Genre`, `Director`, `Description`, `image`, `imdb`) VALUES
(1, 'Batman Begins', 'Action', 'Christopher Nolan', 'A young Bruce Wayne (Christian Bale) travels to the Far East, where he\'s trained in the martial arts by Henri Ducard (Liam Neeson), a member of the mysterious League of Shadows. ', 'batman.jpg', '9.5'),
(2, 'Spider-Man: Homecoming (2017)', 'Adventure', 'Jon Watts', 'Thrilled by his experience with the Avengers, young Peter Parker returns home to live with his Aunt May. Under the watchful eye of mentor Tony Stark, Parker starts to embrace his newfound identity as Spider-Man.', 'spiderman.jpg', '8.5'),
(3, 'Fight Club', 'Action', 'David Fincher', 'A depressed man (Edward Norton) suffering from insomnia meets a strange soap salesman named Tyler Durden (Brad Pitt) and soon finds himself living in his squalid house after his perfect apartment is destroyed. The two bored men form an underground club wi', 'fightClub.jpg', '8.8'),
(4, 'Gladiator', 'Action', 'Ridley Scott', 'Commodus (Joaquin Phoenix) takes power and strips rank from Maximus (Russell Crowe), one of the favored generals of his predecessor and father, Emperor Marcus Aurelius, the great stoical philosopher. Maximus is then relegated to fighting to the death in t', 'gladiator.jpg', '8.5'),
(6, 'Despicable Me 3', 'Comedy', 'Pierre Coffin, Kyle Balda', 'The mischievous Minions hope that Gru will return to a life of crime after the new boss of the Anti-Villain League fires him. Instead, Gru decides to remain retired and travel to Freedonia to meet his long-lost twin brother for the first time. The reunite', 'despicableme.jpg', '6.4'),
(7, 'Rocky Aur Rani Kii Prem Kahaani', 'Drama', 'Karan Johar', 'Flamboyant Punjabi Rocky and intellectual Bengali journalist Rani fall in love despite their differences. After facing family opposition, they decide to live with each other\'s families for three months before getting married.', 'r.jpg', '6.7'),
(8, 'My Fault', 'Drama', 'Domingo González', 'Noah has to leave her town, boyfriend and friends behind and move into the mansion of her mother\'s new rich husband. There she meets Nick, her new stepbrother. She soon discovers that, behind the image of a model son, Nick is hiding something.', 'my fault.jpg', '6.2'),
(9, 'the wolf of wall street', 'Comedy', ' Martin Scorsese', 'Introduced to life in the fast lane through stockbroking, Jordan Belfort takes a hit after a Wall Street crash. He teams up with Donnie Azoff, cheating his way to the top as his relationships slide.', 'wl.jpg', '8.2'),
(10, 'Bawaal', 'Drama', 'Nitesh Tiwari', 'A small-town man who falls in love with the most beautiful girl in town. He wants to marry her one day because marrying her can raise his social position.', 'baawal.jpg', '6.6');

-- --------------------------------------------------------

--
-- Table structure for table `showorder`
--

CREATE TABLE `showorder` (
  `showOrderId` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `theater` varchar(255) NOT NULL,
  `movieName` varchar(255) NOT NULL,
  `seat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showorder`
--

INSERT INTO `showorder` (`showOrderId`, `date`, `timeslot`, `theater`, `movieName`, `seat`) VALUES
(1, '2023-10-30', '11.00', 'CinemaPlex-theatre2', 'Batman Begins', '49'),
(2, '2023-11-02', '5.00', 'CinemaPlex-theatre1', 'Gladiator', '49'),
(3, '2023-11-01', '2.00', 'CinemaPlex-theatre2', 'Spider-Man: Homecoming (2017)', '48'),
(4, '2023-11-16', '8.00', 'CinemaPlex-theatre1', 'Batman Begins', '49'),
(8, '2023-11-05', '2.00', 'CinemaPlex-theatre3', 'Spider-Man: Homecoming (2017)', '49'),
(9, '2023-11-08', '11.00', 'CinemaPlex-theatre3', 'Rocky Aur Rani Kii Prem Kahaani', '49'),
(10, '2023-11-06', '11.00', 'CinemaPlex-theatre1', 'the wolf of wall street', '50'),
(11, '', '11.00', 'CinemaPlex-theatre1', 'Rocky Aur Rani Kii Prem Kahaani', '49'),
(12, '2023-11-07', '2.00', 'CinemaPlex-theatre3', 'Fight Club', '50'),
(13, '2023-11-06', '8.00', 'CinemaPlex-theatre1', 'My Fault', '49');

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE `theater` (
  `theaterId` int(11) NOT NULL,
  `theaterName` varchar(255) DEFAULT NULL,
  `seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theater`
--

INSERT INTO `theater` (`theaterId`, `theaterName`, `seat`) VALUES
(1, 'CinemaPlex-theatre1', 50),
(2, 'CinemaPlex-theatre2', 45),
(3, 'CinemaPlex-theatre3', 60),
(4, 'CinemaPlex-theatre4', 70);

-- --------------------------------------------------------

--
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `timeslotId` int(11) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`timeslotId`, `time`) VALUES
(1, '11.00'),
(2, '2.00'),
(3, '5.00'),
(4, '8.00'),
(5, '9.00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `password`, `status`) VALUES
(1, 'admin', 'admin', 101),
(3, 'user', 'user', 202),
(6, 'tilani', 'tilz123', 202);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movielist`
--
ALTER TABLE `movielist`
  ADD PRIMARY KEY (`movieId`);

--
-- Indexes for table `showorder`
--
ALTER TABLE `showorder`
  ADD PRIMARY KEY (`showOrderId`);

--
-- Indexes for table `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`theaterId`);

--
-- Indexes for table `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`timeslotId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movielist`
--
ALTER TABLE `movielist`
  MODIFY `movieId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `showorder`
--
ALTER TABLE `showorder`
  MODIFY `showOrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `theater`
--
ALTER TABLE `theater`
  MODIFY `theaterId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `timeslot`
--
ALTER TABLE `timeslot`
  MODIFY `timeslotId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
