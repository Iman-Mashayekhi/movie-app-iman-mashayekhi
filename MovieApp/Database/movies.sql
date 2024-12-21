-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2024 at 10:31 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movieapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_persian_ci NOT NULL,
  `genre` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `imdb` varchar(3) COLLATE utf8_persian_ci NOT NULL,
  `director` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `picture` varchar(200) COLLATE utf8_persian_ci NOT NULL,
  `watchTime` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `CreatedAt` varchar(50) COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `description`, `genre`, `imdb`, `director`, `picture`, `watchTime`, `CreatedAt`) VALUES
(2, 'Inception', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.', 'Thriller', '8.8', 'Christopher Nolan', 'inception.jpg', '148 Min', '2024-12-12:18:45:15'),
(11, 'Arrival', 'Linguist Louise Banks leads a team of investigators when gigantic spaceships touch down around the world. As nations teeter on the verge of global war, ...', 'Science_Fiction', '7.9', 'Denis Villeneuve', 'arrival.jpg', '116 Min', '2024-12-12:18:45:10'),
(12, 'The Batman', 'When a sadistic serial killer begins murdering key political figures in Gotham, the Batman is forced to investigate the city\'s hidden corruption and question his family\'s involvement.', 'Action', '7.8', 'Matt Reeves', 'batman.jpg', '176 Min', '2024-12-12:18:45:10'),
(13, 'The Beekeeper', 'A kind-hearted landlady commits suicide after falling victim to a phishing scam, leading former "Beekeeper" operative Adam Clay to set out on a brutal campaign for revenge upon those respons...', 'Action', '6.3', 'David Ayer', 'beekeeper.jpg', '105 Min', '2024-12-12:18:45:10'),
(14, 'Better Call Saul', 'The trials and tribulations of criminal lawyer Jimmy McGill in the years leading up to and past his fateful run-in with Walter White and Jesse Pinkman.', 'Crime', '9.0', 'Vince Gilligan', 'bettercallsaul.jpg', '6 Seasons', '2024-12-12:18:45:10'),
(15, 'Blade Runner 2049', 'Young Blade Runner K\'s discovery of a long-buried secret leads him to track down former Blade Runner Rick Deckard, who\'s been missing for thirty years.', 'Thriller', '8.0', ' Denis Villeneuve', 'bladerunner.jpg', '164 Min', '2024-12-12:18:45:10'),
(16, 'Breaking Bad', 'A chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine with a former student to secure his family\'s future.', 'Crime', '9.5', 'Vince Gilligan', 'breakingbad.jpg', '5 Seasons', '2024-12-12:18:45:10'),
(17, 'Dark', 'A family saga with a supernatural twist, set in a German town where the disappearance of two young children exposes the relationships among four families.', 'Mystery', '8.7', ' Baran bo Odar', 'dark.jpg', '3 Seasons', '2024-12-12:18:45:10'),
(18, 'The Dark Knight', 'When a menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman, James Gordon and Harvey Dent must work together to put an end to the madness.', 'Action', '9.0', 'Christopher Nolan', 'darkknight.jpg', '152 Min', '2024-12-12:18:45:10'),
(19, 'Dune: Part Two', 'Paul Atreides unites with the Fremen while on a warpath of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the universe, he endeavors to prevent a terrible future.', 'Action', '8.5', 'Denis Villeneuve', 'dune2.jpg', '166 Min', '2024-12-12:18:45:10'),
(20, 'Fight Club', 'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.', 'Drama', '8.8', ' David Fincher', 'fightclub.jpg', '139 Min', '2024-12-12:18:45:10'),
(21, 'Forrest Gump', 'The history of the United States from the 1950s to the \'70s unfolds from the perspective of an Alabama man with an IQ of 75, who yearns to be reunited with his childhood sweetheart.', 'Drama', '8.8', ' Robert Zemeckis', 'forrestgump.jpg', '142 Min', '2024-12-12:18:45:10'),
(22, 'The Godfather', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'Crime', '9.2', ' Francis Ford Coppola', 'godfather.jpg', '175 Min', '2024-12-12:18:45:10'),
(23, 'Interstellar', 'When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.', 'Adventure', '8.7', ' Christopher Nolan', 'interstellar.jpg', '169 Min', '2024-12-12:18:45:10'),
(24, 'John Wick: Chapter 4', 'John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.', 'Action', '7.6', 'Chad Stahelski', 'johnwick4.jpg', '169 Min', '2024-12-12:18:45:10'),
(26, 'Joker: Folie à Deux', 'Struggling with his dual identity, failed comedian Arthur Fleck meets the love of his life, Harley Quinn, while incarcerated at Arkham State Hospital.', 'Drama', '5.2', ' Todd Phillips', 'joker2.jpg', '138 Min', '2024-12-12:18:45:10'),
(27, 'Léon: The Professional', '12-year-old Mathilda is reluctantly taken in by Léon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protégée and learns the assassin\'s trade.', 'Action', '8.5', 'Luc Besson', 'leon.jpg', '110 Min', '2024-12-12:18:45:10'),
(28, 'Oppenheimer', 'A dramatization of the life story of J. Robert Oppenheimer, the physicist who had a large hand in the development of the atomic bombs that brought an end to World War II.', 'History', '8.3', 'Christopher Nolan', 'openhimer.jpg', '180 Min', '2024-12-12:20:45:50'),
(29, 'The Penguin', 'Following the events of The Batman (2022), Oz Cobb, a.k.a. the Penguin, makes a play to seize the reins of the crime world in Gotham.', 'Crime', '8.7', 'Lauren LeFranc', 'penguin.jpg', '1 Seasons', '2024-12-12:18:45:10'),
(30, 'The Prestige', 'Rival 19th-century magicians engage in a bitter battle for trade secrets.\r\n\r\n', 'Drama', '8.5', 'Christopher Nolan', 'prestige.jpg', '130 Min', '2024-12-12:18:45:10'),
(31, 'Pulp Fiction', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.\r\n\r\n', 'Comedy', '8.9', ' Quentin Tarantino', 'pulpfiction.jpg', '154 Min', '2024-12-12:18:45:10'),
(32, 'Se7en', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.\r\n\r\n', 'Drama', '8.6', ' David Fincher', 'se7en.jpg', '127 Min', '2024-12-12:18:45:10'),
(33, 'The Shawshank Redemption', 'A banker convicted of uxoricide forms a friendship over a quarter century with a hardened convict, while maintaining his innocence and trying to remain hopeful through simple compassion.\r\n\r\n', 'Drama', '9.3', ' Frank Darabont', 'shawshangredemption.jpg', '142 Min', '2024-12-12:18:45:30'),
(34, 'Tenet', 'Armed with only the word "Tenet," and fighting for the survival of the entire world, CIA operative, The Protagonist, journeys through a twilight world of international espionage on a global mission that unfolds beyond real time.\r\n', 'Science_Fiction', '7.3', 'Christopher Nolan', 'tenet.jpg', '150 Min', '2024-12-12:18:45:10'),
(35, 'Top Gun: Maverick', 'The story involves Maverick confronting his past while training a group of younger Top Gun graduates, including the son of his deceased best friend, for a dangerous mission.\r\n\r\n', 'Action', '8.2', 'Joseph Kosinski', 'topgun.jpg', '130 Min', '2024-12-12:18:45:10'),
(36, 'WALL·E', 'A robot who is responsible for cleaning a waste-covered Earth meets another robot and falls in love with her. Together, they set out on a journey that will alter the fate of mankind.\r\n\r\n', 'Animation', '8.4', 'Andrew Stanton', 'walle.jpg', '98 Min', '2024-12-12:18:45:10'),
(37, 'Westworld', 'At the intersection of the near future and the reimagined past, waits a world in which every human appetite can be indulged without consequence.\r\n\r\n', 'Science_Fiction', '8.5', 'Jonathan Nolan', 'westworld.jpg', '4 Seasons', '2024-12-12:18:45:10'),
(38, 'The Wild Robot', 'After a shipwreck, an intelligent robot called Roz is stranded on an uninhabited island. To survive the harsh environment, Roz bonds with the island\'s animals and cares for an orphaned baby goose.\r\n', 'Animation', '8.3', ' Chris Sanders', 'wildrobot.jpg', '104 Min', '2024-12-12:19:45:10'),
(39, 'Venom: The Last Dance', 'Eddie Brock and Venom must make a devastating decision as they\'re pursued by a mysterious military man and alien monsters from Venom\'s home world.', 'Action', '6.1', ' Kelly Marcel', 'venom.jpg', '110 Min', '2024-12-12:18:45:10'),
(44, 'Caddo Lake', 'When an 8-year-old girl disappears on Caddo Lake, a series of past deaths and disappearances begin to link together, altering a broken family\'s history.', 'Mystery', '6.9', ' Logan George', 'CaddoLake.jpg', '103 Min', '2024-11-20:11:53:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
