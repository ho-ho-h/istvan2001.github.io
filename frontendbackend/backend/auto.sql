-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Okt 18. 11:20
-- Kiszolgáló verziója: 10.4.17-MariaDB
-- PHP verzió: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `auto`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `marka` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `tipus` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `szin` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `gyartasiev` int(11) NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `cars`
--

INSERT INTO `cars` (`id`, `marka`, `tipus`, `szin`, `gyartasiev`, `ar`) VALUES
(1, 'skoda', 'fabia', 'fehér', 2002, 300000),
(2, 'opel', 'corsa', 'fekete', 2010, 3000000),
(3, 'skoda', 'octavia', 'fekete', 2012, 5000000),
(4, 'skoda', 'fabia', 'kék', 2001, 20000),
(5, 'skoda', 'fabia', 'kék', 2001, 20000),
(6, 'skoda', 'fabia', 'kék', 2001, 20000),
(7, 'skoda', 'fabia', 'kék', 2001, 20000),
(8, 'skoda', 'fabia', 'kék', 2001, 20000),
(9, 'skoda', 'fabia', 'kék', 2001, 20000),
(10, 'skoda', 'fabia', 'kék', 2001, 20000),
(11, 'skoda', 'fabia', 'kék', 2001, 20000),
(12, 'skoda', 'fabia', 'kék', 2001, 20000),
(13, 'skoda', 'fabia', 'kék', 2001, 20000),
(14, 'skoda', 'fabia', 'kék', 2001, 20000),
(15, 'skoda', 'fabia', 'kék', 2001, 20000),
(16, 'skoda', 'fabia', 'kék', 2001, 20000);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
