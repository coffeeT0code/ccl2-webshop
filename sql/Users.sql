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
-- Tabellenstruktur für Tabelle `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(80) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `Users`
--

INSERT INTO `Users` (`id`, `name`, `surname`, `email`, `password`) VALUES
(2, 'a', 'a', 'a', '$2b$10$sa6cSJIkjDkVHGdqBzRsFOCRwkWZ1MOHebYF1U/VaUYiB5p1A09Qm'),
(3, 'Juliana', 'Matsumura', 'juju', '$2b$10$uGDqN4mDbLdVZ/fREBLRO.z9BRGxWA.N3EUe/TfyT2..mCw8MEwPi'),
(5, 'fiona', 'fiona', 'fiona', '$2b$10$TIARo38ANetsGc0nDLdeQueHWhr0FHF7i/vEcpfxFHI0wix.dCyt2'),
(7, 'vlada', 'kuklenko', 'vlada', '$2b$10$dJeW3lBWoR.HKSnVbateQONWzAjv5kNqjO6vRFAL.R9ZsWOHggxyy'),
(8, 'b', 'b', 'b', '$2b$10$Q7QrcfXKPlH/jDs.lBTmReU67xUjCps/mo3Ckm5ftF8gu39DdAPD.'),
(9, 'patrick', 'patrick', 'p@p', '$2b$10$PR4zS6169RkhA4qJW.pDz.6Q3trP/dg8G0ywAdNdlwIx7o6.MaCYW'),
(10, 'n', 'n', 'n', '$2b$10$eZXvE5ERZg1rFswnZKv5n.NApQxpPSjav3ieOJ7Ge/m0arKhQtSXa'),
(11, 'm', 'm', 'm', '$2b$10$OzgPyyp6xILNF8UNcLVZ8.ugm6etZNpZ8UN2CCTgw4SX0KwgiMJLq'),
(12, 'Another', 'Guy', 'qhr14889@jiooq.com', '$2b$10$e.WpJZAXRN6gR7Ecl5g7veSiWCMU.BUh.v39TP4RRV811M8zGBnly'),
(13, 'cc211005', 'cc211005', 'cc211005', '$2b$10$6b4sZ25AGgqvJHu/huDN7OdoH5LHibIgXXT8C.0NNOk7s8OUtUFGy');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
