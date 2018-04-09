-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 06 apr 2018 om 12:58
-- Serverversie: 10.1.30-MariaDB
-- PHP-versie: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsapp`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reactions`
--

CREATE TABLE `reactions` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `blogs_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `reactions`
--

INSERT INTO `reactions` (`id`, `title`, `text`, `blogs_id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'SUPERBAND!!!', 'Vooral live heel sterk.', 1, '2018-02-07 16:05:00', '2018-02-07 16:05:00', 1),
(2, 'Jaja.. lekker makkelijk!', 'Voorbeeld :<br /> \n<b>Hello world</b><br />\n<u>Hello world</u><br />\n<i>Hello world</i><br />\n<b style=\"color:red\">Hello world\n</b>', 8, '2018-02-08 18:30:26', '2018-02-08 18:30:26', 1),
(3, 'Current members', '<ul>\r\n<li><a href=\"/wiki/Martin_van_Drunen\" title=\"Martin van Drunen\">Martin van Drunen</a> â€“ vocals <small>(1990â€“1992, 2007â€“present)</small>, bass guitar <small>(1990â€“1992)</small></li>\r\n<li>Alwin Zuur â€“ bass guitar <small>(2010â€“present)</small></li>\r\n<li>Paul Baayens â€“ guitar <small>(2007â€“present)</small></li>\r\n<li>Stefan HÃ¼skens - drums <small>(2014â€“present)</small></li>\r\n</ul>\r\n', 1, '2018-02-08 18:51:00', '2018-02-08 18:51:00', 1),
(4, 'SUPERGROUP!!', '<h3>Current Members</h3><br />\r\n<br />\r\n<ul>\r\n<li>Francesco Paoli â€“ lead vocals (2007â€“2009, 2017â€“present), guitars (2007â€“2009, 2017â€“present) drums, backing vocals (2009â€“2017)</li>\r\n<li>Cristiano Trionfera â€“ lead guitar, backing vocals (2007â€“present)</li>\r\n<li>Paolo Rossi â€“ bass guitar, clean vocals (2007â€“present)</li>\r\n<li>Francesco Ferrini â€“ piano, string arrangements, orchestral effects (2010â€“present)</li>\r\n<li>David Folchitto â€“ drums (2017â€“present)</li>\r\n<li>Fabio Bartoletti â€“ guitars (2017â€“present)</li>\r\n</ul>', 9, '2018-02-09 11:10:40', '2018-02-09 11:10:40', 1);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
