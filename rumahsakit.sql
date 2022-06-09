-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2022 at 02:55 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumahsakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `id_user`, `nip`, `no_hp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 1, '124190078', '0895605917280', 'Sleman', NULL, '2022-06-03 02:05:39'),
(3, 6, '124190013', '08598321346', 'Babarsari', '2022-06-03 02:06:45', '2022-06-03 02:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `antrians`
--

CREATE TABLE `antrians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pasien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `ttl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pasien` enum('JKN','Umum') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kepala_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diagnosa_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `antrian_anaks`
--

CREATE TABLE `antrian_anaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pasien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `ttl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pasien` enum('JKN','Umum') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kepala_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diagnosa_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diagnosas`
--

CREATE TABLE `diagnosas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pasien` bigint(20) UNSIGNED NOT NULL,
  `diagnosa_akhir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pasien` enum('Sembuh','Rujukan','Meninggal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `rs_rujukan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diagnosas`
--

INSERT INTO `diagnosas` (`id`, `id_pasien`, `diagnosa_akhir`, `obat`, `status_pasien`, `rs_rujukan`, `created_at`, `updated_at`) VALUES
(1, 1, 'kelelahan', NULL, 'Sembuh', NULL, '2022-06-03 02:26:32', '2022-06-03 02:26:32'),
(2, 2, 'Patah tulang', NULL, 'Rujukan', 'RSU Sardjito', '2022-06-03 02:54:54', '2022-06-03 02:54:54'),
(3, 3, 'Komplikasi + Covid', NULL, 'Meninggal', NULL, '2022-06-03 02:59:45', '2022-06-03 02:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa_anaks`
--

CREATE TABLE `diagnosa_anaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pasien_anak` bigint(20) UNSIGNED NOT NULL,
  `diagnosa_akhir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pasien` enum('Sembuh','Rujukan','Meninggal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `rs_rujukan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diagnosa_anaks`
--

INSERT INTO `diagnosa_anaks` (`id`, `id_pasien_anak`, `diagnosa_akhir`, `obat`, `status_pasien`, `rs_rujukan`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lambung', 'Mylanta', 'Sembuh', NULL, '2022-06-03 02:31:45', '2022-06-03 02:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `dokters`
--

CREATE TABLE `dokters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_dokter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spesialis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokters`
--

INSERT INTO `dokters` (`id`, `nama_dokter`, `spesialis`, `jadwal`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ANIK DWIANI, SpA', 'Umum', 'Senin - Jumat', '1', '2022-06-03 02:12:16', '2022-06-03 02:12:16'),
(2, 'drg. IREKA DIAH KUSUMA AGUSTINA', 'Gigi', 'Senin - Jumat', '1', '2022-06-03 02:13:06', '2022-06-03 02:13:06'),
(3, 'HARTANTI, SST.Ft', 'Fisioterapis', 'Rabu - Jumat', '1', '2022-06-03 02:14:03', '2022-06-03 02:14:03'),
(4, 'dr. SURYA HABSARA, Sp.B', 'Umum', 'Rabu - Minggu', '1', '2022-06-03 02:15:11', '2022-06-03 02:15:11'),
(5, 'dr. IWAN BUDI KRISTANTO, Sp.B.', 'Umum', 'Rabu - Minggu', '1', '2022-06-03 02:15:33', '2022-06-03 02:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kamars`
--

CREATE TABLE `kamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gedung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_kasur` int(11) DEFAULT NULL,
  `status` enum('kosong','terisi') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kamars`
--

INSERT INTO `kamars` (`id`, `nama_kamar`, `kelas`, `gedung`, `jumlah_kasur`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ABIMANYU', 'III', 'Melati', 23, 'kosong', '2022-06-03 01:52:47', '2022-06-03 01:52:47'),
(2, 'ARJUNA', 'I', 'Flamboyan', 10, 'kosong', '2022-06-03 01:53:41', '2022-06-03 01:53:41'),
(3, 'BALADEWA', 'Isolasi', 'Kamboja', 10, 'kosong', '2022-06-03 01:54:12', '2022-06-03 01:54:12'),
(4, 'BISMA', 'I', 'Flamboyan', 2, 'kosong', '2022-06-03 01:54:46', '2022-06-03 01:54:46'),
(5, 'BISMA', 'II', 'Bougenville', 2, 'kosong', '2022-06-03 01:55:23', '2022-06-03 01:55:23'),
(6, 'BISMA', 'III', 'Melati', 6, 'kosong', '2022-06-03 01:55:42', '2022-06-03 01:55:42'),
(7, 'DEWARUCI', 'HCU', 'Kamboja', 7, 'kosong', '2022-06-03 01:56:13', '2022-06-03 01:56:13'),
(8, 'DEWARUCI', 'PICU', 'Kamboja', 1, 'kosong', '2022-06-03 01:56:38', '2022-06-03 01:56:38'),
(9, 'GATOTKACA', 'III', 'Melati', 24, 'kosong', '2022-06-03 01:57:00', '2022-06-03 01:57:00'),
(10, 'NAKULA SADEWA', 'I', 'Flamboyan', 2, 'kosong', '2022-06-03 01:57:25', '2022-06-03 01:57:47'),
(11, 'NAKULA SADEWA', 'II', 'Kamboja', 6, 'kosong', '2022-06-03 01:58:38', '2022-06-03 01:58:38'),
(12, 'PARIKESIT', 'I', 'Flamboyan', 1, 'kosong', '2022-06-03 01:59:02', '2022-06-03 01:59:02'),
(13, 'PARIKESIT', 'II', 'Bougenville', 11, 'kosong', '2022-06-03 01:59:23', '2022-06-03 01:59:23'),
(14, 'PARIKESIT', 'III', 'Melati', 9, 'kosong', '2022-06-03 01:59:41', '2022-06-03 01:59:41'),
(15, 'PERGIWATI', 'I', 'Flamboyan', 2, 'kosong', '2022-06-03 02:00:03', '2022-06-03 02:00:03'),
(16, 'PERGIWATI', 'II', 'Bougenville', 6, 'kosong', '2022-06-03 02:00:22', '2022-06-03 02:00:22'),
(17, 'PERGIWATI', 'III', 'Melati', 17, 'kosong', '2022-06-03 02:00:38', '2022-06-03 02:00:38'),
(18, 'SETYAKI', 'I', 'Flamboyan', 2, 'kosong', '2022-06-03 02:01:02', '2022-06-03 02:01:02'),
(19, 'SETYAKI', 'III', 'Melati', 24, 'kosong', '2022-06-03 02:01:22', '2022-06-03 02:01:22'),
(20, 'UTARI', 'Bersalin', 'Kebidanan', 8, 'kosong', '2022-06-03 02:01:50', '2022-06-03 02:01:50'),
(21, 'WISNU', 'ICU', 'Flamboyan', 8, 'kosong', '2022-06-03 02:02:20', '2022-06-03 02:02:20'),
(22, 'YUDHISTIRA 1', 'VIP', 'Melati', 11, 'kosong', '2022-06-03 02:02:42', '2022-06-03 02:02:42'),
(23, 'YUDHISTIRA 2', 'VIP', 'Melati', 9, 'kosong', '2022-06-03 02:03:01', '2022-06-03 02:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_16_043159_create_perawats_table', 1),
(5, '2021_08_16_043303_create_admins_table', 1),
(6, '2021_08_16_043327_create_dokters_table', 1),
(7, '2021_08_16_043405_create_kamars_table', 1),
(8, '2021_08_16_043446_create_pasiens_table', 1),
(9, '2021_08_25_023111_create_diagnosas_table', 1),
(10, '2021_08_25_034219_create_rekam_medis_table', 1),
(11, '2021_09_03_072906_create_antrians_table', 1),
(12, '2021_09_04_091529_create_pasien_anaks_table', 1),
(13, '2021_09_04_091716_create_diagnosa_anaks_table', 1),
(14, '2021_09_04_091823_create_rekam_medis_anaks_table', 1),
(15, '2021_09_04_102907_create_antrian_anaks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pasiens`
--

CREATE TABLE `pasiens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_pasien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pasien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `ttl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pasien` enum('JKN','Umum') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_inap` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kepala_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_informasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keluhan_utama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `riwayat_keluhan_utama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `riwayat_penyakit` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `riwayat_alergi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diagnosa_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kamar` bigint(20) UNSIGNED NOT NULL,
  `id_dokter` bigint(20) UNSIGNED NOT NULL,
  `gedung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pasiens`
--

INSERT INTO `pasiens` (`id`, `nomor_pasien`, `nama_pasien`, `umur`, `ttl`, `alamat`, `jenis_kelamin`, `jenis_pasien`, `status_inap`, `nama_kepala_keluarga`, `sumber_informasi`, `keluhan_utama`, `riwayat_keluhan_utama`, `riwayat_penyakit`, `riwayat_alergi`, `diagnosa_masuk`, `id_kamar`, `id_dokter`, `gedung`, `created_at`, `updated_at`) VALUES
(1, '71383300', 'Deo', 22, 'Medan, 15 Agustus 2001', 'Bantul', 'L', 'Umum', '0', 'Yohanes', 'Orang tua', 'Pusing', 'Pusing bgt', NULL, NULL, 'Kelelahan', 22, 4, 'Melati', '2022-06-03 02:20:18', '2022-06-03 02:26:31'),
(2, '16722359', 'Anggun', 25, 'Bantul, 16 Mei 1997', 'Bantul', 'P', 'JKN', '0', 'Aji', 'Orang tua', 'Sakit kaki', 'Sakit kaki', NULL, NULL, 'Kesleo', 21, 3, 'Flamboyan', '2022-06-03 02:52:31', '2022-06-03 02:54:53'),
(3, '65227415', 'Sarjio', 85, 'Bantul, 20 Juni 1937', 'Bantul', 'L', 'JKN', '0', 'Sarjio', 'Anak', 'Sesak napas', 'Sesak napas', NULL, NULL, 'Covid-19', 3, 5, 'Kamboja', '2022-06-03 02:59:15', '2022-06-03 02:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `pasien_anaks`
--

CREATE TABLE `pasien_anaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_pasien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pasien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `ttl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pasien` enum('JKN','Umum') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_inap` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kepala_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_informasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keluhan_utama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `riwayat_keluhan_utama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `riwayat_penyakit` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `riwayat_alergi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diagnosa_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kamar` bigint(20) UNSIGNED NOT NULL,
  `id_dokter` bigint(20) UNSIGNED NOT NULL,
  `gedung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pasien_anaks`
--

INSERT INTO `pasien_anaks` (`id`, `nomor_pasien`, `nama_pasien`, `umur`, `ttl`, `alamat`, `jenis_kelamin`, `jenis_pasien`, `status_inap`, `nama_kepala_keluarga`, `sumber_informasi`, `keluhan_utama`, `riwayat_keluhan_utama`, `riwayat_penyakit`, `riwayat_alergi`, `diagnosa_masuk`, `id_kamar`, `id_dokter`, `gedung`, `created_at`, `updated_at`) VALUES
(1, '87019642', 'Musthofa', 10, 'Klaten, 13 Januari 2012', 'Bantul', 'L', 'JKN', '0', 'Pradana', 'Orang tua', 'Sakit perut', 'Sakit perut', NULL, NULL, 'Pola makan tidak teratur', 5, 1, 'Bougenville', '2022-06-03 02:29:48', '2022-06-03 02:31:45'),
(2, '55254579', 'Dani', 10, 'Bantul, 19 Februari 2012', 'Bantul', 'L', 'JKN', '1', 'Kumara', 'Orang tua', 'Demam', 'Demam', NULL, NULL, 'Demam', 16, 4, 'Bougenville', '2022-06-03 02:47:45', '2022-06-03 02:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `perawats`
--

CREATE TABLE `perawats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staf_gedung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perawats`
--

INSERT INTO `perawats` (`id`, `id_user`, `nip`, `staf_gedung`, `no_hp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 7, '124190042', 'Melati', '085317217', 'Bantul', '2022-06-03 02:09:25', '2022-06-03 02:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `rekam_medis`
--

CREATE TABLE `rekam_medis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pasien` bigint(20) UNSIGNED NOT NULL,
  `tensi_darah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suhu_tubuh` int(11) NOT NULL,
  `pernapasan` int(11) NOT NULL,
  `nadi` int(11) NOT NULL,
  `anamnesis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terapi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rekam_medis`
--

INSERT INTO `rekam_medis` (`id`, `id_pasien`, `tensi_darah`, `suhu_tubuh`, `pernapasan`, `nadi`, `anamnesis`, `terapi`, `created_at`, `updated_at`) VALUES
(1, 1, '100', 36, 6, 75, '-', '-', '2022-06-03 02:30:37', '2022-06-03 02:30:37'),
(2, 2, '100', 36, 50, 90, 'Kesleo', 'Pijat', '2022-06-03 02:53:11', '2022-06-03 02:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `rekam_medis_anaks`
--

CREATE TABLE `rekam_medis_anaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pasien_anak` bigint(20) UNSIGNED NOT NULL,
  `tensi_darah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suhu_tubuh` int(11) NOT NULL,
  `pernapasan` int(11) NOT NULL,
  `nadi` int(11) NOT NULL,
  `anamnesis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terapi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('admin','perawat') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `level`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Miftahur Aziz', 'miftahuraziz@gmail.com', 'admin', NULL, 'miftahuraziz', NULL, NULL, '2022-06-03 02:05:39'),
(6, 'Kalvina', 'kalvina@gmail.com', 'admin', NULL, 'kalvina123', NULL, '2022-06-03 02:06:45', '2022-06-03 02:06:45'),
(7, 'Yohanes Adeo', 'adeo@gmail.com', 'perawat', NULL, 'adeoo123', NULL, '2022-06-03 02:09:25', '2022-06-03 02:09:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_nip_unique` (`nip`),
  ADD KEY `admins_id_user_foreign` (`id_user`);

--
-- Indexes for table `antrians`
--
ALTER TABLE `antrians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `antrian_anaks`
--
ALTER TABLE `antrian_anaks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnosas`
--
ALTER TABLE `diagnosas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diagnosas_id_pasien_foreign` (`id_pasien`);

--
-- Indexes for table `diagnosa_anaks`
--
ALTER TABLE `diagnosa_anaks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diagnosa_anaks_id_pasien_anak_foreign` (`id_pasien_anak`);

--
-- Indexes for table `dokters`
--
ALTER TABLE `dokters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kamars`
--
ALTER TABLE `kamars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasiens`
--
ALTER TABLE `pasiens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pasiens_nomor_pasien_unique` (`nomor_pasien`),
  ADD KEY `pasiens_id_kamar_foreign` (`id_kamar`),
  ADD KEY `pasiens_id_dokter_foreign` (`id_dokter`);

--
-- Indexes for table `pasien_anaks`
--
ALTER TABLE `pasien_anaks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pasien_anaks_nomor_pasien_unique` (`nomor_pasien`),
  ADD KEY `pasien_anaks_id_kamar_foreign` (`id_kamar`),
  ADD KEY `pasien_anaks_id_dokter_foreign` (`id_dokter`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `perawats`
--
ALTER TABLE `perawats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `perawats_nip_unique` (`nip`),
  ADD KEY `perawats_id_user_foreign` (`id_user`);

--
-- Indexes for table `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rekam_medis_id_pasien_foreign` (`id_pasien`);

--
-- Indexes for table `rekam_medis_anaks`
--
ALTER TABLE `rekam_medis_anaks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rekam_medis_anaks_id_pasien_anak_foreign` (`id_pasien_anak`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `antrians`
--
ALTER TABLE `antrians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `antrian_anaks`
--
ALTER TABLE `antrian_anaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diagnosas`
--
ALTER TABLE `diagnosas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `diagnosa_anaks`
--
ALTER TABLE `diagnosa_anaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dokters`
--
ALTER TABLE `dokters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kamars`
--
ALTER TABLE `kamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pasiens`
--
ALTER TABLE `pasiens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pasien_anaks`
--
ALTER TABLE `pasien_anaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `perawats`
--
ALTER TABLE `perawats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rekam_medis`
--
ALTER TABLE `rekam_medis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rekam_medis_anaks`
--
ALTER TABLE `rekam_medis_anaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `diagnosas`
--
ALTER TABLE `diagnosas`
  ADD CONSTRAINT `diagnosas_id_pasien_foreign` FOREIGN KEY (`id_pasien`) REFERENCES `pasiens` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `diagnosa_anaks`
--
ALTER TABLE `diagnosa_anaks`
  ADD CONSTRAINT `diagnosa_anaks_id_pasien_anak_foreign` FOREIGN KEY (`id_pasien_anak`) REFERENCES `pasien_anaks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pasiens`
--
ALTER TABLE `pasiens`
  ADD CONSTRAINT `pasiens_id_dokter_foreign` FOREIGN KEY (`id_dokter`) REFERENCES `dokters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pasiens_id_kamar_foreign` FOREIGN KEY (`id_kamar`) REFERENCES `kamars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pasien_anaks`
--
ALTER TABLE `pasien_anaks`
  ADD CONSTRAINT `pasien_anaks_id_dokter_foreign` FOREIGN KEY (`id_dokter`) REFERENCES `dokters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pasien_anaks_id_kamar_foreign` FOREIGN KEY (`id_kamar`) REFERENCES `kamars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `perawats`
--
ALTER TABLE `perawats`
  ADD CONSTRAINT `perawats_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD CONSTRAINT `rekam_medis_id_pasien_foreign` FOREIGN KEY (`id_pasien`) REFERENCES `pasiens` (`id`);

--
-- Constraints for table `rekam_medis_anaks`
--
ALTER TABLE `rekam_medis_anaks`
  ADD CONSTRAINT `rekam_medis_anaks_id_pasien_anak_foreign` FOREIGN KEY (`id_pasien_anak`) REFERENCES `pasien_anaks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
