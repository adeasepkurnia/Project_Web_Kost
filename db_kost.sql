-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2020 at 01:47 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kost`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('ASEP', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `hunian`
--

CREATE TABLE `hunian` (
  `id_hunian` int(15) NOT NULL,
  `nama_hunian` varchar(100) NOT NULL,
  `jenis_hunian` varchar(100) NOT NULL,
  `deskripsi_hunian` text NOT NULL,
  `status_hunian` varchar(100) NOT NULL,
  `harga_hunian` int(15) NOT NULL,
  `gambar` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hunian`
--

INSERT INTO `hunian` (`id_hunian`, `nama_hunian`, `jenis_hunian`, `deskripsi_hunian`, `status_hunian`, `harga_hunian`, `gambar`) VALUES
(14, 'Kontrakan coklat A01', 'Kontrakan', '2 Kamar tidur, 1 dapur, 1 kamar mandi, 1 ruang tamu, tempat parkiran', 'Available', 1000000, '1511009066.jpg'),
(16, 'Kontrakan coklat A02', 'Kontrakan', '2 Kamar tidur, 1 dapur, 1 kamar mandi, 1 ruang tamu, tempat parkiran, ', 'Sold out', 1000000, '1511009330.jpg'),
(17, 'Kontrakan abu-abu B01', 'Kontrakan', '2 Kamar tidur lengkap dengan kasur, 1 dapur, 1 kamar mandi, 1 ruang tamu', 'Sold Out', 1250000, '1511009552.jpg'),
(18, 'Kontrakan abu-abu B02', 'Kontrakan', '2 Kamar tidur  + AC, 1 dapur, 1 kamar mandi, 1 ruang tamu', 'Available', 1500000, '1511009651.jpg'),
(19, 'Kontrakan abu-abu C01', 'Kontrakan', '2 Kamar tidur, 1 dapur, 1 kamar mandi, 1 ruang tamu', 'Sold Out', 1300000, '1511009877.jpg'),
(20, 'Kontrakan abu-abu C02', 'Kontrakan', '2 Kamar tidur + AC, 1 dapur, 1 kamar mandi, 1 ruang tamu', 'Available', 1500000, '1511009941.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `komplain`
--

CREATE TABLE `komplain` (
  `id_komplain` int(15) NOT NULL,
  `id_member` int(15) NOT NULL,
  `id_hunian` int(15) NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `isi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `komplain`
--

INSERT INTO `komplain` (`id_komplain`, `id_member`, `id_hunian`, `perihal`, `isi`) VALUES
(8, 13, 14, 'Keran Air', 'Lapor Pak, Lampu di Kontrakan Mati pak');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(15) NOT NULL,
  `nama_member` varchar(200) NOT NULL,
  `pass_member` varchar(200) NOT NULL,
  `email_member` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `nohp` varchar(200) NOT NULL,
  `alamat_member` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nama_member`, `pass_member`, `email_member`, `status`, `nohp`, `alamat_member`) VALUES
(13, 'Ade Asep Kurnia', '12345', 'adeasepkurnia@gmail.com', 'mahasiswa', '0810101001010', 'bandar lampung'),
(14, 'dimas', '123', 'adeasepkurnia@gmail.com', 'mahasiswa', '0810101001010', 'bandar lampung');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(15) NOT NULL,
  `id_hunian` int(15) NOT NULL,
  `id_member` int(15) NOT NULL,
  `tanggal_mulai` varchar(100) NOT NULL,
  `durasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `id_hunian`, `id_member`, `tanggal_mulai`, `durasi`) VALUES
(18, 16, 13, '2020-06-26', '1 Bulan'),
(20, 14, 13, '2020-06-27', '6 Bulan'),
(21, 14, 13, '2020-06-27', '6 Bulan');

-- --------------------------------------------------------

--
-- Table structure for table `sewa`
--

CREATE TABLE `sewa` (
  `id_sewa` int(15) NOT NULL,
  `id_member` int(15) NOT NULL,
  `id_hunian` int(15) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `nominal` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `bulan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sewa`
--

INSERT INTO `sewa` (`id_sewa`, `id_member`, `id_hunian`, `tanggal`, `nominal`, `gambar`, `status`, `bulan`) VALUES
(5, 13, 14, '2020-06-27', '1000000', '1593110424.jpg', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `hunian`
--
ALTER TABLE `hunian`
  ADD PRIMARY KEY (`id_hunian`);

--
-- Indexes for table `komplain`
--
ALTER TABLE `komplain`
  ADD PRIMARY KEY (`id_komplain`),
  ADD KEY `id_member` (`id_member`,`id_hunian`),
  ADD KEY `id_hunian` (`id_hunian`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `id_hunian` (`id_hunian`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_hunian_2` (`id_hunian`,`id_member`);

--
-- Indexes for table `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`id_sewa`),
  ADD KEY `id_member` (`id_member`,`id_hunian`),
  ADD KEY `id_hunian` (`id_hunian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hunian`
--
ALTER TABLE `hunian`
  MODIFY `id_hunian` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `komplain`
--
ALTER TABLE `komplain`
  MODIFY `id_komplain` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sewa`
--
ALTER TABLE `sewa`
  MODIFY `id_sewa` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komplain`
--
ALTER TABLE `komplain`
  ADD CONSTRAINT `komplain_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komplain_ibfk_2` FOREIGN KEY (`id_hunian`) REFERENCES `hunian` (`id_hunian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `pesan_ibfk_1` FOREIGN KEY (`id_hunian`) REFERENCES `hunian` (`id_hunian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesan_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sewa`
--
ALTER TABLE `sewa`
  ADD CONSTRAINT `sewa_ibfk_1` FOREIGN KEY (`id_hunian`) REFERENCES `hunian` (`id_hunian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sewa_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
