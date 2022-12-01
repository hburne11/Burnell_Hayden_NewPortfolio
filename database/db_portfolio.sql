-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 30, 2022 at 09:58 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feature`
--

CREATE TABLE `tbl_feature` (
  `feature_id` tinyint(4) NOT NULL,
  `feature_name` varchar(100) NOT NULL,
  `feature_desc` text NOT NULL,
  `feature_media` varchar(50) NOT NULL,
  `feature_software` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_feature`
--

INSERT INTO `tbl_feature` (`feature_id`, `feature_name`, `feature_desc`, `feature_media`, `feature_software`) VALUES
(1, 'Upcoming Games Graphics', 'I use Canva or Photoshop to create, and the graphic is displayed on the website and on the jumbotron!', 'up_games.png', 'Canva\r\nAdobe Photoshop'),
(2, 'Lineup Sheets', 'Made in Illustrator for every game. Get the rosters and logos of the visiting team, and the updated stats of both teams which are available to the fans at each home game.', 'lineups.png', 'Adobe Illustrator'),
(3, 'Hockey Cards', 'I had the privilege of designing this seasons set of team hockey cards! They are still in progress, and will be for sale by Christmas time!', 'cards.png', 'Adobe Photoshop'),
(4, 'Highlight Packages', 'Edit together the highlights of the games, primarily the goals and big saves, using Premiere Pro or Davinci Resolve.', 'highlight_1.mp4', 'Adobe Premiere Pro\r\nDavinci Resolve'),
(5, 'Social Media', 'I film a lot of the content for the Bulldogs Social Media Pages, including this interview with the voice of the Bulldogs Reed Duthie! He even gives me a shoutout in this one!', 'lineups.png, reed_1.mp4', 'Canva\r\nInstagram\r\nAdobe Premiere Pro'),
(6, 'Bulldogs Audio Network', 'My first task as a Bulldogs intern, I used Adobe Illustrator to create multiple mockups of possible logos to use for the teams Audio Network which includes podcasts and live streams of the games.', 'podcast.png', 'Adobe Illustrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `footer_id` tinyint(4) NOT NULL,
  `footer_name` varchar(25) NOT NULL,
  `footer_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`footer_id`, `footer_name`, `footer_url`) VALUES
(1, 'Instagram', 'https://instagram.com/hburnell2'),
(2, 'GitHub', 'https://github.com/hburne11'),
(3, 'Twitter', 'https://twitter.com/haydenburnell2'),
(4, 'LinkedIn', 'https://www.linkedin.com/in/hayden-burnell/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nav`
--

CREATE TABLE `tbl_nav` (
  `nav_id` tinyint(4) NOT NULL,
  `nav_name` varchar(15) NOT NULL,
  `nav_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_nav`
--

INSERT INTO `tbl_nav` (`nav_id`, `nav_name`, `nav_desc`) VALUES
(1, 'About', 'Shows my logo, introduction and links to resumes.'),
(2, 'Portfolio', 'Shows all of my portfolio pieces.'),
(3, 'Contact', 'Mail Form Contact Page.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio`
--

CREATE TABLE `tbl_portfolio` (
  `port_id` tinyint(4) NOT NULL,
  `port_name` varchar(50) NOT NULL,
  `port_desc` text NOT NULL,
  `port_media` varchar(50) NOT NULL,
  `port_type` varchar(5) NOT NULL,
  `port_software` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_portfolio`
--

INSERT INTO `tbl_portfolio` (`port_id`, `port_name`, `port_desc`, `port_media`, `port_type`, `port_software`) VALUES
(1, 'Sportsnet Intro', 'Everything 3D Modelled from scratch, all custom textures and camera movements done in Cinema 4D. Editing completed in After Effects.', 'MNF.mp4', 'video', 'Cinema 4D\r\nAdobe After Effects'),
(2, 'Data Visualization', 'Used Motion Tracking and Functions in After Effects.', 'DV.mp4', 'video', 'Adobe After Effects'),
(3, 'Title Sequence', 'Used Stock Footage and After Effects to create an Opening Title for The Martian.', 'Title_Sequence_1.mp4', 'video', 'Adobe After Effects\r\nAdobe Premiere Pro'),
(4, 'Cosmetics Commercial', 'Colour Corrected in After Effects.', 'ceci_commercial.mp4', 'video', 'Adobe After Effects'),
(5, 'Morphing Commercial', 'A Morphing commercial for kids to eat healthier, completed with Cinema 4D and After Effects.', 'morph_final.mp4', 'video', 'Cinema 4D\r\nAdobe After Effects');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_feature`
--
ALTER TABLE `tbl_feature`
  ADD PRIMARY KEY (`feature_id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`footer_id`);

--
-- Indexes for table `tbl_nav`
--
ALTER TABLE `tbl_nav`
  ADD PRIMARY KEY (`nav_id`);

--
-- Indexes for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  ADD PRIMARY KEY (`port_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_feature`
--
ALTER TABLE `tbl_feature`
  MODIFY `feature_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `footer_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_nav`
--
ALTER TABLE `tbl_nav`
  MODIFY `nav_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  MODIFY `port_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
