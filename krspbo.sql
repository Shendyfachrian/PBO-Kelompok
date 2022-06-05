-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2022 at 06:46 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krspbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `Nim` varchar(225) NOT NULL,
  `Nama` varchar(225) NOT NULL,
  `Prodi` varchar(225) NOT NULL,
  `Kode_Matkul` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`Nim`, `Nama`, `Prodi`, `Kode_Matkul`) VALUES
('5338866', 'jdajadff', 'IF', 'RWT2'),
('436', 'hfdh', 'hd', 'trsh'),
('436', 'hfdh', 'hd', 'jgjdjj'),
('436', 'hfdh', 'hd', 'hshj'),
('210', 'teh', 'IF', 'SK12'),
('210', 'teh', 'IF', 'SC23'),
('210', 'teh', 'IF', 'SBL12'),
('210', 'teh', 'IF', 'PWM14'),
('21& C:/Users/ASUS/AppData/Local/Programs/Python/Python310/python.exe \"d:/TUGAS KULIAH 2/PEMROGRAMAN BERORIENTASI OBJEK PRAKTEK/sistemkrs/connectortest.py\"', '& C:/Users/ASUS/AppData/Local/Programs/Python/Python310/python.exe \"d:/TUGAS KULIAH 2/PEMROGRAMAN BERORIENTASI OBJEK PRAKTEK/sistemkrs/connectortest.py\"', '210', 'SBL12'),
('210', 'teh', 'if', 'AP12'),
('5210411226', 'Fahri', 'IF', 'RWT2'),
('5210411226', 'Fahri', 'IF', 'SC23'),
('5210411226', 'Fahri', 'IF', 'BHS14'),
('5210411226', 'Fahri', 'IF', 'BHS14'),
('5210411226', 'Fahri', 'IF', 'MDPL90'),
('5210411226', 'Fahri', 'IF', 'EDC45'),
('5210411225', 'Fahri', 'IF', 'BHS14'),
('5210411236', 'Tabia', 'IF', 'MDPL90'),
('5210411236', 'Tabia', 'IF', 'PWM14'),
('123', 'Dilan', 'HI', 'PWM14'),
('12345678', 'TAKON', 'Agama', 'SK12'),
('52105210', 'UTY', 'IF', 'SC23'),
('123123', 'Aku', 'IF', 'SK12'),
('5210411237', 'royan', 'IF', 'SK12'),
('5210411237', 'royan', 'IF', 'SC23');

-- --------------------------------------------------------

--
-- Table structure for table `sks`
--

CREATE TABLE `sks` (
  `Nama_mk` varchar(225) NOT NULL,
  `Jumlah_sks` int(5) DEFAULT NULL,
  `Jadwal_mk` varchar(225) NOT NULL,
  `Kode_Matkul` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sks`
--

INSERT INTO `sks` (`Nama_mk`, `Jumlah_sks`, `Jadwal_mk`, `Kode_Matkul`) VALUES
('Aplikasi Automasi Perkantoran', 2, 'Sabtu 15.30 - 18.00', 'AAP09'),
('Algoritma Pemrograman', 3, 'Selasa 07.00 - 09.00', 'AP12'),
('Bahasa Indonesia', 3, 'Kamis 14.40 - 16.30', 'BHSI4'),
('English for Daily Conversation', 2, 'Jumat 14.40 - 15.30', 'EDC45'),
('Metodologi Desain Perangkat Lunak', 3, 'Sabtu 09.40 - 12.00', 'MDPL90'),
('Pengembangan Web MoBILE', 3, 'Senin 08.40 - 12.20', 'PWM14'),
('Rekayasa Web Teori', 3, 'Selasa 09.00 - 12.00', 'RWT2'),
('Sistem Bilangan', 3, 'Kamis 07.00 - 10.30', 'SBL12'),
('Sistem Cerdas', 3, 'Jumat 07.00 - 09.30', 'SC23'),
('Sistem Komputer', 2, 'Rabu 12.50 - 14.30', 'SK12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sks`
--
ALTER TABLE `sks`
  ADD PRIMARY KEY (`Kode_Matkul`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
