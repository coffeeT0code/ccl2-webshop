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
-- Tabellenstruktur für Tabelle `Index`
--

CREATE TABLE `Index` (
  `id` int(11) NOT NULL,
  `heading` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `Index`
--

INSERT INTO `Index` (`id`, `heading`, `description`, `img`) VALUES
(1, 'How art changes a mindset', 'The art-making process is a unique activity because it engages both the right and left hemispheres of the brain. When you make art, you’re making choices and solving problems, activating the same parts of the brain that you use during real-life problem solving. Because of this, art provides a low-stakes practice ground that can help you navigate important personal and interpersonal issues. ', 'planets.jpg'),
(2, 'How our art is created', 'See our process and learn why our products are unique!', 'butterfly.jpg'),
(3, 'Book a shoot!', 'Make your special moments everlasting!', 'maternity3.jpg');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Index`
--
ALTER TABLE `Index`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Index`
--
ALTER TABLE `Index`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
