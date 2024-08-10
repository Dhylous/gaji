-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 08, 2024 at 04:39 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gaji`
--

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id` int NOT NULL,
  `nama_bagian` varchar(255) NOT NULL,
  `karyawan_id` int NOT NULL,
  `lokasi_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id`, `nama_bagian`, `karyawan_id`, `lokasi_id`) VALUES
(1, 'Autentikasi', 5, 1),
(2, 'Data Science', 3, 1),
(3, 'Backend Developer', 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `bagian_karyawan`
--

CREATE TABLE `bagian_karyawan` (
  `id` int NOT NULL,
  `bagian_id` int NOT NULL,
  `karyawan_id` int NOT NULL,
  `tanggal_mulai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bagian_karyawan`
--

INSERT INTO `bagian_karyawan` (`id`, `bagian_id`, `karyawan_id`, `tanggal_mulai`) VALUES
(1, 1, 5, '2018-03-03'),
(2, 2, 3, '2018-04-01'),
(3, 3, 6, '2018-04-04'),
(4, 1, 4, '2018-03-03'),
(5, 2, 7, '2018-04-01'),
(6, 3, 8, '2018-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL,
  `gapok_jabatan` double NOT NULL,
  `tunjangan_jabatan` double NOT NULL,
  `uang_makan_perhari` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama_jabatan`, `gapok_jabatan`, `tunjangan_jabatan`, `uang_makan_perhari`) VALUES
(1, 'System Analyst', 2400000, 500000, 40000),
(2, 'Project Manager', 2300000, 450000, 38000),
(3, 'Senior Programmer', 2200000, 400000, 36000),
(4, 'Junior Programmer', 2100000, 350000, 34000),
(5, 'Magang', 1000000, 100000, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan_karyawan`
--

CREATE TABLE `jabatan_karyawan` (
  `id` int NOT NULL,
  `jabatan_id` int NOT NULL,
  `karyawan_id` int NOT NULL,
  `tanggal_mulai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan_karyawan`
--

INSERT INTO `jabatan_karyawan` (`id`, `jabatan_id`, `karyawan_id`, `tanggal_mulai`) VALUES
(1, 5, 3, '2013-03-03'),
(2, 4, 3, '2014-04-01'),
(3, 5, 4, '2014-04-04'),
(4, 3, 3, '2015-05-04'),
(5, 4, 4, '2015-05-05'),
(6, 5, 5, '2015-05-05'),
(7, 2, 3, '2015-06-01'),
(8, 3, 4, '2015-06-02'),
(9, 4, 5, '2015-06-03'),
(10, 5, 6, '2015-06-06'),
(11, 1, 3, '2017-07-01'),
(12, 2, 4, '2017-07-02'),
(13, 3, 5, '2017-07-02'),
(14, 4, 6, '2017-07-02'),
(15, 5, 7, '2017-07-07'),
(16, 4, 7, '2018-08-02'),
(17, 5, 8, '2018-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int NOT NULL,
  `nik` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `handphone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `pengguna_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `nik`, `nama_lengkap`, `handphone`, `email`, `tanggal_masuk`, `pengguna_id`) VALUES
(1, '001', 'Admin', '08112011', 'admin@mail.com', '2011-01-01', 1),
(2, '002', 'Tes User', '08112012', 'user@mail.com', '2012-02-02', 2),
(3, '003', 'John Doe', '08112013', 'john@mail.com', '2013-03-03', 3),
(4, '004', 'Fulan Bin Fulan', '08112014', 'fulan@mail.com', '2014-04-04', 4),
(5, '005', 'Mawar Kurniani', '08112015', 'mawar@mail.com', '2015-05-05', 5),
(6, '006', 'Melati Rahmawati', '08112016', 'melati@mail.com', '2016-06-06', 6),
(7, '007', 'Dahlia Setiani', '08112017', 'dahlia@mail.com', '2017-07-07', 7),
(8, '008', 'Lily Handayani', '08112018', 'lily@mail.com', '2018-08-08', 8);

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int NOT NULL,
  `nama_lokasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id`, `nama_lokasi`) VALUES
(1, 'Kota Banjarmasin'),
(2, 'Kota Banjarbaru'),
(3, 'Kabupaten Banjar');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penggajian`
--

CREATE TABLE `penggajian` (
  `id` int NOT NULL,
  `karyawan_id` int NOT NULL,
  `tahun` year DEFAULT NULL,
  `bulan` char(2) DEFAULT NULL,
  `gapok` double DEFAULT NULL,
  `tunjangan` double DEFAULT NULL,
  `uang_makan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penggajian`
--

INSERT INTO `penggajian` (`id`, `karyawan_id`, `tahun`, `bulan`, `gapok`, `tunjangan`, `uang_makan`) VALUES
(1, 3, '2020', '11', 2400000, 500000, 800000),
(2, 4, '2020', '11', 2300000, 450000, 684000),
(3, 5, '2020', '11', 2200000, 400000, 684000),
(4, 6, '2020', '11', 2100000, 350000, 640000),
(5, 7, '2020', '11', 2100000, 350000, 612000),
(6, 8, '2020', '11', 1000000, 100000, 380000),
(7, 3, '2020', '12', 2400000, 500000, 800000),
(8, 4, '2020', '12', 2300000, 450000, 722000),
(9, 5, '2020', '12', 2200000, 400000, 720000),
(10, 6, '2020', '12', 2100000, 350000, 680000),
(11, 7, '2020', '12', 2100000, 350000, 646000),
(12, 8, '2020', '12', 1000000, 100000, 360000),
(13, 3, '2021', '01', 2400000, 500000, 800000),
(14, 4, '2021', '01', 2300000, 450000, 722000),
(15, 5, '2021', '01', 2200000, 400000, 612000),
(16, 6, '2021', '01', 2100000, 350000, 680000),
(17, 7, '2021', '01', 2100000, 350000, 646000),
(18, 8, '2021', '01', 1000000, 100000, 340000);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `peran` enum('ADMIN','USER') DEFAULT NULL,
  `login_terakhir` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `password`, `peran`, `login_terakhir`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ADMIN', NULL),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'USER', NULL),
(3, 'johndoe', '6579e96f76baa00787a28653876c6127', 'USER', NULL),
(4, 'fulanbinfulan', '7c232f58f03f6d00c8d28166fbff7a8b', 'USER', NULL),
(5, 'mawar', 'bd117502364227fd8c09098d31e11313', 'USER', NULL),
(6, 'melati', '27e80ebc907bd57004986be9e6f2dd83', 'USER', NULL),
(7, 'dahlia', 'ee11cbb19052e40b07aac0ca060c23ee', 'USER', NULL),
(8, 'lily', '89f288757f4d0693c99b007855fc075e', 'USER', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `id` int NOT NULL,
  `karyawan_id` int NOT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_keluar` time DEFAULT NULL,
  `keterangan` enum('HADIR','SAKIT','IZIN','CUTI','AKHIR PEKAN','LIBUR NASIONAL','TANPA KETERANGAN') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`id`, `karyawan_id`, `tanggal`, `jam_masuk`, `jam_keluar`, `keterangan`) VALUES
(1, 3, '2020-11-01', NULL, NULL, 'AKHIR PEKAN'),
(2, 3, '2020-11-02', '08:00:00', '16:00:00', 'HADIR'),
(3, 3, '2020-11-03', '08:00:00', '16:00:00', 'HADIR'),
(4, 3, '2020-11-04', '08:00:00', '16:00:00', 'HADIR'),
(5, 3, '2020-11-05', '08:00:00', '16:00:00', 'HADIR'),
(6, 3, '2020-11-06', '08:00:00', '16:00:00', 'HADIR'),
(7, 3, '2020-11-07', NULL, NULL, 'AKHIR PEKAN'),
(8, 3, '2020-11-08', NULL, NULL, 'AKHIR PEKAN'),
(9, 3, '2020-11-09', '08:00:00', '16:00:00', 'HADIR'),
(10, 3, '2020-11-10', NULL, NULL, 'LIBUR NASIONAL'),
(11, 3, '2020-11-11', '08:00:00', '16:00:00', 'HADIR'),
(12, 3, '2020-11-12', '08:00:00', '16:00:00', 'HADIR'),
(13, 3, '2020-11-13', '08:00:00', '16:00:00', 'HADIR'),
(14, 3, '2020-11-14', NULL, NULL, 'AKHIR PEKAN'),
(15, 3, '2020-11-15', NULL, NULL, 'AKHIR PEKAN'),
(16, 3, '2020-11-16', '08:00:00', '16:00:00', 'HADIR'),
(17, 3, '2020-11-17', '08:00:00', '16:00:00', 'HADIR'),
(18, 3, '2020-11-18', '08:00:00', '16:00:00', 'HADIR'),
(19, 3, '2020-11-19', '08:00:00', '16:00:00', 'HADIR'),
(20, 3, '2020-11-20', '08:00:00', '16:00:00', 'HADIR'),
(21, 3, '2020-11-21', NULL, NULL, 'AKHIR PEKAN'),
(22, 3, '2020-11-22', NULL, NULL, 'AKHIR PEKAN'),
(23, 3, '2020-11-23', '08:00:00', '16:00:00', 'HADIR'),
(24, 3, '2020-11-24', '08:00:00', '16:00:00', 'HADIR'),
(25, 3, '2020-11-25', '08:00:00', '16:00:00', 'HADIR'),
(26, 3, '2020-11-26', '08:00:00', '16:00:00', 'HADIR'),
(27, 3, '2020-11-27', '08:00:00', '16:00:00', 'HADIR'),
(28, 3, '2020-11-28', NULL, NULL, 'AKHIR PEKAN'),
(29, 3, '2020-11-29', NULL, NULL, 'AKHIR PEKAN'),
(30, 3, '2020-11-30', '08:00:00', '16:00:00', 'HADIR'),
(31, 3, '2020-12-01', '08:00:00', '16:00:00', 'HADIR'),
(32, 3, '2020-12-02', '08:00:00', '16:00:00', 'HADIR'),
(33, 3, '2020-12-03', '08:00:00', '16:00:00', 'HADIR'),
(34, 3, '2020-12-04', '08:00:00', '16:00:00', 'HADIR'),
(35, 3, '2020-12-05', NULL, NULL, 'AKHIR PEKAN'),
(36, 3, '2020-12-06', NULL, NULL, 'AKHIR PEKAN'),
(37, 3, '2020-12-07', '08:00:00', '16:00:00', 'HADIR'),
(38, 3, '2020-12-08', '08:00:00', '16:00:00', 'HADIR'),
(39, 3, '2020-12-09', NULL, NULL, 'LIBUR NASIONAL'),
(40, 3, '2020-12-10', '08:00:00', '16:00:00', 'HADIR'),
(41, 3, '2020-12-11', '08:00:00', '16:00:00', 'HADIR'),
(42, 3, '2020-12-12', NULL, NULL, 'AKHIR PEKAN'),
(43, 3, '2020-12-13', NULL, NULL, 'AKHIR PEKAN'),
(44, 3, '2020-12-14', '08:00:00', '16:00:00', 'HADIR'),
(45, 3, '2020-12-15', '08:00:00', '16:00:00', 'HADIR'),
(46, 3, '2020-12-16', '08:00:00', '16:00:00', 'HADIR'),
(47, 3, '2020-12-17', '08:00:00', '16:00:00', 'HADIR'),
(48, 3, '2020-12-18', '08:00:00', '16:00:00', 'HADIR'),
(49, 3, '2020-12-19', NULL, NULL, 'AKHIR PEKAN'),
(50, 3, '2020-12-20', NULL, NULL, 'AKHIR PEKAN'),
(51, 3, '2020-12-21', '08:00:00', '16:00:00', 'HADIR'),
(52, 3, '2020-12-22', '08:00:00', '16:00:00', 'HADIR'),
(53, 3, '2020-12-23', '08:00:00', '16:00:00', 'HADIR'),
(54, 3, '2020-12-24', NULL, NULL, 'LIBUR NASIONAL'),
(55, 3, '2020-12-25', NULL, NULL, 'LIBUR NASIONAL'),
(56, 3, '2020-12-26', NULL, NULL, 'AKHIR PEKAN'),
(57, 3, '2020-12-27', NULL, NULL, 'AKHIR PEKAN'),
(58, 3, '2020-12-28', '08:00:00', '16:00:00', 'HADIR'),
(59, 3, '2020-12-29', '08:00:00', '16:00:00', 'HADIR'),
(60, 3, '2020-12-30', '08:00:00', '16:00:00', 'HADIR'),
(61, 3, '2020-12-31', '08:00:00', '16:00:00', 'HADIR'),
(62, 3, '2021-01-01', NULL, NULL, 'LIBUR NASIONAL'),
(63, 3, '2021-01-02', NULL, NULL, 'AKHIR PEKAN'),
(64, 3, '2021-01-03', NULL, NULL, 'AKHIR PEKAN'),
(65, 3, '2021-01-04', '08:00:00', '16:00:00', 'HADIR'),
(66, 3, '2021-01-05', '08:00:00', '16:00:00', 'HADIR'),
(67, 3, '2021-01-06', '08:00:00', '16:00:00', 'HADIR'),
(68, 3, '2021-01-07', '08:00:00', '16:00:00', 'HADIR'),
(69, 3, '2021-01-08', '08:00:00', '16:00:00', 'HADIR'),
(70, 3, '2021-01-09', NULL, NULL, 'AKHIR PEKAN'),
(71, 3, '2021-01-10', NULL, NULL, 'AKHIR PEKAN'),
(72, 3, '2021-01-11', '08:00:00', '16:00:00', 'HADIR'),
(73, 3, '2021-01-12', '08:00:00', '16:00:00', 'HADIR'),
(74, 3, '2021-01-13', '08:00:00', '16:00:00', 'HADIR'),
(75, 3, '2021-01-14', '08:00:00', '16:00:00', 'HADIR'),
(76, 3, '2021-01-15', '08:00:00', '16:00:00', 'HADIR'),
(77, 3, '2021-01-16', NULL, NULL, 'AKHIR PEKAN'),
(78, 3, '2021-01-17', NULL, NULL, 'AKHIR PEKAN'),
(79, 3, '2021-01-18', '08:00:00', '16:00:00', 'HADIR'),
(80, 3, '2021-01-19', '08:00:00', '16:00:00', 'HADIR'),
(81, 3, '2021-01-20', '08:00:00', '16:00:00', 'HADIR'),
(82, 3, '2021-01-21', '08:00:00', '16:00:00', 'HADIR'),
(83, 3, '2021-01-22', '08:00:00', '16:00:00', 'HADIR'),
(84, 3, '2021-01-23', NULL, NULL, 'AKHIR PEKAN'),
(85, 3, '2021-01-24', NULL, NULL, 'AKHIR PEKAN'),
(86, 3, '2021-01-25', '08:00:00', '16:00:00', 'HADIR'),
(87, 3, '2021-01-26', '08:00:00', '16:00:00', 'HADIR'),
(88, 3, '2021-01-27', '08:00:00', '16:00:00', 'HADIR'),
(89, 3, '2021-01-28', '08:00:00', '16:00:00', 'HADIR'),
(90, 3, '2021-01-29', '08:00:00', '16:00:00', 'HADIR'),
(91, 3, '2021-01-30', NULL, NULL, 'AKHIR PEKAN'),
(92, 3, '2021-01-31', NULL, NULL, 'AKHIR PEKAN'),
(93, 4, '2020-11-01', NULL, NULL, 'AKHIR PEKAN'),
(94, 4, '2020-11-02', '08:00:00', '16:00:00', 'HADIR'),
(95, 4, '2020-11-03', '08:35:00', '16:00:00', 'HADIR'),
(96, 4, '2020-11-04', NULL, NULL, 'SAKIT'),
(97, 4, '2020-11-05', '08:00:00', '16:00:00', 'HADIR'),
(98, 4, '2020-11-06', '08:00:00', '16:00:00', 'HADIR'),
(99, 4, '2020-11-07', NULL, NULL, 'AKHIR PEKAN'),
(100, 4, '2020-11-08', NULL, NULL, 'AKHIR PEKAN'),
(101, 4, '2020-11-09', '08:00:00', '16:00:00', 'HADIR'),
(102, 4, '2020-11-10', NULL, NULL, 'LIBUR NASIONAL'),
(103, 4, '2020-11-11', '08:00:00', '16:00:00', 'HADIR'),
(104, 4, '2020-11-12', '08:00:00', '16:00:00', 'HADIR'),
(105, 4, '2020-11-13', '08:00:00', '16:00:00', 'HADIR'),
(106, 4, '2020-11-14', NULL, NULL, 'AKHIR PEKAN'),
(107, 4, '2020-11-15', NULL, NULL, 'AKHIR PEKAN'),
(108, 4, '2020-11-16', '08:00:00', '16:00:00', 'HADIR'),
(109, 4, '2020-11-17', '08:00:00', '16:00:00', 'HADIR'),
(110, 4, '2020-11-18', '08:45:00', '16:00:00', 'HADIR'),
(111, 4, '2020-11-19', NULL, NULL, 'IZIN'),
(112, 4, '2020-11-20', '08:00:00', '16:00:00', 'HADIR'),
(113, 4, '2020-11-21', NULL, NULL, 'AKHIR PEKAN'),
(114, 4, '2020-11-22', NULL, NULL, 'AKHIR PEKAN'),
(115, 4, '2020-11-23', '08:00:00', '16:00:00', 'HADIR'),
(116, 4, '2020-11-24', '08:00:00', '16:00:00', 'HADIR'),
(117, 4, '2020-11-25', '08:00:00', '16:00:00', 'HADIR'),
(118, 4, '2020-11-26', '08:00:00', '16:00:00', 'HADIR'),
(119, 4, '2020-11-27', '08:00:00', '16:00:00', 'HADIR'),
(120, 4, '2020-11-28', NULL, NULL, 'AKHIR PEKAN'),
(121, 4, '2020-11-29', NULL, NULL, 'AKHIR PEKAN'),
(122, 4, '2020-11-30', '08:00:00', '16:00:00', 'HADIR'),
(123, 4, '2020-12-01', '08:00:00', '16:00:00', 'HADIR'),
(124, 4, '2020-12-02', '08:00:00', '16:00:00', 'HADIR'),
(125, 4, '2020-12-03', '08:00:00', '16:00:00', 'HADIR'),
(126, 4, '2020-12-04', '08:00:00', '16:00:00', 'HADIR'),
(127, 4, '2020-12-05', NULL, NULL, 'AKHIR PEKAN'),
(128, 4, '2020-12-06', NULL, NULL, 'AKHIR PEKAN'),
(129, 4, '2020-12-07', '08:00:00', '16:00:00', 'HADIR'),
(130, 4, '2020-12-08', '08:00:00', '16:00:00', 'HADIR'),
(131, 4, '2020-12-09', NULL, NULL, 'LIBUR NASIONAL'),
(132, 4, '2020-12-10', '08:00:00', '16:00:00', 'HADIR'),
(133, 4, '2020-12-11', '08:00:00', '16:00:00', 'HADIR'),
(134, 4, '2020-12-12', NULL, NULL, 'AKHIR PEKAN'),
(135, 4, '2020-12-13', NULL, NULL, 'AKHIR PEKAN'),
(136, 4, '2020-12-14', '08:00:00', '16:00:00', 'HADIR'),
(137, 4, '2020-12-15', '08:00:00', '16:00:00', 'HADIR'),
(138, 4, '2020-12-16', '08:00:00', '16:00:00', 'HADIR'),
(139, 4, '2020-12-17', NULL, NULL, 'SAKIT'),
(140, 4, '2020-12-18', '08:00:00', '16:00:00', 'HADIR'),
(141, 4, '2020-12-19', NULL, NULL, 'AKHIR PEKAN'),
(142, 4, '2020-12-20', NULL, NULL, 'AKHIR PEKAN'),
(143, 4, '2020-12-21', '08:00:00', '16:00:00', 'HADIR'),
(144, 4, '2020-12-22', '08:00:00', '16:00:00', 'HADIR'),
(145, 4, '2020-12-23', '08:00:00', '16:00:00', 'HADIR'),
(146, 4, '2020-12-24', NULL, NULL, 'LIBUR NASIONAL'),
(147, 4, '2020-12-25', NULL, NULL, 'LIBUR NASIONAL'),
(148, 4, '2020-12-26', NULL, NULL, 'AKHIR PEKAN'),
(149, 4, '2020-12-27', NULL, NULL, 'AKHIR PEKAN'),
(150, 4, '2020-12-28', '08:00:00', '16:00:00', 'HADIR'),
(151, 4, '2020-12-29', '08:50:00', '16:00:00', 'HADIR'),
(152, 4, '2020-12-30', '08:00:00', '16:00:00', 'HADIR'),
(153, 4, '2020-12-31', '08:00:00', '16:00:00', 'HADIR'),
(154, 4, '2021-01-01', NULL, NULL, 'LIBUR NASIONAL'),
(155, 4, '2021-01-02', NULL, NULL, 'AKHIR PEKAN'),
(156, 4, '2021-01-03', NULL, NULL, 'AKHIR PEKAN'),
(157, 4, '2021-01-04', '08:00:00', '16:00:00', 'HADIR'),
(158, 4, '2021-01-05', '08:00:00', '16:00:00', 'HADIR'),
(159, 4, '2021-01-06', '08:00:00', '16:00:00', 'HADIR'),
(160, 4, '2021-01-07', '08:00:00', '16:00:00', 'HADIR'),
(161, 4, '2021-01-08', '08:00:00', '16:00:00', 'HADIR'),
(162, 4, '2021-01-09', NULL, NULL, 'AKHIR PEKAN'),
(163, 4, '2021-01-10', NULL, NULL, 'AKHIR PEKAN'),
(164, 4, '2021-01-11', '08:00:00', '16:00:00', 'HADIR'),
(165, 4, '2021-01-12', '08:00:00', '16:00:00', 'HADIR'),
(166, 4, '2021-01-13', '08:00:00', '16:00:00', 'HADIR'),
(167, 4, '2021-01-14', '08:00:00', '16:00:00', 'HADIR'),
(168, 4, '2021-01-15', '08:00:00', '16:00:00', 'HADIR'),
(169, 4, '2021-01-16', NULL, NULL, 'AKHIR PEKAN'),
(170, 4, '2021-01-17', NULL, NULL, 'AKHIR PEKAN'),
(171, 4, '2021-01-18', '08:00:00', '16:00:00', 'HADIR'),
(172, 4, '2021-01-19', '08:00:00', '16:00:00', 'HADIR'),
(173, 4, '2021-01-20', '08:00:00', '16:00:00', 'HADIR'),
(174, 4, '2021-01-21', NULL, NULL, 'IZIN'),
(175, 4, '2021-01-22', '08:00:00', '16:00:00', 'HADIR'),
(176, 4, '2021-01-23', NULL, NULL, 'AKHIR PEKAN'),
(177, 4, '2021-01-24', NULL, NULL, 'AKHIR PEKAN'),
(178, 4, '2021-01-25', '08:00:00', '16:00:00', 'HADIR'),
(179, 4, '2021-01-26', '08:00:00', '16:00:00', 'HADIR'),
(180, 4, '2021-01-27', '08:40:00', '16:00:00', 'HADIR'),
(181, 4, '2021-01-28', '08:00:00', '16:00:00', 'HADIR'),
(182, 4, '2021-01-29', '08:00:00', '16:00:00', 'HADIR'),
(183, 4, '2021-01-30', NULL, NULL, 'AKHIR PEKAN'),
(184, 4, '2021-01-31', NULL, NULL, 'AKHIR PEKAN'),
(185, 5, '2020-11-01', NULL, NULL, 'AKHIR PEKAN'),
(186, 5, '2020-11-02', '08:00:00', '16:00:00', 'HADIR'),
(187, 5, '2020-11-03', '08:00:00', '16:00:00', 'HADIR'),
(188, 5, '2020-11-04', '08:00:00', '16:00:00', 'HADIR'),
(189, 5, '2020-11-05', '08:00:00', '16:00:00', 'HADIR'),
(190, 5, '2020-11-06', '08:35:00', '16:00:00', 'HADIR'),
(191, 5, '2020-11-07', NULL, NULL, 'AKHIR PEKAN'),
(192, 5, '2020-11-08', NULL, NULL, 'AKHIR PEKAN'),
(193, 5, '2020-11-09', '08:00:00', '16:00:00', 'HADIR'),
(194, 5, '2020-11-10', NULL, NULL, 'LIBUR NASIONAL'),
(195, 5, '2020-11-11', '08:00:00', '16:00:00', 'HADIR'),
(196, 5, '2020-11-12', '08:00:00', '16:00:00', 'HADIR'),
(197, 5, '2020-11-13', '08:00:00', '16:00:00', 'HADIR'),
(198, 5, '2020-11-14', NULL, NULL, 'AKHIR PEKAN'),
(199, 5, '2020-11-15', NULL, NULL, 'AKHIR PEKAN'),
(200, 5, '2020-11-16', '08:00:00', '16:00:00', 'HADIR'),
(201, 5, '2020-11-17', '08:00:00', '16:00:00', 'HADIR'),
(202, 5, '2020-11-18', '08:35:00', '16:00:00', 'HADIR'),
(203, 5, '2020-11-19', '08:00:00', '16:00:00', 'HADIR'),
(204, 5, '2020-11-20', '08:00:00', '16:00:00', 'HADIR'),
(205, 5, '2020-11-21', NULL, NULL, 'AKHIR PEKAN'),
(206, 5, '2020-11-22', NULL, NULL, 'AKHIR PEKAN'),
(207, 5, '2020-11-23', '08:00:00', '16:00:00', 'HADIR'),
(208, 5, '2020-11-24', '08:00:00', '16:00:00', 'HADIR'),
(209, 5, '2020-11-25', NULL, NULL, 'SAKIT'),
(210, 5, '2020-11-26', '08:00:00', '16:00:00', 'HADIR'),
(211, 5, '2020-11-27', '08:00:00', '16:00:00', 'HADIR'),
(212, 5, '2020-11-28', NULL, NULL, 'AKHIR PEKAN'),
(213, 5, '2020-11-29', NULL, NULL, 'AKHIR PEKAN'),
(214, 5, '2020-11-30', '08:00:00', '16:00:00', 'HADIR'),
(215, 5, '2020-12-01', '08:00:00', '16:00:00', 'HADIR'),
(216, 5, '2020-12-02', '08:00:00', '16:00:00', 'HADIR'),
(217, 5, '2020-12-03', '08:00:00', '16:00:00', 'HADIR'),
(218, 5, '2020-12-04', '08:00:00', '16:00:00', 'HADIR'),
(219, 5, '2020-12-05', NULL, NULL, 'AKHIR PEKAN'),
(220, 5, '2020-12-06', NULL, NULL, 'AKHIR PEKAN'),
(221, 5, '2020-12-07', '08:00:00', '16:00:00', 'HADIR'),
(222, 5, '2020-12-08', '08:00:00', '16:00:00', 'HADIR'),
(223, 5, '2020-12-09', NULL, NULL, 'LIBUR NASIONAL'),
(224, 5, '2020-12-10', '08:00:00', '16:00:00', 'HADIR'),
(225, 5, '2020-12-11', '08:00:00', '16:00:00', 'HADIR'),
(226, 5, '2020-12-12', NULL, NULL, 'AKHIR PEKAN'),
(227, 5, '2020-12-13', NULL, NULL, 'AKHIR PEKAN'),
(228, 5, '2020-12-14', '08:00:00', '16:00:00', 'HADIR'),
(229, 5, '2020-12-15', '08:00:00', '16:00:00', 'HADIR'),
(230, 5, '2020-12-16', '08:00:00', '16:00:00', 'HADIR'),
(231, 5, '2020-12-17', '08:00:00', '16:00:00', 'HADIR'),
(232, 5, '2020-12-18', '08:00:00', '16:00:00', 'HADIR'),
(233, 5, '2020-12-19', NULL, NULL, 'AKHIR PEKAN'),
(234, 5, '2020-12-20', NULL, NULL, 'AKHIR PEKAN'),
(235, 5, '2020-12-21', '08:00:00', '16:00:00', 'HADIR'),
(236, 5, '2020-12-22', '08:00:00', '16:00:00', 'HADIR'),
(237, 5, '2020-12-23', '08:00:00', '16:00:00', 'HADIR'),
(238, 5, '2020-12-24', NULL, NULL, 'LIBUR NASIONAL'),
(239, 5, '2020-12-25', NULL, NULL, 'LIBUR NASIONAL'),
(240, 5, '2020-12-26', NULL, NULL, 'AKHIR PEKAN'),
(241, 5, '2020-12-27', NULL, NULL, 'AKHIR PEKAN'),
(242, 5, '2020-12-28', '08:00:00', '16:00:00', 'HADIR'),
(243, 5, '2020-12-29', '08:00:00', '16:00:00', 'HADIR'),
(244, 5, '2020-12-30', '08:00:00', '16:00:00', 'HADIR'),
(245, 5, '2020-12-31', '08:00:00', '16:00:00', 'HADIR'),
(246, 5, '2021-01-01', NULL, NULL, 'LIBUR NASIONAL'),
(247, 5, '2021-01-02', NULL, NULL, 'AKHIR PEKAN'),
(248, 5, '2021-01-03', NULL, NULL, 'AKHIR PEKAN'),
(249, 5, '2021-01-04', '08:00:00', '16:00:00', 'HADIR'),
(250, 5, '2021-01-05', '08:00:00', '16:00:00', 'HADIR'),
(251, 5, '2021-01-06', NULL, NULL, 'IZIN'),
(252, 5, '2021-01-07', '08:00:00', '16:00:00', 'HADIR'),
(253, 5, '2021-01-08', '08:00:00', '16:00:00', 'HADIR'),
(254, 5, '2021-01-09', NULL, NULL, 'AKHIR PEKAN'),
(255, 5, '2021-01-10', NULL, NULL, 'AKHIR PEKAN'),
(256, 5, '2021-01-11', '08:00:00', '16:00:00', 'HADIR'),
(257, 5, '2021-01-12', '08:00:00', '16:00:00', 'HADIR'),
(258, 5, '2021-01-13', '08:00:00', '16:00:00', 'HADIR'),
(259, 5, '2021-01-14', '08:00:00', '16:00:00', 'HADIR'),
(260, 5, '2021-01-15', '08:00:00', '16:00:00', 'HADIR'),
(261, 5, '2021-01-16', NULL, NULL, 'AKHIR PEKAN'),
(262, 5, '2021-01-17', NULL, NULL, 'AKHIR PEKAN'),
(263, 5, '2021-01-18', '08:00:00', '16:00:00', 'HADIR'),
(264, 5, '2021-01-19', '08:00:00', '16:00:00', 'HADIR'),
(265, 5, '2021-01-20', '08:00:00', '16:00:00', 'HADIR'),
(266, 5, '2021-01-21', '08:00:00', '16:00:00', 'HADIR'),
(267, 5, '2021-01-22', '08:00:00', '16:00:00', 'HADIR'),
(268, 5, '2021-01-23', NULL, NULL, 'AKHIR PEKAN'),
(269, 5, '2021-01-24', NULL, NULL, 'AKHIR PEKAN'),
(270, 5, '2021-01-25', '08:00:00', '16:00:00', 'HADIR'),
(271, 5, '2021-01-26', NULL, NULL, 'SAKIT'),
(272, 5, '2021-01-27', NULL, NULL, 'SAKIT'),
(273, 5, '2021-01-28', '08:00:00', '16:00:00', 'HADIR'),
(274, 5, '2021-01-29', '08:00:00', '16:00:00', 'HADIR'),
(275, 5, '2021-01-30', NULL, NULL, 'AKHIR PEKAN'),
(276, 5, '2021-01-31', NULL, NULL, 'AKHIR PEKAN'),
(277, 6, '2020-11-01', NULL, NULL, 'AKHIR PEKAN'),
(278, 6, '2020-11-02', '08:00:00', '16:00:00', 'HADIR'),
(279, 6, '2020-11-03', '08:00:00', '16:00:00', 'HADIR'),
(280, 6, '2020-11-04', '08:00:00', '16:00:00', 'HADIR'),
(281, 6, '2020-11-05', '08:00:00', '16:00:00', 'HADIR'),
(282, 6, '2020-11-06', '08:00:00', '16:00:00', 'HADIR'),
(283, 6, '2020-11-07', NULL, NULL, 'AKHIR PEKAN'),
(284, 6, '2020-11-08', NULL, NULL, 'AKHIR PEKAN'),
(285, 6, '2020-11-09', '08:00:00', '16:00:00', 'HADIR'),
(286, 6, '2020-11-10', NULL, NULL, 'LIBUR NASIONAL'),
(287, 6, '2020-11-11', '08:00:00', '16:00:00', 'HADIR'),
(288, 6, '2020-11-12', '08:00:00', '16:00:00', 'HADIR'),
(289, 6, '2020-11-13', '08:00:00', '16:00:00', 'HADIR'),
(290, 6, '2020-11-14', NULL, NULL, 'AKHIR PEKAN'),
(291, 6, '2020-11-15', NULL, NULL, 'AKHIR PEKAN'),
(292, 6, '2020-11-16', '08:00:00', '16:00:00', 'HADIR'),
(293, 6, '2020-11-17', '08:00:00', '16:00:00', 'HADIR'),
(294, 6, '2020-11-18', '08:00:00', '16:00:00', 'HADIR'),
(295, 6, '2020-11-19', '08:00:00', '16:00:00', 'HADIR'),
(296, 6, '2020-11-20', '08:00:00', '16:00:00', 'HADIR'),
(297, 6, '2020-11-21', NULL, NULL, 'AKHIR PEKAN'),
(298, 6, '2020-11-22', NULL, NULL, 'AKHIR PEKAN'),
(299, 6, '2020-11-23', '08:00:00', '16:00:00', 'HADIR'),
(300, 6, '2020-11-24', '08:00:00', '16:00:00', 'HADIR'),
(301, 6, '2020-11-25', '08:00:00', '16:00:00', 'HADIR'),
(302, 6, '2020-11-26', '08:00:00', '16:00:00', 'HADIR'),
(303, 6, '2020-11-27', '08:00:00', '16:00:00', 'HADIR'),
(304, 6, '2020-11-28', NULL, NULL, 'AKHIR PEKAN'),
(305, 6, '2020-11-29', NULL, NULL, 'AKHIR PEKAN'),
(306, 6, '2020-11-30', '08:00:00', '16:00:00', 'HADIR'),
(307, 6, '2020-12-01', '08:00:00', '16:00:00', 'HADIR'),
(308, 6, '2020-12-02', '08:00:00', '16:00:00', 'HADIR'),
(309, 6, '2020-12-03', '08:00:00', '16:00:00', 'HADIR'),
(310, 6, '2020-12-04', '08:00:00', '16:00:00', 'HADIR'),
(311, 6, '2020-12-05', NULL, NULL, 'AKHIR PEKAN'),
(312, 6, '2020-12-06', NULL, NULL, 'AKHIR PEKAN'),
(313, 6, '2020-12-07', '08:00:00', '16:00:00', 'HADIR'),
(314, 6, '2020-12-08', '08:00:00', '16:00:00', 'HADIR'),
(315, 6, '2020-12-09', NULL, NULL, 'LIBUR NASIONAL'),
(316, 6, '2020-12-10', '08:00:00', '16:00:00', 'HADIR'),
(317, 6, '2020-12-11', '08:00:00', '16:00:00', 'HADIR'),
(318, 6, '2020-12-12', NULL, NULL, 'AKHIR PEKAN'),
(319, 6, '2020-12-13', NULL, NULL, 'AKHIR PEKAN'),
(320, 6, '2020-12-14', '08:00:00', '16:00:00', 'HADIR'),
(321, 6, '2020-12-15', '08:00:00', '16:00:00', 'HADIR'),
(322, 6, '2020-12-16', '08:00:00', '16:00:00', 'HADIR'),
(323, 6, '2020-12-17', '08:00:00', '16:00:00', 'HADIR'),
(324, 6, '2020-12-18', '08:00:00', '16:00:00', 'HADIR'),
(325, 6, '2020-12-19', NULL, NULL, 'AKHIR PEKAN'),
(326, 6, '2020-12-20', NULL, NULL, 'AKHIR PEKAN'),
(327, 6, '2020-12-21', '08:00:00', '16:00:00', 'HADIR'),
(328, 6, '2020-12-22', '08:00:00', '16:00:00', 'HADIR'),
(329, 6, '2020-12-23', '08:00:00', '16:00:00', 'HADIR'),
(330, 6, '2020-12-24', NULL, NULL, 'LIBUR NASIONAL'),
(331, 6, '2020-12-25', NULL, NULL, 'LIBUR NASIONAL'),
(332, 6, '2020-12-26', NULL, NULL, 'AKHIR PEKAN'),
(333, 6, '2020-12-27', NULL, NULL, 'AKHIR PEKAN'),
(334, 6, '2020-12-28', '08:00:00', '16:00:00', 'HADIR'),
(335, 6, '2020-12-29', '08:00:00', '16:00:00', 'HADIR'),
(336, 6, '2020-12-30', '08:00:00', '16:00:00', 'HADIR'),
(337, 6, '2020-12-31', '08:00:00', '16:00:00', 'HADIR'),
(338, 6, '2021-01-01', NULL, NULL, 'LIBUR NASIONAL'),
(339, 6, '2021-01-02', NULL, NULL, 'AKHIR PEKAN'),
(340, 6, '2021-01-03', NULL, NULL, 'AKHIR PEKAN'),
(341, 6, '2021-01-04', '08:00:00', '16:00:00', 'HADIR'),
(342, 6, '2021-01-05', '08:00:00', '16:00:00', 'HADIR'),
(343, 6, '2021-01-06', '08:00:00', '16:00:00', 'HADIR'),
(344, 6, '2021-01-07', '08:00:00', '16:00:00', 'HADIR'),
(345, 6, '2021-01-08', '08:00:00', '16:00:00', 'HADIR'),
(346, 6, '2021-01-09', NULL, NULL, 'AKHIR PEKAN'),
(347, 6, '2021-01-10', NULL, NULL, 'AKHIR PEKAN'),
(348, 6, '2021-01-11', '08:00:00', '16:00:00', 'HADIR'),
(349, 6, '2021-01-12', '08:00:00', '16:00:00', 'HADIR'),
(350, 6, '2021-01-13', '08:00:00', '16:00:00', 'HADIR'),
(351, 6, '2021-01-14', '08:00:00', '16:00:00', 'HADIR'),
(352, 6, '2021-01-15', '08:00:00', '16:00:00', 'HADIR'),
(353, 6, '2021-01-16', NULL, NULL, 'AKHIR PEKAN'),
(354, 6, '2021-01-17', NULL, NULL, 'AKHIR PEKAN'),
(355, 6, '2021-01-18', '08:00:00', '16:00:00', 'HADIR'),
(356, 6, '2021-01-19', '08:00:00', '16:00:00', 'HADIR'),
(357, 6, '2021-01-20', '08:00:00', '16:00:00', 'HADIR'),
(358, 6, '2021-01-21', '08:00:00', '16:00:00', 'HADIR'),
(359, 6, '2021-01-22', '08:00:00', '16:00:00', 'HADIR'),
(360, 6, '2021-01-23', NULL, NULL, 'AKHIR PEKAN'),
(361, 6, '2021-01-24', NULL, NULL, 'AKHIR PEKAN'),
(362, 6, '2021-01-25', '08:00:00', '16:00:00', 'HADIR'),
(363, 6, '2021-01-26', '08:00:00', '16:00:00', 'HADIR'),
(364, 6, '2021-01-27', '08:00:00', '16:00:00', 'HADIR'),
(365, 6, '2021-01-28', '08:00:00', '16:00:00', 'HADIR'),
(366, 6, '2021-01-29', '08:00:00', '16:00:00', 'HADIR'),
(367, 6, '2021-01-30', NULL, NULL, 'AKHIR PEKAN'),
(368, 6, '2021-01-31', NULL, NULL, 'AKHIR PEKAN'),
(369, 7, '2020-11-01', NULL, NULL, 'AKHIR PEKAN'),
(370, 7, '2020-11-02', '08:00:00', '16:00:00', 'HADIR'),
(371, 7, '2020-11-03', '08:35:00', '16:00:00', 'HADIR'),
(372, 7, '2020-11-04', NULL, NULL, 'SAKIT'),
(373, 7, '2020-11-05', '08:00:00', '16:00:00', 'HADIR'),
(374, 7, '2020-11-06', '08:00:00', '16:00:00', 'HADIR'),
(375, 7, '2020-11-07', NULL, NULL, 'AKHIR PEKAN'),
(376, 7, '2020-11-08', NULL, NULL, 'AKHIR PEKAN'),
(377, 7, '2020-11-09', '08:00:00', '16:00:00', 'HADIR'),
(378, 7, '2020-11-10', NULL, NULL, 'LIBUR NASIONAL'),
(379, 7, '2020-11-11', '08:00:00', '16:00:00', 'HADIR'),
(380, 7, '2020-11-12', '08:00:00', '16:00:00', 'HADIR'),
(381, 7, '2020-11-13', '08:00:00', '16:00:00', 'HADIR'),
(382, 7, '2020-11-14', NULL, NULL, 'AKHIR PEKAN'),
(383, 7, '2020-11-15', NULL, NULL, 'AKHIR PEKAN'),
(384, 7, '2020-11-16', '08:00:00', '16:00:00', 'HADIR'),
(385, 7, '2020-11-17', '08:00:00', '16:00:00', 'HADIR'),
(386, 7, '2020-11-18', '08:45:00', '16:00:00', 'HADIR'),
(387, 7, '2020-11-19', NULL, NULL, 'IZIN'),
(388, 7, '2020-11-20', '08:00:00', '16:00:00', 'HADIR'),
(389, 7, '2020-11-21', NULL, NULL, 'AKHIR PEKAN'),
(390, 7, '2020-11-22', NULL, NULL, 'AKHIR PEKAN'),
(391, 7, '2020-11-23', '08:00:00', '16:00:00', 'HADIR'),
(392, 7, '2020-11-24', '08:00:00', '16:00:00', 'HADIR'),
(393, 7, '2020-11-25', '08:00:00', '16:00:00', 'HADIR'),
(394, 7, '2020-11-26', '08:00:00', '16:00:00', 'HADIR'),
(395, 7, '2020-11-27', '08:00:00', '16:00:00', 'HADIR'),
(396, 7, '2020-11-28', NULL, NULL, 'AKHIR PEKAN'),
(397, 7, '2020-11-29', NULL, NULL, 'AKHIR PEKAN'),
(398, 7, '2020-11-30', '08:00:00', '16:00:00', 'HADIR'),
(399, 7, '2020-12-01', '08:00:00', '16:00:00', 'HADIR'),
(400, 7, '2020-12-02', '08:00:00', '16:00:00', 'HADIR'),
(401, 7, '2020-12-03', '08:00:00', '16:00:00', 'HADIR'),
(402, 7, '2020-12-04', '08:00:00', '16:00:00', 'HADIR'),
(403, 7, '2020-12-05', NULL, NULL, 'AKHIR PEKAN'),
(404, 7, '2020-12-06', NULL, NULL, 'AKHIR PEKAN'),
(405, 7, '2020-12-07', '08:00:00', '16:00:00', 'HADIR'),
(406, 7, '2020-12-08', '08:00:00', '16:00:00', 'HADIR'),
(407, 7, '2020-12-09', NULL, NULL, 'LIBUR NASIONAL'),
(408, 7, '2020-12-10', '08:00:00', '16:00:00', 'HADIR'),
(409, 7, '2020-12-11', '08:00:00', '16:00:00', 'HADIR'),
(410, 7, '2020-12-12', NULL, NULL, 'AKHIR PEKAN'),
(411, 7, '2020-12-13', NULL, NULL, 'AKHIR PEKAN'),
(412, 7, '2020-12-14', '08:00:00', '16:00:00', 'HADIR'),
(413, 7, '2020-12-15', '08:00:00', '16:00:00', 'HADIR'),
(414, 7, '2020-12-16', '08:00:00', '16:00:00', 'HADIR'),
(415, 7, '2020-12-17', NULL, NULL, 'SAKIT'),
(416, 7, '2020-12-18', '08:00:00', '16:00:00', 'HADIR'),
(417, 7, '2020-12-19', NULL, NULL, 'AKHIR PEKAN'),
(418, 7, '2020-12-20', NULL, NULL, 'AKHIR PEKAN'),
(419, 7, '2020-12-21', '08:00:00', '16:00:00', 'HADIR'),
(420, 7, '2020-12-22', '08:00:00', '16:00:00', 'HADIR'),
(421, 7, '2020-12-23', '08:00:00', '16:00:00', 'HADIR'),
(422, 7, '2020-12-24', NULL, NULL, 'LIBUR NASIONAL'),
(423, 7, '2020-12-25', NULL, NULL, 'LIBUR NASIONAL'),
(424, 7, '2020-12-26', NULL, NULL, 'AKHIR PEKAN'),
(425, 7, '2020-12-27', NULL, NULL, 'AKHIR PEKAN'),
(426, 7, '2020-12-28', '08:00:00', '16:00:00', 'HADIR'),
(427, 7, '2020-12-29', '08:50:00', '16:00:00', 'HADIR'),
(428, 7, '2020-12-30', '08:00:00', '16:00:00', 'HADIR'),
(429, 7, '2020-12-31', '08:00:00', '16:00:00', 'HADIR'),
(430, 7, '2021-01-01', NULL, NULL, 'LIBUR NASIONAL'),
(431, 7, '2021-01-02', NULL, NULL, 'AKHIR PEKAN'),
(432, 7, '2021-01-03', NULL, NULL, 'AKHIR PEKAN'),
(433, 7, '2021-01-04', '08:55:00', '16:00:00', 'HADIR'),
(434, 7, '2021-01-05', '08:00:00', '16:00:00', 'HADIR'),
(435, 7, '2021-01-06', '08:00:00', '16:00:00', 'HADIR'),
(436, 7, '2021-01-07', '08:00:00', '16:00:00', 'HADIR'),
(437, 7, '2021-01-08', '08:00:00', '16:00:00', 'HADIR'),
(438, 7, '2021-01-09', NULL, NULL, 'AKHIR PEKAN'),
(439, 7, '2021-01-10', NULL, NULL, 'AKHIR PEKAN'),
(440, 7, '2021-01-11', '08:00:00', '16:00:00', 'HADIR'),
(441, 7, '2021-01-12', '08:00:00', '16:00:00', 'HADIR'),
(442, 7, '2021-01-13', '08:00:00', '16:00:00', 'HADIR'),
(443, 7, '2021-01-14', '08:00:00', '16:00:00', 'HADIR'),
(444, 7, '2021-01-15', '08:00:00', '16:00:00', 'HADIR'),
(445, 7, '2021-01-16', NULL, NULL, 'AKHIR PEKAN'),
(446, 7, '2021-01-17', NULL, NULL, 'AKHIR PEKAN'),
(447, 7, '2021-01-18', '08:00:00', '16:00:00', 'HADIR'),
(448, 7, '2021-01-19', '08:00:00', '16:00:00', 'HADIR'),
(449, 7, '2021-01-20', '08:00:00', '16:00:00', 'HADIR'),
(450, 7, '2021-01-21', NULL, NULL, 'IZIN'),
(451, 7, '2021-01-22', '08:00:00', '16:00:00', 'HADIR'),
(452, 7, '2021-01-23', NULL, NULL, 'AKHIR PEKAN'),
(453, 7, '2021-01-24', NULL, NULL, 'AKHIR PEKAN'),
(454, 7, '2021-01-25', '08:00:00', '16:00:00', 'HADIR'),
(455, 7, '2021-01-26', '08:00:00', '16:00:00', 'HADIR'),
(456, 7, '2021-01-27', '08:40:00', '16:00:00', 'HADIR'),
(457, 7, '2021-01-28', '08:00:00', '16:00:00', 'HADIR'),
(458, 7, '2021-01-29', '08:00:00', '16:00:00', 'HADIR'),
(459, 7, '2021-01-30', NULL, NULL, 'AKHIR PEKAN'),
(460, 7, '2021-01-31', NULL, NULL, 'AKHIR PEKAN'),
(461, 8, '2020-11-01', NULL, NULL, 'AKHIR PEKAN'),
(462, 8, '2020-11-02', '08:00:00', '16:00:00', 'HADIR'),
(463, 8, '2020-11-03', '08:00:00', '16:00:00', 'HADIR'),
(464, 8, '2020-11-04', '08:00:00', '16:00:00', 'HADIR'),
(465, 8, '2020-11-05', '08:00:00', '16:00:00', 'HADIR'),
(466, 8, '2020-11-06', '08:35:00', '16:00:00', 'HADIR'),
(467, 8, '2020-11-07', NULL, NULL, 'AKHIR PEKAN'),
(468, 8, '2020-11-08', NULL, NULL, 'AKHIR PEKAN'),
(469, 8, '2020-11-09', '08:00:00', '16:00:00', 'HADIR'),
(470, 8, '2020-11-10', NULL, NULL, 'LIBUR NASIONAL'),
(471, 8, '2020-11-11', '08:00:00', '16:00:00', 'HADIR'),
(472, 8, '2020-11-12', '08:00:00', '16:00:00', 'HADIR'),
(473, 8, '2020-11-13', '08:00:00', '16:00:00', 'HADIR'),
(474, 8, '2020-11-14', NULL, NULL, 'AKHIR PEKAN'),
(475, 8, '2020-11-15', NULL, NULL, 'AKHIR PEKAN'),
(476, 8, '2020-11-16', '08:00:00', '16:00:00', 'HADIR'),
(477, 8, '2020-11-17', '08:00:00', '16:00:00', 'HADIR'),
(478, 8, '2020-11-18', '08:35:00', '16:00:00', 'HADIR'),
(479, 8, '2020-11-19', '08:00:00', '16:00:00', 'HADIR'),
(480, 8, '2020-11-20', '08:00:00', '16:00:00', 'HADIR'),
(481, 8, '2020-11-21', NULL, NULL, 'AKHIR PEKAN'),
(482, 8, '2020-11-22', NULL, NULL, 'AKHIR PEKAN'),
(483, 8, '2020-11-23', '08:00:00', '16:00:00', 'HADIR'),
(484, 8, '2020-11-24', '08:00:00', '16:00:00', 'HADIR'),
(485, 8, '2020-11-25', NULL, NULL, 'IZIN'),
(486, 8, '2020-11-26', '08:00:00', '16:00:00', 'HADIR'),
(487, 8, '2020-11-27', '08:00:00', '16:00:00', 'HADIR'),
(488, 8, '2020-11-28', NULL, NULL, 'AKHIR PEKAN'),
(489, 8, '2020-11-29', NULL, NULL, 'AKHIR PEKAN'),
(490, 8, '2020-11-30', '08:00:00', '16:00:00', 'HADIR'),
(491, 8, '2020-12-01', '08:00:00', '16:00:00', 'HADIR'),
(492, 8, '2020-12-02', NULL, NULL, 'CUTI'),
(493, 8, '2020-12-03', NULL, NULL, 'CUTI'),
(494, 8, '2020-12-04', '08:00:00', '16:00:00', 'HADIR'),
(495, 8, '2020-12-05', NULL, NULL, 'AKHIR PEKAN'),
(496, 8, '2020-12-06', NULL, NULL, 'AKHIR PEKAN'),
(497, 8, '2020-12-07', '08:00:00', '16:00:00', 'HADIR'),
(498, 8, '2020-12-08', '08:00:00', '16:00:00', 'HADIR'),
(499, 8, '2020-12-09', NULL, NULL, 'LIBUR NASIONAL'),
(500, 8, '2020-12-10', '08:00:00', '16:00:00', 'HADIR'),
(501, 8, '2020-12-11', '08:00:00', '16:00:00', 'HADIR'),
(502, 8, '2020-12-12', NULL, NULL, 'AKHIR PEKAN'),
(503, 8, '2020-12-13', NULL, NULL, 'AKHIR PEKAN'),
(504, 8, '2020-12-14', '08:37:00', '16:00:00', 'HADIR'),
(505, 8, '2020-12-15', '08:00:00', '16:00:00', 'HADIR'),
(506, 8, '2020-12-16', '08:00:00', '16:00:00', 'HADIR'),
(507, 8, '2020-12-17', '08:00:00', '16:00:00', 'HADIR'),
(508, 8, '2020-12-18', '08:00:00', '16:00:00', 'HADIR'),
(509, 8, '2020-12-19', NULL, NULL, 'AKHIR PEKAN'),
(510, 8, '2020-12-20', NULL, NULL, 'AKHIR PEKAN'),
(511, 8, '2020-12-21', '08:00:00', '16:00:00', 'HADIR'),
(512, 8, '2020-12-22', '08:00:00', '16:00:00', 'HADIR'),
(513, 8, '2020-12-23', '08:00:00', '16:00:00', 'HADIR'),
(514, 8, '2020-12-24', NULL, NULL, 'LIBUR NASIONAL'),
(515, 8, '2020-12-25', NULL, NULL, 'LIBUR NASIONAL'),
(516, 8, '2020-12-26', NULL, NULL, 'AKHIR PEKAN'),
(517, 8, '2020-12-27', NULL, NULL, 'AKHIR PEKAN'),
(518, 8, '2020-12-28', '08:00:00', '16:00:00', 'HADIR'),
(519, 8, '2020-12-29', '08:00:00', '16:00:00', 'HADIR'),
(520, 8, '2020-12-30', '08:35:00', '16:00:00', 'HADIR'),
(521, 8, '2020-12-31', '08:00:00', '16:00:00', 'HADIR'),
(522, 8, '2021-01-01', NULL, NULL, 'LIBUR NASIONAL'),
(523, 8, '2021-01-02', NULL, NULL, 'AKHIR PEKAN'),
(524, 8, '2021-01-03', NULL, NULL, 'AKHIR PEKAN'),
(525, 8, '2021-01-04', '08:00:00', '16:00:00', 'HADIR'),
(526, 8, '2021-01-05', '08:00:00', '16:00:00', 'HADIR'),
(527, 8, '2021-01-06', NULL, NULL, 'IZIN'),
(528, 8, '2021-01-07', '08:00:00', '16:00:00', 'HADIR'),
(529, 8, '2021-01-08', '08:00:00', '16:00:00', 'HADIR'),
(530, 8, '2021-01-09', NULL, NULL, 'AKHIR PEKAN'),
(531, 8, '2021-01-10', NULL, NULL, 'AKHIR PEKAN'),
(532, 8, '2021-01-11', '08:00:00', '16:00:00', 'HADIR'),
(533, 8, '2021-01-12', '08:00:00', '16:00:00', 'HADIR'),
(534, 8, '2021-01-13', '08:00:00', '16:00:00', 'HADIR'),
(535, 8, '2021-01-14', '08:00:00', '16:00:00', 'HADIR'),
(536, 8, '2021-01-15', '08:00:00', '16:00:00', 'HADIR'),
(537, 8, '2021-01-16', NULL, NULL, 'AKHIR PEKAN'),
(538, 8, '2021-01-17', NULL, NULL, 'AKHIR PEKAN'),
(539, 8, '2021-01-18', '08:00:00', '16:00:00', 'HADIR'),
(540, 8, '2021-01-19', '08:00:00', '16:00:00', 'HADIR'),
(541, 8, '2021-01-20', '08:00:00', '16:00:00', 'HADIR'),
(542, 8, '2021-01-21', '08:00:00', '16:00:00', 'HADIR'),
(543, 8, '2021-01-22', '08:00:00', '16:00:00', 'HADIR'),
(544, 8, '2021-01-23', NULL, NULL, 'AKHIR PEKAN'),
(545, 8, '2021-01-24', NULL, NULL, 'AKHIR PEKAN'),
(546, 8, '2021-01-25', '08:00:00', '16:00:00', 'HADIR'),
(547, 8, '2021-01-26', NULL, NULL, 'SAKIT'),
(548, 8, '2021-01-27', NULL, NULL, 'SAKIT'),
(549, 8, '2021-01-28', '08:00:00', '16:00:00', 'HADIR'),
(550, 8, '2021-01-29', '08:00:00', '16:00:00', 'HADIR'),
(551, 8, '2021-01-30', NULL, NULL, 'AKHIR PEKAN'),
(552, 8, '2021-01-31', NULL, NULL, 'AKHIR PEKAN');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('ADMIN','PEGAWAI') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Muamar Ichsan', 'muamarichsan00@gmail.com', NULL, '$2y$12$wPqlHI1wCnhQgcO5KOXJ2.5yBDKMzN/4Tw8tcViamF7F58M1QLFtC', 'ADMIN', NULL, '2024-08-08 08:35:08', '2024-08-08 08:35:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bagian_karyawan`
--
ALTER TABLE `bagian_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan_karyawan`
--
ALTER TABLE `jabatan_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `penggajian`
--
ALTER TABLE `penggajian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bagian_karyawan`
--
ALTER TABLE `bagian_karyawan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jabatan_karyawan`
--
ALTER TABLE `jabatan_karyawan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penggajian`
--
ALTER TABLE `penggajian`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
