-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2022 at 06:09 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sikoperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `anak`
--

CREATE TABLE `anak` (
  `id_anak` int(11) NOT NULL,
  `id_anggota` varchar(64) NOT NULL,
  `nama_anak` varchar(225) NOT NULL,
  `jenjang_sekolah` varchar(225) NOT NULL,
  `nama_sekolah` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anak`
--

INSERT INTO `anak` (`id_anak`, `id_anggota`, `nama_anak`, `jenjang_sekolah`, `nama_sekolah`) VALUES
(1130, '5cd49a7c6e6a3', 'Anak 1 Alfi', 'SMP', 'SMP 1 JEMBER'),
(1131, '5cd49a7c6e6a3', 'Anak 2 Ardi', 'SD', 'SD BANYUWANGI'),
(1132, '5cd49a7c6e6a3', 'Anak 3 Raka', 'SMP', 'SMP 1 JEMBER'),
(1137, '5cd55b8045856', 'Anak 1 Angga', 'SD', 'SD made 3'),
(1138, '5cd55b8045856', 'Anak 2 Angga', 'SD', 'SD 1 PAGENTAN'),
(1139, '5cd55b8045856', 'Anak angga A', 'SD', 'SD 3 MADE'),
(1140, '5cd55b8045856', 'Anak Angga B', 'SMP', 'SMP 1 JEMBER'),
(1141, '5cd55b8045856', 'Anak Angga C', 'SMA', 'SMADA JEMBER'),
(1142, '6237f70bba271', 'hadi', 'SD', 'SDN');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` varchar(64) NOT NULL,
  `nia` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `alamat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nia`, `nama`, `jenis_kelamin`, `alamat`) VALUES
('5cd49a7c6e6a3', '142410101099', 'Alfiani Khasanul', 'Perempuan', 'Banyuwangi'),
('5cd55b8045856', '142410101055', 'Arum Dwi', 'Perempuan', 'Jember Lor'),
('62367b10070a7', '142410101040', 'Rah\'vi Akasapria', 'Laki-Laki', 'Purwokerto'),
('623689cb764ca', '142410101041', 'Agus Bustomi', 'Laki-Laki', 'Makasar'),
('623731d0d3119', '142410101037', 'Ino Galwargannnnn', 'Laki-Laki', 'surabaya'),
('623731f924c05', '142410101038', 'Tahu Bulat', 'Laki-Laki', 'purbalingga'),
('62373219230bd', '142410101043', 'Keripik Singkong', 'Laki-Laki', 'purbalingga'),
('6237f70bba271', '142410101034', 'Ilham Hadi', 'Laki-Laki', 'Purwokerto');

-- --------------------------------------------------------

--
-- Table structure for table `angsuran`
--

CREATE TABLE `angsuran` (
  `id_angsuran` varchar(64) NOT NULL,
  `id_pinjaman` varchar(64) NOT NULL,
  `no_angsuran` varchar(225) NOT NULL,
  `jumlah_angsuran` double NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `angsuran`
--

INSERT INTO `angsuran` (`id_angsuran`, `id_pinjaman`, `no_angsuran`, `jumlah_angsuran`, `tanggal`) VALUES
('5cdd6be12d627', '5cd955331550d', 'AGS002', 500000, '2022-03-20'),
('5cdd6c5d9e162', '5cd955331550d', 'AGS003', 300000, '2019-05-16'),
('5cdd6ecfb57c4', '5cdd6ac7c2c36', 'AGS004', 200000, '2019-05-16'),
('6236c890882cc', '6236c7772452f', 'AGS001', 100000, '2022-03-20'),
('6237328c79a31', '6237325a7e57b', 'AGS004', 100000, '2022-03-20'),
('6237f8b955676', '6237f84aa7784', 'AGS005', 510000, '2022-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `pasangan`
--

CREATE TABLE `pasangan` (
  `id_pasangan` int(11) NOT NULL,
  `id_anggota` varchar(64) NOT NULL,
  `nama_pasangan` varchar(225) NOT NULL,
  `pekerjaan` varchar(225) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasangan`
--

INSERT INTO `pasangan` (`id_pasangan`, `id_anggota`, `nama_pasangan`, `pekerjaan`, `alamat`) VALUES
(1, '5cd55b8045856', 'Nita', 'Guru', 'Jember'),
(5, '5cd49a7c6e6a3', 'Ino Ganteng', 'Polisi', 'Jember'),
(6, '5cd49a7c6e6a3', 'Ino Galwargan', 'Programmer', 'Lamongan'),
(7, '5cd49a7c6e6a3', 'Agustinus', 'Presiden', 'Lamongan');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` varchar(64) NOT NULL,
  `nik` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `alamat` text NOT NULL,
  `nohp` bigint(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nik`, `nama`, `alamat`, `nohp`) VALUES
('5ce5259b11686', '142410101039', 'Ino Galwargan', 'Jl Made Dadi No 13, Lamongan', 81253708899),
('5ce525c33a6df', '142410101037', 'Rozha aulya Nurvianti', 'Jl Salak 2 No 15, Medan', 81278909865),
('5ce52601bf6eb', '142410101038', 'Khasanul Alfiani', 'Jl Blimbing no 16, Surabaya', 87990187298),
('5ce55366393e1', '142410101040', 'Gunawan Asmeda ', 'Jl Durian Runtuh No 16, Lamongan', 81253709129),
('5ce55366393e9', '142410101045', 'Anriko Chiesa', 'Jl Jambu Air No 16, Lamongan', 81456789098),
('62373145d377d', '142410101050', 'Ilham Hadi', 'Jl Jambu Monyet No 16, Purwokerto', 81278909865);

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id_pinjaman` varchar(64) NOT NULL,
  `id_anggota` varchar(64) NOT NULL,
  `no_pinjaman` varchar(225) NOT NULL,
  `jumlah_pinjaman` double NOT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `lama` int(11) NOT NULL,
  `bunga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjaman`
--

INSERT INTO `pinjaman` (`id_pinjaman`, `id_anggota`, `no_pinjaman`, `jumlah_pinjaman`, `tanggal_peminjaman`, `lama`, `bunga`) VALUES
('5cd955331550d', '5cd49a7c6e6a3', 'PJ0002', 2000000, '2022-03-20', 3, 10),
('5cdd6ac7c2c36', '5cd55b8045856', 'PJ0003', 6000000, '2019-05-16', 5, 10),
('6236c7772452f', '62367b10070a7', 'PJ0001', 5000000, '2022-03-20', 1, 2),
('6237325a7e57b', '623731d0d3119', 'PJ0004', 7000000, '2022-03-20', 1, 1),
('6237f84aa7784', '6237f70bba271', 'PJ0005', 500000, '2022-03-21', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `simpanan_pokok`
--

CREATE TABLE `simpanan_pokok` (
  `id_simpanan_pokok` int(11) NOT NULL,
  `id_anggota` varchar(64) NOT NULL,
  `jumlah` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simpanan_pokok`
--

INSERT INTO `simpanan_pokok` (`id_simpanan_pokok`, `id_anggota`, `jumlah`) VALUES
(4, '5cd49a7c6e6a3', 2500000),
(12, '6237f70bba271', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `simpanan_sukarela`
--

CREATE TABLE `simpanan_sukarela` (
  `id_simpanan_sukarela` varchar(64) NOT NULL,
  `id_anggota` varchar(64) NOT NULL,
  `jumlah` double NOT NULL,
  `tanggal_dibayar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simpanan_sukarela`
--

INSERT INTO `simpanan_sukarela` (`id_simpanan_sukarela`, `id_anggota`, `jumlah`, `tanggal_dibayar`) VALUES
('5', '5cd49a7c6e6a3', 4500000, '2022-03-20'),
('5cd815094109f', '5cd55b8045856', 2500000, '2019-05-12'),
('5cd8151ce1728', '5cd49a7c6e6a3', 4500000, '2019-05-12'),
('5cd817e1e23bd', '5cd55b8045856', 4500000, '2019-05-12'),
('6237f7a246e2d', '6237f70bba271', 20000, '2022-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `simpanan_wajib`
--

CREATE TABLE `simpanan_wajib` (
  `id_simpanan_wajib` varchar(64) NOT NULL,
  `id_anggota` varchar(64) NOT NULL,
  `jumlah` double NOT NULL,
  `tanggal_dibayar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simpanan_wajib`
--

INSERT INTO `simpanan_wajib` (`id_simpanan_wajib`, `id_anggota`, `jumlah`, `tanggal_dibayar`) VALUES
('5cd80326e9ac2', '5cd55b8045856', 4000000, '2022-03-20'),
('6237f773a8c68', '6237f70bba271', 50000, '2022-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`) VALUES
(1, 'ilham', '1234', 'Muhammad Ilham Saiful H ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anak`
--
ALTER TABLE `anak`
  ADD PRIMARY KEY (`id_anak`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `angsuran`
--
ALTER TABLE `angsuran`
  ADD PRIMARY KEY (`id_angsuran`),
  ADD KEY `id_pinjaman` (`id_pinjaman`);

--
-- Indexes for table `pasangan`
--
ALTER TABLE `pasangan`
  ADD PRIMARY KEY (`id_pasangan`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id_pinjaman`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `simpanan_pokok`
--
ALTER TABLE `simpanan_pokok`
  ADD PRIMARY KEY (`id_simpanan_pokok`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `simpanan_sukarela`
--
ALTER TABLE `simpanan_sukarela`
  ADD PRIMARY KEY (`id_simpanan_sukarela`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `simpanan_wajib`
--
ALTER TABLE `simpanan_wajib`
  ADD PRIMARY KEY (`id_simpanan_wajib`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anak`
--
ALTER TABLE `anak`
  MODIFY `id_anak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1143;

--
-- AUTO_INCREMENT for table `pasangan`
--
ALTER TABLE `pasangan`
  MODIFY `id_pasangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `simpanan_pokok`
--
ALTER TABLE `simpanan_pokok`
  MODIFY `id_simpanan_pokok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anak`
--
ALTER TABLE `anak`
  ADD CONSTRAINT `anak_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE;

--
-- Constraints for table `angsuran`
--
ALTER TABLE `angsuran`
  ADD CONSTRAINT `angsuran_ibfk_1` FOREIGN KEY (`id_pinjaman`) REFERENCES `pinjaman` (`id_pinjaman`) ON DELETE CASCADE;

--
-- Constraints for table `pasangan`
--
ALTER TABLE `pasangan`
  ADD CONSTRAINT `pasangan_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE;

--
-- Constraints for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD CONSTRAINT `pinjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `simpanan_pokok`
--
ALTER TABLE `simpanan_pokok`
  ADD CONSTRAINT `simpanan_pokok_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE;

--
-- Constraints for table `simpanan_sukarela`
--
ALTER TABLE `simpanan_sukarela`
  ADD CONSTRAINT `simpanan_sukarela_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `simpanan_wajib`
--
ALTER TABLE `simpanan_wajib`
  ADD CONSTRAINT `simpanan_wajib_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
