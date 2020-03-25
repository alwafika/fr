-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2020 at 02:43 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `kodeagama` int(3) NOT NULL,
  `namaagama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agama`
--

INSERT INTO `agama` (`kodeagama`, `namaagama`) VALUES
(1, 'ISLAM'),
(2, 'PROTESTAN'),
(3, 'KATHOLIK'),
(4, 'BUDHA'),
(5, 'HINDU'),
(6, 'KONGHUCHU');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `kodefakultas` varchar(10) NOT NULL,
  `namafakultas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`kodefakultas`, `namafakultas`) VALUES
('5', 'TEKNIK'),
('7', 'KEGURUAN ILMU PENDIDIKAN');

-- --------------------------------------------------------

--
-- Table structure for table `jekel`
--

CREATE TABLE `jekel` (
  `kodejekel` int(3) NOT NULL,
  `namajekel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jekel`
--

INSERT INTO `jekel` (`kodejekel`, `namajekel`) VALUES
(1, 'LAKI-LAKI'),
(2, 'PEREMPUAN');

-- --------------------------------------------------------

--
-- Table structure for table `lembaga`
--

CREATE TABLE `lembaga` (
  `kodelembaga` int(3) NOT NULL,
  `namalembaga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lembaga`
--

INSERT INTO `lembaga` (`kodelembaga`, `namalembaga`) VALUES
(1, 'UNIVERSITAS'),
(2, 'FAKULTAS'),
(3, 'PROGAM STUDI');

-- --------------------------------------------------------

--
-- Table structure for table `license`
--

CREATE TABLE `license` (
  `reg` varchar(200) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(200) NOT NULL,
  `kodepos` int(11) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `peta` text NOT NULL,
  `wilayah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `license`
--

INSERT INTO `license` (`reg`, `nama`, `deskripsi`, `alamat`, `kota`, `kodepos`, `telp`, `fax`, `email`, `website`, `logo`, `peta`, `wilayah`) VALUES
('20190814155922', 'KAMPUS', 'PANJUL.Co.Id', 'Jl. Kyai Jebat No. 35 Demak', 'DEMAK', 59511, '+62291-685123', '+62291-6905623', 'dinpu_taru@demakkab.go.id', 'http://dinputaru.demakkab.go.id/', 'images/logo/demak.png', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.0209338453114!2d110.64558541477265!3d-6.888095695022657!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e70ebd946d1190d%3A0x99cadc9f1fa2ef00!2sUPTD%20Wilayah%201%20DINPUTARU%20Kab.%20Demak!5e0!3m2!1sid!2sid!4v1578275539248!5m2!1sid!2sid\" width=\"100%\" height=\"100%\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 3321);

-- --------------------------------------------------------

--
-- Table structure for table `makul`
--

CREATE TABLE `makul` (
  `kodemakul` int(11) NOT NULL,
  `namamakul` varchar(100) NOT NULL,
  `fakultas` varchar(10) NOT NULL,
  `progdi` varchar(10) NOT NULL,
  `sks` int(11) NOT NULL,
  `awal` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `makul`
--

INSERT INTO `makul` (`kodemakul`, `namamakul`, `fakultas`, `progdi`, `sks`, `awal`, `status`) VALUES
(1, 'SISTEM PAKAR', '5', '51', 4, 4, 'AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `linkedit` varchar(100) NOT NULL,
  `linkcetak` varchar(100) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `target` int(11) NOT NULL,
  `active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu`, `title`, `icon`, `link`, `linkedit`, `linkcetak`, `warna`, `target`, `active`) VALUES
(100, 'Master Data', '', 'fa fa-hdd-o', '#', 'nonelink', 'nonelink', 'gray', 0, ''),
(101, 'Fakultas', 'Fakultas', 'fa fa-university', 'fakultas', 'nonelink', 'nonelink', 'gray', 100, 'fakultas'),
(102, 'Progdi', 'Progam Studi', 'fa fa-university', 'progdi', 'nonelink', 'nonelink', 'gray', 100, 'progdi'),
(103, 'Stuktur Universitas', 'Stuktur Universitas', 'fa fa-sitemap', 'stukturuniv', 'nonelink', 'nonelink', 'gray', 100, 'stukturuniv'),
(104, 'Stuktur Fakultas', 'Stuktur Fakultas', 'fa fa-sitemap', 'stukturfak', 'nonelink', 'nonelink', 'gray', 100, 'stukturfak'),
(105, 'Stuktur Progdi', 'Stuktur Program Studi', 'fa fa-sitemap', 'stukturprogdi', 'nonelink', 'nonelink', 'gray', 100, 'stukturprogdi'),
(106, 'Mata Kuliah', 'Data Mata Kuliah', 'fa fa-book', 'makul', 'nonelink', 'nonelink', 'gray', 100, 'makul'),
(107, 'Karyawan', 'Data Karyawan', 'fa fa-users', 'pegawai', 'nonelink', 'nonelink', 'gray', 100, 'pegawai'),
(200, 'Stuktural', '', 'fa fa-sitemap', '#', 'nonelink', 'nonelink', 'gray', 0, ''),
(201, 'Stuktural Universitas', 'Data Stuktural Universitas', 'fa fa-vcard-o', 'stukturaluniv', 'nonelink', 'nonelink', 'gray', 200, 'stukturaluniv'),
(202, 'Stuktural Fakultas', 'Data Stuktural Fakultas', 'fa fa-address-card', 'stukturalfak', 'nonelink', 'nonelink', 'gray', 200, 'stukturalfak'),
(203, 'Stuktural Progdi', 'Data Stuktural Progdi', 'fa fa-address-card', 'stukturalprogdi', 'nonelink', 'nonelink', 'gray', 200, 'stukturalprogdi');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `tahunpgw` year(4) NOT NULL,
  `nik` bigint(20) NOT NULL,
  `kodepgw` int(11) NOT NULL,
  `namapgw` varchar(100) NOT NULL,
  `jekel` int(11) NOT NULL,
  `agama` int(11) NOT NULL,
  `tempatlahirpgw` varchar(100) NOT NULL,
  `tanggallahirpgw` date NOT NULL,
  `alamatpgw` text NOT NULL,
  `kotapgw` varchar(100) NOT NULL,
  `telppgw` varchar(15) NOT NULL,
  `statuspgw` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`tahunpgw`, `nik`, `kodepgw`, `namapgw`, `jekel`, `agama`, `tempatlahirpgw`, `tanggallahirpgw`, `alamatpgw`, `kotapgw`, `telppgw`, `statuspgw`) VALUES
(1980, 33200009999000, 1, 'ALI MURTADLO', 1, 1, 'SEMARANG', '1953-06-10', 'RT. 008/017 PANGADEAN SEMARANG', 'SEMARANG', '08119999999', 1),
(1986, 333433338889999, 2, 'BAMBANG SOENARKO', 1, 1, 'KUDUS', '1961-03-16', 'JALAN SILIWANGI NO.07 KUDUS', 'KUDUS', '08233444444', 1);

-- --------------------------------------------------------

--
-- Table structure for table `progdi`
--

CREATE TABLE `progdi` (
  `kodeprogdi` varchar(10) NOT NULL,
  `fakultas` varchar(10) NOT NULL,
  `namaprogdi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `progdi`
--

INSERT INTO `progdi` (`kodeprogdi`, `fakultas`, `namaprogdi`) VALUES
('51', '5', 'TEKNIK INFORMATIKA S1'),
('52', '5', 'SISTEM INFORMASI S1'),
('71', '7', 'PENDIDIKAN GURU SEKOLAH DASAR S1');

-- --------------------------------------------------------

--
-- Table structure for table `statuspgw`
--

CREATE TABLE `statuspgw` (
  `kodestatuspgw` int(11) NOT NULL,
  `namastatuspgw` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `statuspgw`
--

INSERT INTO `statuspgw` (`kodestatuspgw`, `namastatuspgw`) VALUES
(1, 'TETAP'),
(2, 'TIDAK TETAP'),
(3, 'OUT SOURCHING'),
(4, 'PENSIUN'),
(5, 'NON AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `stuktur`
--

CREATE TABLE `stuktur` (
  `kodestuktur` int(11) NOT NULL,
  `lembaga` int(11) NOT NULL,
  `fakultas` varchar(10) NOT NULL,
  `progdi` varchar(10) NOT NULL,
  `namastuktur` varchar(100) NOT NULL,
  `tugas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stuktur`
--

INSERT INTO `stuktur` (`kodestuktur`, `lembaga`, `fakultas`, `progdi`, `namastuktur`, `tugas`) VALUES
(1, 1, '', '', 'REKTOR', 'SEBAGAI PIMPINAN UNIVERSITAS MURIA KUDUS'),
(2, 2, '5', '', 'DEKAN FAKULTAS TEKNIK', 'SEBAGAI PIMPINAN FAKULTAS TEKNIK'),
(3, 3, '5', '51', 'KAPROGDI TEKNIK INFORMATIKA', 'SEBAGAI PIMPINAN PROGDI TEKNIK INFORMATIKA'),
(4, 1, '', '', 'WAKIL REKTOR 1', 'SEBAGAI WAKIL DARI PIMPINAN UNIVERSITAS MENGURUSI BIDANG PENDIDIKAN'),
(5, 2, '5', '', 'WAKIL DEKAN 1 FAKULTAS TEKNIK', 'SEBAGAI WAKIL PIMPINAN FAKULTAS MENGURUSI BIDANG PENDIDIKAN'),
(6, 3, '5', '51', 'SEKRETARIS PROGDI TEKNIK INFORMATIKA', 'SEBAGAI WAKIL PIMPINAN PROGDI TEKNIK INFORMATIKA');

-- --------------------------------------------------------

--
-- Table structure for table `stuktural`
--

CREATE TABLE `stuktural` (
  `kodestuktural` bigint(20) NOT NULL,
  `lembaga` int(11) NOT NULL,
  `fakultas` varchar(10) NOT NULL,
  `progdi` varchar(10) NOT NULL,
  `stuktur` int(11) NOT NULL,
  `pegawai` bigint(20) NOT NULL,
  `periode` year(4) NOT NULL,
  `statusstuktur` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stuktural`
--

INSERT INTO `stuktural` (`kodestuktural`, `lembaga`, `fakultas`, `progdi`, `stuktur`, `pegawai`, `periode`, `statusstuktur`) VALUES
(1, 1, '', '', 1, 1, 2017, 'AKTIF'),
(2, 2, '5', '', 2, 2, 2020, 'AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `kodeunit` int(11) NOT NULL,
  `namaunit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`kodeagama`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`kodefakultas`);

--
-- Indexes for table `jekel`
--
ALTER TABLE `jekel`
  ADD PRIMARY KEY (`kodejekel`);

--
-- Indexes for table `lembaga`
--
ALTER TABLE `lembaga`
  ADD PRIMARY KEY (`kodelembaga`);

--
-- Indexes for table `license`
--
ALTER TABLE `license`
  ADD PRIMARY KEY (`reg`);

--
-- Indexes for table `makul`
--
ALTER TABLE `makul`
  ADD PRIMARY KEY (`kodemakul`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`kodepgw`);

--
-- Indexes for table `progdi`
--
ALTER TABLE `progdi`
  ADD PRIMARY KEY (`kodeprogdi`);

--
-- Indexes for table `statuspgw`
--
ALTER TABLE `statuspgw`
  ADD PRIMARY KEY (`kodestatuspgw`);

--
-- Indexes for table `stuktur`
--
ALTER TABLE `stuktur`
  ADD PRIMARY KEY (`kodestuktur`);

--
-- Indexes for table `stuktural`
--
ALTER TABLE `stuktural`
  ADD PRIMARY KEY (`kodestuktural`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`kodeunit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agama`
--
ALTER TABLE `agama`
  MODIFY `kodeagama` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jekel`
--
ALTER TABLE `jekel`
  MODIFY `kodejekel` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lembaga`
--
ALTER TABLE `lembaga`
  MODIFY `kodelembaga` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `makul`
--
ALTER TABLE `makul`
  MODIFY `kodemakul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `kodepgw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `statuspgw`
--
ALTER TABLE `statuspgw`
  MODIFY `kodestatuspgw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stuktur`
--
ALTER TABLE `stuktur`
  MODIFY `kodestuktur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stuktural`
--
ALTER TABLE `stuktural`
  MODIFY `kodestuktural` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `kodeunit` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
