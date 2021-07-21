-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 16 Cze 2021, 14:52
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `biuropodrozy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacja`
--

CREATE TABLE `rezerwacja` (
  `ID_rezerwacja` int(11) NOT NULL,
  `imie` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `kierunek` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `liczba_os` int(11) NOT NULL,
  `liczba_tyg` int(11) NOT NULL,
  `kwota` double NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rezerwacja`
--

INSERT INTO `rezerwacja` (`ID_rezerwacja`, `imie`, `nazwisko`, `kierunek`, `liczba_os`, `liczba_tyg`, `kwota`, `data`) VALUES
(1, 'Jan', 'Lis', 'Włochy', 4, 1, 3200, '0000-00-00'),
(2, 'Jerzy', 'Załucki', 'Polska', 6, 1, 3000, '2021-05-29'),
(3, 'Anna', 'Bielawska', 'Włochy', 5, 1, 4000, '2021-05-29'),
(4, 'Jan', 'Kowalski', 'Włochy', 6, 1, 4800, '2021-05-31'),
(5, 'ałucka', '', 'Grecja', 5, 1, 4500, '2021-05-31'),
(6, 'Natalia', 'Załucka', 'Grecja', 5, 1, 4500, '2021-05-31'),
(7, 'Tomasz ', 'Rudy', 'Polska', 6, 1, 3000, '2021-05-31'),
(8, 'Jan', 'Lis', 'Indonezja', 7, 2, 28000, '2021-05-31'),
(9, 'Jan', 'Lis', 'Anglia', 2, 1, 2400, '2021-05-31'),
(10, 'Jakub', 'Dąb', 'Grecja', 3, 1, 2700, '2021-05-31'),
(11, 'Karol', 'Gruszka', 'Indonezja', 2, 2, 8000, '2021-06-01'),
(12, 'Anna', 'Młynek', 'Polska', 2, 1, 1000, '2021-06-04'),
(13, 'Tomasz', 'Kot', 'Kalifornia', 3, 2, 66000, '2021-06-11'),
(14, 'Jerzy', 'Załucki', 'Kalifornia', 5, 2, 110000, '2021-06-12'),
(15, 'Jan', 'Rudy', 'Malta', 4, 1, 4000, '2021-06-12');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wycieczka`
--

CREATE TABLE `wycieczka` (
  `ID_wycieczka` int(11) NOT NULL,
  `kraj` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `cena` double NOT NULL,
  `termin` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `wycieczka`
--

INSERT INTO `wycieczka` (`ID_wycieczka`, `kraj`, `cena`, `termin`) VALUES
(1, 'Polska', 500, 1),
(2, 'Włochy', 800, 1),
(3, 'Malta', 1000, 1),
(4, 'Grecja', 900, 1),
(5, 'Anglia', 1200, 1),
(6, 'Indonezja', 2000, 2),
(7, 'Kalifornia', 11000, 2);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `rezerwacja`
--
ALTER TABLE `rezerwacja`
  ADD PRIMARY KEY (`ID_rezerwacja`);

--
-- Indeksy dla tabeli `wycieczka`
--
ALTER TABLE `wycieczka`
  ADD PRIMARY KEY (`ID_wycieczka`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `rezerwacja`
--
ALTER TABLE `rezerwacja`
  MODIFY `ID_rezerwacja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `wycieczka`
--
ALTER TABLE `wycieczka`
  MODIFY `ID_wycieczka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
