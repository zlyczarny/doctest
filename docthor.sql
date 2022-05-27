-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 27 Maj 2022, 12:54
-- Wersja serwera: 10.4.24-MariaDB-cll-lve
-- Wersja PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `cskekrnyhv_docthor`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220401075209', '2022-04-01 09:52:21', 283),
('DoctrineMigrations\\Version20220401122651', '2022-04-01 14:26:56', 30),
('DoctrineMigrations\\Version20220402092802', '2022-04-02 11:28:07', 25),
('DoctrineMigrations\\Version20220403102002', '2022-04-03 12:20:15', 25),
('DoctrineMigrations\\Version20220403151022', '2022-04-03 17:11:21', 105),
('DoctrineMigrations\\Version20220504095222', '2022-05-04 11:54:33', 313),
('DoctrineMigrations\\Version20220504123520', '2022-05-04 14:35:31', 65);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `inn_kat1`
--

CREATE TABLE `inn_kat1` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `werja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `inn_kat1`
--

INSERT INTO `inn_kat1` (`id`, `nazwa`, `opis`, `autor`, `data`, `aktualny`, `werja`, `image_name`, `image_size`) VALUES
(1, 'Wniosek urlopowy', '<div>dot. urlopu wypoczynkowego</div>', 'Adam Kowalski', '2022-04-02', 1, 3, '[randomhash.pdf', 0),
(2, 'Wniosek na dofinansowanie', '<div>dot. dofinansowania okularów</div>', 'Adam Kowalski', '2022-04-01', 1, 1, 'c2fc20adbfbea046c72968eee5bcd1a9c8a07a32.xlsx', 0),
(3, 'Dokument', '<div>asd</div>', 'Adam Kowalski', '2022-04-01', 1, 1, '3dfa6178dc81003876799a69971e7b1e130bff8f.jpg', 0),
(4, 'asd', '<div>asd</div>', 'asd', '2022-04-02', 1, 1, '64638bff2b9ded196848ad9c393609793b123c12.txt', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `inn_kat2`
--

CREATE TABLE `inn_kat2` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `inn_kat2`
--

INSERT INTO `inn_kat2` (`id`, `nazwa`, `opis`, `autor`, `data`, `aktualny`, `wersja`, `image_name`, `image_size`) VALUES
(1, 'test', '<ul><li>test</li></ul>', 'Adam', '2022-04-06', 1, 2, 'ca346252c00f0f2dc65dd06933102b600d00ef68.txt', 0),
(2, 'PIT 11', '<div>asddd</div>', 'Adam', '2022-04-20', 1, 1, 'c81a17c7eeb8b7f1efd0fcca80738f19d1dc37a9.pdf', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `inn_kat3`
--

CREATE TABLE `inn_kat3` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `inn_kat4`
--

CREATE TABLE `inn_kat4` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kadr_kat1`
--

CREATE TABLE `kadr_kat1` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kadr_kat2`
--

CREATE TABLE `kadr_kat2` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kadr_kat3`
--

CREATE TABLE `kadr_kat3` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kadr_kat4`
--

CREATE TABLE `kadr_kat4` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksie_kat1`
--

CREATE TABLE `ksie_kat1` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `ksie_kat1`
--

INSERT INTO `ksie_kat1` (`id`, `nazwa`, `opis`, `autor`, `data`, `aktualny`, `wersja`, `image_name`, `image_size`, `updated_at`) VALUES
(1, 'asd', '<div>asd</div>', 'asd', '2022-04-06', 0, 1, 'fd6c6a03aef3c8261490da35981f080ad253e2dd.txt', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksie_kat2`
--

CREATE TABLE `ksie_kat2` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksie_kat3`
--

CREATE TABLE `ksie_kat3` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mar_kat1`
--

CREATE TABLE `mar_kat1` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `mar_kat1`
--

INSERT INTO `mar_kat1` (`id`, `nazwa`, `opis`, `autor`, `data`, `aktualny`, `wersja`, `image_name`, `image_size`) VALUES
(1, 'umowa z Biedronką', '<ul><li>umowa na produkty blabla</li><li>coś tam cośtam</li></ul><div><br></div>', 'Adam Kowalski', '2022-04-01', 1, 1, '6765032f2aeb890c44761ccaa6b9a7f38231e0b0.pdf', 0),
(2, 'umowa z Lidlem', '<div>trolololo</div>', 'Adam Kowalski', '2022-04-08', 1, 1, '1faaced52d636769114991e97f5666eb55c9d5a1.pdf', 0),
(3, 'umowa z Kauflandem', '<div>umowa dot. sprzedaży mięsa</div>', 'Adam Kowalski', '2022-02-01', 1, 1, '6195e6d34989d8abca1e8832d20215349bb6e09f.pdf', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mar_kat2`
--

CREATE TABLE `mar_kat2` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mar_kat3`
--

CREATE TABLE `mar_kat3` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `reset_password_request`
--

INSERT INTO `reset_password_request` (`id`, `user_id`, `selector`, `hashed_token`, `requested_at`, `expires_at`) VALUES
(5, 2, 'J6fXCoykIfPOe9zF2PTo', 'TNY0a4HLIklDblhsIlf6LBQvK3FSrN8WPjj5JIKJHxI=', '2022-05-25 21:45:49', '2022-05-25 22:45:49'),
(6, 2, 'Q2x4DSDnhNMtgcOEeSox', '+tyZDFzJAMEBWReRdNcXhXR4VSesNxWQ+jFX+8gvYKY=', '2022-05-26 11:19:40', '2022-05-26 12:19:40'),
(7, 2, 'boKtjKmo9ixQ0Knaxhp7', 'lEGgxvYLgdFVpiBbSTnidgk00rQ5Gkfll+Zx0UBFaPg=', '2022-05-26 12:23:08', '2022-05-26 13:23:08'),
(8, 1, 'BvrO9aF0PdTk5HZ4wJsX', 'CsqHa4kJfLB2SMhnsF778he34JOt6rm4rUwa65MrxBo=', '2022-05-26 13:54:41', '2022-05-26 14:54:41');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sprz_kat1`
--

CREATE TABLE `sprz_kat1` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sprz_kat2`
--

CREATE TABLE `sprz_kat2` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sprz_kat3`
--

CREATE TABLE `sprz_kat3` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sprz_kat4`
--

CREATE TABLE `sprz_kat4` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `aktualny` tinyint(1) NOT NULL,
  `wersja` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktywny` tinyint(1) NOT NULL,
  `rejestracja` date NOT NULL,
  `imie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nazwisko` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stanowisko` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dzial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `username`, `roles`, `password`, `email`, `aktywny`, `rejestracja`, `imie`, `nazwisko`, `stanowisko`, `dzial`) VALUES
(1, 'admin', '[\"ROLE_ADMIN\"]', '$2y$13$LSY0D4/aw0Fl23MS/lJ3HO67Z4DDaHuzZnZ85/3GLgFgblN6mH/xm', 'zlyczarus@int.pl', 1, '2022-04-01', 'admin', 'admin', 'IT specialist', 'IT'),
(2, 'tbartoszewski', '[\"ROLE_MARKEDIT\"]', '$2y$13$AKsrXOLOIvlexEAxJB.7ju/hCRgovf2B3BBqVN4W1WdDk1ldvAYjK', 'czarny-nt@o2.pl', 1, '2022-03-31', 'Tomasz', 'Bartoszewski', 'Markom', 'Marketing'),
(3, 'bmaciejewska', '[\"ROLE_ADMIN\"]', '$2y$13$DGJ74AG17TH5RLV4k5xZz.Mb7Z7P7cS69/QdrkFfX6YIC27EU60qu', 'zlyczarny@gmail.cpm', 1, '2022-02-02', 'bozena', 'Maciejewska', 'Dyrektor Kadr', 'Kadry'),
(4, 'bmaciejewska2', '[\"ROLE_SPRZ\"]', '$2y$13$ZDDOTov4lNHhtMsTc5xBheeYbsOypARE.wJDeaDZSbc55VGNLgM2G', 'bkowal@pocz.pl', 1, '2022-04-02', 'Bożena', 'Maciejewska', 'Sprzedawca', 'Sprzedaz'),
(5, 'akrzyzanowski', '[\"ROLE_KSIE\"]', '$2y$13$W9XQtU0NQBN1sle30Xq9Ve33l93k.G1upjiuH/YZ/PWmZ2EkiLSse', 'akrzyzan@poczta.pl', 1, '2022-05-03', 'Adam', 'Krzyżanowski', 'Specjalista ds Księgowości', 'Ksiegowosc'),
(7, 'mdudziak', '[\"ROLE_SPRZ\"]', '$2y$13$OOrhT1qV48TbKkViauyc7u86Hyj7m89jwsESti96WnohIspxWPEJe', 'mdudziak@poczta.pl', 1, '2022-05-03', 'Mikołaj', 'Dudziak', 'Sprzedawca', 'Sprzedaz');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indeksy dla tabeli `inn_kat1`
--
ALTER TABLE `inn_kat1`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `inn_kat2`
--
ALTER TABLE `inn_kat2`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `inn_kat3`
--
ALTER TABLE `inn_kat3`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `inn_kat4`
--
ALTER TABLE `inn_kat4`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `kadr_kat1`
--
ALTER TABLE `kadr_kat1`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `kadr_kat2`
--
ALTER TABLE `kadr_kat2`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `kadr_kat3`
--
ALTER TABLE `kadr_kat3`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `kadr_kat4`
--
ALTER TABLE `kadr_kat4`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ksie_kat1`
--
ALTER TABLE `ksie_kat1`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ksie_kat2`
--
ALTER TABLE `ksie_kat2`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ksie_kat3`
--
ALTER TABLE `ksie_kat3`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `mar_kat1`
--
ALTER TABLE `mar_kat1`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `mar_kat2`
--
ALTER TABLE `mar_kat2`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `mar_kat3`
--
ALTER TABLE `mar_kat3`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Indeksy dla tabeli `sprz_kat1`
--
ALTER TABLE `sprz_kat1`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sprz_kat2`
--
ALTER TABLE `sprz_kat2`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sprz_kat3`
--
ALTER TABLE `sprz_kat3`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sprz_kat4`
--
ALTER TABLE `sprz_kat4`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9F85E0677` (`username`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `inn_kat1`
--
ALTER TABLE `inn_kat1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `inn_kat2`
--
ALTER TABLE `inn_kat2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `inn_kat3`
--
ALTER TABLE `inn_kat3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `inn_kat4`
--
ALTER TABLE `inn_kat4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `kadr_kat1`
--
ALTER TABLE `kadr_kat1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `kadr_kat2`
--
ALTER TABLE `kadr_kat2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `kadr_kat3`
--
ALTER TABLE `kadr_kat3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `kadr_kat4`
--
ALTER TABLE `kadr_kat4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `ksie_kat1`
--
ALTER TABLE `ksie_kat1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `ksie_kat2`
--
ALTER TABLE `ksie_kat2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `ksie_kat3`
--
ALTER TABLE `ksie_kat3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `mar_kat1`
--
ALTER TABLE `mar_kat1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `mar_kat2`
--
ALTER TABLE `mar_kat2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `mar_kat3`
--
ALTER TABLE `mar_kat3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `sprz_kat1`
--
ALTER TABLE `sprz_kat1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `sprz_kat2`
--
ALTER TABLE `sprz_kat2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `sprz_kat3`
--
ALTER TABLE `sprz_kat3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `sprz_kat4`
--
ALTER TABLE `sprz_kat4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
