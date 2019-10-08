-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 27, 2017 at 10:12 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lyre`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
`id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Hopeless Fountain Kingdom', 2, 2, 'assets/images/artwork/Hopeless Fountain Kingdom.jpg'),
(2, 'Titanic', 4, 10, 'assets/images/artwork/titanic.jpg'),
(3, 'Spectre', 5, 10, 'assets/images/artwork/Spectre.jpg'),
(4, 'Dil Dhadakne Do', 3, 9, 'assets/images/artwork/Dil Dhadakne Do.jpg'),
(5, 'Fifty Shades Freed', 1, 2, 'assets/images/artwork/Fifty Shades Freed.jpg'),
(6, 'When the Sun Goes Down', 3, 6, 'assets/images/artwork/love you like a love song.jpg'),
(7, 'Without me', 2, 2, 'assets/images/artwork/without me.jpg'),
(8, 'Evolve', 8, 7, 'assets/images/artwork/evolve.jpg'),
(9, 'Origins', 8, 7, 'assets/images/artwork/origins.jpg'),
(10, 'Collage', 9, 7, 'assets/images/artwork/Collage.jpg'),
(11, 'LSD', 7, 7, 'assets/images/artwork/lsd.jpg'),
(12, 'Cheap Thrills', 7, 7, 'assets/images/artwork/cheap thrills.jpg'),
(13, 'Ae dil hai Mushkil', 10, 7, 'assets/images/artwork/ae dil hai mushkil.jpg');


-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE IF NOT EXISTS `artists` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Hailee Steinfield'),
(2, 'Halsey'),
(3, 'Shankar'),
(4, 'Celine Dion'),
(5, 'Sam Smith'),
(6, 'Selena Gomez'),
(7, 'Sia'),
(8, 'Imagine Dragons'),
(9, 'ChainSmokers'),
(10, 'Pritam Chakraborty');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Melody');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE IF NOT EXISTS `playlists` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `playlistSongs`
--

CREATE TABLE IF NOT EXISTS `playlistSongs` (
`id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Songs`
--

CREATE TABLE IF NOT EXISTS `Songs` (
`id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `Songs`
--

INSERT INTO `Songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Bad At Love', 2, 1, 2, '3:01', 'assets/music/Bad at Love.mp3', 1, 10),
(2, 'My Heart Will Go On', 4, 2, 10, '3:50', 'assets/music/my heart will go on.mp3', 1, 4),
(3, 'Writings on the wall', 4, 3, 10, '2:33', 'assets/music/Writings On The Wall.mp3', 1, 10),
(4, 'Dil Dhadakne Do', 3, 4, 9, '3:48', 'assets/music/dil dhadakne do.mp3', 1, 13),
(5, 'Gallan Goodiyan', 3, 4, 9, '4:56', 'assets/music/gallan goodiyan.mp3', 2, 8),
(6, 'Girls like to swing', 3, 4, 9, '4:03', 'assets/music/girls like to swing.mp3', 3, 29),
(7, 'Pehli Baar', 2, 4, 2, '4:23', 'assets/music/pehli baar.mp3', 4, 31),
(8, 'Capital Letters', 1, 5, 2, '3:39', 'assets/music/Capital Letters.mp3', 1, 24),
(9, 'Love you like a love song', 3, 6, 6, '3:40', 'assets/music/Love You Like a Love Song.mp3', 1, 26),
(10, 'Without Me', 2, 7, 2, '2:58', 'assets/music/Without Me.mp3', 1, 16),
(11, 'Believer', 8, 8, 7, '3:36', 'assets/music/Believer.mp3', 1, 21),
(12, 'Bad Liar', 8, 9, 7, '4:44', 'assets/music/Bad Liar.mp3', 1, 21),
(13, 'Closer', 9, 10, 3, '4:21', 'assets/music/Closer.mp3', 5, 3);


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'tarun01', 'Tarun', 'Aravind', 'ta@gmail.com', '099081d9536e1e8022a90bad81380cc6', '2019-05-01 00:00:00', 'assets/images/profile-pics/head_emerald.png');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistSongs`
--
ALTER TABLE `playlistSongs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Songs`
--
ALTER TABLE `Songs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `playlistSongs`
--
ALTER TABLE `playlistSongs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Songs`
--
ALTER TABLE `Songs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
