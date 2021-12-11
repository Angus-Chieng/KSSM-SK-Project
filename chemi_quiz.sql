-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 04:18 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chemi_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `idpengguna` varchar(12) NOT NULL,
  `password` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jantina` varchar(10) NOT NULL,
  `aras` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`idpengguna`, `password`, `nama`, `jantina`, `aras`) VALUES
('040227070227', '0227', 'ALVIN LIM JIA HE', 'LELAKI', 'PELAJAR'),
('040411081041', ' 1234', ' LIM LI KEIN', ' LELAKI', 'PELAJAR'),
('040429080925', '0925', ' JUSTIN CHEAH', ' LELAKI', 'PELAJAR'),
('040724060525', ' 1234', ' SIM YU HIN', ' LELAKI', 'PELAJAR'),
('040724080517', '0517', 'PENTADBIR SISTEM', 'LELAKI', 'ADMIN'),
('123456789123', '4444', 'PENTADBIR SISTEM', 'LELAKI', 'ADMIN'),
('191919191920', '1920', 'ALIBABA 2', 'LELAKI', 'PELAJAR'),
('191919191921', '1921', 'ALIBABA 3', 'PEREMPUAN', 'PELAJAR'),
('191919191922', '1922', 'ALIBABA 4', 'LELAKI', 'PELAJAR');

-- --------------------------------------------------------

--
-- Table structure for table `perekodan`
--

CREATE TABLE `perekodan` (
  `idperekodan` int(11) NOT NULL,
  `idpengguna` varchar(12) NOT NULL,
  `idtopik` int(10) NOT NULL,
  `skor` varchar(5) NOT NULL,
  `catatan_masa` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perekodan`
--

INSERT INTO `perekodan` (`idperekodan`, `idpengguna`, `idtopik`, `skor`, `catatan_masa`) VALUES
(9, '040227070227', 4, '3', '2021-12-04 02:01:51'),
(10, '040227070227', 3, '4', '2021-07-21 04:42:16'),
(14, '040227070227', 6, '2', '2021-12-06 14:03:29'),
(15, '040227070227', 7, '5', '2021-12-06 14:33:00'),
(16, '040227070227', 4, '1', '2021-12-06 14:19:32'),
(17, '040429080925', 4, '4', '2021-12-06 14:30:38'),
(18, '040429080925', 3, '4', '2021-12-06 14:31:46'),
(19, '040429080925', 3, '4', '2021-12-06 23:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `pilihan`
--

CREATE TABLE `pilihan` (
  `idpilihan` int(11) NOT NULL,
  `nom_soalan` int(10) NOT NULL,
  `jawapan` varchar(20) NOT NULL,
  `pilihan_jawapan` text NOT NULL,
  `idsoalan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pilihan`
--

INSERT INTO `pilihan` (`idpilihan`, `nom_soalan`, `jawapan`, `pilihan_jawapan`, `idsoalan`) VALUES
(1, 1, '0', 'NH3', 1),
(2, 1, '0', 'NH4 +', 1),
(3, 1, '1', 'OH -', 1),
(4, 1, '0', 'H+', 1),
(5, 2, '0', 'Natrium Oksida', 2),
(6, 2, '1', 'Kalsium Hidroksida', 2),
(7, 2, '0', 'Magnesium Oksida', 2),
(8, 2, '0', 'Aluminium Hidroksida', 2),
(13, 4, '0', 'Air melarutkan asid etanoik', 4),
(14, 4, '0', 'Air mengoksidakan asid etanoik', 4),
(15, 4, '0', 'Peneutralan asid etanoik berlaku di dalam air ', 4),
(16, 4, '1', 'Pengionan asid etanoik berlaku di dalam air', 4),
(17, 5, '0', 'Asid hidroklorik pekat dan magnesium', 5),
(18, 5, '1', 'Asid sulfurik pekat dan natrium hidroksida', 5),
(19, 5, '0', 'Asid hidroklorik cair dan kalium karbonat', 5),
(20, 5, '0', 'Asid sulfurik cair dan kalium klorida', 5),
(21, 5, '0', 'Mempunyai rasa yang pahit dan licin', 6),
(22, 5, '0', 'Larutan asid tidak boleh mengalirkan arus elektrik ', 6),
(23, 5, '0', 'Larutan asid mengandungi ion hidrogen sahaja', 6),
(24, 5, '1', 'Bahan yang mengion dalam air untuk menghasilkan ion hidrogen', 6),
(30, 2, '0', 'Larutan asid tidak boleh mengalirkan arus elektrik ', 8),
(31, 2, '0', 'Larutan asid mengandungi ion hidrogen sahaja', 8),
(32, 2, '1', 'Bahan yang mengion dalam air untuk menghasilkan ion hidrogen', 8),
(33, 1, '0', 'NH3', 9),
(34, 1, '0', 'NH4 +', 9),
(35, 1, '1', 'OH -', 9),
(36, 1, '0', 'H+', 9),
(37, 2, '0', 'Mempunyai rasa yang pahit dan licin', 10),
(38, 2, '0', 'Larutan asid tidak boleh mengalirkan arus elektrik ', 10),
(39, 2, '0', 'Larutan asid mengandungi ion hidrogen sahaja', 10),
(40, 2, '1', 'Bahan yang mengion dalam air untuk menghasilkan ion hidrogen', 10),
(41, 3, '0', 'Natrium Oksida', 11),
(42, 3, '0', 'Magnesium Oksida', 11),
(43, 3, '1', 'Kalsium Hidroksida', 11),
(44, 3, '0', 'Aluminium Hidroksida', 11),
(45, 4, '0', 'Air melarutkan asid etanoik', 12),
(46, 4, '1', 'Air mengoksidakan asid etanoik', 12),
(47, 4, '0', 'Peneutralan asid etanoik berlaku di dalam air ', 12),
(48, 4, '0', 'Pengionan asid etanoik berlaku di dalam air', 12),
(49, 5, '0', 'Asid hidroklorik pekat dan magnesium', 13),
(50, 5, '1', 'Asid sulfurik pekat dan natrium hidroksida', 13),
(51, 5, '0', 'Asid hidroklorik cair dan kalium karbonat', 13),
(52, 5, '0', 'Asid sulfurik cair dan kalium klorida', 13),
(53, 1, '0', 'Larutan yang mengandungi banyak zat terlarut dalam pelarut yang sedikit', 14),
(54, 1, '0', 'Larutan yang mengandungi sedikit zat terlarut dalam pelarut yang banyak', 14),
(55, 1, '1', 'Larutan yang kepekatannya diketahui', 14),
(56, 1, '0', 'Larutan yang mempunyai zat terlarut berlebihan', 14),
(57, 2, '1', '120cm3', 15),
(58, 2, '0', '140cm3', 15),
(59, 2, '0', '160cm3', 15),
(60, 2, '0', '180cm3', 15),
(61, 3, '0', 'Pembantu makmal perlu menimbang 0.05g natrium karbonat', 16),
(62, 3, '1', 'Pembantu makmal perlu menimbang 5.30g natrium karbonat', 16),
(63, 3, '0', 'Pembantu makmal perlu melarutkan natrium karbonat dalam air suling', 16),
(64, 3, '0', 'Pembantu makmal air suling ke dalam kelalalang volumetrik ', 16),
(65, 1, '0', '0.002 mol', 17),
(66, 1, '0', '0.02mol', 17),
(67, 1, '1', '0.2mol', 17),
(68, 1, '0', '2.0mol', 17),
(69, 2, '0', '0.1dm3 of 1.0moldm-3', 18),
(70, 2, '0', '0.2dm3 of 1.0moldm-3', 18),
(71, 2, '0', '0.3dm3 of 1.0moldm-3', 18),
(72, 2, '1', '0.4dm3 of 1.0moldm-3', 18),
(73, 1, '0', 'Hablur yang berlainan mempunyai bentuk geometri yang berlainan', 19),
(74, 1, '0', 'Mempunyai permukaan yang rata, sisi yang lurus dan sudut yang tajam', 19),
(75, 1, '1', 'Tidak mempunyai sudut tetap antara dua permukaan bersebelahan', 19),
(76, 1, '0', 'Hablur yang sama dengan saiz yang berbeza mempunyai bentuk geometri yang sama', 19),
(77, 2, '1', 'Kalsium Sulfat, CaSO4 digunakan dalam racun perosak ', 20),
(78, 2, '0', 'Kalsium Nitrat, NaNO3 digunakan untuk mengawet daging yang telah diproses', 20),
(79, 2, '0', 'Ammonium Nitrat, NH4NO3 digunakan sebagai baja', 20),
(80, 2, '0', 'Natrium Bikarbonat, NaHCO3 digunakan untuk menaikkan adunan', 20),
(81, 3, '1', 'CaSO4', 21),
(82, 3, '0', 'FeSO4', 21),
(83, 3, '0', 'K2SO4', 21),
(84, 3, '0', 'BaSO4', 21),
(85, 1, '0', 'Asid sulfurik ialah asid yang lebih kuat', 22),
(86, 1, '0', ' Asid sulfurik lebih mudah larut dalam air', 22),
(87, 1, '1', 'Asid sulfurik ialah asid diprotik', 22),
(88, 1, '0', 'Asid sulfurik mengion lengkap dalam air', 22),
(89, 2, '0', 'Tidak boleh meneutralkan alkali', 23),
(90, 2, '0', 'Nilai pH lebih daripada 7', 23),
(91, 2, '0', 'Boleh menukarkan warna kertas litmus merah kepada biru', 23),
(92, 2, '1', 'Mengion separa lengkap dalam air untuk menghasilkan ion hidrogen', 23),
(93, 3, '0', 'HNO3', 24),
(94, 3, '0', 'HCl', 24),
(95, 3, '0', 'NaOH', 24),
(96, 3, '1', 'NH3', 24),
(97, 4, '1', 'Alkali bertindak balas dengan garam ammonium untuk menghasilkan garam, air dan gas ammonia', 25),
(98, 4, '0', 'Alkali bertindak balas dengan garam ammonium untuk meghasilkan garam, air, gas ammonia dan gas hidrogen', 25),
(99, 4, '0', 'Alkali bertindak balas dengan ion logam untuk menghasilkan logam hidroksida tak larut dan kation daripada alkali', 25),
(100, 4, '0', 'Alkali bertindak balas dengan ion logam untuk menghasilkan logal hidroksida boleh larut dan kation daripada alkali ', 25),
(101, 5, '0', 'Asid hidroklorik bertindak dengan bahan P untuk menghasilkan garam dan gas ammonia', 26),
(102, 5, '0', 'Asid hidroklorik bertindak dengan bahan P untuk menghasilkan garam dan gas hidrogen', 26),
(103, 5, '0', 'Asid hidroklorik bertindak dengan bahan P untuk menghasilkan garam, air dan gas hidrogen', 26),
(104, 5, '1', 'Asid hidroklorik bertindak dengan bahan P untuk menghasilkan garam, air dan gas karbon dioksida', 26),
(105, 3, '0', '0.5 mol dm-3', 27),
(106, 3, '0', '1.0 mol dm-3', 27),
(107, 3, '0', '1.5 mold m-3', 27),
(108, 3, '1', '2.0mol dm-3', 27),
(109, 4, '0', 'Kepekatan', 28),
(110, 4, '0', 'Jisim ', 28),
(111, 4, '1', 'Isi Padu Air Suling', 28),
(112, 4, '0', 'Kemolaran', 28),
(113, 5, '0', 'Larutan Asid', 29),
(114, 5, '0', 'Larutan Bes', 29),
(115, 5, '1', 'Larutan Stok', 29),
(116, 5, '0', 'Air Suling', 29),
(117, 4, '0', 'I dan III sahaja', 30),
(118, 4, '0', 'I, II dan III sahaja', 30),
(119, 4, '0', 'II dan IV sahaja', 30),
(120, 4, '1', 'I, II, III dan IV', 30),
(121, 5, '0', 'Pepejal X terenap', 31),
(122, 5, '0', 'Gas kuning kehijauan dengan bau sengit terbebas', 31),
(123, 5, '0', 'Gas yang menyalakan semula kayu uji berbara terbebas', 31),
(124, 5, '1', 'Gas yang menghasilkan bunyi \"pop\" apabila diuji dengan kayu uji bernyala terbebas', 31),
(125, 4, '0', 'Barium sulfat', 32),
(126, 4, '0', 'Plumbum (II) klorida', 32),
(127, 4, '1', 'Kalium karbonat', 32),
(128, 4, '0', 'Kalsium sulfat', 32),
(129, 5, '1', 'Garam tak larut terbentuk', 33),
(130, 5, '0', 'Tindak balas peneutralan berlaku', 33),
(131, 5, '0', 'Mendakan hijau terbentuk', 33),
(132, 5, '0', 'Larutan berwarna kuning terbentuk', 33);

-- --------------------------------------------------------

--
-- Table structure for table `soalan`
--

CREATE TABLE `soalan` (
  `idsoalan` int(11) NOT NULL,
  `nom_soalan` int(11) NOT NULL,
  `soalan` text NOT NULL,
  `gambarajah` varchar(20) NOT NULL,
  `idtopik` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soalan`
--

INSERT INTO `soalan` (`idsoalan`, `nom_soalan`, `soalan`, `gambarajah`, `idtopik`) VALUES
(1, 1, 'Antara yang berikut, yang manakah menyebabkan sifat alkali larutan ammonia akueus?', '', 3),
(10, 2, 'Pernyataan yang manakah betul tentang asid?', '', 3),
(11, 3, 'Bahan yang manakah adalah suatu alkali ?', '', 3),
(12, 4, 'Pernyataan yang manakah menerangkan mengapa air diperlukan untuk menunjukkan sifat keasidan asid etanoik?', '', 3),
(13, 5, 'Antara berikut, pasangan yang manakah akan bertindak balas membentuk air dan garam sahaja?', '', 3),
(14, 1, 'Apakah yang dimaksudkan dengan larutan piawai?', '', 4),
(15, 2, 'Hitung isi padu air suling yang diperlukan untuk ditambahkan kepada 40cm3 larutan natrium hidroksida, NaOH 1.0 moldm-3 untuk menghasilkan larutan natrium hidroksida, NaOH 0.25 moldm-3.', '', 4),
(16, 3, 'Pembantu makmal perlu menyediakan larutan piawai 250cm3 natrium karbonat, Na2CO3 0.2moldm-3. Apakah langkah pertama yang perlu dilakukannya untuk menyediakan larutan piawai?\r\n[Jisim atom relatif: Na=23, C=12, O=16]', '', 4),
(17, 1, 'Berapakh bilangan mol dalam 200cm3 asid hidroklorik 1.0 moldm-3?', '', 5),
(18, 2, 'Larutan yang manakah mengandungi paling banyak ion hidrogen? \r\n		', '', 5),
(19, 1, 'Antara berikut, yang manakah bukan sifat fizik hablur garam?', '', 6),
(20, 2, 'Antara berikut, yang manakah bukan kegunaan garam yang betul?', '', 6),
(21, 3, 'Apakah yang digunakan untuk membuat Plaster of Paris?', '', 6),
(22, 1, 'Mengapakah nilai pH bagi asid nitrik adalah berbeza daripada asid sulfurik?', '', 7),
(23, 2, 'Antara berikut, yang manakah benar tentang asid lemah?', '', 7),
(24, 3, 'Antara berikut, yang manakah mengion separa di dalam air?', '', 7),
(25, 4, 'Antara berikut, yang manakah tidak benar tentang alkali?', '', 7),
(26, 5, 'Pernyataan yang manakah benar tentang sifat tersebut?', '', 7),
(27, 3, 'Kepekatan asid hidroklorik, HCl digunakan untuk pelunturan tekstil ialah 73g dm-3. Berapakah kemolaran asid hidroklorik, HCl?\r\n[Jisim atom relatif: H=1, Cl = 35.5]', '', 5),
(28, 4, 'Apakah nilai yang perlu disukat dengan tepat dalam penyediaan larutan piawai?', '', 4),
(29, 5, 'Air dicampurkan kepada suatu larutan piawai pekat dikenali________________.', '', 4),
(30, 4, 'Apakah ion-ion yang terdapat di dalam larutan akueus natrium sulfat?\r\nI. ion natrium\r\nII. ion hidrogen\r\nIII. ion sulfat\r\nIV. ion hidroksida', '', 5),
(31, 5, 'Logam X berada di atas hidrogen dalam siri elektrokimia. Apabila larutan X klorida cair dielektrolisiskan dengan menggunakan elektrod platinum, apakah pemerhatian yang boleh dibuat di katod?', '', 5),
(32, 4, 'Garam manakah adalah garam terlarut?', '', 6),
(33, 5, 'Persamaan kimia di bawah mewakili tindak balas kimia di antara dua sebatian.\r\n\r\nAgNO3 + HCl → AgCl + HNO3\r\n\r\n\r\n﻿Yang manakah adalah benar mengenai tindak balas tersebut ?', '', 6);

-- --------------------------------------------------------

--
-- Table structure for table `topik`
--

CREATE TABLE `topik` (
  `idtopik` int(11) NOT NULL,
  `topik` varchar(30) NOT NULL,
  `markah` int(11) NOT NULL,
  `idsubjek` int(10) NOT NULL,
  `idpengguna` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topik`
--

INSERT INTO `topik` (`idtopik`, `topik`, `markah`, `idsubjek`, `idpengguna`) VALUES
(3, 'Peranan Air', 5, 0, 0),
(4, 'Larutan Piawai', 5, 0, 0),
(5, 'Kepekatan Larutan Akueus', 5, 0, 0),
(6, 'Garam, Hablur dan Kegunaannya', 5, 0, 0),
(7, 'Asid dan Alkali', 5, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`idpengguna`);

--
-- Indexes for table `perekodan`
--
ALTER TABLE `perekodan`
  ADD PRIMARY KEY (`idperekodan`);

--
-- Indexes for table `pilihan`
--
ALTER TABLE `pilihan`
  ADD PRIMARY KEY (`idpilihan`);

--
-- Indexes for table `soalan`
--
ALTER TABLE `soalan`
  ADD PRIMARY KEY (`idsoalan`);

--
-- Indexes for table `topik`
--
ALTER TABLE `topik`
  ADD PRIMARY KEY (`idtopik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `perekodan`
--
ALTER TABLE `perekodan`
  MODIFY `idperekodan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pilihan`
--
ALTER TABLE `pilihan`
  MODIFY `idpilihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `soalan`
--
ALTER TABLE `soalan`
  MODIFY `idsoalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `topik`
--
ALTER TABLE `topik`
  MODIFY `idtopik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
