-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2017 at 12:23 AM
-- Server version: 5.7.16-0ubuntu0.16.10.1
-- PHP Version: 7.0.13-0ubuntu0.16.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ekost`
--
CREATE DATABASE IF NOT EXISTS `ekost` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ekost`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `kost`
--

CREATE TABLE `kost` (
  `id_kost` int(11) NOT NULL,
  `id_pemilik` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `tersedia` int(2) NOT NULL,
  `status` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `fasilitas` text NOT NULL,
  `harga_3bulan` int(9) NOT NULL,
  `harga_6bulan` int(9) NOT NULL,
  `harga_pertahun` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kost`
--

INSERT INTO `kost` (`id_kost`, `id_pemilik`, `nama`, `alamat`, `latitude`, `longitude`, `tersedia`, `status`, `fasilitas`, `harga_3bulan`, `harga_6bulan`, `harga_pertahun`) VALUES
(1, 1, 'Kontrakan Sudjiman', 'Karangbendo Kulon, Banguntapan RT.04 RW.08', -7.7903, 110.404, 3, 'Laki-laki', 'Kamar mandi dalam, Kasur, Bantal, Lemari', 50000, 80000, 120000),
(2, 1, 'Kost Sudjiman', 'Karangbendo Kulon, Banguntapan RT.04 RW.04', -7.78978, 110.405, 12, 'Perempuan', 'Kamar mandi dalam, Kasur, Bantal', 40000, 50000, 1200000),
(3, 2, 'Kost Mbah Tomo', 'Karangbendo Wetan, Banguntapan RT.02 RW.06', -7.79179, 110.406, 7, 'Laki-laki', 'Kamar mandi dalam, Kasur', 90000, 120000, 1000000),
(4, 2, 'Kost Garden', 'Karangbendo Kidul, Banguntapan RT.01 RW.06', -7.79245, 110.404, 9, 'Laki-laki', 'Kamar mandi dalam, Bantal', 30000, 120000, 7000000),
(5, 1, 'Kost Putri Malu', 'Karangbendo Lor, Banguntapan RT.09 RW.08', -7.78901, 110.407, 12, 'Laki-laki', 'Kasur, Bantal', 20000, 80000, 1000000),
(6, 2, 'Kontrakan Azizah', 'Karangbendo Kulon, Banguntapan RT.04 RW.08', -7.79163, 110.404, 3, 'Perempuan', 'AC, Lemari, Kasur', 60000, 120000, 1000000),
(7, 2, 'Kost Putra Pleangi', 'Karangbendo Wetan, Banguntapan RT.03 RW.10', -7.79206, 110.404, 5, 'Laki-laki', 'AC, Lemari, Kasur, Kamar mandi dalam', 75000, 800000, 800000),
(8, 1, 'Kontrakan Indah', 'Karangbendo kidul, Banguntapan RT.14 RW.3', -7.78994, 110.407, 11, 'Perempuan', 'Kamar mandi dalam, Lemari, Kasur, Kipas, Bantal', 120000, 8000000, 90000000);

-- --------------------------------------------------------

--
-- Table structure for table `pemilik`
--

CREATE TABLE `pemilik` (
  `id_pemilik` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telepon` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemilik`
--

INSERT INTO `pemilik` (`id_pemilik`, `nama`, `alamat`, `telepon`, `email`, `username`, `password`) VALUES
(1, 'Pemilik Kost', 'Karangbendo Wetan RT. 02 RW.08', '081234567890', 'pemilik@gmail.com', 'pemilik', '58399557dae3c60e23c78606771dfa3d'),
(2, 'imam', 'jogja', '08970008875', 'imam.digmi@gmail.com', 'imamdigmi', 'd41d8cd98f00b204e9800998ecf8427e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `kost`
--
ALTER TABLE `kost`
  ADD PRIMARY KEY (`id_kost`),
  ADD KEY `fk_pemilik` (`id_pemilik`);

--
-- Indexes for table `pemilik`
--
ALTER TABLE `pemilik`
  ADD PRIMARY KEY (`id_pemilik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kost`
--
ALTER TABLE `kost`
  MODIFY `id_kost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pemilik`
--
ALTER TABLE `pemilik`
  MODIFY `id_pemilik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `kost`
--
ALTER TABLE `kost`
  ADD CONSTRAINT `kost_ibfk_1` FOREIGN KEY (`id_pemilik`) REFERENCES `pemilik` (`id_pemilik`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
