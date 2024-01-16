-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Waktu pembuatan: 29 Des 2023 pada 09.51
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scms_fix`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_11_06_022123_create_rab_pengajuan_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nama_tabel_kualifikasi`
--

CREATE TABLE `nama_tabel_kualifikasi` (
  `ID_Kualifikasi` int(11) NOT NULL,
  `Kualifikasi_Pengadaan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengadaan_scm`
--

CREATE TABLE `pengadaan_scm` (
  `id` int(11) NOT NULL,
  `nomor_pengadaan` varchar(255) NOT NULL,
  `judul_pengadaan` enum('Permintaan dokumen rencana pengadaan','Permintaan pelaksanaan pengadaan') NOT NULL,
  `tujuan` enum('Rendan','Lakdan') NOT NULL,
  `perihal` enum('Permintaan dokumen rencana pengadaan','Permintaan pelaksanaan pengadaan') NOT NULL,
  `nama_pekerjaan` varchar(255) NOT NULL,
  `ringkasan_pekerjaan` text NOT NULL,
  `nama_pengguna` varchar(255) NOT NULL,
  `divisi_pengguna` varchar(255) NOT NULL,
  `jenis_pengadaan` enum('Barang','Jasa Konstruksi','Jasa Konsultasi','Jasa Lainnya','Pengadaan Khusus') NOT NULL,
  `informasi_anggaran` bigint(20) NOT NULL,
  `sumber_anggaran` enum('Anggaran Investasi','Anggaran Operasi') NOT NULL,
  `pagu_anggaran` bigint(20) NOT NULL,
  `cost_center` bigint(20) NOT NULL,
  `rencana_tanggal_terkontrak_mulai` date NOT NULL,
  `rencana_tanggal_terkontrak_selesai` date NOT NULL,
  `rencana_durasi_kontrak` int(11) NOT NULL,
  `rencana_durasi_kontrak_tanggal` enum('Hari Kerja','Hari Kalender','Bulan','Tahun') NOT NULL,
  `url_kak` varchar(255) DEFAULT NULL,
  `url_spesifikasi_teknis` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `status` enum('diajukan','ditolak','disetujui_pejabat_user','disetujui_pejabat_rendan','disetujui_pejabat_lakdan') NOT NULL,
  `alasan` varchar(255) DEFAULT NULL,
  `pengadaan_ID_Pengadaan` int(11) DEFAULT NULL,
  `ID_Vendor` bigint(20) UNSIGNED DEFAULT NULL,
  `id_status` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengadaan_scm`
--

INSERT INTO `pengadaan_scm` (`id`, `nomor_pengadaan`, `judul_pengadaan`, `tujuan`, `perihal`, `nama_pekerjaan`, `ringkasan_pekerjaan`, `nama_pengguna`, `divisi_pengguna`, `jenis_pengadaan`, `informasi_anggaran`, `sumber_anggaran`, `pagu_anggaran`, `cost_center`, `rencana_tanggal_terkontrak_mulai`, `rencana_tanggal_terkontrak_selesai`, `rencana_durasi_kontrak`, `rencana_durasi_kontrak_tanggal`, `url_kak`, `url_spesifikasi_teknis`, `created_at`, `updated_at`, `id_user`, `status`, `alasan`, `pengadaan_ID_Pengadaan`, `ID_Vendor`, `id_status`) VALUES
(1, 'AXADADW123', 'Permintaan dokumen rencana pengadaan', 'Rendan', 'Permintaan dokumen rencana pengadaan', 'HPE', '<p>awuhdiahdann</p>\r\n\r\n<p>haiuwdhioaw</p>', 'admin', 'adwain', 'Barang', 200000, 'Anggaran Investasi', 200000, 10000, '2023-10-26', '2023-10-31', 5, 'Bulan', '', '', '2023-10-26 00:52:04', '2023-10-26 00:52:04', 2, 'diajukan', '', NULL, 0, NULL),
(2, '12314', 'Permintaan dokumen rencana pengadaan', 'Lakdan', 'Permintaan dokumen rencana pengadaan', 'RKS', '<p>gwiuhdioawdaf</p>\r\n\r\n<p>agwfiaoif</p>', 'admin', 'fawfae', 'Jasa Konsultasi', 5000000, 'Anggaran Operasi', 800000, 75000, '2023-10-27', '2023-11-02', 8, 'Hari Kerja', '', '', '2023-10-26 00:53:59', '2023-10-26 00:53:59', 2, 'diajukan', '', NULL, 0, NULL),
(4, '241412', 'Permintaan dokumen rencana pengadaan', 'Rendan', 'Permintaan dokumen rencana pengadaan', 'awdawd', '<p>wadaAF</p>', 'adawd', 'fwqfwqf', 'Barang', 1232131, 'Anggaran Operasi', 24142131, 2131123, '2023-11-03', '2023-11-24', 1, 'Bulan', NULL, NULL, '2023-11-02 20:59:10', '2023-11-02 20:59:10', 2, 'diajukan', NULL, NULL, 0, NULL),
(5, '23132131', 'Permintaan dokumen rencana pengadaan', 'Lakdan', 'Permintaan dokumen rencana pengadaan', 'adade', '<p>awdawdafaw</p>', 'adwx', 'wadawe', 'Jasa Konsultasi', 1231234, 'Anggaran Investasi', 21312414, 121314, '2023-11-03', '2023-11-30', 1, 'Bulan', NULL, NULL, '2023-11-02 21:14:12', '2023-11-02 21:14:12', 2, 'diajukan', NULL, NULL, 0, NULL),
(6, 'DADAE123', 'Permintaan dokumen rencana pengadaan', 'Rendan', 'Permintaan dokumen rencana pengadaan', 'ADEWA', '<p>WADAWEAW</p>', 'DWDF', 'ADWADA', 'Jasa Konsultasi', 1234567, 'Anggaran Operasi', 12345678, 12345, '2023-11-03', '2023-11-29', 1, 'Tahun', 'WWW.ADAWD.COM', NULL, '2023-11-02 21:23:10', '2023-11-02 21:23:10', 2, 'diajukan', NULL, NULL, 0, NULL),
(7, 'AWDAWF3131', 'Permintaan dokumen rencana pengadaan', 'Lakdan', 'Permintaan dokumen rencana pengadaan', 'ADWAE', '<p>AWDAWD</p>', 'DWAD', '131AD', 'Barang', 131456778, 'Anggaran Operasi', 131314414568, 12123213, '2023-11-04', '2023-11-29', 12, 'Bulan', NULL, 'WWW.CWDA', '2023-11-02 21:24:19', '2023-11-02 21:24:19', 2, 'diajukan', NULL, NULL, 0, NULL),
(8, '2aweawrq', 'Permintaan dokumen rencana pengadaan', 'Rendan', 'Permintaan dokumen rencana pengadaan', 'afafafwa', '<p>afawf</p>', 'adwe', 'qeqe', 'Jasa Konsultasi', 1312414, 'Anggaran Operasi', 141242411241, 1213131, '2023-11-09', '2023-11-23', 1, 'Bulan', 'www', NULL, '2023-11-09 00:55:19', '2023-11-09 00:55:19', 3, 'diajukan', NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id_role` bigint(20) UNSIGNED NOT NULL,
  `nama_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id_role`, `nama_role`, `keterangan_role`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'Administrator', '2023-10-26 00:37:59', '2023-10-26 00:37:59'),
(2, 'admin_user', 'Admin User', '2023-10-26 00:37:59', '2023-10-26 00:37:59'),
(3, 'admin_rendan', 'Admin Rendan', '2023-10-26 00:37:59', '2023-10-26 00:37:59'),
(4, 'admin_lakdan', 'Admin Lakdan', '2023-10-26 00:37:59', '2023-10-26 00:37:59'),
(5, 'pejabat_user', 'Pejabat User', '2023-10-26 00:37:59', '2023-10-26 00:37:59'),
(6, 'pejabat_rendan', 'Pejabat Rendan', '2023-10-26 00:37:59', '2023-10-26 00:37:59'),
(7, 'pejabat_lakdan', 'Pejabat Lakdan', '2023-10-26 00:37:59', '2023-10-26 00:37:59'),
(8, 'vendor', 'Vendor', '2023-11-20 05:27:42', '2023-11-24 02:50:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `signatures`
--

CREATE TABLE `signatures` (
  `id_signatures` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `signatures`
--

INSERT INTO `signatures` (`id_signatures`, `id_user`, `path`, `created_at`, `updated_at`) VALUES
(1, 3, 'tanda_tangan/ooEbyQQbshAojZJQl5b23ANI7SL5ekZsvhfZqCn9.png', '2023-12-04 21:56:20', '2023-12-04 21:56:20'),
(2, 6, 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', '2023-12-09 07:29:43', '2023-12-10 08:25:36'),
(3, 7, 'tanda_tangan/35KTlLVKwnMKHKO8xYPtDz3Juuw5Czq1ewqS97It.jpg', '2023-12-15 09:12:56', '2023-12-15 09:12:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `signatures-vendor`
--

CREATE TABLE `signatures-vendor` (
  `id_signatures` bigint(20) UNSIGNED NOT NULL,
  `ID_Peserta` bigint(20) UNSIGNED NOT NULL,
  `ID_Vendor` bigint(20) UNSIGNED DEFAULT NULL,
  `signatures` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `signatures-vendor`
--

INSERT INTO `signatures-vendor` (`id_signatures`, `ID_Peserta`, `ID_Vendor`, `signatures`, `created_at`, `updated_at`) VALUES
(1, 6, NULL, '1700626058_SQL.png', '2023-11-21 21:07:38', '2023-11-21 21:07:38'),
(3, 5, NULL, '1700627110_SQL.png', '2023-11-21 21:25:10', '2023-11-21 21:25:10'),
(11, 8, NULL, '1700646094_test.png', '2023-11-22 02:41:35', '2023-11-22 02:41:35'),
(12, 3, NULL, '1700729444_SQL.png', '2023-11-23 01:50:44', '2023-11-23 01:50:44'),
(13, 3, NULL, '1700729482_SQL.png', '2023-11-23 01:51:22', '2023-11-23 01:51:22'),
(14, 4, NULL, '1700729591_test.png', '2023-11-23 01:53:11', '2023-11-23 01:53:11'),
(15, 19, NULL, '1700823740_SQL.png', '2023-11-24 04:02:20', '2023-11-24 04:02:20'),
(16, 2, NULL, '1701071807_test.png', '2023-11-27 00:56:48', '2023-11-27 00:56:48'),
(18, 30, NULL, '1703005404_ttdjpg.jpg', '2023-12-19 10:03:24', '2023-12-19 10:03:24'),
(25, 29, NULL, '1703007615_ttdjpg.jpg', '2023-12-19 10:40:15', '2023-12-19 10:40:15'),
(26, 32, NULL, '1703041568_ttdjpg.jpg', '2023-12-19 20:06:09', '2023-12-19 20:06:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id_status` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan_status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id_status`, `nama`, `keterangan_status`, `created_at`, `updated_at`) VALUES
(1, 'belum_dimulai', 'Belum Dimulai', '2023-11-23 02:38:14', '2023-12-14 06:00:14'),
(2, 'ditolak', 'Ditolak', '2023-11-23 02:38:14', '2023-11-23 02:38:14'),
(3, 'disetujui_pejabat_user', 'Disetujui Pejabat User', '2023-11-23 02:38:14', '2023-12-28 10:12:18'),
(4, 'disetujui_pejabat_rendan', 'Disetujui Pejabat Rendan', '2023-11-23 02:38:14', '2023-12-28 10:12:04'),
(5, 'disetujui_pejabat_lakdan', 'Disetujui Pejabat Lakdan', '2023-11-23 02:38:14', '2023-12-28 10:12:28'),
(6, 'belum_dibuat', 'Belum Dibuat', '2023-11-23 02:47:03', '2023-11-23 02:47:03'),
(7, 'perlu_dikirim', 'Perlu Dikirim', '2023-11-23 02:47:03', '2023-12-14 06:16:07'),
(8, 'menunggu_persetujuan_pejabat_user', 'Menunggu Persetujuan Pejabat User', '2023-12-08 06:55:33', '2023-12-28 10:12:39'),
(9, 'perlu_tindak_lanjut_rendan', 'Perlu Tindak Lanjut Rendan', '2023-12-08 06:55:33', '2023-12-28 10:12:50'),
(10, 'proses_user', 'Proses User', '2023-12-08 06:55:55', '2023-12-28 10:12:54'),
(11, 'proses_rendan', 'Proses Rendan', '2023-12-08 06:55:55', '2023-12-28 10:12:58'),
(12, 'selesai', 'Selesai', '2023-12-08 08:37:53', '2023-12-14 06:30:31'),
(13, 'menunggu_persetujuan_pejabat_rendan', 'Menunggu Persetujuan Pejabat Rendan', '2023-12-14 06:32:07', '2023-12-28 10:13:04'),
(14, 'menunggu_persetujuan_pejabat_lakdan', 'Menunggu Persetujuan Pejabat Lakdan', '2023-12-14 06:32:07', '2023-12-28 10:13:09'),
(15, 'gagal', 'Gagal', '2023-12-14 06:32:19', '2023-12-14 06:32:19'),
(16, 'perlu_tindak_lanjut_lakdan', 'Perlu Tindak Lanjut Lakdan', '2023-12-14 06:35:58', '2023-12-28 10:13:13'),
(17, 'proses_lakdan', 'Proses Lakdan', '2023-12-14 06:35:58', '2023-12-28 10:13:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_anggaran`
--

CREATE TABLE `tabel_anggaran` (
  `ID_Anggaran` int(11) NOT NULL,
  `Nomor_PRK` int(11) DEFAULT NULL,
  `Cost_Center` varchar(255) DEFAULT NULL,
  `Pagu_Anggaran` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_barang`
--

CREATE TABLE `tabel_barang` (
  `ID_Barang` bigint(20) UNSIGNED NOT NULL,
  `ID_Pengadaan` bigint(20) DEFAULT NULL,
  `Kode_Barang` varchar(255) DEFAULT NULL,
  `Nama_Barang` varchar(255) DEFAULT NULL,
  `Deskripsi` text DEFAULT NULL,
  `Keterangan` text DEFAULT NULL,
  `estimasi_jumlah` bigint(20) DEFAULT NULL,
  `Unit` enum('Buah','Pcs','Lembar','Set') DEFAULT NULL,
  `Harga` decimal(15,2) DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `total_keseluruhan` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_barang`
--

INSERT INTO `tabel_barang` (`ID_Barang`, `ID_Pengadaan`, `Kode_Barang`, `Nama_Barang`, `Deskripsi`, `Keterangan`, `estimasi_jumlah`, `Unit`, `Harga`, `Total`, `total_keseluruhan`, `created_at`, `updated_at`) VALUES
(3, NULL, 'B0001', 'Laptop', 'ada', 'ada', 1, 'Lembar', '1111.00', 1111, '1111.00', '2023-11-29 01:58:19', '2023-11-29 01:58:19'),
(4, NULL, 'B0002', 'adwd', 'ada', 'adwd', 1, 'Lembar', '20000.00', 20000, NULL, '2023-11-29 02:19:25', '2023-11-29 02:19:25'),
(5, NULL, 'B0003', 'ikan', 'ikan', 'adwad', 12, 'Set', '1213.00', NULL, NULL, '2023-11-29 02:23:28', '2023-11-29 02:23:28'),
(6, NULL, 'B0004', 'lolipop', 'loli', 'dwad', 124, 'Pcs', '10000.00', 1240000, '1240000.00', '2023-11-29 02:29:22', '2023-11-29 02:29:22'),
(7, NULL, 'B0005', 'poli', 'poli', 'adwad', 100, 'Lembar', '10000.00', 1000000, '1000000.00', '2023-11-29 02:36:54', '2023-11-29 02:36:54'),
(8, NULL, 'B0006', 'poea', 'awda', 'wada', 123, 'Buah', '123.00', 15129, '15129.00', '2023-11-29 02:39:01', '2023-11-29 02:39:01'),
(9, NULL, 'B0007', 'powe', 'awdwa', 'adwa', 12, 'Buah', '19556435.00', 234677000, '234677220.00', '2023-11-29 02:43:20', '2023-11-29 02:43:20'),
(10, NULL, 'B0008', 'pwae', 'awda', 'awd', 1, 'Lembar', '213.00', 213, '213.00', '2023-11-29 02:49:50', '2023-11-29 02:49:50'),
(11, 46, 'B0009', 'aiawra', 'dwaa', 'dawda', 12, 'Pcs', '12323.00', 147876, '147876.00', '2023-11-29 03:11:44', '2023-11-29 03:11:44'),
(12, 47, 'B0010', 'Kutane', 'dwa', 'wd', 76, 'Pcs', '1000.00', 76000, '76000.00', '2023-11-30 00:26:08', '2023-11-30 00:26:08'),
(13, 47, 'B0011', 'wadsa', 'dawdas', 'wadsad', 100, 'Lembar', '100000.00', 10000000, NULL, '2023-11-30 00:36:25', '2023-11-30 00:36:25'),
(14, 47, 'B0012', 'Laptop', 'awda', 'dawa', 12, 'Pcs', '100000.00', 1200000, NULL, '2023-11-30 00:45:00', '2023-11-30 00:45:00'),
(16, 47, 'B0013', 'dawdsa', 'awda', 'awds', 1, 'Pcs', '19200.00', 19200, '19200.00', '2023-11-30 01:18:21', '2023-11-30 01:18:21'),
(17, 47, 'B0014', 'awds', 'awfd', 'sadas', 1, 'Set', '10000.00', 10000, '10000.00', '2023-11-30 01:19:36', '2023-11-30 01:19:36'),
(18, 47, 'B0015', 'Laptop', 'dwasdad', 'dsadwa', 1, 'Lembar', '10000.00', 10000, '10000.00', '2023-11-30 01:22:58', '2023-11-30 01:22:58'),
(19, 47, 'B0016', 'asda', 'adasd', 'ygj', 1, 'Lembar', '10000.00', 10000, '10000.00', '2023-11-30 01:22:58', '2023-11-30 01:22:58'),
(20, 47, 'B0016', 'tsesf', 'adsad', 'awda', 1, 'Pcs', '111.00', 111, '111.00', '2023-11-30 01:37:14', '2023-11-30 01:37:14'),
(21, 47, 'B0017', 'adwad', 'awda', 'adsad', 1, 'Lembar', '111.00', 111, '222.00', '2023-11-30 01:37:14', '2023-11-30 01:37:14'),
(22, 47, 'BMP1BEX8', 'awdsa', 'wadsa', 'sadwa', 1, 'Pcs', '1000.00', 1000, NULL, '2023-11-30 01:52:17', '2023-11-30 01:52:17'),
(23, 47, 'BJ6P09WV', 'sdadaw', '1ada', 'sadas', 1, 'Lembar', '1000.00', 1000, NULL, '2023-11-30 01:52:17', '2023-11-30 01:52:17'),
(24, 47, 'BONKC61G', 'edaa', 'sdad', 'sad', 1, 'Pcs', '10000.00', 10000, '10000.00', '2023-11-30 01:53:22', '2023-11-30 01:53:22'),
(25, 47, 'BKJ2Z65E', 'eaewd', 'dawds', 'adwa', 1, 'Pcs', '111.00', 111, '111.00', '2023-11-30 01:56:10', '2023-11-30 01:56:10'),
(26, 47, 'B0O8YFHP', 'yuj', 'awda', 'wadsd', 1, 'Pcs', '10000.00', 10000, '10000.00', '2023-11-30 02:05:26', '2023-11-30 02:05:26'),
(27, 47, 'BQEXC6O0', 'dsad', 'afwafa', 'dawdsa', 1, 'Set', '10000.00', 10000, '20000.00', '2023-11-30 02:05:26', '2023-11-30 02:05:26'),
(28, 47, 'B31OLJ9M', 'adsad', 'iajd', 'adwad', 1, 'Lembar', '10000.00', 10000, '30000.00', '2023-11-30 02:05:26', '2023-11-30 02:05:26'),
(29, 47, 'B728YXFT', 'awdaw', 'dsadwa', 'WDA', 1, 'Pcs', '1213.00', 1213, NULL, '2023-11-30 02:12:11', '2023-11-30 02:12:11'),
(30, 47, 'BE20OCIJ', 'dsadw', 'dawd', 'dsada', 1, 'Lembar', '11111.00', 11111, NULL, '2023-11-30 02:14:01', '2023-11-30 02:14:01'),
(31, 47, 'B2OA569D', 'dadaw', 'dwad', 'adwd', 1, 'Lembar', '1111.00', 1111, NULL, '2023-11-30 02:15:30', '2023-11-30 02:15:30'),
(32, 47, 'BTSKAI5P', 'awda', 'awda', 'dawa', 1, 'Pcs', '111.00', 111, NULL, '2023-11-30 02:17:11', '2023-11-30 02:17:11'),
(33, 47, 'BHVO0697', 'adwae', 'sad', 'wad', 1, 'Pcs', '213123.00', 213123, '213123.00', '2023-11-30 03:38:57', '2023-11-30 03:38:57'),
(34, 47, 'BIELYXG6', 'yujd', 'dawd', 'wda', 1, 'Lembar', '11112.00', 11112, NULL, '2023-11-30 03:40:17', '2023-11-30 03:40:17'),
(35, 47, 'B50SXBH7', 'wda', '2e', '1ad', 1, 'Pcs', '1212.00', 1212, NULL, '2023-11-30 03:42:09', '2023-11-30 03:42:09'),
(36, 47, 'BQVLH4SA', 'dwada', 'dwad', 'daw', 1, 'Buah', '11123.00', 11123, '11123.00', '2023-11-30 03:43:12', '2023-11-30 03:43:12'),
(37, 47, 'BYKT6J5G', 'weda', 'dqw', 'ada', 1, 'Pcs', '1.00', 1, NULL, '2023-11-30 03:47:38', '2023-11-30 03:47:38'),
(38, 47, 'BRNUW3AC', 'awds', 'awds', 'sadd', 1, 'Lembar', '1000.00', 1000, NULL, '2023-11-30 19:00:58', '2023-11-30 19:00:58'),
(39, 47, 'BFXE5MD2', 'poli', 'ad', 'sdw', 1, 'Pcs', '112.00', 112, NULL, '2023-11-30 19:08:07', '2023-11-30 19:08:07'),
(40, 47, 'BJYG5FT6', 'oksi', 'sadaw', 'ds', 1, 'Pcs', '13.00', 13, NULL, '2023-11-30 19:09:49', '2023-11-30 19:09:49'),
(52, 48, 'BUWODBGK', 'yusd', 'dawda', 'daws', 1, 'Pcs', '102.00', 102, NULL, '2023-12-01 00:26:18', '2023-12-01 00:26:18'),
(53, 48, 'BGXHUOEK', 'dwasdwa', 'dasdaw', 'dsad', 1, 'Pcs', '12.00', 12, NULL, '2023-12-01 00:28:47', '2023-12-01 00:28:47'),
(54, 48, 'BC9IAG4J', 'piws', 'dsadw', 'dsad', 1, 'Pcs', '127.00', 127, NULL, '2023-12-01 00:38:51', '2023-12-01 00:38:51'),
(55, 48, 'BQIAYKTJ', 'piws', 'dsadw', 'dsad', 1, 'Pcs', '127.00', 127, NULL, '2023-12-01 00:42:05', '2023-12-01 00:42:05'),
(56, 48, 'BZV2FW8K', 'inds', 'daw', 'dwa', 1, 'Pcs', '124.00', 124, NULL, '2023-12-01 00:43:06', '2023-12-01 00:43:06'),
(57, 48, 'B9DZPK2M', 'inds', 'daw', 'dwa', 1, 'Pcs', '124.00', 124, NULL, '2023-12-01 00:43:51', '2023-12-01 00:43:51'),
(58, 48, 'B5JOYVWX', 'inds', 'daw', 'dwa', 1, 'Pcs', '124.00', 124, NULL, '2023-12-01 00:44:30', '2023-12-01 00:44:30'),
(59, 48, 'BWLKS0C5', 'inds', 'daw', 'dwa', 1, 'Pcs', '124.00', 124, NULL, '2023-12-01 00:52:40', '2023-12-01 00:52:40'),
(60, 48, 'BONIC7XE', 'inds', 'daw', 'dwa', 1, 'Pcs', '124.00', 124, NULL, '2023-12-01 00:59:20', '2023-12-01 00:59:20'),
(61, 48, 'BKVH76PT', 'dwads', 'dwd', 'ds', 1, 'Pcs', '1242.00', 1242, NULL, '2023-12-01 01:36:59', '2023-12-01 01:36:59'),
(62, 48, 'BDPMBH8E', 'dwads', 'dwd', 'ds', 1, 'Pcs', '1242.00', 1242, NULL, '2023-12-01 01:37:18', '2023-12-01 01:37:18'),
(63, 48, 'BA0X39PU', 'yuda', 'adw', 'awd', 1, 'Lembar', '1.00', 1, NULL, '2023-12-01 02:45:30', '2023-12-01 02:45:30'),
(64, 48, 'BQM45R6H', 'yhdaw', 'dwa', 'dawd', 1, 'Pcs', '1.00', 1, NULL, '2023-12-01 02:48:50', '2023-12-01 02:48:50'),
(65, 48, 'BG8R6SKP', 'yuadh', 'desa', 'da', 12, 'Lembar', '12.00', 144, NULL, '2023-12-01 02:50:02', '2023-12-01 02:50:02'),
(66, 48, 'BAD24LM3', 'dawds', 'dw', 'daw', 1, 'Lembar', '245.00', 245, NULL, '2023-12-01 02:51:26', '2023-12-01 02:51:26'),
(67, 48, 'BTHAJZKN', 'gshdwa', 'ad', 'dwa', 1, 'Set', '98.00', 98, NULL, '2023-12-01 02:52:28', '2023-12-01 02:52:28'),
(68, 48, 'BY04KVI5', 'yshda', 'da', 'dawd', 1, 'Pcs', '124.00', 124, NULL, '2023-12-01 02:53:56', '2023-12-01 02:53:56'),
(69, 48, 'BY9FULKJ', 'hsjdawd', 'dwa', 'daw', 1, 'Set', '235.00', 235, NULL, '2023-12-01 02:55:22', '2023-12-01 02:55:22'),
(70, 48, 'BUHPN8B1', 'tsdw', 'daw', 'daw', 1, 'Lembar', '642.00', 642, NULL, '2023-12-01 02:59:14', '2023-12-01 02:59:14'),
(71, 48, 'BL5FE38N', 'YUAWDH', 'wada', 'daw', 1, 'Lembar', '234.00', 234, NULL, '2023-12-01 03:00:53', '2023-12-01 03:00:53'),
(72, 48, 'BSN340FE', 'hsdj', 'da', 'awd', 1, 'Pcs', '3434.00', 3434, NULL, '2023-12-01 03:02:35', '2023-12-01 03:02:35'),
(73, 48, 'BWC7FDGS', 'hjadw', 'awda', 'daw', 1, 'Set', '4342.00', 4342, NULL, '2023-12-01 03:06:28', '2023-12-01 03:06:28'),
(74, 48, 'BZD53IG7', 'yusad', 'ada', 'dwa', 12, 'Lembar', '13.00', 156, NULL, '2023-12-01 03:08:28', '2023-12-01 03:08:28'),
(75, 48, 'BPOZ5SDW', 'kowad', 'dwas', 'adwa', 1, 'Lembar', '2345.00', 2345, NULL, '2023-12-01 03:14:33', '2023-12-01 03:14:33'),
(76, 48, 'BDQNT1A7', 'yusdh', 'awd', 'daw', 1, 'Lembar', '234.00', 234, NULL, '2023-12-01 03:17:25', '2023-12-01 03:17:25'),
(77, 48, 'BSHW9YR1', 'dawd', 'awd', 'daa', 12, 'Lembar', '123.00', 1476, NULL, '2023-12-01 03:19:37', '2023-12-01 03:19:37'),
(78, 48, 'BWUHNXBF', 'yudawns', 'dwaad', 'dsasd', 121, 'Lembar', '23.00', 2783, NULL, '2023-12-01 03:21:30', '2023-12-01 03:21:30'),
(79, 48, 'B4W7EK2T', 'ksdaw', 'adwa', 'hgsees', 13, 'Set', '145.00', 1885, NULL, '2023-12-01 03:21:30', '2023-12-01 03:21:30'),
(80, 48, 'BA1OVUM5', 'awda', 'awda', 'dawd', 12, 'Pcs', '123.00', 1476, NULL, '2023-12-01 03:25:13', '2023-12-01 03:25:13'),
(81, 48, 'BC3TNH7E', 'daws', 'dwa', 'dawd', 424, 'Set', '312.00', 132288, NULL, '2023-12-01 03:25:13', '2023-12-01 03:25:13'),
(82, 48, 'B69YMH1E', 'hajdwa', 'awda', 'adwa', 12, 'Lembar', '12.00', 144, NULL, '2023-12-01 03:27:43', '2023-12-01 03:27:43'),
(83, 48, 'BVM2EWKS', 'dwad', 'wad', 'adwa', 1, 'Buah', '21.00', 21, NULL, '2023-12-01 03:27:43', '2023-12-01 03:27:43'),
(84, 48, 'B63KDM4H', 'YUAD', 'AWDA', 'dawd', 12, 'Pcs', '12.00', 144, NULL, '2023-12-01 03:35:08', '2023-12-01 03:35:08'),
(85, 48, 'BDOFERYJ', 'dawd', 'wada', 'daw', 12, 'Pcs', '1234.00', 14808, NULL, '2023-12-01 03:35:08', '2023-12-01 03:35:08'),
(86, 48, 'B0S4U6QM', 'wad', 'dawd', 'daw', 1, 'Lembar', '12.00', 12, NULL, '2023-12-01 03:48:19', '2023-12-01 03:48:19'),
(87, 48, 'BVDBX1L3', 'sdf', 'da', 'daw', 12, 'Pcs', '12.00', 144, NULL, '2023-12-01 03:48:19', '2023-12-01 03:48:19'),
(88, 48, 'BS1VX0BI', 'awdaw', 'wada', 'daw', 12, 'Lembar', '12.00', 144, NULL, '2023-12-01 04:14:49', '2023-12-01 04:14:49'),
(89, 48, 'B9SK1PAB', 'sda', 'wda', 'ad', 12, 'Buah', '12.00', 144, NULL, '2023-12-01 04:14:49', '2023-12-01 04:14:49'),
(90, 48, 'BYHU6O2G', 'awdwa', 'awda', 'adw', 1, 'Pcs', '1.00', 1, NULL, '2023-12-01 04:16:47', '2023-12-01 04:16:47'),
(91, 48, 'BUNFG18D', 'dwad', 'awd', 'awd', 1, 'Lembar', '1.00', 1, NULL, '2023-12-01 04:16:47', '2023-12-01 04:16:47'),
(92, 48, 'B5DGN3ZL', 'awdwa', 'awda', 'adw', 1, 'Pcs', '1.00', 1, NULL, '2023-12-01 04:17:10', '2023-12-01 04:17:10'),
(93, 48, 'B0OMU3FL', 'dwad', 'awd', 'awd', 1, 'Lembar', '1.00', 1, NULL, '2023-12-01 04:17:10', '2023-12-01 04:17:10'),
(94, 48, 'BQJ7FD25', 'wada', 'daw', 'adw', 12, 'Pcs', '12.00', 144, NULL, '2023-12-01 04:20:20', '2023-12-01 04:20:20'),
(95, 48, 'BTEFMOLQ', 'dw', 'wad', 'adw', 1, 'Buah', '1.00', 1, NULL, '2023-12-01 04:20:20', '2023-12-01 04:20:20'),
(96, 48, 'BJ3F4EPU', 'wad', 'daw', 'adw', 1, 'Set', '1.00', 1, NULL, '2023-12-01 04:21:20', '2023-12-01 04:21:20'),
(97, 48, 'BQ9LOYZS', 'awd', 'wd', 'awd', 1, 'Lembar', '1.00', 1, NULL, '2023-12-01 04:21:20', '2023-12-01 04:21:20'),
(98, 48, 'BPBQGH60', 'ada', 'dwa', 'adw', 12, 'Pcs', '1.00', 12, NULL, '2023-12-01 04:23:39', '2023-12-01 04:23:39'),
(99, 48, 'B0S4H5BO', 'sadaw', 'wad', 'awd', 1, 'Lembar', '1.00', 1, NULL, '2023-12-01 04:23:39', '2023-12-01 04:23:39'),
(100, 48, 'BXE6UHDP', 'awd', 'wad', 'adw', 1, 'Pcs', '1.00', 1, NULL, '2023-12-01 04:24:46', '2023-12-01 04:24:46'),
(101, 48, 'BMPYQJ5V', 'sad', 'wad', 'awd', 1, 'Set', '1.00', 1, NULL, '2023-12-01 04:24:46', '2023-12-01 04:24:46'),
(102, 48, 'BL3785VM', 'wad', 'awd', 'awd', 1, 'Set', '1.00', 1, NULL, '2023-12-01 04:26:49', '2023-12-01 04:26:49'),
(103, 48, 'BCHSV6Z7', 'awd', 'adw', 'ad', 1, 'Buah', '23.00', 23, NULL, '2023-12-01 04:26:49', '2023-12-01 04:26:49'),
(104, 49, 'BPBWYUK8', 'yuhsd', 'dsadw', 'dwa', 1, 'Pcs', '12.00', 12, NULL, '2023-12-03 21:03:25', '2023-12-03 21:03:25'),
(105, 49, 'BIH29DVY', 'sdc', 'daw', 'dsad', 32, 'Set', '2.00', 64, NULL, '2023-12-03 21:03:26', '2023-12-03 21:03:26'),
(106, 49, 'BH1V6XPQ', 'yuhsd', 'dsadw', 'dwa', 1, 'Pcs', '12.00', 12, NULL, '2023-12-03 21:03:39', '2023-12-03 21:03:39'),
(107, 49, 'BPAR9JCE', 'sdc', 'daw', 'dsad', 32, 'Set', '2.00', 64, NULL, '2023-12-03 21:03:39', '2023-12-03 21:03:39'),
(108, 49, 'BGB8YNV2', 'yujsd', 'wads', 'dsad', 1, 'Lembar', '1.00', 1, NULL, '2023-12-03 21:08:12', '2023-12-03 21:08:12'),
(109, 49, 'BLZI7V2A', 'dsadw', 'dsad', 'daw', 1, 'Pcs', '1.00', 1, NULL, '2023-12-03 21:08:12', '2023-12-03 21:08:12'),
(110, 49, 'BNJLH0VR', 'sfafaw', '1', 'dawd', 1, 'Pcs', '1.00', 1, NULL, '2023-12-03 21:08:12', '2023-12-03 21:08:12'),
(111, 49, 'BI9J6UQK', 'dawds', 'awdaw', 'sada', 1, 'Pcs', '1.00', 1, NULL, '2023-12-03 21:11:26', '2023-12-03 21:11:26'),
(112, 49, 'BJG3DO2T', 'adw', 'daw', 'adwa', 1, 'Buah', '1.00', 1, NULL, '2023-12-03 21:11:26', '2023-12-03 21:11:26'),
(113, 49, 'BQBJXT0R', 'sdwa', 'wada', 'awd', 1, 'Lembar', '1.00', 1, NULL, '2023-12-03 21:15:33', '2023-12-03 21:15:33'),
(114, 49, 'B26PTNK8', 'dsafa', 'daw', 'ads', 1, 'Lembar', '1.00', 1, NULL, '2023-12-03 21:15:33', '2023-12-03 21:15:33'),
(115, 49, 'BZXMDSHL', 'faw', 'das', NULL, 1, 'Buah', '1.00', 1, NULL, '2023-12-03 21:15:33', '2023-12-03 21:15:33'),
(116, 49, 'BOTWYIE9', 'yuahdw', 'awda', 'sadaw', 1, 'Pcs', '123.00', 123, NULL, '2023-12-03 21:26:49', '2023-12-03 21:26:49'),
(117, 50, 'BW8BHX2M', 'sfs', 'dawd', 'daw', 1, 'Lembar', '1.00', 1, NULL, '2023-12-06 02:11:32', '2023-12-06 02:11:32'),
(118, 50, 'B3WMGPNV', 'ghad', 'awda', 'awda', 1, 'Buah', '1.00', 1, NULL, '2023-12-06 02:24:05', '2023-12-06 02:24:05'),
(119, 51, 'BLM5X2A4', 'DYYR', 'DWAD', 'awdsdd', 124, 'Pcs', '1313.00', 162812, NULL, '2023-12-06 02:32:05', '2023-12-06 02:32:05'),
(120, 52, 'BG9R2F4J', 'Laptop', '1BAWBDBAIDIABIAD', 'ASUS', 2, 'Set', '3000000.00', 6000000, NULL, '2023-12-06 03:41:06', '2023-12-06 03:41:06'),
(121, 52, 'BZSU12KY', 'IKAN', 'awdads', 'yuad', 1, 'Pcs', '1000000.00', 1000000, NULL, '2023-12-06 03:41:07', '2023-12-06 03:41:07'),
(122, 56, 'BR5PCAO2', 'Laptop', 'ASUS', 'LAPTOP ASUS UNTUK KEPERLUAN KERJA', 6, 'Set', '3000000.00', 18000000, NULL, '2023-12-14 07:09:25', '2023-12-14 07:09:25'),
(123, 56, 'BNQUBJ6H', 'Proyektor', 'Canon', 'Untuk Keperluan Presentasi', 3, 'Buah', '1500000.00', 4500000, NULL, '2023-12-14 07:09:26', '2023-12-14 07:09:26'),
(124, 56, 'BYE1LQR5', 'Meja Kerja', 'Kayu Jati', 'Nambah Tempat', 12, 'Set', '300000.00', 3600000, NULL, '2023-12-14 07:09:26', '2023-12-14 07:09:26'),
(125, 59, 'BDSKUIZB', 'laptop56', 'dawda', 'dwad', 12, 'Lembar', '1212.00', 14544, NULL, '2023-12-18 21:19:40', '2023-12-18 21:19:40'),
(126, 58, 'BSXO7AQT', 'Laptop A52', 'Ajdsnajdnasjdnjka', 'nsdsbdfsdnf', 12, 'Buah', '1500000.00', 18000000, NULL, '2023-12-18 21:29:06', '2023-12-18 21:29:06'),
(127, 58, 'BBPXMW8E', 'Lenovo', 'andjasdnjasn', 'dsdfsdf', 8, 'Buah', '12000000.00', 96000000, NULL, '2023-12-18 21:29:06', '2023-12-18 21:29:06'),
(128, 62, 'B1097ZGS', 'Aespa', 'sdnskfkjdn', 'sdbsdfs', 14, 'Buah', '170000.00', 2380000, NULL, '2023-12-18 22:56:25', '2023-12-18 22:56:25'),
(129, 63, 'BWU4HY7O', 'sadasdasd', 'sdasdasd', 'asdasdasd', 12, 'Buah', '100000.00', 1200000, NULL, '2023-12-18 23:06:04', '2023-12-18 23:06:04'),
(130, 64, 'B7E5DJ68', 'DUBBLIN', 'ASJDNAKJSDAJSKN', 'FDSDFSDF', 15, 'Buah', '2500000.00', 37500000, NULL, '2023-12-19 02:43:44', '2023-12-19 02:43:44'),
(131, 66, 'B9X27ZUQ', 'Komputer', 'Untuk pembelian kantor', 'Pembelian', 10, 'Pcs', '3000000.00', 30000000, NULL, '2023-12-19 18:46:03', '2023-12-19 18:46:03'),
(132, 66, 'B2ADFYO1', 'komputer hp', 'layar besar', 'pembelian', 20, 'Pcs', '3000000.00', 60000000, NULL, '2023-12-19 18:46:03', '2023-12-19 18:46:03'),
(133, 67, 'BLQD40PI', 'hp', 'pembelian', 'pembelian', 10, 'Pcs', '3000000.00', 30000000, NULL, '2023-12-19 18:49:04', '2023-12-19 18:49:04'),
(134, 68, 'BH6LKM8G', 'Tas Laptop HUAWER', 'adnjasdn', 'jnjdsanjkdnaskjdnaj', 12, 'Buah', '1200000.00', 14400000, NULL, '2023-12-19 18:51:03', '2023-12-19 18:51:03'),
(153, 69, 'B2XWAB6P', 'Laptop Asus 627', 'Tipe A5 23', 'Keperluan Bekerja', 156, 'Buah', '3000000.00', 468000000, NULL, '2023-12-25 11:40:46', '2023-12-25 11:40:46'),
(154, 69, 'B4VFZKN1', 'Mousess', 'Logitech1', 'Mouse', 145, 'Buah', '100000.00', 14500000, NULL, '2023-12-25 11:40:46', '2023-12-25 11:40:46'),
(156, 70, 'BR60Z1DK', 'Iphone 13', '256 gb', 'Untuk meeting', 12, 'Buah', '352000000.00', 4224000000, NULL, '2023-12-26 19:52:15', '2023-12-26 19:52:15'),
(167, 71, 'BZM4SC6I', 'Gelas Kaca', 'Ukuran 250ml', 'Untuk Keperluan Acara', 24, 'Buah', '6000.00', 144000, NULL, '2023-12-27 01:52:44', '2023-12-27 01:52:44'),
(168, 71, 'BSVBDGOI', 'Gelas Plastik', 'Ukuran 550mL', 'Keperluan Acara HLN', 36, 'Buah', '12000.00', 432000, NULL, '2023-12-27 01:52:44', '2023-12-27 01:52:44'),
(169, 72, 'B496EHNP', 'Botol Bangkit', 'Ukuran 350mL', 'Untuk Merchandise', 7, 'Buah', '140000.00', 980000, NULL, '2023-12-27 01:58:47', '2023-12-27 01:58:47'),
(170, 72, 'BP1MT57A', 'Botol Bangkit Hijau', 'Ukuran 650mL', 'Untuk Merchandise Acara 28 Desember 2023', 9, 'Buah', '150000.00', 1350000, NULL, '2023-12-27 01:58:47', '2023-12-27 01:58:47'),
(173, 73, 'B9X0YCLW', 'adwad', 'awdsadawda', 'wdada21', 6, 'Buah', '20000.00', 120000, NULL, '2023-12-28 01:35:20', '2023-12-28 01:35:20'),
(174, 73, 'B8H6EK4U', 'dawdawd', 'wdada', 'awdad', 12, 'Buah', '123320.00', 1479840, NULL, '2023-12-28 01:35:20', '2023-12-28 01:35:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_barang_rab`
--

CREATE TABLE `tabel_barang_rab` (
  `ID_Barang_Rab` bigint(20) UNSIGNED NOT NULL,
  `ID_RAB` bigint(20) UNSIGNED NOT NULL,
  `ID_Barang` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_barang_rab`
--

INSERT INTO `tabel_barang_rab` (`ID_Barang_Rab`, `ID_RAB`, `ID_Barang`) VALUES
(1, 9, 71),
(4, 11, 73),
(5, 13, 75),
(6, 76, 14),
(7, 15, 77),
(8, 16, 79),
(9, 17, 80),
(10, 17, 81),
(11, 18, 90),
(12, 18, 91),
(13, 18, 90),
(14, 18, 91),
(15, 19, 92),
(16, 19, 93),
(17, 21, 102),
(18, 21, 103),
(19, 23, 106),
(20, 23, 107),
(21, 24, 111),
(22, 24, 112),
(23, 25, 113),
(24, 25, 114),
(25, 25, 115),
(26, 26, 116),
(27, 27, 117),
(28, 28, 118),
(29, 29, 119),
(30, 30, 120),
(31, 30, 121),
(32, 31, 122),
(33, 31, 123),
(34, 31, 124),
(35, 32, 125),
(36, 33, 126),
(37, 33, 127),
(38, 34, 128),
(39, 35, 129),
(40, 36, 130),
(41, 37, 131),
(42, 37, 132),
(43, 38, 133),
(58, 39, 153),
(59, 39, 154),
(61, 41, 156),
(72, 42, 167),
(73, 42, 168),
(74, 43, 169),
(75, 43, 170),
(78, 44, 173),
(79, 44, 174);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_divisi`
--

CREATE TABLE `tabel_divisi` (
  `id_divisi` bigint(20) UNSIGNED NOT NULL,
  `nama_divisi` varchar(255) NOT NULL,
  `keterangan_divisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_divisi`
--

INSERT INTO `tabel_divisi` (`id_divisi`, `nama_divisi`, `keterangan_divisi`) VALUES
(1, 'Direktur Utama', 'Divisi Tingkat 1 Untuk Pejabat User'),
(2, 'Direktorat Asset, Operation and Maintenance DAN Direktorat Keuangan dan SDM', 'Divisi Tingkat 2 Untuk Pejabat User'),
(3, 'Divisi Operasi dan Pemeliharaan, Divisi Enjiniring, Divisi Keuangan, dan Divisi SDM dan General Affair', 'Divisi Tingkat 3 Untuk Pejabat User'),
(4, 'Divisi Operasi Dan Pemeliharaan', 'Divisi Tingkat 4'),
(5, 'Divisi Enjiniring', 'Divisi Tingkat 4'),
(6, 'Divisi Keuangan', 'Divisi Tingkat 4'),
(7, 'Divisi SDM dan General Affair', 'Divisi Tingkat 4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_dokumen_kualifikasi`
--

CREATE TABLE `tabel_dokumen_kualifikasi` (
  `ID_Dokumen_Kualifikasi` bigint(20) UNSIGNED NOT NULL,
  `ID_Pengadaan` bigint(20) UNSIGNED NOT NULL,
  `dokumen_kualifikasi` varchar(2500) NOT NULL,
  `tanggal_pengajuan` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_dokumen_kualifikasi`
--

INSERT INTO `tabel_dokumen_kualifikasi` (`ID_Dokumen_Kualifikasi`, `ID_Pengadaan`, `dokumen_kualifikasi`, `tanggal_pengajuan`, `created_at`, `updated_at`) VALUES
(1, 56, 'https://mandauciptatenaganusantara-my.sharepoint.com/personal/itadministrator_mctn_co_id/_layouts/15/onedrive.aspx?ga=1&id=%2Fpersonal%2Fitadministrator%5Fmctn%5Fco%5Fid%2FDocuments%2FSHARE%2FMangang%20MCTN%2FAnalist%2FProject%2DTeam2%28SCM%29%2FSCM%2FDokumen%2FLakdan', '2023-12-19 09:12:47', '2023-12-19 02:10:42', '2023-12-19 02:12:47'),
(4, 69, 'https://mandauciptatenaganusantara-my.sharepoint.com/personal/itadministrator_mctn_co_id/_layouts/15/onedrive.aspx?ga=1&id=%2Fpersonal%2Fitadministrator%5Fmctn%5Fco%5Fid%2FDocuments%2FSHARE%2FMangang%20MCTN%2FAnalist%2FProject%2DTeam2%28SCM%29%2FSCM%2FDokumen%2FLakdan', '2023-12-20 04:14:30', '2023-12-19 21:14:30', '2023-12-19 21:14:30'),
(5, 73, 'https://mandauciptatenaganusantara-my.sharepoint.com/personal/itadministrator_mctn_co_id/_layouts/15/onedrive.aspx?ga=1&id=%2Fpersonal%2Fitadministrator%5Fmctn%5Fco%5Fid%2FDocuments%2FSHARE%2FMangang%20MCTN%2FAnalist%2FProject%2DTeam2%28SCM%29', '2023-12-28 10:06:43', '2023-12-28 03:06:43', '2023-12-28 03:06:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_hpe`
--

CREATE TABLE `tabel_hpe` (
  `ID_HPE` bigint(20) UNSIGNED NOT NULL,
  `ID_Kota` bigint(20) UNSIGNED NOT NULL,
  `ID_Pengadaan` bigint(20) UNSIGNED NOT NULL,
  `ID_Sumber_Referensi` bigint(20) UNSIGNED NOT NULL,
  `Tanggal` date NOT NULL,
  `HPE` decimal(15,2) DEFAULT NULL,
  `attachment_file` varchar(255) DEFAULT NULL,
  `nama_pejabat_rendan` varchar(255) DEFAULT NULL,
  `jabatan_pejabat_rendan` varchar(255) DEFAULT NULL,
  `tanda_tangan_pejabat_rendan` varchar(255) DEFAULT NULL,
  `nama_user_1` varchar(255) DEFAULT NULL,
  `jabatan_user_1` varchar(255) DEFAULT NULL,
  `tanda_tangan_user_1` varchar(255) DEFAULT NULL,
  `tanggal_pengajuan` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_hpe`
--

INSERT INTO `tabel_hpe` (`ID_HPE`, `ID_Kota`, `ID_Pengadaan`, `ID_Sumber_Referensi`, `Tanggal`, `HPE`, `attachment_file`, `nama_pejabat_rendan`, `jabatan_pejabat_rendan`, `tanda_tangan_pejabat_rendan`, `nama_user_1`, `jabatan_user_1`, `tanda_tangan_user_1`, `tanggal_pengajuan`, `created_at`, `updated_at`) VALUES
(1, 1, 56, 1, '2023-12-15', '2500000.00', 'attachment_hpe/sSeR9BfbT1xLHJR0zxYmqpSpru9MKatG8wHIBFdv.xlsx', 'pejabatrendan', 'Kadiv SDM', 'tanda_tangan/35KTlLVKwnMKHKO8xYPtDz3Juuw5Czq1ewqS97It.jpg', NULL, NULL, NULL, NULL, '2023-12-15 04:05:15', '2023-12-15 09:13:47'),
(3, 1, 63, 3, '2024-01-04', '2050000000.00', 'attachment_hpe/vD6aOrSaBuaHQlNcehvj11aN2euzMOEJlm3LlDaD.pdf', 'pejabatrendan', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-19 03:39:33', '2023-12-19 03:39:33'),
(4, 3, 69, 4, '2023-12-20', '2200000.00', 'attachment_hpe/EVrZf1iz8PcENKEJM1IYjJyJo3vjcMXib71m3umw.xlsx', 'pejabatrendan', 'Direktorat SDM', 'tanda_tangan/35KTlLVKwnMKHKO8xYPtDz3Juuw5Czq1ewqS97It.jpg', 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', '2023-12-26 12:05:40', '2023-12-19 20:57:10', '2023-12-26 05:12:02'),
(5, 1, 73, 5, '2023-12-28', '2100000.00', 'attachment_hpe/dpci8QAtwEXf8AhgQbUmsCjjE7jOC2zLHDBARd5T.xlsx', 'pejabatrendan', 'Direktorat SDM', 'tanda_tangan/35KTlLVKwnMKHKO8xYPtDz3Juuw5Czq1ewqS97It.jpg', 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', '2023-12-28 09:59:30', '2023-12-28 02:58:20', '2023-12-28 03:15:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_jenis_pengadaan`
--

CREATE TABLE `tabel_jenis_pengadaan` (
  `ID_Jenis_Pengadaan` int(11) NOT NULL,
  `Jenis_Pengadaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_jenis_pengadaan`
--

INSERT INTO `tabel_jenis_pengadaan` (`ID_Jenis_Pengadaan`, `Jenis_Pengadaan`) VALUES
(1, 'Barang'),
(2, 'Jasa Konstruksi'),
(3, 'Jasa Lainnya'),
(4, 'Jasa Konsultasi'),
(5, 'Pengadaan Khusus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_justifikasi_penunjukkan_langsung`
--

CREATE TABLE `tabel_justifikasi_penunjukkan_langsung` (
  `ID_JPL` bigint(20) UNSIGNED NOT NULL,
  `ID_Kota` bigint(20) UNSIGNED DEFAULT NULL,
  `ID_Pengadaan` bigint(20) UNSIGNED DEFAULT NULL,
  `ID_Kriteria` bigint(20) UNSIGNED DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `pagu_anggaran` varchar(1000) DEFAULT NULL,
  `nama_perusahaan` varchar(255) DEFAULT NULL,
  `nama_user_1` varchar(255) DEFAULT NULL,
  `jabatan_user_1` varchar(255) DEFAULT NULL,
  `tanda_tangan_user_1` varchar(255) DEFAULT NULL,
  `Rincian_Status_Kondisi` text DEFAULT NULL,
  `Rincian_Alasan_Metode` text DEFAULT NULL,
  `Rincian_Kriteria_Peserta_Teknis` text DEFAULT NULL,
  `Rincian_Kriteria_Peserta_Komersial` text DEFAULT NULL,
  `Rincian_Kriteria_Peserta_Lainnya` text DEFAULT NULL,
  `tanggal_pengajuan` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_justifikasi_penunjukkan_langsung`
--

INSERT INTO `tabel_justifikasi_penunjukkan_langsung` (`ID_JPL`, `ID_Kota`, `ID_Pengadaan`, `ID_Kriteria`, `Tanggal`, `pagu_anggaran`, `nama_perusahaan`, `nama_user_1`, `jabatan_user_1`, `tanda_tangan_user_1`, `Rincian_Status_Kondisi`, `Rincian_Alasan_Metode`, `Rincian_Kriteria_Peserta_Teknis`, `Rincian_Kriteria_Peserta_Komersial`, `Rincian_Kriteria_Peserta_Lainnya`, `tanggal_pengajuan`, `created_at`, `updated_at`) VALUES
(1, 1, 52, 1, '2023-12-11', '1234142141.00', 'mctn', 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 21:59:32', '2023-12-10 23:56:32'),
(13, 1, 56, 13, '2023-12-14', '6000000.00', 'rifqi', 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', 'Baik', 'Sangat Baik', 'Cukup Baik', 'Sangat Baik', 'Aplagidwan ini Baik', NULL, '2023-12-14 07:55:40', '2023-12-14 08:16:40'),
(14, 1, 59, 15, '2023-12-19', '2500000.00', 'naufal', 'pejabat user tingkat 3', 'Kadiv Operasi', NULL, 'aman', 'aman', 'aman', 'awdawd', 'wadawd', NULL, '2023-12-18 21:23:55', '2023-12-18 21:23:55'),
(15, 2, 60, 17, '2023-12-29', '12321313.00', 'naufal', 'pejabat user tingkat 3', 'Kadiv Operasi', NULL, 'awdawd', 'wdada', 'awdaw', 'awdada', 'awdaw', NULL, '2023-12-18 21:33:59', '2023-12-18 21:33:59'),
(16, 2, 60, 18, '2023-12-29', '12321313.00', 'naufal', 'pejabat user tingkat 3', 'Kadiv Operasi', NULL, 'awdawd', 'wdada', 'awdaw', 'awdada', 'awdaw', NULL, '2023-12-18 21:34:13', '2023-12-18 21:34:13'),
(17, 1, 61, 19, '2023-12-22', '19000000.00', 'naufal', 'pejabat user tingkat 3', 'Kadiv Operasi', NULL, 'BDKABKHABSDHAB', 'BSDSBDFH', 'SDNFKJHSKFJ', 'SNCFD KSFBKB', 'SNBDFHKSDBFH', NULL, '2023-12-18 21:36:04', '2023-12-18 21:36:04'),
(18, 1, 58, 21, '2023-12-21', '2000000000000.00', 'naufal', 'pejabat user tingkat 3', 'Kadiv Operasi', NULL, 'XCZCSDF', 'DFSDFSD', 'SDFSDF', 'DFSDFS', 'DSFDFZGZSDF', NULL, '2023-12-18 21:43:29', '2023-12-18 21:43:29'),
(19, 1, 63, 23, '2023-12-30', '1500000000.00', 'naufal', 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', 'sdasdas', 'sdasdS', 'SDSDFSD', 'DSFSDFSD', 'JSDFHSDFHB', '2023-12-19 10:12:52', '2023-12-19 03:07:09', '2023-12-19 03:15:43'),
(20, 2, 69, 24, '2023-12-20', '2700000.00', 'mctnpln', 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', 'Baik&nbsp;', 'Cukup Baik', 'Sangat Baik', 'Sangat Baik', 'Baik', '2023-12-20 03:18:59', '2023-12-19 20:17:53', '2023-12-26 00:07:10'),
(21, 1, 71, 25, '2023-12-29', '1500000', 'administrator', 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', 'Anda Login sebagai Admin User', 'Anda Login sebagai Admin User', 'Anda Login sebagai Admin User', 'Anda Login sebagai Admin User', 'Anda Login sebagai Admin User', '2023-12-27 07:43:05', '2023-12-27 00:24:52', '2023-12-27 01:47:18'),
(22, 3, 73, 26, '2023-12-28', '2500000', 'naufal', 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', 'Aman', 'Sangat aman', 'Cukup Aman', 'Relatif Aman', 'Yaa aman', '2023-12-28 08:45:41', '2023-12-28 01:41:15', '2023-12-28 02:35:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_klasifikasi_baku`
--

CREATE TABLE `tabel_klasifikasi_baku` (
  `ID_Klasifikasi` bigint(20) UNSIGNED NOT NULL,
  `Nomor_Klasifikasi` varchar(255) NOT NULL,
  `Nama_Klasifikasi` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_klasifikasi_baku`
--

INSERT INTO `tabel_klasifikasi_baku` (`ID_Klasifikasi`, `Nomor_Klasifikasi`, `Nama_Klasifikasi`, `created_at`, `updated_at`) VALUES
(1, '0620', 'PERTAMBANGAN GAS ALAM DAN PENGUSAHAAN TENAGA PANA S', '2023-12-18 12:26:14', '2023-12-18 12:28:11'),
(2, '07101', 'PERTAMBANGAN PASIR BESI 57 ', '2023-12-18 12:26:14', '2023-12-18 12:28:17'),
(3, '08101', 'PENGGALIAN BATU HIAS DAN BATU BANGUNAN 59 ', '2023-12-18 12:28:50', '2023-12-18 12:28:50'),
(4, '08992', 'PENGGALIAN FELDSPAR DAN KALSIT 62 ', '2023-12-18 12:28:50', '2023-12-18 12:28:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kota`
--

CREATE TABLE `tabel_kota` (
  `ID_Kota` int(11) NOT NULL,
  `Kota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_kota`
--

INSERT INTO `tabel_kota` (`ID_Kota`, `Kota`) VALUES
(1, 'Jakarta'),
(2, 'Pekanbaru'),
(3, 'Duri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kriteria`
--

CREATE TABLE `tabel_kriteria` (
  `ID_Kriteria` bigint(20) UNSIGNED NOT NULL,
  `checklist_1` int(11) NOT NULL DEFAULT 0,
  `checklist_2` int(11) NOT NULL DEFAULT 0,
  `checklist_3` int(11) NOT NULL DEFAULT 0,
  `checklist_4` int(11) NOT NULL DEFAULT 0,
  `checklist_5` int(11) NOT NULL DEFAULT 0,
  `checklist_6` int(11) NOT NULL DEFAULT 0,
  `checklist_7` int(11) NOT NULL DEFAULT 0,
  `checklist_8` int(11) NOT NULL DEFAULT 0,
  `checklist_9` int(11) NOT NULL DEFAULT 0,
  `checklist_10` int(11) NOT NULL DEFAULT 0,
  `checklist_11` int(11) NOT NULL DEFAULT 0,
  `checklist_12` int(11) NOT NULL DEFAULT 0,
  `checklist_13` int(11) NOT NULL DEFAULT 0,
  `checklist_14` int(11) NOT NULL DEFAULT 0,
  `checklist_15` int(11) NOT NULL DEFAULT 0,
  `checklist_16` int(11) NOT NULL DEFAULT 0,
  `checklist_17` int(11) NOT NULL DEFAULT 0,
  `checklist_18` int(11) NOT NULL DEFAULT 0,
  `checklist_19` int(11) NOT NULL DEFAULT 0,
  `checklist_20` int(11) NOT NULL DEFAULT 0,
  `checklist_21` int(11) NOT NULL DEFAULT 0,
  `checklist_22` int(11) NOT NULL DEFAULT 0,
  `checklist_23` int(11) NOT NULL DEFAULT 0,
  `checklist_24` int(11) NOT NULL DEFAULT 0,
  `checklist_25` int(11) NOT NULL DEFAULT 0,
  `checklist_26` int(11) NOT NULL DEFAULT 0,
  `checklist_27` int(11) NOT NULL DEFAULT 0,
  `checklist_28` int(11) NOT NULL DEFAULT 0,
  `checklist_29` int(11) NOT NULL DEFAULT 0,
  `checklist_30` int(11) NOT NULL DEFAULT 0,
  `checklist_31` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_kriteria`
--

INSERT INTO `tabel_kriteria` (`ID_Kriteria`, `checklist_1`, `checklist_2`, `checklist_3`, `checklist_4`, `checklist_5`, `checklist_6`, `checklist_7`, `checklist_8`, `checklist_9`, `checklist_10`, `checklist_11`, `checklist_12`, `checklist_13`, `checklist_14`, `checklist_15`, `checklist_16`, `checklist_17`, `checklist_18`, `checklist_19`, `checklist_20`, `checklist_21`, `checklist_22`, `checklist_23`, `checklist_24`, `checklist_25`, `checklist_26`, `checklist_27`, `checklist_28`, `checklist_29`, `checklist_30`, `checklist_31`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-10 21:59:32', '2023-12-11 09:59:23'),
(13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, '2023-12-14 07:55:40', '2023-12-14 07:55:40'),
(14, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-18 20:34:11', '2023-12-18 20:34:11'),
(15, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-18 21:23:55', '2023-12-18 21:23:55'),
(16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, '2023-12-18 21:30:43', '2023-12-18 21:30:43'),
(17, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-18 21:33:59', '2023-12-18 21:33:59'),
(18, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-18 21:34:13', '2023-12-18 21:34:13'),
(19, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-18 21:36:04', '2023-12-18 21:36:04'),
(20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, '2023-12-18 21:38:31', '2023-12-18 21:38:31'),
(21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, '2023-12-18 21:43:29', '2023-12-18 21:43:29'),
(22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, '2023-12-19 02:55:53', '2023-12-19 02:55:53'),
(23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '2023-12-19 03:07:09', '2023-12-19 03:07:09'),
(24, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-19 20:17:53', '2023-12-25 23:58:40'),
(25, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-27 00:24:52', '2023-12-27 00:24:52'),
(26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, '2023-12-28 01:41:15', '2023-12-28 01:41:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_metode_penawaran`
--

CREATE TABLE `tabel_metode_penawaran` (
  `ID_Metode_Penawaran` bigint(20) UNSIGNED NOT NULL,
  `Metode_Penawaran` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_metode_penawaran`
--

INSERT INTO `tabel_metode_penawaran` (`ID_Metode_Penawaran`, `Metode_Penawaran`, `created_at`, `updated_at`) VALUES
(1, 'Satu Tahap Satu Sampul', '2023-12-18 12:25:04', '2023-12-18 12:25:04'),
(2, 'Satu Tahap Dua Sampul', '2023-12-18 12:25:04', '2023-12-18 12:25:04'),
(3, 'Dua Tahap', '2023-12-18 12:25:12', '2023-12-18 12:25:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_metode_pengadaan`
--

CREATE TABLE `tabel_metode_pengadaan` (
  `ID_Metode_Pengadaan` bigint(20) UNSIGNED NOT NULL,
  `Metode_Pengadaan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_metode_pengadaan`
--

INSERT INTO `tabel_metode_pengadaan` (`ID_Metode_Pengadaan`, `Metode_Pengadaan`, `created_at`, `updated_at`) VALUES
(1, 'e-Purchasing', '2023-12-18 12:20:24', '2023-12-18 12:20:24'),
(2, 'Pengadaan Langsung', '2023-12-18 12:20:24', '2023-12-18 12:20:24'),
(3, 'Penunjukan Langsung', '2023-12-18 12:20:48', '2023-12-18 12:20:48'),
(4, 'Tender Terbatas', '2023-12-18 12:20:48', '2023-12-18 12:20:48'),
(5, 'Tender Terbuka', '2023-12-18 12:20:58', '2023-12-18 12:20:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_nota_dinas_user`
--

CREATE TABLE `tabel_nota_dinas_user` (
  `id_nota_dinas_permintaan` bigint(20) UNSIGNED NOT NULL,
  `Nomor_ND_PPBJ` varchar(255) DEFAULT NULL,
  `Nomor_ND_Lakdan` varchar(255) DEFAULT NULL,
  `ID_Kota` bigint(20) UNSIGNED DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Nomor_PRK` varchar(1000) DEFAULT NULL,
  `cost_center` varchar(255) DEFAULT NULL,
  `pagu_anggaran` varchar(1000) DEFAULT NULL,
  `nama_pengguna` varchar(255) DEFAULT NULL,
  `divisi_pengguna` varchar(255) DEFAULT NULL,
  `nama_user_1` varchar(255) DEFAULT NULL,
  `jabatan_user_1` varchar(255) DEFAULT NULL,
  `tanda_tangan_user_1` varchar(255) DEFAULT NULL,
  `tanda_tangan_user_pelaksanaan` varchar(255) DEFAULT NULL,
  `ID_Pengadaan` bigint(20) UNSIGNED NOT NULL,
  `url_kak` varchar(2500) DEFAULT NULL,
  `url_spesifikasi_teknis` varchar(2500) DEFAULT NULL,
  `tanggal_pengajuan` timestamp NULL DEFAULT NULL,
  `tanggal_pengajuan_pelaksanaan` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_nota_dinas_user`
--

INSERT INTO `tabel_nota_dinas_user` (`id_nota_dinas_permintaan`, `Nomor_ND_PPBJ`, `Nomor_ND_Lakdan`, `ID_Kota`, `Tanggal`, `Nomor_PRK`, `cost_center`, `pagu_anggaran`, `nama_pengguna`, `divisi_pengguna`, `nama_user_1`, `jabatan_user_1`, `tanda_tangan_user_1`, `tanda_tangan_user_pelaksanaan`, `ID_Pengadaan`, `url_kak`, `url_spesifikasi_teknis`, `tanggal_pengajuan`, `tanggal_pengajuan_pelaksanaan`, `created_at`, `updated_at`) VALUES
(7, 'MCTN123', NULL, 1, '2023-12-13', '13131', 'MCTNGENERAL15', '12313.00', 'adminuser', 'Divisi Operasi Dan Pemeliharaan', 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', NULL, 52, NULL, 'https://mctn.co.id', NULL, '2023-12-27 07:24:10', '2023-12-12 20:33:12', '2023-12-12 23:31:17'),
(9, 'MCTN567', NULL, 1, '2023-12-14', '521234568', 'MCTJDA2144', '6000000.00', 'adminuser', 'Divisi Operasi Dan Pemeliharaan', 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', NULL, 56, 'https://mctn.co.id', NULL, NULL, '2023-12-27 07:24:10', '2023-12-14 09:21:12', '2023-12-14 09:42:54'),
(10, 'AD2213DSF', NULL, 1, '2023-12-29', '328213129', 'SDAJKS77826', '18500000.00', 'adminuser', 'Divisi Operasi Dan Pemeliharaan', 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', NULL, 63, 'http://mctn.co.id', NULL, '2023-12-19 10:20:06', '2023-12-27 07:24:10', '2023-12-19 03:19:23', '2023-12-19 03:21:24'),
(12, 'DAWDA213', NULL, 1, '2023-12-20', '123131', 'MCTNGENERAL14', '131231231231.00', 'adminuser', 'Divisi Operasi Dan Pemeliharaan', 'pejabat user tingkat 3', 'Kadiv Operasi', NULL, NULL, 67, NULL, 'https://mctn.co.id', NULL, '2023-12-27 07:24:10', '2023-12-19 19:32:49', '2023-12-19 19:32:49'),
(13, 'MCTN5676', 'MCTN12356', 2, '2023-12-20', '22000000', 'MCTNGENERAL14', '25100000.00', 'adminuser', 'Divisi Operasi Dan Pemeliharaan', 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', 69, NULL, 'https://mctn.co.id', '2023-12-20 03:32:43', '2023-12-27 08:47:01', '2023-12-19 20:31:06', '2023-12-27 02:47:46'),
(14, 'awdawda2312', 'MCTN123787', 2, '2023-12-28', '1500000', 'MCTNGENERAL15', '2500000', 'admin', 'Divisi Enjiniring', 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', 73, 'https://mctn.co.id', NULL, '2023-12-28 09:38:50', '2023-12-28 10:28:45', '2023-12-28 02:37:46', '2023-12-28 03:29:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pengadaan`
--

CREATE TABLE `tabel_pengadaan` (
  `ID_Pengadaan` bigint(11) NOT NULL,
  `No_Pengadaan` varchar(255) DEFAULT NULL,
  `Judul_Pengadaan` varchar(255) DEFAULT NULL,
  `Ringkasan_Pekerjaan` text DEFAULT NULL,
  `ID_Metode_Pengadaan` int(11) DEFAULT NULL,
  `ID_Sistem_Evaluasi_Penawaran` int(11) DEFAULT NULL,
  `ID_Jenis_Pengadaan` int(11) DEFAULT NULL,
  `ID_Sumber_Anggaran` bigint(20) UNSIGNED DEFAULT NULL,
  `id_pejabat_user_tingkat_3` bigint(20) UNSIGNED DEFAULT NULL,
  `id_pejabat_user_tingkat_2` bigint(20) UNSIGNED DEFAULT NULL,
  `id_pejabat_user_tingkat_1` bigint(20) UNSIGNED DEFAULT NULL,
  `id_admin_rendan` bigint(20) UNSIGNED DEFAULT NULL,
  `id_status` bigint(20) UNSIGNED DEFAULT NULL,
  `id_status_rab` bigint(20) UNSIGNED DEFAULT NULL,
  `id_status_justifikasi` bigint(20) UNSIGNED DEFAULT NULL,
  `id_status_nota_dinas_permintaan` bigint(20) UNSIGNED DEFAULT NULL,
  `id_status_nota_dinas_pelaksanaan` bigint(20) UNSIGNED DEFAULT NULL,
  `id_status_hpe` bigint(20) UNSIGNED DEFAULT NULL,
  `id_status_rks` bigint(20) UNSIGNED DEFAULT NULL,
  `id_status_ringkasan_rks` bigint(20) UNSIGNED DEFAULT NULL,
  `id_status_dokumen_kualifikasi` bigint(20) UNSIGNED DEFAULT NULL,
  `checklist_nota_dinas_permintaan_pengadaan` int(11) NOT NULL DEFAULT 0,
  `checklist_nota_dinas_permintaan_pelaksanaan_pengadaan` int(11) NOT NULL DEFAULT 0,
  `checklist_rencana_anggaran_biaya` int(11) NOT NULL DEFAULT 0,
  `checklist_justifikasi_penunjukan_langsung` int(11) NOT NULL DEFAULT 0,
  `checklist_hpe` int(11) NOT NULL DEFAULT 0,
  `checklist_rks` int(11) NOT NULL DEFAULT 0,
  `checklist_ringkasan_rks` int(11) NOT NULL DEFAULT 0,
  `checklist_dokumen_kualifikasi` int(11) NOT NULL DEFAULT 0,
  `alasan_rab` text DEFAULT NULL,
  `alasan_justifikasi` text DEFAULT NULL,
  `alasan_nota_dinas_permintaan` text DEFAULT NULL,
  `alasan_nota_dinas_pelaksanaan` text DEFAULT NULL,
  `alasan_hpe` varchar(255) DEFAULT NULL,
  `alasan_rks` varchar(255) DEFAULT NULL,
  `alasan_ringkasan_rks` varchar(255) DEFAULT NULL,
  `alasan_dokumen_kualifikasi` varchar(255) DEFAULT NULL,
  `rencana_tanggal_terkontrak_mulai` date DEFAULT NULL,
  `rencana_tanggal_terkontrak_selesai` date DEFAULT NULL,
  `rencana_durasi_kontrak` int(11) DEFAULT NULL,
  `rencana_durasi_kontrak_tanggal` enum('Hari Kerja','Hari Kalender','Bulan','Tahun') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_pengadaan`
--

INSERT INTO `tabel_pengadaan` (`ID_Pengadaan`, `No_Pengadaan`, `Judul_Pengadaan`, `Ringkasan_Pekerjaan`, `ID_Metode_Pengadaan`, `ID_Sistem_Evaluasi_Penawaran`, `ID_Jenis_Pengadaan`, `ID_Sumber_Anggaran`, `id_pejabat_user_tingkat_3`, `id_pejabat_user_tingkat_2`, `id_pejabat_user_tingkat_1`, `id_admin_rendan`, `id_status`, `id_status_rab`, `id_status_justifikasi`, `id_status_nota_dinas_permintaan`, `id_status_nota_dinas_pelaksanaan`, `id_status_hpe`, `id_status_rks`, `id_status_ringkasan_rks`, `id_status_dokumen_kualifikasi`, `checklist_nota_dinas_permintaan_pengadaan`, `checklist_nota_dinas_permintaan_pelaksanaan_pengadaan`, `checklist_rencana_anggaran_biaya`, `checklist_justifikasi_penunjukan_langsung`, `checklist_hpe`, `checklist_rks`, `checklist_ringkasan_rks`, `checklist_dokumen_kualifikasi`, `alasan_rab`, `alasan_justifikasi`, `alasan_nota_dinas_permintaan`, `alasan_nota_dinas_pelaksanaan`, `alasan_hpe`, `alasan_rks`, `alasan_ringkasan_rks`, `alasan_dokumen_kualifikasi`, `rencana_tanggal_terkontrak_mulai`, `rencana_tanggal_terkontrak_selesai`, `rencana_durasi_kontrak`, `rencana_durasi_kontrak_tanggal`, `created_at`, `updated_at`) VALUES
(56, NULL, 'Pekerjaan KLX', 'fuagdkanwdlnalwdaw awdsadaw', NULL, NULL, 4, 1, 6, NULL, NULL, 9, 16, 3, 3, 3, 6, 4, 3, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 'Saya setuju dengan RAB yang dibuat', 'Saya setuju dengan Justifikasi Penunjukan Langsung', 'Saya setuju tolong lanjut ke rendan', NULL, 'Saya setuju dengan hpe', 'saya stuju', 'yadawh', NULL, '2023-12-14', '2023-12-16', 2, 'Hari Kerja', '2023-12-14 07:04:41', '2023-12-19 09:00:05'),
(69, NULL, 'Pengadaan Laptop', 'Pekerjaan Pengadaanadad', NULL, NULL, 1, 1, NULL, NULL, NULL, 9, 16, 3, 3, 8, 3, 4, 11, 7, 4, 1, 1, 1, 1, 1, 1, 1, 1, 'Saya setuju dengan pengadaan laptop', 'Saya juga setuju', 'Saya Setuju', 'Saya setuju', 'Saya setuju', NULL, NULL, 'Saya Setuju', '2023-12-21', '2023-12-22', 2, 'Hari Kerja', '2023-12-19 20:09:09', '2023-12-27 02:47:46'),
(71, NULL, 'Gelas MCTN', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 10, 3, 3, 6, 6, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 0, 0, 'OK', 'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-26 23:59:17', '2023-12-27 01:55:48'),
(72, NULL, 'Botol Bangkit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 3, 6, 6, 6, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-27 00:46:26', '2023-12-27 01:59:47'),
(73, NULL, 'Testing', 'adadw', NULL, NULL, 4, 1, NULL, NULL, NULL, 9, 16, 3, 3, 3, 3, 3, 3, 3, 4, 1, 1, 1, 1, 1, 1, 1, 1, 'Saya Setuju dengan RAB', 'Ok aman', 'Oka lanjut', 'okk', 'Ok', 'Teruskan', 'Setuju', 'Lanjutkan', '2023-12-29', '2023-12-30', 2, 'Hari Kerja', '2023-12-28 01:06:05', '2023-12-28 03:34:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_peserta`
--

CREATE TABLE `tabel_peserta` (
  `ID_Peserta` bigint(20) NOT NULL,
  `ID_Vendor` bigint(20) UNSIGNED NOT NULL,
  `Nama_Peserta` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `Alamat_Peserta` text DEFAULT NULL,
  `Email_Peserta` varchar(255) DEFAULT NULL,
  `Nomor_Kontak_Peserta` int(11) DEFAULT NULL,
  `id_signatures` bigint(20) UNSIGNED DEFAULT NULL,
  `signatures` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_peserta`
--

INSERT INTO `tabel_peserta` (`ID_Peserta`, `ID_Vendor`, `Nama_Peserta`, `jabatan`, `Alamat_Peserta`, `Email_Peserta`, `Nomor_Kontak_Peserta`, `id_signatures`, `signatures`, `created_at`, `updated_at`) VALUES
(2, 1, 'Priskiliaaaa', 'Keuangan', 'Bandung', 'priskilia@gmail.com', 1234567899, NULL, NULL, '2023-11-21 04:06:04', '2023-11-27 00:54:52'),
(3, 1, 'obi', 'direksi', NULL, 'obi@gmail.com', 8132546, NULL, NULL, '2023-11-21 00:59:59', '2023-11-21 00:59:59'),
(4, 1, 'harya', 'scm', NULL, 'harya@gmail.com', 123456, NULL, NULL, '2023-11-21 01:39:41', '2023-11-21 01:39:41'),
(5, 1, 'harya', 'it', NULL, 'dawd@gmail.com', 8132546, NULL, NULL, '2023-11-21 01:43:06', '2023-11-21 01:43:06'),
(6, 1, 'ad', 'Mahasiswa', NULL, 'adwa@gmail.com', 1234556, NULL, NULL, '2023-11-21 19:37:35', '2023-11-21 19:37:35'),
(10, 4, 'bhara', 'direksi', NULL, NULL, 1234567889, NULL, NULL, '2023-11-23 21:26:13', '2023-11-24 04:35:31'),
(19, 5, 'angg1', 'dosen', NULL, 'angg2@gmail.com', 12345678, NULL, NULL, '2023-11-24 04:02:04', '2023-11-24 04:02:04'),
(28, 1, 'cwad', 'dafa', NULL, 'awd@gmail.com', 131, NULL, NULL, '2023-11-27 00:57:12', '2023-11-27 00:57:12'),
(29, 12, 'hwa', 'direksi', NULL, 'hwa@perwakilan.com', 123457878, NULL, NULL, '2023-12-19 10:01:56', '2023-12-19 10:03:39'),
(32, 13, 'anggaaa', 'Mahasiswa', NULL, 'angga@gmail.com', 8137596, NULL, NULL, '2023-12-19 20:05:32', '2023-12-19 20:06:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_rencana_anggaran_biaya`
--

CREATE TABLE `tabel_rencana_anggaran_biaya` (
  `ID_RAB` bigint(20) UNSIGNED NOT NULL,
  `ID_Kota` bigint(20) UNSIGNED DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `ID_Barang` bigint(20) UNSIGNED DEFAULT NULL,
  `total_keseluruhan` decimal(15,2) DEFAULT NULL,
  `ID_Pengadaan` bigint(20) UNSIGNED NOT NULL,
  `nama_user_1` varchar(255) NOT NULL,
  `jabatan_user_1` varchar(255) NOT NULL,
  `tanda_tangan_user_1` varchar(255) DEFAULT NULL,
  `tanggal_pengajuan` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_rencana_anggaran_biaya`
--

INSERT INTO `tabel_rencana_anggaran_biaya` (`ID_RAB`, `ID_Kota`, `tanggal`, `ID_Barang`, `total_keseluruhan`, `ID_Pengadaan`, `nama_user_1`, `jabatan_user_1`, `tanda_tangan_user_1`, `tanggal_pengajuan`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-12-01', 0, '1.00', 48, '0', '', NULL, NULL, '2023-12-01 02:45:30', '2023-12-01 02:45:30'),
(2, 2, '2023-12-01', 0, '1.00', 48, '0', '', NULL, NULL, '2023-12-01 02:48:50', '2023-12-01 02:48:50'),
(3, 3, '2023-12-01', 0, '144.00', 48, '0', '', NULL, NULL, '2023-12-01 02:50:02', '2023-12-01 02:50:02'),
(4, 2, '2023-12-01', 0, '245.00', 48, '0', '', NULL, NULL, '2023-12-01 02:51:26', '2023-12-01 02:51:26'),
(5, 2, '2023-12-01', 0, '98.00', 48, '0', '', NULL, NULL, '2023-12-01 02:52:28', '2023-12-01 02:52:28'),
(6, 1, '2023-12-01', 0, '124.00', 48, '0', '', NULL, NULL, '2023-12-01 02:53:56', '2023-12-01 02:53:56'),
(7, 1, '2023-12-01', 0, '235.00', 48, '0', '', NULL, NULL, '2023-12-01 02:55:22', '2023-12-01 02:55:22'),
(8, 2, '2023-12-01', 0, '642.00', 48, '0', '', NULL, NULL, '2023-12-01 02:59:14', '2023-12-01 02:59:14'),
(9, 2, '2023-12-01', 0, '234.00', 48, '0', '', NULL, NULL, '2023-12-01 03:00:53', '2023-12-01 03:00:53'),
(10, 3, '2023-12-01', 0, '3434.00', 48, '0', '', NULL, NULL, '2023-12-01 03:02:35', '2023-12-01 03:02:35'),
(11, 3, '2023-12-01', 0, '4342.00', 48, '0', '', NULL, NULL, '2023-12-01 03:06:28', '2023-12-01 03:06:28'),
(12, 2, '2023-12-01', 0, '156.00', 48, '0', '', NULL, NULL, '2023-12-01 03:08:28', '2023-12-01 03:08:28'),
(13, 1, '2023-12-01', 0, '2345.00', 48, '0', '', NULL, NULL, '2023-12-01 03:14:33', '2023-12-01 03:14:33'),
(14, 2, '2023-12-01', 0, '234.00', 48, '0', '', NULL, NULL, '2023-12-01 03:17:25', '2023-12-01 03:17:25'),
(15, 1, '2023-12-01', 77, '1476.00', 48, '0', '', NULL, NULL, '2023-12-01 03:19:37', '2023-12-01 03:19:37'),
(16, 2, '2023-12-01', 79, '4668.00', 48, '0', '', NULL, NULL, '2023-12-01 03:21:30', '2023-12-01 03:21:30'),
(17, 1, '2023-12-01', 81, '133764.00', 48, '0', '', NULL, NULL, '2023-12-01 03:25:13', '2023-12-01 03:25:13'),
(18, 2, '2023-12-01', NULL, '2.00', 48, '0', '', NULL, NULL, '2023-12-01 04:16:47', '2023-12-01 04:16:47'),
(19, 2, '2023-12-01', NULL, '2.00', 48, '0', '', NULL, NULL, '2023-12-01 04:17:10', '2023-12-01 04:17:10'),
(20, 1, '2023-12-01', NULL, '2.00', 48, '0', '', NULL, NULL, '2023-12-01 04:24:46', '2023-12-01 04:24:46'),
(21, 1, '2023-12-01', NULL, '24.00', 48, '0', '', NULL, NULL, '2023-12-01 04:26:49', '2023-12-01 04:26:49'),
(26, 2, '2023-12-04', 116, '123.00', 49, '0', '', NULL, NULL, '2023-12-03 21:26:49', '2023-12-03 21:26:49'),
(28, 1, '2023-12-06', 118, '1.00', 50, 'pejabat user tingkat 3', '', NULL, NULL, '2023-12-06 02:24:05', '2023-12-06 02:24:05'),
(29, 1, '2023-12-06', 119, '162812.00', 51, 'pejabat user tingkat 3', 'Kadiv Operasi', NULL, NULL, '2023-12-06 02:32:05', '2023-12-06 02:32:05'),
(30, 1, '2023-12-01', 121, '7000000.00', 52, 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', NULL, '2023-12-06 03:41:07', '2023-12-10 08:46:04'),
(31, 1, '2023-12-14', 124, '26100000.00', 56, 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', NULL, '2023-12-14 07:09:26', '2023-12-14 08:13:06'),
(32, 2, '2023-12-19', 125, '14544.00', 59, 'pejabat user tingkat 3', 'Kadiv Operasi', NULL, NULL, '2023-12-18 21:19:40', '2023-12-18 21:19:40'),
(33, 2, '2023-12-21', 127, '114000000.00', 58, 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', NULL, '2023-12-18 21:29:06', '2023-12-18 21:56:46'),
(34, 3, '2023-12-29', 128, '2380000.00', 62, 'pejabat user tingkat 3', 'Kadiv Operasi', NULL, '2023-12-18 23:00:57', '2023-12-18 22:56:25', '2023-12-18 23:00:57'),
(35, 3, '2023-12-23', 129, '1200000.00', 63, 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', '2023-12-19 06:10:49', '2023-12-18 23:06:04', '2023-12-19 03:14:46'),
(36, 1, '2023-12-21', 130, '37500000.00', 64, 'pejabat user tingkat 3', 'Kadiv Operasi', NULL, '2023-12-19 09:44:31', '2023-12-19 02:43:44', '2023-12-19 02:44:31'),
(37, 1, '2023-12-20', 132, '90000000.00', 66, 'pejabat user tingkat 3', 'Kadiv Operasi', NULL, NULL, '2023-12-19 18:46:03', '2023-12-19 18:46:03'),
(38, 1, '2023-12-20', 133, '30000000.00', 67, 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', '2023-12-20 01:52:04', '2023-12-19 18:49:04', '2023-12-19 18:55:26'),
(39, 3, '2023-12-20', 153, '482500000.00', 69, 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', '2023-12-20 03:14:38', '2023-12-19 20:13:21', '2023-12-25 11:40:46'),
(41, 1, '2023-12-29', 156, '4224000000.00', 70, 'pejabat user tingkat 3', 'Kadiv Operasi', NULL, NULL, '2023-12-26 19:21:55', '2023-12-26 19:52:15'),
(42, 1, '2023-12-29', 167, '576000.00', 71, 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', '2023-12-27 08:53:10', '2023-12-27 00:01:53', '2023-12-27 01:55:48'),
(43, 2, '2023-12-30', 169, '2330000.00', 72, 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', '2023-12-27 08:59:07', '2023-12-27 00:48:30', '2023-12-27 01:59:47'),
(44, 2, '2023-12-28', 173, '1599840.00', 73, 'pejabat user tingkat 3', 'Kadiv Operasi', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', '2023-12-28 08:37:07', '2023-12-28 01:10:21', '2023-12-28 02:32:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_ringkasan_rks`
--

CREATE TABLE `tabel_ringkasan_rks` (
  `ID_Ringkasan_Rks` bigint(20) UNSIGNED NOT NULL,
  `ID_Pengadaan` bigint(20) UNSIGNED DEFAULT NULL,
  `ID_Kota` bigint(20) UNSIGNED DEFAULT NULL,
  `Nomor_Rks` varchar(255) DEFAULT NULL,
  `Tanggal_Pengambilan_Rks_Mulai` date DEFAULT NULL,
  `Tanggal_Pengambilan_Rks_Selesai` date DEFAULT NULL,
  `Waktu_Pengambilan_Rks_Mulai` date DEFAULT NULL,
  `Waktu_Pengambilan_Rks_Selesai` date DEFAULT NULL,
  `Lokasi_Pengambilan_Rks` varchar(255) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Status_Rks` enum('Ada di DRP','Tidak Ada di DRP') DEFAULT NULL,
  `ID_Metode_Pengadaan` bigint(20) UNSIGNED DEFAULT NULL,
  `ID_Metode_Penawaran` bigint(20) UNSIGNED DEFAULT NULL,
  `Kualifikasi_Pengadaan` enum('Prakualifikasi','Pasca Kualifikasi') DEFAULT NULL,
  `Kualifikasi_CSMS` enum('Tidak Perlu','Perlu') DEFAULT NULL,
  `ID_Metode_Evaluasi_Penawaran` bigint(20) UNSIGNED DEFAULT NULL,
  `Target_Selesai_Rks` date DEFAULT NULL,
  `Info_Tambahan` text DEFAULT NULL,
  `Tanggal_Rks` date DEFAULT NULL,
  `Kualifikasi_Peserta_Pengadaan` varchar(255) DEFAULT NULL,
  `url_rks` varchar(2500) DEFAULT NULL,
  `ID_Klasifikasi` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_user_1` varchar(255) DEFAULT NULL,
  `tanda_tangan_user_1` varchar(255) DEFAULT NULL,
  `nama_rendan_1` varchar(255) DEFAULT NULL,
  `tanda_tangan_rendan_1` varchar(255) DEFAULT NULL,
  `tanggal_pengajuan` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_ringkasan_rks`
--

INSERT INTO `tabel_ringkasan_rks` (`ID_Ringkasan_Rks`, `ID_Pengadaan`, `ID_Kota`, `Nomor_Rks`, `Tanggal_Pengambilan_Rks_Mulai`, `Tanggal_Pengambilan_Rks_Selesai`, `Waktu_Pengambilan_Rks_Mulai`, `Waktu_Pengambilan_Rks_Selesai`, `Lokasi_Pengambilan_Rks`, `Tanggal`, `Status_Rks`, `ID_Metode_Pengadaan`, `ID_Metode_Penawaran`, `Kualifikasi_Pengadaan`, `Kualifikasi_CSMS`, `ID_Metode_Evaluasi_Penawaran`, `Target_Selesai_Rks`, `Info_Tambahan`, `Tanggal_Rks`, `Kualifikasi_Peserta_Pengadaan`, `url_rks`, `ID_Klasifikasi`, `nama_user_1`, `tanda_tangan_user_1`, `nama_rendan_1`, `tanda_tangan_rendan_1`, `tanggal_pengajuan`, `created_at`, `updated_at`) VALUES
(5, 56, 1, 'mctnrks12', '2023-12-22', '2023-12-23', '2023-12-24', '2023-12-25', 'Pekanbaru', '2023-12-19', 'Ada di DRP', 2, 2, 'Prakualifikasi', 'Tidak Perlu', 4, '2023-12-29', 'jika ada', '2023-12-21', 'Adil', 'https://mctn.co.id', 2, 'pejabat user tingkat 3', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', 'pejabatrendan', 'tanda_tangan/35KTlLVKwnMKHKO8xYPtDz3Juuw5Czq1ewqS97It.jpg', '2023-12-19 08:45:39', '2023-12-18 19:35:57', '2023-12-19 09:00:05'),
(7, 69, 2, 'mctnrks21', '2023-12-22', '2023-12-23', '2023-12-24', '2023-12-25', 'Pekanbaru', '2023-12-20', 'Ada di DRP', 3, 3, 'Pasca Kualifikasi', 'Perlu', 5, '2023-12-25', 'adad awdaw awdadwa', '2023-12-21', 'Adiltaf', 'https://mctn.co.id/', 3, 'pejabat user tingkat 3', NULL, 'pejabatrendan', NULL, '2023-12-20 08:22:09', '2023-12-20 01:00:52', '2023-12-20 04:02:25'),
(8, 73, 2, 'mctnrks12', '2023-12-30', '2023-12-31', '2024-01-01', '2024-01-03', 'Jakarta', '2023-12-28', 'Ada di DRP', 2, 2, 'Pasca Kualifikasi', 'Tidak Perlu', 2, '2024-01-02', 'dawda', '2023-12-29', 'Adil', 'https://mctn.co.id', 2, 'pejabat user tingkat 3', 'tanda_tangan/cGZcAnZvhbOQsxyW4YtbQY8FraeqyGaxtEUx9WRv.jpg', 'pejabatrendan', 'tanda_tangan/35KTlLVKwnMKHKO8xYPtDz3Juuw5Czq1ewqS97It.jpg', '2023-12-28 10:06:25', '2023-12-28 03:04:07', '2023-12-28 03:18:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_sistem_evaluasi_penawaran`
--

CREATE TABLE `tabel_sistem_evaluasi_penawaran` (
  `ID_Metode_Evaluasi_Penawaran` bigint(20) UNSIGNED NOT NULL,
  `Metode_Evaluasi_Penawaran` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_sistem_evaluasi_penawaran`
--

INSERT INTO `tabel_sistem_evaluasi_penawaran` (`ID_Metode_Evaluasi_Penawaran`, `Metode_Evaluasi_Penawaran`, `created_at`, `updated_at`) VALUES
(1, 'Sistem Kualitas', '2023-12-18 12:34:00', '2023-12-18 12:34:00'),
(2, 'Sistem Biaya Terendah', '2023-12-18 12:34:00', '2023-12-18 12:34:00'),
(3, 'Sistem Kualitas dan Biaya', '2023-12-18 12:34:16', '2023-12-18 12:34:16'),
(4, 'Sistem Gugur', '2023-12-18 12:34:16', '2023-12-18 12:34:16'),
(5, 'Sistem Nilai', '2023-12-18 12:34:37', '2023-12-18 12:34:37'),
(6, 'Sistem Umur Ekonomis', '2023-12-18 12:34:37', '2023-12-18 12:34:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_sumber_anggaran`
--

CREATE TABLE `tabel_sumber_anggaran` (
  `ID_Sumber_Anggaran` bigint(20) UNSIGNED NOT NULL,
  `nama_anggaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_sumber_anggaran`
--

INSERT INTO `tabel_sumber_anggaran` (`ID_Sumber_Anggaran`, `nama_anggaran`) VALUES
(1, 'Anggaran Investasi'),
(2, 'Anggaran Operasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_sumber_referensi`
--

CREATE TABLE `tabel_sumber_referensi` (
  `ID_Sumber_Referensi` bigint(20) UNSIGNED NOT NULL,
  `checklist_1` int(11) DEFAULT 0,
  `checklist_2` int(11) DEFAULT 0,
  `checklist_3` int(11) DEFAULT 0,
  `checklist_4` int(11) DEFAULT 0,
  `checklist_5` int(11) DEFAULT 0,
  `checklist_6` int(11) DEFAULT 0,
  `checklist_7` int(11) DEFAULT 0,
  `checklist_8` int(11) DEFAULT 0,
  `checklist_9` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_sumber_referensi`
--

INSERT INTO `tabel_sumber_referensi` (`ID_Sumber_Referensi`, `checklist_1`, `checklist_2`, `checklist_3`, `checklist_4`, `checklist_5`, `checklist_6`, `checklist_7`, `checklist_8`, `checklist_9`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 0, 0, 0, 1, 0, 1, 1, '2023-12-15 04:05:14', '2023-12-15 04:05:14'),
(2, 0, 0, 0, 0, 0, 1, 0, 1, 0, '2023-12-19 03:38:19', '2023-12-19 03:38:19'),
(3, 0, 0, 0, 0, 0, 0, 1, 0, 1, '2023-12-19 03:39:33', '2023-12-19 03:39:33'),
(4, 1, 1, 0, 0, 1, 0, 0, 0, 0, '2023-12-19 20:57:09', '2023-12-26 04:38:22'),
(5, 0, 0, 0, 0, 0, 0, 1, 1, 0, '2023-12-28 02:58:20', '2023-12-28 02:58:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_tahapan`
--

CREATE TABLE `tabel_tahapan` (
  `ID_Tahapan` int(11) NOT NULL,
  `Tahapan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `ID_Transaksi` bigint(20) UNSIGNED NOT NULL,
  `ID_Barang` bigint(20) DEFAULT NULL,
  `estimasi_jumlah` bigint(20) DEFAULT NULL,
  `Unit` enum('Buah','Pcs','Lembar','Set') DEFAULT NULL,
  `Harga` decimal(15,2) DEFAULT NULL,
  `Total` decimal(15,2) DEFAULT NULL,
  `total_keseluruhan` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`ID_Transaksi`, `ID_Barang`, `estimasi_jumlah`, `Unit`, `Harga`, `Total`, `total_keseluruhan`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, NULL, NULL, NULL, '20000.00', '2023-11-29 02:19:25', '2023-11-29 02:19:25'),
(2, 0, NULL, NULL, NULL, NULL, NULL, '2023-11-29 02:23:28', '2023-11-29 02:23:28'),
(3, 0, 124, 'Pcs', '10000.00', '1240000.00', '1240000.00', '2023-11-29 02:29:22', '2023-11-29 02:29:22'),
(4, 0, 100, 'Lembar', '10000.00', '1000000.00', '2000000.00', '2023-11-29 02:36:54', '2023-11-29 02:36:54'),
(5, 0, 123, 'Buah', '123.00', '15129.00', '15129.00', '2023-11-29 02:39:01', '2023-11-29 02:39:01'),
(6, 0, 12, 'Buah', '19556435.00', '234677216.00', '234677220.00', '2023-11-29 02:43:20', '2023-11-29 02:43:20'),
(7, 10, 1, 'Lembar', '213.00', '213.00', '213.00', '2023-11-29 02:49:50', '2023-11-29 02:49:50'),
(8, 11, 12, 'Pcs', '12323.00', '147876.00', '147876.00', '2023-11-29 03:11:44', '2023-11-29 03:11:44'),
(9, 12, 76, 'Pcs', '1000.00', '76000.00', '76000.00', '2023-11-30 00:26:08', '2023-11-30 00:26:08'),
(10, 13, 100, 'Lembar', '100000.00', '10000000.00', '10000000.00', '2023-11-30 00:36:25', '2023-11-30 00:36:25'),
(11, 16, 1, 'Pcs', '19200.00', '19200.00', '19200.00', '2023-11-30 01:18:21', '2023-11-30 01:18:21'),
(12, 17, 1, 'Set', '10000.00', '10000.00', '10000.00', '2023-11-30 01:19:36', '2023-11-30 01:19:36'),
(13, 18, 1, 'Lembar', '10000.00', '10000.00', '10000.00', '2023-11-30 01:22:58', '2023-11-30 01:22:58'),
(14, 19, 1, 'Lembar', '10000.00', '10000.00', '10000.00', '2023-11-30 01:22:58', '2023-11-30 01:22:58'),
(15, 20, 1, 'Pcs', '111.00', '111.00', '111.00', '2023-11-30 01:37:14', '2023-11-30 01:37:14'),
(16, 21, 1, 'Lembar', '111.00', '111.00', '111.00', '2023-11-30 01:37:14', '2023-11-30 01:37:14'),
(17, 22, 1, 'Pcs', '1000.00', '1000.00', NULL, '2023-11-30 01:52:17', '2023-11-30 01:52:17'),
(18, 23, 1, 'Lembar', '1000.00', '1000.00', NULL, '2023-11-30 01:52:17', '2023-11-30 01:52:17'),
(19, 24, 1, 'Pcs', '10000.00', '10000.00', '10000.00', '2023-11-30 01:53:22', '2023-11-30 01:53:22'),
(20, 25, 1, 'Pcs', '111.00', '111.00', '111.00', '2023-11-30 01:56:10', '2023-11-30 01:56:10'),
(21, 26, 1, 'Pcs', '10000.00', '10000.00', '10000.00', '2023-11-30 02:05:26', '2023-11-30 02:05:26'),
(22, 27, 1, 'Set', '10000.00', '10000.00', '10000.00', '2023-11-30 02:05:26', '2023-11-30 02:05:26'),
(23, 28, 1, 'Lembar', '10000.00', '10000.00', '10000.00', '2023-11-30 02:05:26', '2023-11-30 02:05:26'),
(24, 29, 1, 'Pcs', '1213.00', '1213.00', NULL, '2023-11-30 02:12:11', '2023-11-30 02:12:11'),
(25, 30, 1, 'Lembar', '11111.00', '11111.00', NULL, '2023-11-30 02:14:01', '2023-11-30 02:14:01'),
(26, 31, 1, 'Lembar', '1111.00', '1111.00', NULL, '2023-11-30 02:15:30', '2023-11-30 02:15:30'),
(27, 32, 1, 'Pcs', '111.00', '111.00', NULL, '2023-11-30 02:17:11', '2023-11-30 02:17:11'),
(28, 33, 1, 'Pcs', '213123.00', '213123.00', '213123.00', '2023-11-30 03:38:57', '2023-11-30 03:38:57'),
(29, 34, 1, 'Lembar', '11112.00', '11112.00', NULL, '2023-11-30 03:40:17', '2023-11-30 03:40:17'),
(30, 35, 1, 'Pcs', '1212.00', '1212.00', NULL, '2023-11-30 03:42:09', '2023-11-30 03:42:09'),
(31, 36, 1, 'Buah', '11123.00', '11123.00', '11123.00', '2023-11-30 03:43:12', '2023-11-30 03:43:12'),
(32, 37, 1, 'Pcs', '1.00', '1.00', NULL, '2023-11-30 03:47:38', '2023-11-30 03:47:38'),
(33, 38, 1, 'Lembar', '1000.00', '1000.00', NULL, '2023-11-30 19:00:58', '2023-11-30 19:00:58'),
(34, 39, 1, 'Pcs', '112.00', '112.00', NULL, '2023-11-30 19:08:07', '2023-11-30 19:08:07'),
(35, 40, 1, 'Pcs', '13.00', '13.00', NULL, '2023-11-30 19:09:49', '2023-11-30 19:09:49'),
(36, 41, 1, 'Pcs', '13.00', '13.00', NULL, '2023-11-30 19:10:23', '2023-11-30 19:10:23'),
(37, 42, 1, 'Pcs', '13.00', '13.00', NULL, '2023-11-30 19:10:50', '2023-11-30 19:10:50'),
(38, 43, 1, 'Pcs', '13.00', '13.00', NULL, '2023-11-30 19:10:57', '2023-11-30 19:10:57'),
(39, 44, 1, 'Pcs', '13.00', '13.00', NULL, '2023-11-30 19:11:33', '2023-11-30 19:11:33'),
(40, 45, 1, 'Pcs', '13.00', '13.00', NULL, '2023-11-30 19:12:20', '2023-11-30 19:12:20'),
(41, 46, 1, 'Pcs', '13.00', '13.00', NULL, '2023-11-30 19:12:27', '2023-11-30 19:12:27'),
(42, 47, 1, 'Pcs', '13.00', '13.00', NULL, '2023-11-30 19:12:35', '2023-11-30 19:12:35'),
(43, 48, 1, 'Pcs', '13.00', '13.00', NULL, '2023-11-30 19:13:27', '2023-11-30 19:13:27'),
(44, 49, 1, 'Pcs', '13.00', '13.00', NULL, '2023-11-30 19:14:10', '2023-11-30 19:14:10'),
(45, 50, 1, 'Pcs', '13.00', '13.00', NULL, '2023-11-30 19:19:32', '2023-11-30 19:19:32'),
(46, 51, 1, 'Pcs', '13.00', '13.00', NULL, '2023-11-30 19:24:11', '2023-11-30 19:24:11'),
(47, 52, 1, 'Pcs', '102.00', '102.00', NULL, '2023-12-01 00:26:18', '2023-12-01 00:26:18'),
(48, 53, 1, 'Pcs', '12.00', '12.00', NULL, '2023-12-01 00:28:47', '2023-12-01 00:28:47'),
(49, 54, 1, 'Pcs', '127.00', '127.00', NULL, '2023-12-01 00:38:51', '2023-12-01 00:38:51'),
(50, 55, 1, 'Pcs', '127.00', '127.00', NULL, '2023-12-01 00:42:05', '2023-12-01 00:42:05'),
(51, 56, 1, 'Pcs', '124.00', '124.00', NULL, '2023-12-01 00:43:06', '2023-12-01 00:43:06'),
(52, 57, 1, 'Pcs', '124.00', '124.00', NULL, '2023-12-01 00:43:51', '2023-12-01 00:43:51'),
(53, 58, 1, 'Pcs', '124.00', '124.00', NULL, '2023-12-01 00:44:30', '2023-12-01 00:44:30'),
(54, 59, 1, 'Pcs', '124.00', '124.00', NULL, '2023-12-01 00:52:40', '2023-12-01 00:52:40'),
(55, 60, 1, 'Pcs', '124.00', '124.00', NULL, '2023-12-01 00:59:20', '2023-12-01 00:59:20'),
(56, 61, 1, 'Pcs', '1242.00', '1242.00', NULL, '2023-12-01 01:36:59', '2023-12-01 01:36:59'),
(57, 62, 1, 'Pcs', '1242.00', '1242.00', NULL, '2023-12-01 01:37:18', '2023-12-01 01:37:18'),
(58, 63, 1, 'Lembar', '1.00', '1.00', NULL, '2023-12-01 02:45:30', '2023-12-01 02:45:30'),
(59, 64, 1, 'Pcs', '1.00', '1.00', NULL, '2023-12-01 02:48:51', '2023-12-01 02:48:51'),
(60, 65, 12, 'Lembar', '12.00', '144.00', NULL, '2023-12-01 02:50:02', '2023-12-01 02:50:02'),
(61, 66, 1, 'Lembar', '245.00', '245.00', NULL, '2023-12-01 02:51:26', '2023-12-01 02:51:26'),
(62, 67, 1, 'Set', '98.00', '98.00', NULL, '2023-12-01 02:52:28', '2023-12-01 02:52:28'),
(63, 68, 1, 'Pcs', '124.00', '124.00', NULL, '2023-12-01 02:53:56', '2023-12-01 02:53:56'),
(64, 69, 1, 'Set', '235.00', '235.00', NULL, '2023-12-01 02:55:22', '2023-12-01 02:55:22'),
(65, 70, 1, 'Lembar', '642.00', '642.00', NULL, '2023-12-01 02:59:14', '2023-12-01 02:59:14'),
(66, 71, 1, 'Lembar', '234.00', '234.00', NULL, '2023-12-01 03:00:53', '2023-12-01 03:00:53'),
(67, 72, 1, 'Pcs', '3434.00', '3434.00', NULL, '2023-12-01 03:02:35', '2023-12-01 03:02:35'),
(68, 73, 1, 'Set', '4342.00', '4342.00', NULL, '2023-12-01 03:06:28', '2023-12-01 03:06:28'),
(69, 74, 12, 'Lembar', '13.00', '156.00', NULL, '2023-12-01 03:08:28', '2023-12-01 03:08:28'),
(70, 75, 1, 'Lembar', '2345.00', '2345.00', NULL, '2023-12-01 03:14:33', '2023-12-01 03:14:33'),
(71, 76, 1, 'Lembar', '234.00', '234.00', NULL, '2023-12-01 03:17:25', '2023-12-01 03:17:25'),
(72, 77, 12, 'Lembar', '123.00', '1476.00', NULL, '2023-12-01 03:19:37', '2023-12-01 03:19:37'),
(73, 78, 121, 'Lembar', '23.00', '2783.00', NULL, '2023-12-01 03:21:30', '2023-12-01 03:21:30'),
(74, 79, 13, 'Set', '145.00', '1885.00', NULL, '2023-12-01 03:21:30', '2023-12-01 03:21:30'),
(75, 80, 12, 'Pcs', '123.00', '1476.00', NULL, '2023-12-01 03:25:13', '2023-12-01 03:25:13'),
(76, 81, 424, 'Set', '312.00', '132288.00', NULL, '2023-12-01 03:25:13', '2023-12-01 03:25:13'),
(77, 82, 12, 'Lembar', '12.00', '144.00', NULL, '2023-12-01 03:27:43', '2023-12-01 03:27:43'),
(78, 83, 1, 'Buah', '21.00', '21.00', NULL, '2023-12-01 03:27:43', '2023-12-01 03:27:43'),
(79, 84, 12, 'Pcs', '12.00', '144.00', NULL, '2023-12-01 03:35:08', '2023-12-01 03:35:08'),
(80, 85, 12, 'Pcs', '1234.00', '14808.00', NULL, '2023-12-01 03:35:08', '2023-12-01 03:35:08'),
(81, 86, 1, 'Lembar', '12.00', '12.00', NULL, '2023-12-01 03:48:19', '2023-12-01 03:48:19'),
(82, 87, 12, 'Pcs', '12.00', '144.00', NULL, '2023-12-01 03:48:19', '2023-12-01 03:48:19'),
(83, 88, 12, 'Lembar', '12.00', '144.00', NULL, '2023-12-01 04:14:49', '2023-12-01 04:14:49'),
(84, 89, 12, 'Buah', '12.00', '144.00', NULL, '2023-12-01 04:14:49', '2023-12-01 04:14:49'),
(85, 90, 1, 'Pcs', '1.00', '1.00', NULL, '2023-12-01 04:16:47', '2023-12-01 04:16:47'),
(86, 91, 1, 'Lembar', '1.00', '1.00', NULL, '2023-12-01 04:16:47', '2023-12-01 04:16:47'),
(87, 92, 1, 'Pcs', '1.00', '1.00', NULL, '2023-12-01 04:17:10', '2023-12-01 04:17:10'),
(88, 93, 1, 'Lembar', '1.00', '1.00', NULL, '2023-12-01 04:17:10', '2023-12-01 04:17:10'),
(89, 94, 12, 'Pcs', '12.00', '144.00', NULL, '2023-12-01 04:20:20', '2023-12-01 04:20:20'),
(90, 95, 1, 'Buah', '1.00', '1.00', NULL, '2023-12-01 04:20:20', '2023-12-01 04:20:20'),
(91, 96, 1, 'Set', '1.00', '1.00', NULL, '2023-12-01 04:21:20', '2023-12-01 04:21:20'),
(92, 97, 1, 'Lembar', '1.00', '1.00', NULL, '2023-12-01 04:21:20', '2023-12-01 04:21:20'),
(93, 98, 12, 'Pcs', '1.00', '12.00', NULL, '2023-12-01 04:23:39', '2023-12-01 04:23:39'),
(94, 99, 1, 'Lembar', '1.00', '1.00', NULL, '2023-12-01 04:23:39', '2023-12-01 04:23:39'),
(95, 100, 1, 'Pcs', '1.00', '1.00', NULL, '2023-12-01 04:24:46', '2023-12-01 04:24:46'),
(96, 101, 1, 'Set', '1.00', '1.00', NULL, '2023-12-01 04:24:46', '2023-12-01 04:24:46'),
(97, 102, 1, 'Set', '1.00', '1.00', NULL, '2023-12-01 04:26:49', '2023-12-01 04:26:49'),
(98, 103, 1, 'Buah', '23.00', '23.00', NULL, '2023-12-01 04:26:49', '2023-12-01 04:26:49'),
(99, 104, 1, 'Pcs', '12.00', '12.00', NULL, '2023-12-03 21:03:26', '2023-12-03 21:03:26'),
(100, 105, 32, 'Set', '2.00', '64.00', NULL, '2023-12-03 21:03:26', '2023-12-03 21:03:26'),
(101, 106, 1, 'Pcs', '12.00', '12.00', NULL, '2023-12-03 21:03:39', '2023-12-03 21:03:39'),
(102, 107, 32, 'Set', '2.00', '64.00', NULL, '2023-12-03 21:03:39', '2023-12-03 21:03:39'),
(103, 108, 1, 'Lembar', '1.00', '1.00', NULL, '2023-12-03 21:08:12', '2023-12-03 21:08:12'),
(104, 109, 1, 'Pcs', '1.00', '1.00', NULL, '2023-12-03 21:08:12', '2023-12-03 21:08:12'),
(105, 110, 1, 'Pcs', '1.00', '1.00', NULL, '2023-12-03 21:08:12', '2023-12-03 21:08:12'),
(106, 111, 1, 'Pcs', '1.00', '1.00', NULL, '2023-12-03 21:11:26', '2023-12-03 21:11:26'),
(107, 112, 1, 'Buah', '1.00', '1.00', NULL, '2023-12-03 21:11:26', '2023-12-03 21:11:26'),
(108, 113, 1, 'Lembar', '1.00', '1.00', NULL, '2023-12-03 21:15:33', '2023-12-03 21:15:33'),
(109, 114, 1, 'Lembar', '1.00', '1.00', NULL, '2023-12-03 21:15:33', '2023-12-03 21:15:33'),
(110, 115, 1, 'Buah', '1.00', '1.00', NULL, '2023-12-03 21:15:33', '2023-12-03 21:15:33'),
(111, 116, 1, 'Pcs', '123.00', '123.00', NULL, '2023-12-03 21:26:49', '2023-12-03 21:26:49'),
(112, 117, 1, 'Lembar', '1.00', '1.00', NULL, '2023-12-06 02:11:32', '2023-12-06 02:11:32'),
(113, 118, 1, 'Buah', '1.00', '1.00', NULL, '2023-12-06 02:24:05', '2023-12-06 02:24:05'),
(114, 119, 124, 'Pcs', '1313.00', '162812.00', NULL, '2023-12-06 02:32:05', '2023-12-06 02:32:05'),
(115, 120, 2, 'Set', '3000000.00', '6000000.00', NULL, '2023-12-06 03:41:07', '2023-12-06 03:41:07'),
(116, 121, 1, 'Pcs', '1000000.00', '1000000.00', NULL, '2023-12-06 03:41:07', '2023-12-06 03:41:07'),
(117, 122, 6, 'Set', '3000000.00', '18000000.00', NULL, '2023-12-14 07:09:26', '2023-12-14 07:09:26'),
(118, 123, 3, 'Buah', '1500000.00', '4500000.00', NULL, '2023-12-14 07:09:26', '2023-12-14 07:09:26'),
(119, 124, 12, 'Set', '300000.00', '3600000.00', NULL, '2023-12-14 07:09:26', '2023-12-14 07:09:26'),
(120, 125, 12, 'Lembar', '1212.00', '14544.00', NULL, '2023-12-18 21:19:40', '2023-12-18 21:19:40'),
(121, 126, 12, 'Buah', '1500000.00', '18000000.00', NULL, '2023-12-18 21:29:06', '2023-12-18 21:29:06'),
(122, 127, 8, 'Buah', '12000000.00', '96000000.00', NULL, '2023-12-18 21:29:06', '2023-12-18 21:29:06'),
(123, 128, 14, 'Buah', '170000.00', '2380000.00', NULL, '2023-12-18 22:56:25', '2023-12-18 22:56:25'),
(124, 129, 12, 'Buah', '100000.00', '1200000.00', NULL, '2023-12-18 23:06:04', '2023-12-18 23:06:04'),
(125, 130, 15, 'Buah', '2500000.00', '37500000.00', NULL, '2023-12-19 02:43:44', '2023-12-19 02:43:44'),
(126, 131, 10, 'Pcs', '3000000.00', '30000000.00', NULL, '2023-12-19 18:46:03', '2023-12-19 18:46:03'),
(127, 132, 20, 'Pcs', '3000000.00', '60000000.00', NULL, '2023-12-19 18:46:03', '2023-12-19 18:46:03'),
(128, 133, 10, 'Pcs', '3000000.00', '30000000.00', NULL, '2023-12-19 18:49:04', '2023-12-19 18:49:04'),
(129, 134, 12, 'Buah', '1200000.00', '14400000.00', NULL, '2023-12-19 18:51:03', '2023-12-19 18:51:03'),
(146, 153, 156, 'Buah', '3000000.00', '468000000.00', NULL, '2023-12-25 11:40:46', '2023-12-25 11:40:46'),
(147, 154, 145, 'Buah', '100000.00', '14500000.00', NULL, '2023-12-25 11:40:46', '2023-12-25 11:40:46'),
(149, 156, 12, 'Buah', '352000000.00', '4224000000.00', NULL, '2023-12-26 19:52:15', '2023-12-26 19:52:15'),
(160, 167, 24, 'Buah', '6000.00', '144000.00', NULL, '2023-12-27 01:52:44', '2023-12-27 01:52:44'),
(161, 168, 36, 'Buah', '12000.00', '432000.00', NULL, '2023-12-27 01:52:44', '2023-12-27 01:52:44'),
(162, 169, 7, 'Buah', '140000.00', '980000.00', NULL, '2023-12-27 01:58:47', '2023-12-27 01:58:47'),
(163, 170, 9, 'Buah', '150000.00', '1350000.00', NULL, '2023-12-27 01:58:47', '2023-12-27 01:58:47'),
(166, 173, 6, 'Buah', '20000.00', '120000.00', NULL, '2023-12-28 01:35:20', '2023-12-28 01:35:20'),
(167, 174, 12, 'Buah', '123320.00', '1479840.00', NULL, '2023-12-28 01:35:20', '2023-12-28 01:35:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_role` bigint(20) UNSIGNED NOT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `id_divisi` bigint(20) UNSIGNED DEFAULT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `id_role`, `approved`, `id_divisi`, `jabatan`) VALUES
(1, 'Mangang MCTN', 'mangangmctn@gmail.com', '2023-10-26 21:35:05', '0', 'ZQtvfJekBuNRD8fMD0f542GoqHrMuLNsJVModLqinCw4qgslFbzxn0D1WdUQ', '2023-10-26 21:35:05', '2023-10-26 21:35:05', 3, 0, 5, 'Direktur Utama'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$ls29EHWUrTww8e3ZQn.cS.661TI8yASlOhxQ4p/h81C2x23EGIP52', NULL, '2023-10-30 21:40:53', '2023-10-30 21:40:53', 3, 0, 5, 'Direktur Utama'),
(3, 'adminuser', 'adminuser@gmail.com', NULL, '$2y$10$wSG54EFry6vlB.GqZCUM/OfchfAReN8PBzGqF6.3cwdrX3kYl3/Pa', NULL, '2023-11-02 20:01:33', '2023-11-02 20:01:33', 2, 0, 4, 'Staff User'),
(4, 'pejabat user tingkat 1', 'pejabatuser1@gmail.com', NULL, '$2y$10$vk6EnEv0g8mvVZYcdWpZjuQz2PXpnItukuIDnbM/eItHcQSztshAC', NULL, '2023-12-04 19:34:29', '2023-12-04 19:34:29', 5, NULL, 1, 'Direktur Utama'),
(5, 'pejabat user tingkat 2', 'pejabatuser2@gmail.com', NULL, '$2y$10$quFVqeYeFmU1t6Lz5ooIA.6UvuUsprw.9Uw/7CUn/wMgpHPOvjay2', NULL, '2023-12-04 19:35:06', '2023-12-04 19:35:06', 5, NULL, 2, 'Direktorat SDM'),
(6, 'pejabat user tingkat 3', 'pejabatuser3@gmail.com', NULL, '$2y$10$cEBkzhYmpcw/GUY7C4WfAuTJ06ZDuLbVcFhkdYIIHR9i6w1RLfirS', NULL, '2023-12-04 19:35:27', '2023-12-04 19:35:27', 5, NULL, 3, 'Kadiv Operasi'),
(7, 'pejabatrendan', 'pejabatrendan@gmail.com', NULL, '$2y$10$zzYq0kQHxO36TlZoVa3dc.cph7ktupzjCLMTGuJqbec2zOdE9u5Gm', NULL, '2023-12-13 00:29:45', '2023-12-13 00:29:45', 6, NULL, 5, 'Direktorat SDM'),
(8, 'adminrendan', 'adminrendan@gmail.com', NULL, '$2y$10$qeGZKRzYk9MB0/s9Y2WfJeJy0wVDrB174UTF5wMsoLjs/45mw4Djm', NULL, '2023-12-13 21:33:46', '2023-12-13 21:33:46', 3, NULL, 5, 'Direktorat SDM'),
(9, 'adminrendan2', 'adminrendan2@gmail.com', NULL, '$2y$10$bfzphWqhBoa7.CHjoJlavOhiW5iUFkBbjX7vmD8hC1K/8mV.pNWPS', NULL, '2023-12-14 01:34:25', '2023-12-14 01:34:25', 3, NULL, 5, 'Kadiv SDM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendor`
--

CREATE TABLE `vendor` (
  `ID_Vendor` bigint(20) NOT NULL,
  `id_role` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `email_perusahaan` varchar(255) NOT NULL,
  `alamat_perusahaan` varchar(255) NOT NULL,
  `no_telepon_perusahaan` int(11) NOT NULL,
  `id_signatures` bigint(20) UNSIGNED DEFAULT NULL,
  `approved` tinyint(1) NOT NULL,
  `perwakilan_daftar` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `vendor`
--

INSERT INTO `vendor` (`ID_Vendor`, `id_role`, `password`, `nama_perusahaan`, `email_perusahaan`, `alamat_perusahaan`, `no_telepon_perusahaan`, `id_signatures`, `approved`, `perwakilan_daftar`, `created_at`, `updated_at`) VALUES
(1, 8, '$2y$10$zfJgXAkotXcozBmCUhz9b.fFwLeBa0Rw39bOC1hOmOwcoj9Pz/afm', 'mctn', 'mctn@gmail.com', 'hwa tower', 21456789, NULL, 1, 1, '2023-11-20 00:25:34', '2023-11-27 00:57:12'),
(2, 8, '$2y$10$07PNegIkLF.qbWgTnUz0yuPQd0iyA9ST8i1lls00qU4UsPjgcebYi', 'admin123', 'admin123@gmail.com', 'admin123', 123, NULL, 0, 0, '2023-11-20 00:31:04', '2023-11-23 20:55:38'),
(3, 8, '$2y$10$HHU9GM8LHGtEu5u7AjUxEeKSRGmTUKlo13n69WgcFh/5lqmxBf8YS', 'mctn', 'obi@gmail.com', 'hwa tower', 21, NULL, 0, 0, '2023-11-23 01:49:25', '2023-11-23 20:55:38'),
(4, 8, '$2y$10$Vy.Km61QhHgNyFglG8ANjuCQ6w37nCf8rEBspk76wgQ65Dwte5etq', 'mctn', 'bhara@gmail.com', 'hwa', 1230, NULL, 0, 0, '2023-11-23 21:33:40', '2023-11-23 21:33:40'),
(6, 1, '$2y$10$MVCWd67aLS0rz6VAfg3Efu9AJOFgeJ20jiBkAHi2Obog60.L1W.mC', 'administrator', 'administrator@gmail.com', 'administrator', 213456789, NULL, 1, 1, '2023-11-24 04:09:41', '2023-11-27 04:37:08'),
(9, 8, '$2y$10$jy6osEPHterj/M.IVXSA7.MPIQp.grIp8BKFwL493DGD5SngoRuUy', 'naufal', 'naufal@gmail.com', 'nau', 12345678, NULL, 1, 0, '2023-11-26 19:26:29', '2023-12-19 09:34:43'),
(10, 8, '$2y$10$xOGwxX7Hl2orQtSWPJCUbONnlsepBS7ADsSrapbqDrG0Np3bxisAW', 'rifqi', 'rifqi@gmail.com', 'rif', 123, NULL, 1, 1, '2023-11-26 21:27:44', '2023-11-26 21:32:10'),
(12, 8, '$2y$10$W9h11gjJ.1WxpBtdnAG0Cuj9CLtOFnV3nSV0StztjQQYvr/eizhYi', 'hwa', 'hwa@gmail.com', 'ciputat', 2145678, NULL, 1, 1, '2023-12-19 09:52:15', '2023-12-19 10:40:33'),
(13, 8, '$2y$10$ni8EDu9k00I7G88tFu5fx.QmGtYfhD1qkXNYIOv9aCeCWQFgY72OW', 'mctnpln', 'mctnpln@gmail.com', 'ciputat', 21345678, NULL, 1, 1, '2023-12-19 20:01:00', '2023-12-19 20:05:32');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nama_tabel_kualifikasi`
--
ALTER TABLE `nama_tabel_kualifikasi`
  ADD PRIMARY KEY (`ID_Kualifikasi`);

--
-- Indeks untuk tabel `pengadaan_scm`
--
ALTER TABLE `pengadaan_scm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengadaan_scm_id_user_foreign` (`id_user`),
  ADD KEY `ID_Pengadaan` (`pengadaan_ID_Pengadaan`),
  ADD KEY `ID_Vendor` (`ID_Vendor`),
  ADD KEY `id_status` (`id_status`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeks untuk tabel `signatures`
--
ALTER TABLE `signatures`
  ADD PRIMARY KEY (`id_signatures`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `signatures-vendor`
--
ALTER TABLE `signatures-vendor`
  ADD PRIMARY KEY (`id_signatures`),
  ADD KEY `ID_Vendor` (`ID_Vendor`),
  ADD KEY `ID_Peserta` (`ID_Peserta`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `tabel_anggaran`
--
ALTER TABLE `tabel_anggaran`
  ADD PRIMARY KEY (`ID_Anggaran`),
  ADD KEY `Nomor_PRK` (`Nomor_PRK`);

--
-- Indeks untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`ID_Barang`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`);

--
-- Indeks untuk tabel `tabel_barang_rab`
--
ALTER TABLE `tabel_barang_rab`
  ADD PRIMARY KEY (`ID_Barang_Rab`),
  ADD KEY `ID_RAB` (`ID_RAB`),
  ADD KEY `ID_Barang` (`ID_Barang`);

--
-- Indeks untuk tabel `tabel_divisi`
--
ALTER TABLE `tabel_divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indeks untuk tabel `tabel_dokumen_kualifikasi`
--
ALTER TABLE `tabel_dokumen_kualifikasi`
  ADD PRIMARY KEY (`ID_Dokumen_Kualifikasi`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`);

--
-- Indeks untuk tabel `tabel_hpe`
--
ALTER TABLE `tabel_hpe`
  ADD PRIMARY KEY (`ID_HPE`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `ID_Sumber_Referensi` (`ID_Sumber_Referensi`);

--
-- Indeks untuk tabel `tabel_jenis_pengadaan`
--
ALTER TABLE `tabel_jenis_pengadaan`
  ADD PRIMARY KEY (`ID_Jenis_Pengadaan`);

--
-- Indeks untuk tabel `tabel_justifikasi_penunjukkan_langsung`
--
ALTER TABLE `tabel_justifikasi_penunjukkan_langsung`
  ADD PRIMARY KEY (`ID_JPL`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`) USING BTREE,
  ADD KEY `ID_Kriteria` (`ID_Kriteria`);

--
-- Indeks untuk tabel `tabel_klasifikasi_baku`
--
ALTER TABLE `tabel_klasifikasi_baku`
  ADD PRIMARY KEY (`ID_Klasifikasi`);

--
-- Indeks untuk tabel `tabel_kota`
--
ALTER TABLE `tabel_kota`
  ADD PRIMARY KEY (`ID_Kota`);

--
-- Indeks untuk tabel `tabel_kriteria`
--
ALTER TABLE `tabel_kriteria`
  ADD PRIMARY KEY (`ID_Kriteria`);

--
-- Indeks untuk tabel `tabel_metode_penawaran`
--
ALTER TABLE `tabel_metode_penawaran`
  ADD PRIMARY KEY (`ID_Metode_Penawaran`);

--
-- Indeks untuk tabel `tabel_metode_pengadaan`
--
ALTER TABLE `tabel_metode_pengadaan`
  ADD PRIMARY KEY (`ID_Metode_Pengadaan`);

--
-- Indeks untuk tabel `tabel_nota_dinas_user`
--
ALTER TABLE `tabel_nota_dinas_user`
  ADD PRIMARY KEY (`id_nota_dinas_permintaan`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`) USING BTREE,
  ADD KEY `ID_Kota` (`ID_Kota`) USING BTREE;

--
-- Indeks untuk tabel `tabel_pengadaan`
--
ALTER TABLE `tabel_pengadaan`
  ADD PRIMARY KEY (`ID_Pengadaan`),
  ADD KEY `ID_Metode_Pengadaan` (`ID_Metode_Pengadaan`),
  ADD KEY `ID_Sistem_Evaluasi_Penawaran` (`ID_Sistem_Evaluasi_Penawaran`),
  ADD KEY `ID_Jenis_Pengadaan` (`ID_Jenis_Pengadaan`) USING BTREE,
  ADD KEY `id_status` (`id_status`) USING BTREE,
  ADD KEY `id_status_rab` (`id_status_rab`),
  ADD KEY `id_status_justifikasi` (`id_status_justifikasi`),
  ADD KEY `id_status_nota_dinas_permintaan` (`id_status_nota_dinas_permintaan`),
  ADD KEY `id_status_nota_dinas_pelaksanaan` (`id_status_nota_dinas_pelaksanaan`),
  ADD KEY `ID_Sumber_Anggaran` (`ID_Sumber_Anggaran`),
  ADD KEY `id_admin_rendan` (`id_admin_rendan`),
  ADD KEY `id_pejabat_user_tingkat_3` (`id_pejabat_user_tingkat_3`),
  ADD KEY `id_pejabat_user_tingkat_2` (`id_pejabat_user_tingkat_2`),
  ADD KEY `id_pejabat_user_tingkat_1` (`id_pejabat_user_tingkat_1`),
  ADD KEY `id_status_hpe` (`id_status_hpe`),
  ADD KEY `id_status_rks` (`id_status_rks`),
  ADD KEY `id_status_ringkasan_rks` (`id_status_ringkasan_rks`),
  ADD KEY `id_status_dokumen_kualifikasi` (`id_status_dokumen_kualifikasi`);

--
-- Indeks untuk tabel `tabel_peserta`
--
ALTER TABLE `tabel_peserta`
  ADD PRIMARY KEY (`ID_Peserta`) USING BTREE,
  ADD UNIQUE KEY `id_signatures` (`id_signatures`),
  ADD KEY `ID_Vendor` (`ID_Vendor`) USING BTREE;

--
-- Indeks untuk tabel `tabel_rencana_anggaran_biaya`
--
ALTER TABLE `tabel_rencana_anggaran_biaya`
  ADD PRIMARY KEY (`ID_RAB`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`) USING BTREE,
  ADD KEY `ID_Barang` (`ID_Barang`) USING BTREE,
  ADD KEY `ID_Kota` (`ID_Kota`) USING BTREE;

--
-- Indeks untuk tabel `tabel_ringkasan_rks`
--
ALTER TABLE `tabel_ringkasan_rks`
  ADD PRIMARY KEY (`ID_Ringkasan_Rks`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Metode_Pengadaan` (`ID_Metode_Pengadaan`),
  ADD KEY `ID_Metode_Penawaran` (`ID_Metode_Penawaran`),
  ADD KEY `ID_Metode_Evaluasi_Penawaran` (`ID_Metode_Evaluasi_Penawaran`),
  ADD KEY `ID_Klasifikasi` (`ID_Klasifikasi`);

--
-- Indeks untuk tabel `tabel_sistem_evaluasi_penawaran`
--
ALTER TABLE `tabel_sistem_evaluasi_penawaran`
  ADD PRIMARY KEY (`ID_Metode_Evaluasi_Penawaran`);

--
-- Indeks untuk tabel `tabel_sumber_anggaran`
--
ALTER TABLE `tabel_sumber_anggaran`
  ADD PRIMARY KEY (`ID_Sumber_Anggaran`);

--
-- Indeks untuk tabel `tabel_sumber_referensi`
--
ALTER TABLE `tabel_sumber_referensi`
  ADD PRIMARY KEY (`ID_Sumber_Referensi`);

--
-- Indeks untuk tabel `tabel_tahapan`
--
ALTER TABLE `tabel_tahapan`
  ADD PRIMARY KEY (`ID_Tahapan`);

--
-- Indeks untuk tabel `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`ID_Transaksi`),
  ADD KEY `ID_Barang` (`ID_Barang`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_role_foreign` (`id_role`),
  ADD KEY `id_divisi` (`id_divisi`);

--
-- Indeks untuk tabel `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`ID_Vendor`),
  ADD UNIQUE KEY `id_signatures` (`id_signatures`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengadaan_scm`
--
ALTER TABLE `pengadaan_scm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id_role` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `signatures`
--
ALTER TABLE `signatures`
  MODIFY `id_signatures` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `signatures-vendor`
--
ALTER TABLE `signatures-vendor`
  MODIFY `id_signatures` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id_status` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tabel_anggaran`
--
ALTER TABLE `tabel_anggaran`
  MODIFY `ID_Anggaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  MODIFY `ID_Barang` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT untuk tabel `tabel_barang_rab`
--
ALTER TABLE `tabel_barang_rab`
  MODIFY `ID_Barang_Rab` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT untuk tabel `tabel_divisi`
--
ALTER TABLE `tabel_divisi`
  MODIFY `id_divisi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tabel_dokumen_kualifikasi`
--
ALTER TABLE `tabel_dokumen_kualifikasi`
  MODIFY `ID_Dokumen_Kualifikasi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tabel_hpe`
--
ALTER TABLE `tabel_hpe`
  MODIFY `ID_HPE` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tabel_jenis_pengadaan`
--
ALTER TABLE `tabel_jenis_pengadaan`
  MODIFY `ID_Jenis_Pengadaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tabel_justifikasi_penunjukkan_langsung`
--
ALTER TABLE `tabel_justifikasi_penunjukkan_langsung`
  MODIFY `ID_JPL` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tabel_klasifikasi_baku`
--
ALTER TABLE `tabel_klasifikasi_baku`
  MODIFY `ID_Klasifikasi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tabel_kota`
--
ALTER TABLE `tabel_kota`
  MODIFY `ID_Kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tabel_kriteria`
--
ALTER TABLE `tabel_kriteria`
  MODIFY `ID_Kriteria` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `tabel_metode_penawaran`
--
ALTER TABLE `tabel_metode_penawaran`
  MODIFY `ID_Metode_Penawaran` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tabel_metode_pengadaan`
--
ALTER TABLE `tabel_metode_pengadaan`
  MODIFY `ID_Metode_Pengadaan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tabel_nota_dinas_user`
--
ALTER TABLE `tabel_nota_dinas_user`
  MODIFY `id_nota_dinas_permintaan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tabel_pengadaan`
--
ALTER TABLE `tabel_pengadaan`
  MODIFY `ID_Pengadaan` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `tabel_peserta`
--
ALTER TABLE `tabel_peserta`
  MODIFY `ID_Peserta` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tabel_rencana_anggaran_biaya`
--
ALTER TABLE `tabel_rencana_anggaran_biaya`
  MODIFY `ID_RAB` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `tabel_ringkasan_rks`
--
ALTER TABLE `tabel_ringkasan_rks`
  MODIFY `ID_Ringkasan_Rks` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tabel_sistem_evaluasi_penawaran`
--
ALTER TABLE `tabel_sistem_evaluasi_penawaran`
  MODIFY `ID_Metode_Evaluasi_Penawaran` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tabel_sumber_anggaran`
--
ALTER TABLE `tabel_sumber_anggaran`
  MODIFY `ID_Sumber_Anggaran` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tabel_sumber_referensi`
--
ALTER TABLE `tabel_sumber_referensi`
  MODIFY `ID_Sumber_Referensi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  MODIFY `ID_Transaksi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `vendor`
--
ALTER TABLE `vendor`
  MODIFY `ID_Vendor` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
