-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 02:25 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tix_boat`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `asal` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `status_admin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `jenis_kelamin`, `asal`, `tanggal_lahir`, `no_telp`, `email`, `username`, `password`, `status_admin`) VALUES
(1, 'arya', 'laki laki', 'surabaya', '2000-09-16', '089672341120', 'aryaangg@gmail.com', 'aerya', '090708', ''),
(2, 'bagus', 'laki laki', 'mojokerto', '1995-02-09', '087623483254', 'bagusstry@gmail.com', 'strybagus', '111111', ''),
(3, 'chika', 'Perempuan', 'bandung', '1998-12-12', '089690871265', 'chikaalia@gmail.com', 'chika', 'aliachika', ''),
(8, 'tarisa', 'Perempuan', 'Krian', '2006-06-08', '085173018601', 'tarisazhh02@gmail.com', 'tarizhra', 'star', 'mati'),
(9, 'azizah', 'Perempuan', 'sidoarjo', '2007-09-04', '089629045105', 'azizahamalia@gmail.com', 'zizaptr', 'azizaa', 'hidup'),
(10, 'radit', 'laki laki', 'suko', '2015-11-28', '098765433456', 'raditanjay@gmail.com', 'radits', 'ayam', 'mati'),
(11, 'shafira dwi', 'perempuan', 'sidoarjo', '1999-06-25', '089776549086', 'shafira@gmail.com', 'firaa', 'shafira25', 'mati'),
(12, 'elma', 'perempuan', 'sidoarjo', '2023-06-07', '089765456786', 'ellmmaaa@gmail.com', 'ellma', '2255', 'mati');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pembayaran`
--

CREATE TABLE `jenis_pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `nama_pembayaran` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_pembayaran`
--

INSERT INTO `jenis_pembayaran` (`id_pembayaran`, `nama_pembayaran`) VALUES
(161, 'transfer_bank'),
(162, 'dana'),
(163, 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `kapal`
--

CREATE TABLE `kapal` (
  `id_kapal` int(11) NOT NULL,
  `jenis_kapal` varchar(150) NOT NULL,
  `nama_kapal` varchar(225) NOT NULL,
  `kode_kapal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kapal`
--

INSERT INTO `kapal` (`id_kapal`, `jenis_kapal`, `nama_kapal`, `kode_kapal`) VALUES
(102, 'Penumpang', 'kapal_ferry', 2309),
(104, 'Penumpang', 'kapal_ferry', 7230),
(105, 'Penumpang', 'ferry', 3358),
(126, 'Penumpang', 'kapal_ferry', 3367),
(128, 'Penumpang', 'kapal_ferry', 1109),
(135, 'Penumpang', 'kapal', 1230),
(136, 'Penumpang', 'kapal ferry', 7130);

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int(11) NOT NULL,
  `id_kapal` int(11) NOT NULL,
  `rute_berangkat` varchar(225) DEFAULT NULL,
  `rute_sampai` varchar(225) NOT NULL,
  `jadwal_berangkat` datetime NOT NULL,
  `jumlah_pembelian` int(11) NOT NULL,
  `kelas_layanan` varchar(100) NOT NULL,
  `kode_tiket` varchar(50) DEFAULT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `id_kapal`, `rute_berangkat`, `rute_sampai`, `jadwal_berangkat`, `jumlah_pembelian`, `kelas_layanan`, `kode_tiket`, `harga`) VALUES
(1020, 102, 'banyuwangi', 'gilimanuk', '2023-08-22 00:00:00', 1, 'reguler', 'GLBMN', 50000),
(1030, 102, 'gilimanuk', 'banyuwangi', '2023-12-12 00:00:00', 1, 'reguler', 'SRNOPE', 43000),
(1032, 105, 'namlea', 'ambon', '2023-06-30 00:00:00', 1, 'bisnis', 'MBNLWA', 140000),
(1033, 105, 'ternate', 'ambon', '2023-07-16 19:06:00', 1, 'Bisnis', 'TNANB', 100000),
(1034, 135, 'banda', 'namrole', '2023-06-15 23:07:00', 1, 'Ekonomi', 'NMRLB', 56000),
(1035, 136, 'sorong', 'serui', '2023-06-13 20:12:00', 1, 'Ekonomi', 'SSIN', 75000),
(1036, 105, 'gorontalo', 'luwuk', '2023-06-19 02:14:00', 1, 'Ekonomi', 'LGWK', 112000),
(1037, 128, 'manokwari', 'merauke', '2023-06-19 10:15:00', 1, 'Bisnis', 'MRWK', 900000),
(1038, 104, 'bontang', 'makassar', '2023-06-16 05:59:00', 1, 'Bisnis', 'BTMKSS', 90000),
(1039, 105, 'pontianak', 'tanjung priok', '2023-06-11 23:29:00', 1, 'VIP', 'TPNKJN', 350000),
(1040, 105, 'semarang', 'pontianak', '2023-06-15 00:00:00', 1, 'Bisnis', 'PTNSMR', 80000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_tiket` int(11) NOT NULL,
  `id_voucher` int(11) NOT NULL,
  `id_pembayaran` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_tiket`, `id_voucher`, `id_pembayaran`, `id_customer`) VALUES
(1, 1030, 911, 163, 12),
(2, 1034, 910, 161, 8),
(3, 1030, 910, 161, 10),
(4, 1032, 911, 161, 10),
(5, 1033, 910, 162, 10);

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id_voucher` int(11) NOT NULL,
  `jenis_voucher` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id_voucher`, `jenis_voucher`) VALUES
(910, 'potongan_50%'),
(911, 'potongan_20%'),
(916, 'potongan 5 %'),
(917, 'potongan 10%'),
(918, 'potongan 25%');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `jenis_pembayaran`
--
ALTER TABLE `jenis_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `kapal`
--
ALTER TABLE `kapal`
  ADD PRIMARY KEY (`id_kapal`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_tiket` (`id_tiket`),
  ADD KEY `id_voucher` (`id_voucher`),
  ADD KEY `id_pembayaran` (`id_pembayaran`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id_voucher`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jenis_pembayaran`
--
ALTER TABLE `jenis_pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `kapal`
--
ALTER TABLE `kapal`
  MODIFY `id_kapal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1041;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id_voucher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=919;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_tiket`) REFERENCES `tiket` (`id_tiket`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_voucher`) REFERENCES `voucher` (`id_voucher`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_pembayaran`) REFERENCES `jenis_pembayaran` (`id_pembayaran`),
  ADD CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
