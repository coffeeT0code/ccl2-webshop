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
-- Tabellenstruktur für Tabelle `user_cart`
--

CREATE TABLE `user_cart` (
  `cart_id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user_cart`
--

INSERT INTO `user_cart` (`cart_id`, `userID`, `itemID`) VALUES
(11, 5, 3),
(12, 8, 5),
(13, 8, 4),
(14, 8, 16),
(15, 3, 6),
(16, 3, 11),
(28, 9, 3),
(29, 9, 3),
(30, 9, 5),
(31, 9, 5),
(32, 9, 2),
(33, 9, 2),
(34, 9, 2),
(35, 9, 2),
(36, 9, 2),
(37, 9, 2),
(42, 2, 1),
(44, 11, 3),
(47, 2, 2),
(48, 12, 2),
(49, 12, 15),
(50, 13, 1),
(52, 13, 7),
(54, 13, 6),
(56, 2, 3),
(57, 2, 4);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `user_cart`
--
ALTER TABLE `user_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `FK_itemID` (`itemID`),
  ADD KEY `FK_userID_cart` (`userID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `user_cart`
--
ALTER TABLE `user_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `user_cart`
--
ALTER TABLE `user_cart`
  ADD CONSTRAINT `FK_itemID` FOREIGN KEY (`itemID`) REFERENCES `Items` (`id`),
  ADD CONSTRAINT `FK_userID_cart` FOREIGN KEY (`userID`) REFERENCES `Users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
