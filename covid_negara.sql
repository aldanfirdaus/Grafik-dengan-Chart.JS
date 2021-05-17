-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17 Mei 2021 pada 12.12
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `covid_negara`
--

CREATE TABLE `covid_negara` (
  `id` int(111) NOT NULL,
  `negara` varchar(50) NOT NULL,
  `total_cases` int(255) NOT NULL,
  `new_cases` int(255) NOT NULL,
  `new_death` int(255) NOT NULL,
  `total_recovered` int(255) NOT NULL,
  `active_cases` int(255) NOT NULL,
  `total_death` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `covid_negara`
--

INSERT INTO `covid_negara` (`id`, `negara`, `total_cases`, `new_cases`, `new_death`, `total_recovered`, `active_cases`, `total_death`) VALUES
(2, 'USA', 33515308, 30152, 370, 26507427, 5997957, 596179),
(3, 'India', 22991927, 329517, 3879, 19021207, 3618423, 250025),
(4, 'Brazil', 15214030, 29240, 1018, 13759125, 1093365, 423436),
(5, 'France', 5780379, 3292, 292, 4917393, 675960, 106684),
(6, 'Turkey', 5044936, 13604, 282, 4743871, 129487, 43311),
(7, 'Russia', 4888727, 8465, 321, 4502906, 268301, 113647),
(8, 'UK', 4437217, 2357, 4, 4250699, 45674, 127609),
(9, 'Italy', 4116287, 5080, 168, 3619586, 332830, 123031),
(10, 'Spain', 3581392, 4579, 35, 1274808, 228120, 78895),
(11, 'Germany', 3535354, 7814, 110, 3175600, 224747, 85481);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `covid_negara`
--
ALTER TABLE `covid_negara`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
