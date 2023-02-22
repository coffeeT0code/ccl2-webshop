-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 19. Sep 2022 um 14:38
-- Server-Version: 5.7.39-0ubuntu0.18.04.2
-- PHP-Version: 7.2.24-0ubuntu0.18.04.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cc211005`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Items`
--

CREATE TABLE `Items` (
  `id` int(11) NOT NULL,
  `itemTitle` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` int(5) NOT NULL,
  `size` varchar(100) NOT NULL,
  `material` varchar(300) NOT NULL,
  `articleCount` int(200) NOT NULL,
  `img` varchar(300) NOT NULL,
  `category` varchar(200) NOT NULL,
  `creator` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `Items`
--

INSERT INTO `Items` (`id`, `itemTitle`, `description`, `price`, `size`, `material`, `articleCount`, `img`, `category`, `creator`) VALUES
(1, 'Wedding Picture', 'This is a very nice wedding picture', 100, '20 x 20 ', 'Wood', 20, 'wedding4.png', 'print', 'Vicky'),
(2, 'Squirrel', 'This is a picture of a squirrel in the woods', 20, '15 x 18', 'Wood', 2, 'squirrel.png', 'print', 'Vicky'),
(3, 'Bestie', 'A picture of my best friend', 30, '30 x 25', 'Vinyl', 3, 'melissa2.png', 'print', 'Vicky'),
(4, 'Painting of a girl', 'This is an Artwork painted by Miriam', 35, '23 x 20', 'wood', 20, 'miriamArt6.jpg', 'painting', 'Miriam'),
(5, 'Painting of a girl', 'This is an Artwork painted by Miriam', 35, '23 x 20', 'wood', 20, 'miriamArt2.jpeg', 'painting', 'Miriam'),
(6, 'Mouse in Spotlight', 'This is an Artwork painted by Miriam', 35, '23 x 20', 'wood', 20, 'miriamArt3.jpeg', 'postcard', 'Miriam'),
(7, 'Painting of a girl', 'This is an Artwork painted by Miriam', 35, '23 x 20', 'wood', 20, 'miriamArt4.jpeg', 'painting', 'Miriam'),
(8, 'Painting of a girl', 'This is an Artwork painted by Miriam', 35, '23 x 20', 'wood', 20, 'miriamArt5.jpeg', 'painting', 'Miriam'),
(11, 'Bee', 'Drawing of a bee ', 25, '20 x 20', 'watercolour on paper', 2, 'bee.jpg', 'painting', 'Vicky'),
(12, 'doubtful', 'abstract painting of a woman', 45, '30 x 23', 'acrylic on canvas', 1, 'abstract.jpg', 'painting', 'Vicky'),
(13, 'flower bouquet', 'drawing of flowers', 5, '12 x 18', 'ink on paper', 1, 'flowerbouqet.jpg', 'postcard', 'Vicky'),
(14, 'Stars at night', 'a painting of a starry night with trees in front', 15, '18 x 21', 'watercolour on paper', 1, 'starsAtNight.jpg', 'painting', 'Vicky'),
(15, 'Kraft und Ruhe', 'Jesaja 30:15 with flowers around', 12, '18 x 21', 'watercolour/ink on paper', 50, 'kraft.jpg', 'postcard', 'Vicky'),
(16, 'little star boy', 'digital drawing of a little star boy', 12, '12 x 18', 'digital', 50, 'littleStarBoy.png', 'painting', 'Miriam'),
(18, 'Beach', 'Photography of a beach in Greece', 20, '300 x 201 px', 'paper', 3, 'nature1.png', 'print', 'Vicky'),
(19, 'Mountainous view', 'view of the mountains \"Großglockner\"', 5, '20 x 20', 'canvas', 4, 'nature5.png', 'print', 'Vicky'),
(20, '\"Hope for the future\"', 'Maternity Photoshooting', 60, '3888 x 2592 px', 'canvas', 5, 'maternity3.jpg', 'print', 'Vicky');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Items`
--
ALTER TABLE `Items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `img` (`img`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Items`
--
ALTER TABLE `Items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
