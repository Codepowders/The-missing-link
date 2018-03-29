-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 28 mrt 2018 om 14:50
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
-- Tabelstructuur voor tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `cover_image` varchar(50) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `subtext` varchar(400) NOT NULL,
  `disabled` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `cover_image`, `subtitle`, `subtext`, `disabled`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Asphyx', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_Rack_(album)\" title=\"The Rack (album)\" target=\"_blank\">The Rack</a></i> (1991, <a href=\"https://en.wikipedia.org/wiki/Century_Media_Records\" title=\"Century Media Records\" target=\"_blank\">Century Media</a>)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Last_One_on_Earth\" title=\"Last One on Earth\" target=\"_blank\">Last One on Earth</a></i> (1992, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Asphyx_(album)\" title=\"Asphyx (album)\" target=\"_blank\">Asphyx</a></i> (1994, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/God_Cries\" title=\"God Cries\" target=\"_blank\">God Cries</a></i> (1996, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Embrace_the_Death\" title=\"Embrace the Death\" target=\"_blank\">Embrace the Death</a></i> (1996, Century Media; recorded in 1990)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/On_the_Wings_of_Inferno\" title=\"On the Wings of Inferno\" target=\"_blank\">On the Wings of Inferno</a></i> (2000, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Death...The_Brutal_Way\" title=\"Death...The Brutal Way\" target=\"_blank\">Death...The Brutal Way</a></i> (2009, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Deathhammer\" title=\"Deathhammer\" target=\"_blank\">Deathhammer</a></i> (2012, Century Media)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Incoming_Death\" class=\"mw-redirect\" title=\"Incoming Death\" target=\"_blank\">Incoming Death</a></i> (2016, Century Media)</li>\r\n</ul>', 'Asphyx.jpg', 'Discography Asphyx', 'subtext1', '0', '2018-01-31 17:00:00', '2018-01-31 17:00:00', 1),
(2, 'At The Gates', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_Red_in_the_Sky_Is_Ours\" title=\"The Red in the Sky Is Ours\" target=\"_blank\">The Red in the Sky Is Ours</a></i> (1992)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/With_Fear_I_Kiss_the_Burning_Darkness\" title=\"With Fear I Kiss the Burning Darkness\" target=\"_blank\">With Fear I Kiss the Burning Darkness</a></i> (1993)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Terminal_Spirit_Disease\" title=\"Terminal Spirit Disease\" target=\"_blank\">Terminal Spirit Disease</a></i> (1994)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Slaughter_of_the_Soul\" title=\"Slaughter of the Soul\" target=\"_blank\">Slaughter of the Soul</a></i> (1995)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/At_War_with_Reality\" title=\"At War with Reality\" target=\"_blank\">At War with Reality</a></i> (2014)</li>\r\n<li><i><a href=\"/w/index.php?title=To_Drink_from_the_Night_Itself&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"To Drink from the Night Itself (page does not exist)\" target=\"_blank\">To Drink from the Night Itself</a></i> (2018)</li>\r\n</ul>', 'At_The_Gates.jpg', 'Discography At The Gates', 'subtext2', '0', '2018-02-01 17:00:00', '2018-02-01 17:00:00', 1),
(3, 'August Burns Red', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Thrill_Seeker\" title=\"Thrill Seeker\" target=\"_blank\">Thrill Seeker</a></i> (2005)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Messengers_(album)\" title=\"Messengers (album)\" target=\"_blank\">Messengers</a></i> (2007)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Constellations_(August_Burns_Red_album)\" title=\"Constellations (August Burns Red album)\" target=\"_blank\">Constellations</a></i> (2009)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Leveler_(album)\" title=\"Leveler (album)\" target=\"_blank\">Leveler</a></i> (2011)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/August_Burns_Red_Presents:_Sleddin%27_Hill\" title=\"August Burns Red Presents: Sleddin Hill\" target=\"_blank\">Sleddin Hill</a></i> (2012)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Rescue_%26_Restore\" title=\"Rescue &amp; Restore\" target=\"_blank\">Rescue &amp; Restore</a></i> (2013)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Found_in_Far_Away_Places\" title=\"Found in Far Away Places\" target=\"_blank\">Found in Far Away Places</a></i> (2015)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Phantom_Anthem\" title=\"Phantom Anthem\" target=\"_blank\">Phantom Anthem</a></i> (2017)</li>\r\n</ul>', 'August_Burns_Red.jpg', 'Discography August Burns Red', '', '0', '2018-02-02 17:00:00', '2018-02-02 17:00:00', 1),
(4, 'Autopsy', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Severed_Survival\" title=\"Severed Survival\" target=\"_blank\">Severed Survival</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Mental_Funeral\" title=\"Mental Funeral\" target=\"_blank\">Mental Funeral</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Acts_of_the_Unspeakable\" title=\"Acts of the Unspeakable\" target=\"_blank\">Acts of the Unspeakable</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Shitfun\" title=\"Shitfun\" target=\"_blank\">Shitfun</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Macabre_Eternal\" title=\"Macabre Eternal\" target=\"_blank\">Macabre Eternal</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_Headless_Ritual\" title=\"The Headless Ritual\" target=\"_blank\">The Headless Ritual</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Tourniquets,_Hacksaws_and_Graves\" title=\"Tourniquets, Hacksaws and Graves\" target=\"_blank\">Tourniquets, Hacksaws and Graves</a></i></li>\r\n</ul>', 'Autopsy.jpg', 'Discography Autopsy', '', '0', '2018-02-03 20:00:00', '2018-02-03 20:00:00', 1),
(5, 'Brutal Truth', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Extreme_Conditions_Demand_Extreme_Responses\" title=\"Extreme Conditions Demand Extreme Responses\" target=\"_blank\">Extreme Conditions Demand Extreme Responses</a></i> (1992)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Need_to_Control\" title=\"Need to Control\" target=\"_blank\">Need to Control</a></i> (1994)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Kill_Trend_Suicide\" title=\"Kill Trend Suicide\" target=\"_blank\">Kill Trend Suicide</a></i> (1996)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Sounds_of_the_Animal_Kingdom\" title=\"Sounds of the Animal Kingdom\" target=\"_blank\">Sounds of the Animal Kingdom</a></i> (1997)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Evolution_Through_Revolution\" title=\"Evolution Through Revolution\" target=\"_blank\">Evolution Through Revolution</a></i> (2009)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/End_Time_(album)\" title=\"End Time (album)\" target=\"_blank\">End Time</a></i> (2011)</li>\r\n</ul>', 'brutal-truth.jpg', 'Discography Brutal Truth', '', '0', '2018-02-05 14:05:00', '2018-02-05 14:05:00', 1),
(6, 'Zo werkt het', '<h2>Blog: nieuw artikel uploaden:</h2>\r\n<p>Titel Blog, Text Blog en Categorie zijn verplicht in te vullen.<br />\r\nSubtitel en Subtext zijn optioneel.<br />\r\nSelecteer vervolgens eerst een foto en druk daarna op \'Upload naar Website\'.<br />\r\nP.S. Je kunt ook geen foto selecteren!</p>\r\n<p>De text in de blog kun je opmaken met <u>HTML!</u><br />\r\nVoor een goede snelle cursus ga naar: <a href=\"https://www.w3schools.com/html/\" target=\"_blank\">w3schools.com</a></p>', '', 'De Blogmaster', '', '0', '2018-02-06 21:46:30', '2018-02-06 21:46:30', 1),
(7, 'Fleshgod Apocalypse', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Oracles_(album)\" title=\"Oracles (album)\" target=\"_blank\">Oracles</a></i> (2009)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Agony_(Fleshgod_Apocalypse_album)\" title=\"Agony (Fleshgod Apocalypse album)\" target=\"_blank\">Agony</a></i> (2011)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Labyrinth_(Fleshgod_Apocalypse_album)\" title=\"Labyrinth (Fleshgod Apocalypse album)\" target=\"_blank\">Labyrinth</a></i> (2013)</li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/King_(Fleshgod_Apocalypse_album)\" title=\"King (Fleshgod Apocalypse album)\" target=\"_blank\">King</a></i> (2016)</li>\r\n</ul>', '113185_photo.jpg', 'Discography Fleshgod Apocalypse', '', '0', '2018-02-09 11:06:30', '2018-02-09 11:06:30', 1),
(8, 'Immortal', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Diabolical_Fullmoon_Mysticism\" title=\"Diabolical Fullmoon Mysticism\" target=\"_blank\">Diabolical Fullmoon Mysticism</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Pure_Holocaust\" title=\"Pure Holocaust\" target=\"_blank\">Pure Holocaust</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Battles_in_the_North\" title=\"Battles in the North\" target=\"_blank\">Battles in the North</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Blizzard_Beasts\" title=\"Blizzard Beasts\" target=\"_blank\">Blizzard Beasts</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/At_the_Heart_of_Winter\" title=\"At the Heart of Winter\" target=\"_blank\">At the Heart of Winter</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Damned_in_Black\" title=\"Damned in Black\" target=\"_blank\">Damned in Black</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Sons_of_Northern_Darkness\" title=\"Sons of Northern Darkness\" target=\"_blank\">Sons of Northern Darkness</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/All_Shall_Fall\" title=\"All Shall Fall\" target=\"_blank\">All Shall Fall</a></i></li>\r\n</ul>\r\n', 'immortal.jpg', 'Discography Immortal', '', '0', '2018-02-12 20:27:15', '2018-02-12 20:27:15', 1),
(9, 'Strapping Young Lad', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Heavy_as_a_Really_Heavy_Thing\" title=\"Heavy as a Really Heavy Thing\" target=\"_blank\">Heavy as a Really Heavy Thing</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/City_(Strapping_Young_Lad_album)\" title=\"City (Strapping Young Lad album)\" target=\"_blank\">City</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Strapping_Young_Lad_(album)\" title=\"Strapping Young Lad (album)\" target=\"_blank\">Strapping Young Lad</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Alien_(Strapping_Young_Lad_album)\" title=\"Alien (Strapping Young Lad album)\" target=\"_blank\">Alien</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_New_Black\" title=\"The New Black\" target=\"_blank\">The New Black</a></i></li>\r\n</ul>\r\n', 'StrappingYoungLad.jpg', 'Discography Strapping Young Lad', '', '0', '2018-02-16 20:20:00', '2018-02-16 20:20:00', 1),
(10, 'Neurosis', '<ul>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Pain_of_Mind\" title=\"Pain of Mind\" target=\"_blank\">Pain of Mind</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_Word_as_Law\" title=\"The Word as Law\" target=\"_blank\">The Word as Law</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Souls_at_Zero\" title=\"Souls at Zero\" target=\"_blank\">Souls at Zero</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Enemy_of_the_Sun\" title=\"Enemy of the Sun\" target=\"_blank\">Enemy of the Sun</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Through_Silver_in_Blood\" title=\"Through Silver in Blood\" target=\"_blank\">Through Silver in Blood</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Times_of_Grace_(album)\" title=\"Times of Grace (album)\" target=\"_blank\">Times of Grace</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/A_Sun_That_Never_Sets\" title=\"A Sun That Never Sets\" target=\"_blank\">A Sun That Never Sets</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Neurosis_%26_Jarboe_(album)\" class=\"mw-redirect\" title=\"Neurosis & Jarboe (album)\" target=\"_blank\">Neurosis & Jarboe</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/The_Eye_of_Every_Storm\" title=\"The Eye of Every Storm\" target=\"_blank\">The Eye of Every Storm</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Given_to_the_Rising\" title=\"Given to the Rising\" target=\"_blank\">Given to the Rising</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Honor_Found_in_Decay\" title=\"Honor Found in Decay\" target=\"_blank\">Honor Found in Decay</a></i></li>\r\n<li><i><a href=\"https://en.wikipedia.org/wiki/Fires_Within_Fires\" title=\"Fires Within Fires\" target=\"_blank\">Fires Within Fires</a></i></li>\r\n</ul>\r\n', 'neurosis.jpg', 'Discography Neurosis', '', '0', '2018-02-16 21:32:31', '2018-02-16 21:32:31', 1),
(33, 'August Burns Red', '<h2>Discography[<a href=\"https://en.wikipedia.org/w/index.php?title=August_Burns_Red&amp;action=edit&amp;section=14\">edit</a>]</h2>\r\n\r\n<p>Main article:&nbsp;<a href=\"https://en.wikipedia.org/wiki/August_Burns_Red_discography\">August Burns Red discography</a></p>\r\n\r\n<ul>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Thrill_Seeker\">Thrill Seeker</a></em>&nbsp;(2005)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Messengers_(album)\">Messengers</a></em>&nbsp;(2007)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Constellations_(August_Burns_Red_album)\">Constellations</a></em>&nbsp;(2009)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Leveler_(album)\">Leveler</a></em>&nbsp;(2011)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/August_Burns_Red_Presents:_Sleddin%27_Hill\">August Burns Red Presents: Sleddin&#39; Hill</a></em>&nbsp;(2012)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Rescue_%26_Restore\">Rescue &amp; Restore</a></em>&nbsp;(2013)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Found_in_Far_Away_Places\">Found in Far Away Places</a></em>&nbsp;(2015)</li>\r\n	<li><em><a href=\"https://en.wikipedia.org/wiki/Phantom_Anthem\">Phantom Anthem</a></em>&nbsp;(2017)</li>\r\n</ul>', '1024px-AugustBurnsRed_April_2011_1520539696.jpg', 'A little heavy for a christian rock band!', 'This is my second post on this speedcore thrash band from  Lancaster, Pennsylvania.', '0', '2018-03-08 19:08:16', '2018-03-08 19:08:16', 1);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
