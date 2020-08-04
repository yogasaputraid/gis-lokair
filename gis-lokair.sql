-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2020 at 01:26 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis-lokair`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('4f2lqpj8l7ad0j538lah3qm3upmomh9q', '114.124.228.58', 1595043373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539353034333132373b656d61696c7c733a33353a22796f67612e736170757472613136406d68732e7562686172616a6179612e61632e6964223b726f6c655f69647c733a313a2231223b),
('sn484aurv26q0pksi0rf9beirtchlog7', '114.124.228.58', 1595043726, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539353034333434373b656d61696c7c733a33353a22796f67612e736170757472613136406d68732e7562686172616a6179612e61632e6964223b726f6c655f69647c733a313a2231223b);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_air`
--

CREATE TABLE `tbl_air` (
  `id_air` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `lat` float(9,6) NOT NULL,
  `lng` float(9,6) NOT NULL,
  `tanggal` date NOT NULL,
  `marker` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_air`
--

INSERT INTO `tbl_air` (`id_air`, `id_kecamatan`, `lokasi`, `keterangan`, `lat`, `lng`, `tanggal`, `marker`) VALUES
(18, 36, 'Kav Bulak Perwira Jl. Barokah III 5 ', 'Air Mati', -6.204390, 107.012840, '2019-02-22', 'pinmapmerah2.png'),
(36, 36, 'Kav Bulak Perwira  Jl. Barokah III 5 12', 'Air Mati', -6.204330, 107.011574, '2019-03-09', 'pinmapmerah3.png'),
(37, 36, 'Kav Bulak Perwira  Jl. Barokah III 9', 'Air Keruh', -6.204980, 107.010033, '2019-03-16', 'pinmapkuning3.png'),
(38, 36, 'Kav Bulak Perwira Jl. Melati I 15', 'Air Bersih', -6.200880, 107.016983, '2019-03-23', 'pinmaphijau2.png'),
(39, 36, 'Kav Bulak Perwira Jl. Melati I 16', 'Air Mati', -6.201380, 107.016960, '2019-03-30', 'pinmapmerah4.png'),
(40, 36, 'Kav Bulak Perwira Jl. Swadaya IV 2', 'Air Mati', -6.200490, 107.013313, '2019-04-06', 'pinmapmerah5.png'),
(41, 36, 'Kav Bulak Perwira Jl. Swadaya IV 6', 'Air Keruh', -6.200620, 107.013863, '2019-04-20', 'pinmapkuning4.png'),
(42, 36, 'Kav Bulak Perwira Jl. Swadaya V 10', 'Air Bersih', -6.198710, 107.012039, '2019-04-27', 'pinmaphijau3.png'),
(43, 36, 'Kav Bulak Perwira Jl. Swadaya V 7', 'Air Keruh', -6.197900, 107.013908, '2019-04-25', 'pinmapkuning5.png'),
(44, 36, 'Kav Bulak Perwira Jl. Swadaya V 9', 'Air Bersih', -6.198150, 107.014519, '2019-04-22', 'pinmaphijau4.png'),
(45, 36, 'Perum Taman Wisma Asri 2 AA1 20', 'Air Mati', -6.207930, 107.025223, '2019-05-01', 'pinmapmerah7.png'),
(46, 36, 'Perum Taman Wisma Asri 2 AJ1 21', 'Air Bersih', -6.204170, 107.026176, '2019-05-08', 'pinmaphijau6.png'),
(47, 36, 'Perum Taman Wisma Asri 2 AK1 30', 'Air Keruh', -6.204920, 107.026382, '2019-05-15', 'pinmapkuning7.png'),
(48, 36, 'Perum Taman Wisma Asri 2 RA1 11', 'Air Mati', -6.202380, 107.026672, '2019-05-22', 'pinmapmerah71.png'),
(49, 36, 'Perum Taman Wisma Asri 2 RB2 15', 'Air Bersih', -6.202660, 107.028000, '2019-05-29', 'pinmaphijau21.png'),
(50, 36, 'Perum Taman Wisma Asri 2 RG9 30', 'Air Mati', -6.203750, 107.029991, '2019-06-01', 'pinmapmerah51.png'),
(51, 36, 'Perum Taman Wisma Asri 2 RH3 10', 'Air Bersih', -6.203250, 107.032127, '2019-06-08', 'pinmaphijau22.png'),
(52, 36, 'Perum Taman Wisma Asri 2 RJ51', 'Air Keruh', -6.205490, 107.029312, '2019-06-15', 'pinmapkuning71.png'),
(53, 36, 'Perum Taman Wisma Asri 2 TJ9 30', 'Air Keruh', -6.206240, 107.027992, '2019-06-22', 'pinmapkuning11.png'),
(54, 36, 'Perum Taman Wisma Asri 2 UA15 6', 'Air Mati', -6.208300, 107.029488, '2019-07-01', 'pinmapmerah31.png'),
(55, 36, 'Perum Vila Indah Permai A1/1', 'Air Keruh', -6.204510, 107.018990, '2019-07-08', 'pinmapkuning72.png'),
(56, 36, 'Perum Vila Indah Permai A6/3', 'Air Bersih', -6.198240, 107.024437, '2019-07-15', 'pinmaphijau23.png'),
(57, 36, 'Perum Vila Indah Permai C1/11', 'Air Bersih', -6.204080, 107.022438, '2019-07-22', 'pinmaphijau24.png'),
(58, 36, 'Perum Vila Indah Permai J3/3', 'Air Bersih', -6.201380, 107.019913, '2019-07-29', 'pinmaphijau25.png'),
(59, 36, 'Perum Vila Indah Permai O3/6', 'Air Mati', -6.198260, 107.020912, '2019-08-01', 'pinmapmerah72.png'),
(60, 36, 'Perum Vila Indah Permai U4/7', 'Air Mati', -6.200990, 107.023811, '2019-08-08', 'pinmapmerah711.png'),
(61, 36, 'Perum Vila Indah Permai U6/5', 'Air Keruh', -6.201960, 107.025108, '2019-08-15', 'pinmapkuning721.png'),
(62, 36, 'Perum Vila Indah Permai U6/8', 'Air Keruh', -6.202070, 107.025459, '2019-08-22', 'pinmapkuning61.png'),
(63, 36, 'Perum Vila Indah Permai V3/5', 'Air Keruh', -6.205420, 107.024193, '2019-08-29', 'pinmapkuning711.png'),
(64, 36, 'Perum Vila Indah Permai V4/12', 'Air Bersih', -6.205230, 107.024300, '2019-09-01', 'pinmaphijau31.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bangunan`
--

CREATE TABLE `tbl_bangunan` (
  `id_bangunan` int(11) NOT NULL,
  `kd_bangunan` varchar(10) NOT NULL,
  `nm_bangunan` varchar(30) NOT NULL,
  `geojson_bangunan` varchar(30) NOT NULL,
  `warna_bangunan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bangunan`
--

INSERT INTO `tbl_bangunan` (`id_bangunan`, `kd_bangunan`, `nm_bangunan`, `geojson_bangunan`, `warna_bangunan`) VALUES
(1, '1501', 'KAV BULAK PERWIRA', 'KavBulakPerwira.geojson', '#a66640'),
(2, '1502', 'TAMAN WISMA ASRI 2', 'TamanWismaAsri2.geojson', '#a66640'),
(3, '1503', 'VILA INDAH PERMAI', 'VilaIndahPermai.geojson', '#a66640');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cakupan`
--

CREATE TABLE `tbl_cakupan` (
  `id_cakupan` int(11) NOT NULL,
  `kd_cakupan` varchar(10) NOT NULL,
  `nm_cakupan` varchar(30) NOT NULL,
  `geojson_cakupan` varchar(30) NOT NULL,
  `warna_cakupan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cakupan`
--

INSERT INTO `tbl_cakupan` (`id_cakupan`, `kd_cakupan`, `nm_cakupan`, `geojson_cakupan`, `warna_cakupan`) VALUES
(1, '10021', 'SPAM Teluk Buyung', 'SPAM_TelukBuyung.geojson', '#3beca0'),
(2, '10022', 'SPAM Jati Sari', 'SPAM_JatiSari.geojson', '#ffff00'),
(4, '10023', 'SPAM Pondok Gede', 'SPAM_PondokGede.geojson', '#a8df49'),
(5, '10024', 'SPAM Mustika Jaya', 'SPAM_MustikaJaya.geojson', '#1a78d6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kecamatan`
--

CREATE TABLE `tbl_kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `kd_kecamatan` varchar(10) NOT NULL,
  `nm_kecamatan` varchar(30) NOT NULL,
  `geojson_kecamatan` varchar(30) NOT NULL,
  `warna_kecamatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kecamatan`
--

INSERT INTO `tbl_kecamatan` (`id_kecamatan`, `kd_kecamatan`, `nm_kecamatan`, `geojson_kecamatan`, `warna_kecamatan`) VALUES
(6, '327507', 'BANTARGEBANG', 'bantargebang.geojson', '#fa001d'),
(33, '327502', 'BEKASI BARAT', 'bekasi_barat.geojson', '#ffd5c9'),
(34, '327504', 'BEKASI SELATAN', 'bekasi_selatan.geojson', '#ffc0cb'),
(35, '327501', 'BEKASI TIMUR', 'bekasi_timur.geojson', '#808136'),
(36, '327503', 'BEKASI UTARA', 'bekasi_utara.geojson', '#295eff'),
(37, '327509', 'JATIASIH', 'jatiasih.geojson', '#943600'),
(38, '327510', 'JATISAMPURNA', 'jatisampurna.geojson', '#00fffb'),
(39, '327506', 'MEDAN SATRIA', 'medan_satria.geojson', '#800080'),
(40, '327511', 'MUSTIKAJAYA', 'mustikajaya.geojson', '#008e57'),
(41, '327508', 'PONDOKGEDE', 'pondokgede.geojson', '#fff71a'),
(42, '327512', 'PONDOK MELATI', 'pondok_melati.geojson', '#ff6600'),
(43, '327505', 'RAWALUMBU', 'rawalumbu.geojson', '#69738a');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pipa`
--

CREATE TABLE `tbl_pipa` (
  `id_pipa` int(11) NOT NULL,
  `kd_pipa` varchar(10) NOT NULL,
  `dia_pipa` varchar(30) NOT NULL,
  `geojson_pipa` varchar(30) NOT NULL,
  `warna_pipa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pipa`
--

INSERT INTO `tbl_pipa` (`id_pipa`, `kd_pipa`, `dia_pipa`, `geojson_pipa`, `warna_pipa`) VALUES
(6, '8001', '50 mm', '50mm.geojson', '#0000ff'),
(33, '8002', '75 mm', '75mm.geojson', '#d0ac29'),
(34, '8003', '100 mm', '100mm.geojson', '#ff0000'),
(35, '8004', '150 mm', '150mm.geojson', '#00ff00'),
(36, '8005', '200 mm', '200mm.geojson', '#ff31ad'),
(37, '8006', '250 mm', '250mm.geojson', '#09d0bc'),
(38, '8007', '300 mm', '300mm.geojson', '#348833');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Yoga Saputra', 'yoga.saputra16@mhs.ubharajaya.ac.id', 'default.jpg', '$2y$10$VCeIr6iZFvsJ2WmHFBHlwO5eDcYb7JW1mVk.a6FuHQagXqelRteo6', 1, 1, 1595040601),
(2, 'Admin', 'admin@gis-lokair.com', 'default.jpg', '$2y$10$wbOZKFU.Fee6oJObfSElBO.OCf4exjJlrtlFVSEdBgs1vx.Fv9Aby', 1, 1, 1595257647),
(3, 'User', 'user@gis-lokair.com', 'default.jpg', '$2y$10$ZLTbHYrKf/wWU8HUSwMv0.6sFKewd5pKcal4lt3VtchocJ8/hZIPK', 2, 1, 1595257659);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 2, 2),
(10, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Kecamatan'),
(4, 'Cakupan'),
(5, 'Bangunan'),
(6, 'Pipa'),
(7, 'Air'),
(8, 'Peta');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tbl_air`
--
ALTER TABLE `tbl_air`
  ADD PRIMARY KEY (`id_air`);

--
-- Indexes for table `tbl_bangunan`
--
ALTER TABLE `tbl_bangunan`
  ADD PRIMARY KEY (`id_bangunan`);

--
-- Indexes for table `tbl_cakupan`
--
ALTER TABLE `tbl_cakupan`
  ADD PRIMARY KEY (`id_cakupan`);

--
-- Indexes for table `tbl_kecamatan`
--
ALTER TABLE `tbl_kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `tbl_pipa`
--
ALTER TABLE `tbl_pipa`
  ADD PRIMARY KEY (`id_pipa`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_air`
--
ALTER TABLE `tbl_air`
  MODIFY `id_air` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tbl_bangunan`
--
ALTER TABLE `tbl_bangunan`
  MODIFY `id_bangunan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_cakupan`
--
ALTER TABLE `tbl_cakupan`
  MODIFY `id_cakupan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_kecamatan`
--
ALTER TABLE `tbl_kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_pipa`
--
ALTER TABLE `tbl_pipa`
  MODIFY `id_pipa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
