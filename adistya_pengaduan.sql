-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2023 at 11:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adistya_pengaduan`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Kesehatan'),
(2, 'Kehutanan'),
(3, 'Kepolisian'),
(4, 'Keimanan');

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `id` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama_lengkap` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(128) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `is_active` enum('active','not_active') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`id`, `nik`, `nama_lengkap`, `username`, `password`, `telepon`, `is_active`) VALUES
(1, '41678', 'subek', 'subek', '$2y$10$247ZC21f/Tl5X1uyrKg2De1g9f3.ZQbpDvZiIS03Hk5/kNnrsuUvO', '081911296360', 'active'),
(2, '08098012312', 'antok', 'antok', '$2y$10$tG1wh791IuW8RBXOc7Yv1.7LuAiLoYDSd5TMq1vsdgTb/a.iMOQPq', '0819112963602', 'active'),
(3, '123123', 'Rajendra', 'rejak', '$2y$10$vkXeUmh/YFF9kMScZpmp4.Pg6YyADXd.vwCETqVySPp50WDp2lyV6', '889898', 'active'),
(4, '4710', 'agus ', 'ahmad', '$2y$10$Wcy3pIeoFU8mCKhSSizHFeqNIf2byXlh0sMkkb0kMa/vB2hSJfQSu', '081911223424', 'active'),
(5, '4423', 'User', 'user', '$2y$10$9qWgknCcBwJCVEA0.m4abOFFwjzt7rXguT15SNzNJlyvlq.cSBzMm', '0819112963602', 'active'),
(6, '45363434435543', 'megawati soekarno putri', 'mbah uti', '$2y$10$kDaLvpVbX7rnNwCuK6zX2uM15R5M0iwwPQOYz.u8TAoSlKS/SFXHa', '323232321', 'active'),
(7, '4746', 'adis', 'dis', '$2y$10$.IkH2RDSPkQZIi7V.BAbIeQzuikX/h9zdHkmQ4nLDbhxeoPAo4BGC', '0895', 'active'),
(8, '47464', 'kom', 'diss', '$2y$10$qWD10SwJa6ST9s8P3Af9feaffjxQgHgF49DWhAnoU1vDQPmZbTqKO', '08954', 'active'),
(9, '474644', 'ad', 'le', '$2y$10$TmL.rj1oFencGg7h7VhM3uQxNUmRR/owhciGOn8uz.kpwwAiuOgga', '089545', 'active'),
(10, '4746443', 'add', 'lee', '$2y$10$9qEJzWLE8wwdSSw0krEMt.0OppikI3BtpLHn6c8WRpdMAAxLzNkdG', '08955', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `id_subkategori` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `id_subkategori`, `id_kategori`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(10, '2023-03-02', 4, 3, '41678', 'melanggar lalu lintas', '5e3c4d8ef3e98.jpg', 'selesai'),
(11, '2023-03-02', 2, 2, '41678', 'kebakaraannnn lariii', 'sdaasd1.jpg', 'selesai'),
(12, '2023-03-02', 3, 1, '41678', 'artinya apa bg messi', 'master_2i6C5map51_295_asal_mula_meme_viral_artinya_apa_bang_messi8.jpg', 'selesai'),
(13, '2023-03-03', 4, 3, '08098012312', 'Ugal ugalan', '5e3c4d8ef3e981.jpg', 'selesai'),
(14, '2023-03-04', 5, 4, '123123', 'mantap pwoll', '177430409_163130062837247_2455813523397830439_n.jpg', 'selesai'),
(15, '2023-03-04', 5, 4, '4710', 'Mengakhiri memang sulit,, namun tetap harus dijalani...', 'download17.jpg', 'selesai'),
(17, '2023-03-14', 3, 1, '4710', 'kShfj.g.kasbcfka', 'thumb-1920-44769811.jpg', 'selesai'),
(18, '2023-03-14', 1, 1, '4710', 'aswd', 'ERD_ahmds_pengaduan.png', '0'),
(19, '2023-03-14', 1, 1, '45363434435543', 'hampir mati', 'wallpaperflare_com_wallpaper_(1)3.jpg', '0'),
(20, '2023-03-14', 3, 1, '4746', 'aqd', 'Chrysanthemum.jpg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(128) NOT NULL,
  `telpon` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telpon`, `level`) VALUES
(1, 'admin', 'admin', '$2y$10$8z0kzfZSCCxKYTZV7sLpVeyevHpukYe/AEgq377p57aL8AKU03FS6', '08089080', 'admin'),
(2, 'petugas', 'petugas', '$2y$10$MuDozwWUP.LMa7l1YTEVH.5jDk41lJhffoH0NRKYOXeoC8sCWLpA2', '0808908021332', 'petugas'),
(3, '', '', '$2y$10$svj5aq3idrRgUWNQUZemg.lDum3Dq1Ul8ydWiMplnzTsc98alKG/G', '', ''),
(4, '', '', '$2y$10$7hVlfwZla8cPhXdvriZKFefh5dE4NUgLhf1vQxXPx0GRLyXIKQBkC', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `subkategori`
--

CREATE TABLE `subkategori` (
  `id_subkategori` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `subkategori` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subkategori`
--

INSERT INTO `subkategori` (`id_subkategori`, `id_kategori`, `subkategori`) VALUES
(1, 1, 'Covid-19'),
(2, 2, 'Kebakaran'),
(3, 1, 'Penyakit Cacar');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(7, 10, '2023-03-02', 'baiklah akan kami tangkap pelakunya', 1),
(8, 10, '2023-03-02', 'pelakunya sudah di tangkap dan diserahkan kepada pihak yang berwajib', 1),
(9, 11, '2023-03-02', 'jangan kawatir', 1),
(10, 11, '2023-03-02', 'api berhasil kami padamkan', 1),
(11, 12, '2023-03-02', 'info diterima', 2),
(12, 12, '2023-03-02', 'selesai dilakukan oleh messi', 2),
(13, 13, '2023-03-03', 'mengucapkan salam', 1),
(14, 13, '2023-03-03', 'Mohon maaf lahir dan batin', 2),
(15, 14, '2023-03-04', 'bailahh', 1),
(16, 15, '2023-03-04', 'sabar dan semangat', 1),
(17, 14, '2023-03-04', 'baguss', 1),
(18, 15, '2023-03-13', 'masukkk', 2),
(20, 17, '2023-03-14', 'dasfds', 2),
(21, 17, '2023-03-14', 'easf', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `subkategori`
--
ALTER TABLE `subkategori`
  ADD PRIMARY KEY (`id_subkategori`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `masyarakat`
--
ALTER TABLE `masyarakat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subkategori`
--
ALTER TABLE `subkategori`
  MODIFY `id_subkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
