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
-- Database: `scms`
--

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
-- Struktur dari tabel `tabel_ahli_subjek_teknis`
--

CREATE TABLE `tabel_ahli_subjek_teknis` (
  `ID_Ahli_Subjek_Teknis` int(11) NOT NULL,
  `Nama_Ahli_Subjek_Teknis` varchar(255) DEFAULT NULL,
  `Jabatan_Ahli_Subjek_Teknis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_anggaran`
--

CREATE TABLE `tabel_anggaran` (
  `Nomor_PRK` int(11) NOT NULL,
  `Cost_Center` varchar(255) DEFAULT NULL,
  `Pagu_Anggaran` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_barang`
--

CREATE TABLE `tabel_barang` (
  `ID_Barang` int(11) NOT NULL,
  `Nama_Barang` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `ID_Transaksi` int(11) DEFAULT NULL,
  `Deskripsi` text DEFAULT NULL,
  `Keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_ba_gagal_pemasukkan_dokumen`
--

CREATE TABLE `tabel_ba_gagal_pemasukkan_dokumen` (
  `Nomor_BA_Gagal_Pemasukkan_Dokumen` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Hari` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `Tahap_Pemasukkan_Dokumen_Penawaran` text DEFAULT NULL,
  `Alasan_Tender_Gagal` text DEFAULT NULL,
  `ID_Pegawai` int(11) DEFAULT NULL,
  `ID_Rincian_BA_Gagal` int(11) DEFAULT NULL,
  `ID_Perwakilan_Peserta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_ba_pengadaan_gagal`
--

CREATE TABLE `tabel_ba_pengadaan_gagal` (
  `Nomor_Berita_Acara_Pengadaan_Gagal` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat` int(11) DEFAULT NULL,
  `Persyaratan_Masa_Berlaku_Penawaran` date DEFAULT NULL,
  `ID_HPS` int(11) DEFAULT NULL,
  `Nomor_DRP` varchar(255) DEFAULT NULL,
  `Nomor_Pengumuman_Tender` int(11) DEFAULT NULL,
  `ID_Pendaftaran` int(11) DEFAULT NULL,
  `No_RKS` int(11) DEFAULT NULL,
  `ID_Gagal_Proses_Daftar` int(11) DEFAULT NULL,
  `ID_Gagal_Evaluasi_Administrasi` int(11) DEFAULT NULL,
  `ID_Gagal_Proses_Negosiasi` int(11) DEFAULT NULL,
  `Media` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_berita_acara_evaluasi_teknis`
--

CREATE TABLE `tabel_berita_acara_evaluasi_teknis` (
  `Nomor_Berita_Acara_Evaluasi_Teknis` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `No_RKS` int(11) DEFAULT NULL,
  `ID_Evaluasi` int(11) DEFAULT NULL,
  `Nomor_Berita_Acara_Rapat_Penjelasan` int(11) DEFAULT NULL,
  `ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat` int(11) DEFAULT NULL,
  `Catatan_Tambahan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_berita_acara_hasil_pengadaan`
--

CREATE TABLE `tabel_berita_acara_hasil_pengadaan` (
  `Nomor_Berita_Acara_Hasil_Pengadaan` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `No_RKS` int(11) DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `ID_Ringkasan_Rapat_Penjelasan` int(11) DEFAULT NULL,
  `Nomor_Berita_Acara_Pembukaan_Penawaran` int(11) DEFAULT NULL,
  `ID_Ringkasan_Peserta_Memasukkan_Dokumen_Penawaran` int(11) DEFAULT NULL,
  `Nomor_Berita_Acara_Rapat_Penjelasan` int(11) DEFAULT NULL,
  `ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat` int(11) DEFAULT NULL,
  `ID_Tata_Waktu` int(11) DEFAULT NULL,
  `ID_Hasil_Penilaian_Evaluasi` int(11) DEFAULT NULL,
  `ID_Calon_Pemenang` int(11) DEFAULT NULL,
  `ID_Hasil_Evaluasi_Komersial` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_berita_acara_klarifikasi_negosiasi`
--

CREATE TABLE `tabel_berita_acara_klarifikasi_negosiasi` (
  `Nomor_Berita_Acara_Klarifikasi_Negosiasi` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `No_RKS` int(11) DEFAULT NULL,
  `Tanggal_Rapat` date DEFAULT NULL,
  `Waktu_Rapat` time DEFAULT NULL,
  `Lokasi_Rapat` text DEFAULT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `Perihal` text DEFAULT NULL,
  `Agenda` text DEFAULT NULL,
  `ID_Pembahasan_BA_Klarifikasi_Negosiasi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_berita_acara_pembukaan_penawaran`
--

CREATE TABLE `tabel_berita_acara_pembukaan_penawaran` (
  `Nomor_Berita_Acara_Pembukaan_Penawaran` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `No_RKS` int(11) DEFAULT NULL,
  `ID_Ruang_Lingkup` int(11) DEFAULT NULL,
  `Waktu_Pembukaan_Sampul` time DEFAULT NULL,
  `Tambahan_Catatan` text DEFAULT NULL,
  `ID_Hasil_Pembukaan_Dokumen_Penawaran` int(11) DEFAULT NULL,
  `ID_Tabel_Kelengkapan_Dokumen` int(11) DEFAULT NULL,
  `ID_Tipe_Sampul` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_berita_acara_rapat_penjelasan`
--

CREATE TABLE `tabel_berita_acara_rapat_penjelasan` (
  `Nomor_Berita_Acara_Rapat_Penjelasan` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Tanggal_Rapat_Penjelasan` date DEFAULT NULL,
  `Waktu_Rapat_Penjelasan` time DEFAULT NULL,
  `Tempat_Rapat_Penjelasan` varchar(255) DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `ID_Peninjauan_Lapangan` int(11) DEFAULT NULL,
  `ID_Penutupan_Penyerahan` int(11) DEFAULT NULL,
  `ID_Perwakilan_Peserta` int(11) DEFAULT NULL,
  `ID_Pegawai` int(11) DEFAULT NULL,
  `ID_Ahli_Subjek_Teknis` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_calon_pemenang`
--

CREATE TABLE `tabel_calon_pemenang` (
  `ID_Calon_Pemenang` int(11) NOT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `ID_Komitmen_TKDN` int(11) DEFAULT NULL,
  `Jangka_Waktu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_calon_peserta_shortlist_dpt`
--

CREATE TABLE `tabel_calon_peserta_shortlist_dpt` (
  `ID_Calon_Peserta` int(11) NOT NULL,
  `Nama_Calon_Peserta_Barang_Jasa` varchar(255) DEFAULT NULL,
  `Alamat_Calon_Peserta_Barang_Jasa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_catatan_uraian_bahp`
--

CREATE TABLE `tabel_catatan_uraian_bahp` (
  `ID_Catatan_Uraian_BAHP` int(11) NOT NULL,
  `ID_Uraian_BAHP` varchar(255) DEFAULT NULL,
  `Catatan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_detail_pengumuman_pemenang`
--

CREATE TABLE `tabel_detail_pengumuman_pemenang` (
  `ID_Detail_Pengumuman_Pemenang` int(11) NOT NULL,
  `Tanggal_Pengumuman_Pemenang` date DEFAULT NULL,
  `Lokasi_Mengumumkan_Pemenang` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_dokumen_dalam_kelengkapan`
--

CREATE TABLE `tabel_dokumen_dalam_kelengkapan` (
  `ID_Dokumen` varchar(255) NOT NULL,
  `Nama_Dokumen` varchar(255) DEFAULT NULL,
  `Keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_dokumen_kontrak`
--

CREATE TABLE `tabel_dokumen_kontrak` (
  `Nomor_Kontrak` varchar(255) NOT NULL,
  `Jangka_Waktu_Kontrak` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_drp`
--

CREATE TABLE `tabel_drp` (
  `Nomor_DRP` varchar(255) NOT NULL,
  `Nilai_Rp` decimal(10,2) DEFAULT NULL,
  `Tanggal_Penetapan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_evaluasi`
--

CREATE TABLE `tabel_evaluasi` (
  `ID_Evaluasi` int(11) NOT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `Mengambil_Dokumen_Kualifikasi` tinyint(1) DEFAULT NULL,
  `Memenuhi_Kualifikasi` tinyint(1) DEFAULT NULL,
  `Menghadiri_Rapat_Penjelasan` tinyint(1) DEFAULT NULL,
  `Mengambil_Dokumen_RKS` tinyint(1) DEFAULT NULL,
  `Menghadiri_Kunjungan_Lapangan` tinyint(1) DEFAULT NULL,
  `Surat_Penawaran` tinyint(1) DEFAULT NULL,
  `Jumlah_Salinan_Dok_Penawaran_Sesuai_Persyaratan_RKS` int(11) DEFAULT NULL,
  `Sampul_harga` tinyint(1) DEFAULT NULL,
  `Keterangan_Penawaran_Teknis` text DEFAULT NULL,
  `Kelengkapan_Kualifikasi_dan_Admin` tinyint(1) DEFAULT NULL,
  `Kelulusan_Kualifikasi_dan_admin` tinyint(1) DEFAULT NULL,
  `Keterangan_Evaluasi_Kualifikasi_dan_admin` text DEFAULT NULL,
  `Kelengkapan_Dokumen_Penawaran_Teknis` text DEFAULT NULL,
  `Tanggal_Klarifikasi_teknis` date DEFAULT NULL,
  `Hasil_Evaluasi_Teknis` text DEFAULT NULL,
  `Keterangan_Evaluasi_Teknis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_formulir_pertanyaan_dan_klarifikasi`
--

CREATE TABLE `tabel_formulir_pertanyaan_dan_klarifikasi` (
  `ID_Pertanyaan` int(11) NOT NULL,
  `Tanggal_Pertanyaan` date DEFAULT NULL,
  `Rujukan_Terhadap_RKS` text DEFAULT NULL,
  `Pertanyaan_dari_Peserta_Barang_atau_Jasa` text DEFAULT NULL,
  `Tanggapan_dari_Perusahaan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_gagal_proses_daftar`
--

CREATE TABLE `tabel_gagal_proses_daftar` (
  `ID_Gagal_Proses_Daftar` int(11) NOT NULL,
  `Jumlah_Calon_Peserta_Mendaftar` int(11) DEFAULT NULL,
  `Jumlah_Calon_Peserta_yang_mengambil_RKS` int(11) DEFAULT NULL,
  `Alasan_Tender_Gagal_Beserta_Rekomendasi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_gagal_proses_evaluasi_administrasi_teknis`
--

CREATE TABLE `tabel_gagal_proses_evaluasi_administrasi_teknis` (
  `ID_Gagal_Evaluasi_Administrasi` int(11) NOT NULL,
  `Tanggal_Penilaian_Mulai` date DEFAULT NULL,
  `Tanggal_Penilaian_Akhir` date DEFAULT NULL,
  `ID_Pemasukkan_Dokumen_Penawaran` int(11) DEFAULT NULL,
  `Jumlah_Peserta_Hadir_Rapat_Penjelasan` int(11) DEFAULT NULL,
  `Jumlah_Peserta_Memasukkan_Dokumen` int(11) DEFAULT NULL,
  `Alasan_Tender_Gagal_Beserta_Rekomendasi` text DEFAULT NULL,
  `Jumlah_Peserta_Lulus_Penilaian_Admin` int(11) DEFAULT NULL,
  `Jumlah_Peserta_Lulus_Penilaian_Teknis` int(11) DEFAULT NULL,
  `Tanggal_Pemberitahuan_Hasil_Evaluasi_Teknis` date DEFAULT NULL,
  `Alasan_Tender_gagal_Penilaian_Admin_Teknis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_gagal_proses_negosiasi`
--

CREATE TABLE `tabel_gagal_proses_negosiasi` (
  `ID_Gagal_Proses_Negosiasi` int(11) NOT NULL,
  `ID_Hasil_Penilaian_Evaluasi` int(11) DEFAULT NULL,
  `ID_Hasil_Evaluasi_Komersial` varchar(255) DEFAULT NULL,
  `Nomor_Berita_Acara_Klarifikasi_Negosiasi` int(11) DEFAULT NULL,
  `Alasan_Tender_Gagal_Beserta_Rekomendasi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_harga_kontrak`
--

CREATE TABLE `tabel_harga_kontrak` (
  `ID_Harga_Kontrak` int(11) NOT NULL,
  `Harga_Kontrak_Dalam_Angka` decimal(10,2) DEFAULT NULL,
  `Harga_Kontrak_Dalam_Huruf` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_hasil_evaluasi_komersial`
--

CREATE TABLE `tabel_hasil_evaluasi_komersial` (
  `ID_Hasil_Evaluasi_Komersial` varchar(255) NOT NULL,
  `Mata_Uang` varchar(255) DEFAULT NULL,
  `HPS_Pengadaan_Awal` decimal(10,2) DEFAULT NULL,
  `HPS_Pengadaan_Lanjutan` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_hasil_evaluasi_penawaran`
--

CREATE TABLE `tabel_hasil_evaluasi_penawaran` (
  `ID_Hasil_Evaluasi_Penawaran` int(11) NOT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `Keterangan_Hasil_Evaluasi_Penawaran` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_hasil_pembukaan_dokumen_penawaran`
--

CREATE TABLE `tabel_hasil_pembukaan_dokumen_penawaran` (
  `ID_Hasil_Pembukaan_Dokumen_Penawaran` int(11) NOT NULL,
  `ID_Uraian_Pembukaan_Penawaran` int(11) DEFAULT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `ID_Keterangan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_hasil_penilaian_evaluasi`
--

CREATE TABLE `tabel_hasil_penilaian_evaluasi` (
  `ID_Hasil_Penilaian_Evaluasi` int(11) NOT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `Hasil_Kualifikasi` varchar(255) DEFAULT NULL,
  `Perlu_Mitigasi` text DEFAULT NULL,
  `Kelengkapan_Dokumen_Penawaran_Teknis` text DEFAULT NULL,
  `Tanggal_Klarifikasi_Teknis` date DEFAULT NULL,
  `Hasil_Klarifikasi_Teknis` text DEFAULT NULL,
  `Hasil_Evaluasi_Teknis` text DEFAULT NULL,
  `Keterangan_Evaluasi_Teknis` text DEFAULT NULL,
  `Kelengkapan_Dokumen_Penawaran` text DEFAULT NULL,
  `Harga_Penawaran_Awal` decimal(10,2) DEFAULT NULL,
  `Harga_Terkoreksi_Aritmatik` decimal(10,2) DEFAULT NULL,
  `Harga_Evaluasi_Penawaran` decimal(10,2) DEFAULT NULL,
  `Harga_Penawaran_Final_Setelah_Negosiasi` decimal(10,2) DEFAULT NULL,
  `ID_Komitmen_TKDN` int(11) DEFAULT NULL,
  `Urutan_Penawaran` int(11) DEFAULT NULL,
  `Keterangan_Evaluasi_Komersial` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_hpe`
--

CREATE TABLE `tabel_hpe` (
  `ID_HPE` int(11) NOT NULL,
  `HPE` text DEFAULT NULL,
  `Nomor_PRK` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `ID_Rencana_Kontrak` varchar(255) DEFAULT NULL,
  `ID_Referensi_HPE` int(11) DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_hps`
--

CREATE TABLE `tabel_hps` (
  `ID_HPS` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Nomor_PRK` int(11) DEFAULT NULL,
  `Nilai_HPS` decimal(10,2) DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `ID_Referensi_HPS` int(11) DEFAULT NULL,
  `ID_Rencana_Kontrak` varchar(255) DEFAULT NULL,
  `ID_HPE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_idd`
--

CREATE TABLE `tabel_idd` (
  `ID_IDD` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `Fungsi_Kontrak_Jasa` text DEFAULT NULL,
  `Masa_Berlaku` date DEFAULT NULL,
  `ID_Penjelasan_IDD` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_jabatan`
--

CREATE TABLE `tabel_jabatan` (
  `ID_Jabatan` int(11) NOT NULL,
  `Jabatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_jadwal_sanggah`
--

CREATE TABLE `tabel_jadwal_sanggah` (
  `ID_Jadwal_Sanggah` varchar(255) NOT NULL,
  `Tanggal_Mulai_Sanggah` date DEFAULT NULL,
  `Tanggal_Akhir_Sanggah` date DEFAULT NULL,
  `Lokasi_Sanggah` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_jadwal_sanggah_tahap_satu`
--

CREATE TABLE `tabel_jadwal_sanggah_tahap_satu` (
  `ID_Jadwal_Sanggah_Tahap_Satu` varchar(255) NOT NULL,
  `Tanggal_Jadwal_Sanggah_Tahap_Satu_Mulai` date DEFAULT NULL,
  `Tanggal_Jadwal_Sanggah_Tahap_Satu_Akhir` date DEFAULT NULL,
  `Waktu_Jadwal_Sanggah_Tahap_Satu_Mulai` time DEFAULT NULL,
  `Waktu_Jadwal_Sanggah_Tahap_Satu_Akhir` time DEFAULT NULL,
  `Lokasi_Jadwal_Sanggah_Tahap_Satu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_jenis_pengadaan`
--

CREATE TABLE `tabel_jenis_pengadaan` (
  `ID_Jenis_Pengadaan` int(11) NOT NULL,
  `Jenis_Pengadaan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_justifikasi_penunjukkan_langsung`
--

CREATE TABLE `tabel_justifikasi_penunjukkan_langsung` (
  `ID_JPL` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Nomor_PRK` int(11) DEFAULT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `Rincian_Status_Kondisi` text DEFAULT NULL,
  `Rincian_Alasan_Metode` text DEFAULT NULL,
  `Rincian_Kriteria_Peserta` text DEFAULT NULL,
  `ID_Kriteria_JPL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kategori_dokumen`
--

CREATE TABLE `tabel_kategori_dokumen` (
  `ID_Kategori_Dokumen` int(11) NOT NULL,
  `Kategori_Dokumen` varchar(255) DEFAULT NULL,
  `ID_Dokumen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kelengkapan_dokumen`
--

CREATE TABLE `tabel_kelengkapan_dokumen` (
  `ID_Tabel_Kelengkapan_Dokumen` int(11) NOT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `ID_Dokumen` varchar(255) DEFAULT NULL,
  `Surat_Penawaran_Harga` text DEFAULT NULL,
  `Rincian_Harga_Penawaran` text DEFAULT NULL,
  `Nilai_Penawaran_Harga` decimal(10,2) DEFAULT NULL,
  `Masa_Berlaku_Penawaran` date DEFAULT NULL,
  `ID_Komitmen_TKDN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_keterangan`
--

CREATE TABLE `tabel_keterangan` (
  `ID_Keterangan` int(11) NOT NULL,
  `ID_Uraian_Pembukaan_Penawaran` int(11) DEFAULT NULL,
  `Keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_klbi`
--

CREATE TABLE `tabel_klbi` (
  `ID_KLBI` int(11) NOT NULL,
  `KLBI` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_komitmen_tkdn`
--

CREATE TABLE `tabel_komitmen_tkdn` (
  `ID_Komitmen_TKDN` int(11) NOT NULL,
  `Komitmen_TKDN` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kota`
--

CREATE TABLE `tabel_kota` (
  `ID_Kota` int(11) NOT NULL,
  `Kota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kriteria_jpl`
--

CREATE TABLE `tabel_kriteria_jpl` (
  `ID_Kriteria_JPL` int(11) NOT NULL,
  `A` text DEFAULT NULL,
  `B` text DEFAULT NULL,
  `C` text DEFAULT NULL,
  `D` text DEFAULT NULL,
  `E` text DEFAULT NULL,
  `F` text DEFAULT NULL,
  `G` text DEFAULT NULL,
  `H` text DEFAULT NULL,
  `I` text DEFAULT NULL,
  `J` text DEFAULT NULL,
  `K` text DEFAULT NULL,
  `L` text DEFAULT NULL,
  `M` text DEFAULT NULL,
  `N` text DEFAULT NULL,
  `O` text DEFAULT NULL,
  `P` text DEFAULT NULL,
  `Q` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_lampiran`
--

CREATE TABLE `tabel_lampiran` (
  `ID_Lampiran` int(11) NOT NULL,
  `Jenis_Lampiran` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_lampiran`
--

INSERT INTO `tabel_lampiran` (`ID_Lampiran`, `Jenis_Lampiran`) VALUES
(1, 'Rencana Kerja & Syarat-syarat (RKS)'),
(2, 'Harga Perhitungan Sendiri (HPS)'),
(3, 'Jadwal Pengadaan'),
(4, 'Undangan/Pengumuman'),
(5, 'Dokumen Kualifikasi'),
(6, 'Daftar DPR/Shortlist/ Longlist');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_level`
--

CREATE TABLE `tabel_level` (
  `ID_Level` int(11) NOT NULL,
  `Level` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_metode_penawaran`
--

CREATE TABLE `tabel_metode_penawaran` (
  `ID_Metode_Penawaran` int(11) NOT NULL,
  `Metode_Penawaran` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_metode_pengadaan`
--

CREATE TABLE `tabel_metode_pengadaan` (
  `ID_Metode_Pengadaan` int(11) NOT NULL,
  `Metode_Pengadaan` varchar(255) DEFAULT NULL,
  `ID_Kualifikasi` int(11) DEFAULT NULL,
  `ID_Metode_Penawaran` int(11) DEFAULT NULL,
  `ID_Tahapan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_nota_dinas_user`
--

CREATE TABLE `tabel_nota_dinas_user` (
  `Nomor_ND_PPBJ` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Judul` varchar(255) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Sifat` varchar(255) DEFAULT NULL,
  `ID_Tujuan` int(11) DEFAULT NULL,
  `Perihal` text DEFAULT NULL,
  `ID_Sumber_Anggaran` int(11) DEFAULT NULL,
  `Nomor_PRK` int(11) DEFAULT NULL,
  `ID_Pegawai` int(11) DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `ID_RAB` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_nota_dinas_usulan_calon_penyedia`
--

CREATE TABLE `tabel_nota_dinas_usulan_calon_penyedia` (
  `Nomor_Nota_Dinas_Usulan_Calon_Penyedia` int(11) NOT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `No_RKS` int(11) DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `Nomor_Berita_Acara_Rapat_Penjelasan` int(11) DEFAULT NULL,
  `Nomor_Berita_Acara_Pembukaan_Penawaran` int(11) DEFAULT NULL,
  `Nomor_Berita_Acara_Hasil_Pengadaan` int(11) DEFAULT NULL,
  `ID_Ruang_Lingkup` int(11) DEFAULT NULL,
  `ID_Calon_Pemenang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pegawai`
--

CREATE TABLE `tabel_pegawai` (
  `ID_Pegawai` int(11) NOT NULL,
  `Nama_Pegawai` varchar(255) DEFAULT NULL,
  `ID_Jabatan` int(11) DEFAULT NULL,
  `ID_Level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pelaksana_tender`
--

CREATE TABLE `tabel_pelaksana_tender` (
  `ID_Pelaksana_Tender` int(11) NOT NULL,
  `Pelaksana_Tender` varchar(255) DEFAULT NULL,
  `Alamat_Pelaksana` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pemasukkan_dokumen_penawaran`
--

CREATE TABLE `tabel_pemasukkan_dokumen_penawaran` (
  `ID_Pemasukkan_Dokumen_Penawaran` int(11) NOT NULL,
  `Jenis_Pemasukkan` varchar(255) DEFAULT NULL,
  `Tanggal_Pemasukkan_Dokumen_Penawaran_Mulai` date DEFAULT NULL,
  `Tanggal_Pemasukkan_Dokumen_Penawaran_Akhir` date DEFAULT NULL,
  `Lokasi_Pemasukkan_Dokumen_Penawaran` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pembahasan_ba_klarifikasi_negosiasi`
--

CREATE TABLE `tabel_pembahasan_ba_klarifikasi_negosiasi` (
  `ID_Pembahasan_BA_Klarifikasi_Negosiasi` varchar(255) NOT NULL,
  `Pembahasan` text DEFAULT NULL,
  `Hasil_Pembahasan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pembahasan_cda`
--

CREATE TABLE `tabel_pembahasan_cda` (
  `ID_Pembahasan` varchar(255) NOT NULL,
  `Halaman` int(11) DEFAULT NULL,
  `Bagian` varchar(255) DEFAULT NULL,
  `Pembahasan` text DEFAULT NULL,
  `Tanggapan_dari_MCTN` text DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pemberitahuan_evaluasi_surat_undangan`
--

CREATE TABLE `tabel_pemberitahuan_evaluasi_surat_undangan` (
  `No_Surat` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Halaman` int(11) DEFAULT NULL,
  `Kepentingan` varchar(255) DEFAULT NULL,
  `Perihal` varchar(255) DEFAULT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `Catatan` text DEFAULT NULL,
  `ID_Pembukaan_Sampul_Dua` varchar(255) DEFAULT NULL,
  `No_RKS` int(11) DEFAULT NULL,
  `ID_Jadwal_Sanggah_Tahap_Satu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pemberitahuan_perubahan_rks`
--

CREATE TABLE `tabel_pemberitahuan_perubahan_rks` (
  `Nomor_Surat` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `No_RKS` int(11) DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `ID_Prebid` int(11) DEFAULT NULL,
  `ID_Pertanyaan` int(11) DEFAULT NULL,
  `ID_Perubahan_RKS` int(11) DEFAULT NULL,
  `ID_Pemasukkan_Dokumen_Penawaran` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pembukaan_dokumen_penawaran`
--

CREATE TABLE `tabel_pembukaan_dokumen_penawaran` (
  `ID_Pembukaan_Dokumen_Penawaran` int(11) NOT NULL,
  `Tanggal_Pembukaan_Dokumen_Penawaran` date DEFAULT NULL,
  `Lokasi_Pembukaan_Dokumen_Penawaran` text DEFAULT NULL,
  `Waktu_Pembukaan_Dokumen_Penawaran` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pembukaan_sampul_dua`
--

CREATE TABLE `tabel_pembukaan_sampul_dua` (
  `ID_Pembukaan_Sampul_Dua` varchar(255) NOT NULL,
  `Tanggal_Pembukaan_Sampul_Dua_Mulai` date DEFAULT NULL,
  `Tanggal_Pembukaan_Sampul_Dua_Akhir` date DEFAULT NULL,
  `Waktu_Pembukaan_Sampul_Dua_Mulai` time DEFAULT NULL,
  `Waktu_Pembukaan_Sampul_Dua_Akhir` time DEFAULT NULL,
  `Lokasi_Pembukaan_Sampul_Dua` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_penawaran_alternatif_atau_penawaran_bersyarat`
--

CREATE TABLE `tabel_penawaran_alternatif_atau_penawaran_bersyarat` (
  `ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat` int(11) NOT NULL,
  `Penawaran_Alternatif` tinyint(1) DEFAULT NULL,
  `Pengecualian_atau_Penawaran_Bersyarat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pendaftaran`
--

CREATE TABLE `tabel_pendaftaran` (
  `ID_Pendaftaran` int(11) NOT NULL,
  `Tanggal_Pendaftaran_Mulai` date DEFAULT NULL,
  `Tanggal_Pendaftaran_Akhir` date DEFAULT NULL,
  `Waktu_Pendaftaran_Mulai` time DEFAULT NULL,
  `Waktu_Pendaftaran_Akhir` time DEFAULT NULL,
  `ID_Kota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_penetapan_pemenang`
--

CREATE TABLE `tabel_penetapan_pemenang` (
  `Nomor_Lembar_Penetapan` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `Nomor_Berita_Acara_Hasil_Pengadaan` int(11) DEFAULT NULL,
  `No_RKS` int(11) DEFAULT NULL,
  `Nomor_Nota_Dinas_Usulan_Calon_Penyedia` int(11) DEFAULT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `ID_Harga_Kontrak` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_penetapan_tim_pengadaan`
--

CREATE TABLE `tabel_penetapan_tim_pengadaan` (
  `Nomor_Penetapan_Tim_Pengadaan` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `No_RKS` int(11) DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `ID_Pegawai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pengadaan`
--

CREATE TABLE `tabel_pengadaan` (
  `ID_Pengadaan` int(11) NOT NULL,
  `No_Pengadaan` varchar(255) DEFAULT NULL,
  `Judul_Pengadaan` varchar(255) DEFAULT NULL,
  `Ringkasan_Pekerjaan` text DEFAULT NULL,
  `ID_Metode_Pengadaan` int(11) DEFAULT NULL,
  `ID_Sistem_Evaluasi_Penawaran` int(11) DEFAULT NULL,
  `ID_Jenis_Pengadaan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pengajuan_sanggah`
--

CREATE TABLE `tabel_pengajuan_sanggah` (
  `ID_Pengajuan_Sanggah` int(11) NOT NULL,
  `Tanggal_Pengajuan_Sanggah` date DEFAULT NULL,
  `Lokasi_Pengajuan_Sanggah` text DEFAULT NULL,
  `Waktu_Pengajuan_Sanggah` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pengumuman_pemenang`
--

CREATE TABLE `tabel_pengumuman_pemenang` (
  `Nomor_Pengumuman_Pemenang` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `No_RKS` int(11) DEFAULT NULL,
  `Nomor_Lembar_Penetapan` int(11) DEFAULT NULL,
  `ID_Jadwal_Sanggah` varchar(255) DEFAULT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `ID_Hasil_Evaluasi_Penawaran` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pengumuman_prakualifikasi`
--

CREATE TABLE `tabel_pengumuman_prakualifikasi` (
  `Nomor_Pengumuman` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `ID_Prakualifikasi` varchar(255) DEFAULT NULL,
  `ID_Pendaftaran` int(11) DEFAULT NULL,
  `ID_Penyampaian` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pengumuman_tender`
--

CREATE TABLE `tabel_pengumuman_tender` (
  `Nomor_Pengumuman_Tender` int(11) NOT NULL,
  `Lokasi_Pengumuman_Tender` varchar(255) DEFAULT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Pelaksana_Tender` int(11) DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `ID_Ruang_Lingkup` int(11) DEFAULT NULL,
  `Klasifikasi_Calon_Penyedia` varchar(255) DEFAULT NULL,
  `Tanggal_Tender_Diumumkan_Mulai` date DEFAULT NULL,
  `Tanggal_Tender_Diumumkan_Akhir` date DEFAULT NULL,
  `ID_Pendaftaran` int(11) DEFAULT NULL,
  `No_RKS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pengumuman_tender_gagal`
--

CREATE TABLE `tabel_pengumuman_tender_gagal` (
  `Nomor_Pengumuman_Tender_Gagal` int(11) DEFAULT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `No_RKS` int(11) DEFAULT NULL,
  `Alasan_Tender_Gagal` text DEFAULT NULL,
  `Metode_Proses_Tender_Selanjutnya` text DEFAULT NULL,
  `Tanggal_Pengumuman` date DEFAULT NULL,
  `Tanggal_Dicabut` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_peninjauan_lapangan`
--

CREATE TABLE `tabel_peninjauan_lapangan` (
  `ID_Peninjauan_Lapangan` int(11) NOT NULL,
  `Tanggal_Peninjauan_Lapangan` date DEFAULT NULL,
  `Waktu_Peninjauan_Lapangan` time DEFAULT NULL,
  `Tempat_Peninjauan_Lapangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_penjelasan_idd`
--

CREATE TABLE `tabel_penjelasan_idd` (
  `ID_Penjelasan_IDD` int(11) NOT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `Hasil` text DEFAULT NULL,
  `Catatan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_penutupan_penyerahan_dokumen_penawaran`
--

CREATE TABLE `tabel_penutupan_penyerahan_dokumen_penawaran` (
  `ID_Penutupan_Penyerahan` int(11) NOT NULL,
  `Tanggal` date DEFAULT NULL,
  `Waktu` time DEFAULT NULL,
  `ID_Pelaksana_Tender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_penyampaian`
--

CREATE TABLE `tabel_penyampaian` (
  `ID_Penyampaian` int(11) NOT NULL,
  `Tanggal_Penyampaian_Dokumen_Mulai` date DEFAULT NULL,
  `Tanggal_Penyampaian_Dokumen_Akhir` date DEFAULT NULL,
  `Waktu_Penyampaian_Mulai` time DEFAULT NULL,
  `Waktu_Penyampaian_Akhir` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_persetujuan_pengadaan`
--

CREATE TABLE `tabel_persetujuan_pengadaan` (
  `ID_Persetujuan_Pengadaan` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `Nomor_DRP` varchar(255) DEFAULT NULL,
  `ID_Sumber_Anggaran` int(11) DEFAULT NULL,
  `Nomor_PRK` int(11) DEFAULT NULL,
  `Nomor_ND_PPBJ` int(11) DEFAULT NULL,
  `Perkiraan_Tanggal_Berlaku_Kontrak` date DEFAULT NULL,
  `ID_Rencana_Kontrak` varchar(255) DEFAULT NULL,
  `Kategori_Risiko` varchar(255) DEFAULT NULL,
  `ID_KLBI` int(11) DEFAULT NULL,
  `No_RKS` int(11) DEFAULT NULL,
  `Jenis_Perjanjian` varchar(255) DEFAULT NULL,
  `ID_HPS` int(11) DEFAULT NULL,
  `ID_HPE` int(11) DEFAULT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `ID_Pegawai` int(11) DEFAULT NULL,
  `ID_Lampiran` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_perubahan_rks`
--

CREATE TABLE `tabel_perubahan_rks` (
  `ID_Perubahan_RKS` int(11) NOT NULL,
  `Perubahan_Penambahan_Domumen_RKS` text DEFAULT NULL,
  `Tanggal_Pengambilan_Mulai` date DEFAULT NULL,
  `Tanggal_Pengambilan_Selesai` date DEFAULT NULL,
  `Waktu_Mulai` time DEFAULT NULL,
  `Waktu_Selesai` time DEFAULT NULL,
  `ID_Pelaksana_Tender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_perwakilan_peserta`
--

CREATE TABLE `tabel_perwakilan_peserta` (
  `ID_Perwakilan_Peserta` int(11) NOT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `Nama_Perwakilan` varchar(255) DEFAULT NULL,
  `Jabatan_Perwakilan` varchar(255) DEFAULT NULL,
  `Email_Perwakilan` varchar(255) DEFAULT NULL,
  `Nomor_Kontak_Perwakilan_Peserta` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_peserta`
--

CREATE TABLE `tabel_peserta` (
  `ID_Peserta` int(11) NOT NULL,
  `Nama_Peserta` varchar(255) DEFAULT NULL,
  `Alamat_Peserta` text DEFAULT NULL,
  `Email_Peserta` varchar(255) DEFAULT NULL,
  `Nomor_Kontak_Peserta` varchar(20) DEFAULT NULL,
  `Faks` varchar(20) DEFAULT NULL,
  `NPWP` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_prakualifikasi`
--

CREATE TABLE `tabel_prakualifikasi` (
  `ID_Prakualifikasi` varchar(255) NOT NULL,
  `Kategori_Prakualifikasi` varchar(255) DEFAULT NULL,
  `Maksud_Tujuan_Prakualifikasi` text DEFAULT NULL,
  `Tanggal_Prakualifikasi_Diumumkan_Mulai` date DEFAULT NULL,
  `Tanggal_Prakualifikasi_Diumumkan_Akhir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_prebid`
--

CREATE TABLE `tabel_prebid` (
  `ID_Prebid` int(11) NOT NULL,
  `Tanggal_Meeting` date DEFAULT NULL,
  `Tanggal_Klarifikasi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_rapat_klarifikasi_negosiasi`
--

CREATE TABLE `tabel_rapat_klarifikasi_negosiasi` (
  `ID_Rapat_Klarifikasi_Negosiasi` varchar(255) NOT NULL,
  `Jenis_Rapat` varchar(255) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Waktu` time DEFAULT NULL,
  `Agenda_Rapat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_referensi_hpe`
--

CREATE TABLE `tabel_referensi_hpe` (
  `ID_Referensi` int(11) NOT NULL,
  `Informasi_Harga_Pabrikan_Agen_Tunggal` decimal(10,2) DEFAULT NULL,
  `Informasi_Harga_Pasar` decimal(10,2) DEFAULT NULL,
  `Informasi_Harga_dari_data_BPS` decimal(10,2) DEFAULT NULL,
  `Hasil_Perhitungan_Konsultan_Enjiniring` decimal(10,2) DEFAULT NULL,
  `Harga_Kontrak_yang_Lalu_pada_Pekerjaan_yang_Sejenis` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_referensi_hps`
--

CREATE TABLE `tabel_referensi_hps` (
  `ID_Referensi_HPS` int(11) NOT NULL,
  `HPE_yang_Dimutakhirkan` text DEFAULT NULL,
  `Harga_Pasar_Setempat` decimal(10,2) DEFAULT NULL,
  `NIlai_Kontrak_Pekerjaan` decimal(10,2) DEFAULT NULL,
  `Analisis_Harga_Satuan_Pekerjaan` decimal(10,2) DEFAULT NULL,
  `Daftar_Harga_BPS` decimal(10,2) DEFAULT NULL,
  `Daftar_Harga_Pabrikan` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_rencana_anggaran_biaya`
--

CREATE TABLE `tabel_rencana_anggaran_biaya` (
  `ID_RAB` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Barang` int(11) DEFAULT NULL,
  `ID_Transaksi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_rencana_kontrak`
--

CREATE TABLE `tabel_rencana_kontrak` (
  `ID_Rencana_Kontrak` varchar(255) NOT NULL,
  `Rencana_Tanggal_Terkontrak_Mulai` date DEFAULT NULL,
  `Rencana_Tanggal_Terkontrak_Akhir` date DEFAULT NULL,
  `Rencana_Durasi_Kontrak` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_rincian_ba_gagal`
--

CREATE TABLE `tabel_rincian_ba_gagal` (
  `ID_Rincian_BA_Gagal` int(11) NOT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `Memasukkan_Dokumen_Penawaran` tinyint(1) DEFAULT NULL,
  `No_Collect` tinyint(1) DEFAULT NULL,
  `No_Quote` tinyint(1) DEFAULT NULL,
  `No_Response` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_ringkasan_cda`
--

CREATE TABLE `tabel_ringkasan_cda` (
  `Nomor_Ringkasan_CDA` int(11) NOT NULL,
  `Tanggal_CDA_Dilaksanakan` date DEFAULT NULL,
  `Venue_CDA` varchar(255) DEFAULT NULL,
  `ID_Pembahasan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_ringkasan_peserta_memasukkan_dokumen_penawaran`
--

CREATE TABLE `tabel_ringkasan_peserta_memasukkan_dokumen_penawaran` (
  `ID_Ringkasan_Peserta_Memasukkan_Dokumen_Penawaran` int(11) NOT NULL,
  `ID_Uraian_BAHP` varchar(255) DEFAULT NULL,
  `ID_Catatan_Uraian_BAHP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_ringkasan_rapat_penjelasan`
--

CREATE TABLE `tabel_ringkasan_rapat_penjelasan` (
  `ID_Ringkasan_Rapat_Penjelasan` int(11) NOT NULL,
  `ID_Uraian_BAHP` varchar(255) DEFAULT NULL,
  `ID_Catatan_Uraian_BAHP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_ringkasan_rks`
--

CREATE TABLE `tabel_ringkasan_rks` (
  `No_RKS` int(11) NOT NULL,
  `Tanggal_RKS` date DEFAULT NULL,
  `Tanggal_Pengambilan_RKS_Mulai` date DEFAULT NULL,
  `Tanggal_Pengambilan_RKS_Akhir` date DEFAULT NULL,
  `Waktu_Pengambilan_RKS_Mulai` time DEFAULT NULL,
  `Waktu_Pengambilan_RKS_Akhir` time DEFAULT NULL,
  `Lokasi_Pengambilan_RKS` varchar(255) DEFAULT NULL,
  `Judul_RKS` varchar(255) DEFAULT NULL,
  `Status_RKS_Pekerjaan` varchar(255) DEFAULT NULL,
  `Target_Selesai_RKS` date DEFAULT NULL,
  `Kualifikasi_Peserta` text DEFAULT NULL,
  `Klasifikasi_CSMS` varchar(255) DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `Nomor_PRK` int(11) DEFAULT NULL,
  `ID_Pegawai` int(11) DEFAULT NULL,
  `ID_Sumber_Anggaran` int(11) DEFAULT NULL,
  `ID_HPE` int(11) DEFAULT NULL,
  `ID_KLBI` int(11) DEFAULT NULL,
  `ID_Rencana_Kontrak` varchar(255) DEFAULT NULL,
  `URL_RKS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_ruang_lingkup`
--

CREATE TABLE `tabel_ruang_lingkup` (
  `ID_Ruang_Lingkup` int(11) NOT NULL,
  `Ruang_Lingkup_Pekerjaan` text DEFAULT NULL,
  `Lokasi_Pekerjaan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_sistem_evaluasi_penawaran`
--

CREATE TABLE `tabel_sistem_evaluasi_penawaran` (
  `ID_Sistem_Evaluasi_Penawaran` int(11) NOT NULL,
  `Sistem_Evaluasi_Penawaran_Teknis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_sppbj`
--

CREATE TABLE `tabel_sppbj` (
  `Nomor_SPPBJ` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Lampiran` varchar(255) DEFAULT NULL,
  `Sifat` varchar(255) DEFAULT NULL,
  `ID_Pegawai` int(11) DEFAULT NULL,
  `Jumlah_Hari_Pengembalian` int(11) DEFAULT NULL,
  `Jumlah_Hari_Jawaban` int(11) DEFAULT NULL,
  `Jumlah_Hari_Mengundurkan` int(11) DEFAULT NULL,
  `ID_Perwakilan_Peserta` int(11) DEFAULT NULL,
  `Nomor_Kontrak` varchar(255) DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `ID_Ruang_Lingkup` int(11) DEFAULT NULL,
  `No_RKS` int(11) DEFAULT NULL,
  `Nomor_Lembar_Penetapan` int(11) DEFAULT NULL,
  `ID_Harga_Kontrak` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_sumber_anggaran`
--

CREATE TABLE `tabel_sumber_anggaran` (
  `ID_Sumber_Anggaran` int(11) NOT NULL,
  `Sumber_Anggaran` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_surat_undangan`
--

CREATE TABLE `tabel_surat_undangan` (
  `Nomor_Surat_Undangan` int(11) NOT NULL,
  `Lampiran` varchar(255) DEFAULT NULL,
  `Sifat` varchar(255) DEFAULT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `No_RKS` int(11) DEFAULT NULL,
  `Nomor_Berita_Acara_Rapat_Penjelasan` int(11) DEFAULT NULL,
  `ID_Pemasukkan_Dokumen_Penawaran` int(11) DEFAULT NULL,
  `ID_Pembukaan_Dokumen_Penawaran` int(11) DEFAULT NULL,
  `ID_Detail_Pengumuman_Pemenang` int(11) DEFAULT NULL,
  `ID_Pengajuan_Sanggah` int(11) DEFAULT NULL,
  `ID_Calon_Peserta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_surat_undangan_klarifikasi_negosiasi`
--

CREATE TABLE `tabel_surat_undangan_klarifikasi_negosiasi` (
  `Nomor_Surat_Undangan_Klarifikasi_Negosiasi` int(11) NOT NULL,
  `Lampiran` varchar(255) DEFAULT NULL,
  `Sifat` varchar(255) DEFAULT NULL,
  `Perihal` varchar(255) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `ID_Rapat_Klarifikasi_Negosiasi` varchar(255) DEFAULT NULL,
  `ID_Peserta` int(11) DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Struktur dari tabel `tabel_tata_waktu_pelaksanaan`
--

CREATE TABLE `tabel_tata_waktu_pelaksanaan` (
  `ID_Tata_Waktu` int(11) NOT NULL,
  `ID_Kota` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Hari_Kerja_Proses_Rencana` int(11) DEFAULT NULL,
  `Tanggal_Mulai_Proses_Rencana` date DEFAULT NULL,
  `Hari_Kerja_Proses_Realisasi` int(11) DEFAULT NULL,
  `Tanggal_Mulai_Proses_Realisasi` date DEFAULT NULL,
  `Catatan` text DEFAULT NULL,
  `ID_Pengadaan` int(11) DEFAULT NULL,
  `ID_Rencana_Kontrak` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_tipe_sampul`
--

CREATE TABLE `tabel_tipe_sampul` (
  `ID_Tipe_Sampul` int(11) NOT NULL,
  `Tipe_Sampul` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `ID_Transaksi` int(11) NOT NULL,
  `Unit` varchar(255) DEFAULT NULL,
  `Harga` decimal(10,2) DEFAULT NULL,
  `Total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_tujuan`
--

CREATE TABLE `tabel_tujuan` (
  `ID_Tujuan` int(11) NOT NULL,
  `Tim` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_uraian_bahp`
--

CREATE TABLE `tabel_uraian_bahp` (
  `ID_Uraian_BAHP` varchar(255) NOT NULL,
  `Uraian_BAHP` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_uraian_pembukaan_penawaran`
--

CREATE TABLE `tabel_uraian_pembukaan_penawaran` (
  `ID_Uraian_Pembukaan_Penawaran` int(11) NOT NULL,
  `Uraian_Pembukaan_Penawaran` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `nama_tabel_kualifikasi`
--
ALTER TABLE `nama_tabel_kualifikasi`
  ADD PRIMARY KEY (`ID_Kualifikasi`);

--
-- Indeks untuk tabel `tabel_ahli_subjek_teknis`
--
ALTER TABLE `tabel_ahli_subjek_teknis`
  ADD PRIMARY KEY (`ID_Ahli_Subjek_Teknis`);

--
-- Indeks untuk tabel `tabel_anggaran`
--
ALTER TABLE `tabel_anggaran`
  ADD PRIMARY KEY (`Nomor_PRK`);

--
-- Indeks untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`ID_Barang`),
  ADD KEY `ID_Transaksi` (`ID_Transaksi`);

--
-- Indeks untuk tabel `tabel_ba_gagal_pemasukkan_dokumen`
--
ALTER TABLE `tabel_ba_gagal_pemasukkan_dokumen`
  ADD PRIMARY KEY (`Nomor_BA_Gagal_Pemasukkan_Dokumen`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `ID_Rincian_BA_Gagal` (`ID_Rincian_BA_Gagal`),
  ADD KEY `ID_Perwakilan_Peserta` (`ID_Perwakilan_Peserta`);

--
-- Indeks untuk tabel `tabel_ba_pengadaan_gagal`
--
ALTER TABLE `tabel_ba_pengadaan_gagal`
  ADD PRIMARY KEY (`Nomor_Berita_Acara_Pengadaan_Gagal`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat` (`ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat`),
  ADD KEY `ID_HPS` (`ID_HPS`),
  ADD KEY `Nomor_DRP` (`Nomor_DRP`),
  ADD KEY `Nomor_Pengumuman_Tender` (`Nomor_Pengumuman_Tender`),
  ADD KEY `ID_Pendaftaran` (`ID_Pendaftaran`),
  ADD KEY `No_RKS` (`No_RKS`),
  ADD KEY `ID_Gagal_Proses_Daftar` (`ID_Gagal_Proses_Daftar`),
  ADD KEY `ID_Gagal_Evaluasi_Administrasi` (`ID_Gagal_Evaluasi_Administrasi`),
  ADD KEY `ID_Gagal_Proses_Negosiasi` (`ID_Gagal_Proses_Negosiasi`);

--
-- Indeks untuk tabel `tabel_berita_acara_evaluasi_teknis`
--
ALTER TABLE `tabel_berita_acara_evaluasi_teknis`
  ADD PRIMARY KEY (`Nomor_Berita_Acara_Evaluasi_Teknis`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `No_RKS` (`No_RKS`),
  ADD KEY `ID_Evaluasi` (`ID_Evaluasi`),
  ADD KEY `Nomor_Berita_Acara_Rapat_Penjelasan` (`Nomor_Berita_Acara_Rapat_Penjelasan`),
  ADD KEY `ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat` (`ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat`);

--
-- Indeks untuk tabel `tabel_berita_acara_hasil_pengadaan`
--
ALTER TABLE `tabel_berita_acara_hasil_pengadaan`
  ADD PRIMARY KEY (`Nomor_Berita_Acara_Hasil_Pengadaan`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `No_RKS` (`No_RKS`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `ID_Ringkasan_Rapat_Penjelasan` (`ID_Ringkasan_Rapat_Penjelasan`),
  ADD KEY `Nomor_Berita_Acara_Pembukaan_Penawaran` (`Nomor_Berita_Acara_Pembukaan_Penawaran`),
  ADD KEY `ID_Ringkasan_Peserta_Memasukkan_Dokumen_Penawaran` (`ID_Ringkasan_Peserta_Memasukkan_Dokumen_Penawaran`),
  ADD KEY `Nomor_Berita_Acara_Rapat_Penjelasan` (`Nomor_Berita_Acara_Rapat_Penjelasan`),
  ADD KEY `ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat` (`ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat`),
  ADD KEY `ID_Tata_Waktu` (`ID_Tata_Waktu`),
  ADD KEY `ID_Hasil_Penilaian_Evaluasi` (`ID_Hasil_Penilaian_Evaluasi`),
  ADD KEY `ID_Calon_Pemenang` (`ID_Calon_Pemenang`),
  ADD KEY `ID_Hasil_Evaluasi_Komersial` (`ID_Hasil_Evaluasi_Komersial`);

--
-- Indeks untuk tabel `tabel_berita_acara_klarifikasi_negosiasi`
--
ALTER TABLE `tabel_berita_acara_klarifikasi_negosiasi`
  ADD PRIMARY KEY (`Nomor_Berita_Acara_Klarifikasi_Negosiasi`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `No_RKS` (`No_RKS`),
  ADD KEY `ID_Peserta` (`ID_Peserta`),
  ADD KEY `ID_Pembahasan_BA_Klarifikasi_Negosiasi` (`ID_Pembahasan_BA_Klarifikasi_Negosiasi`);

--
-- Indeks untuk tabel `tabel_berita_acara_pembukaan_penawaran`
--
ALTER TABLE `tabel_berita_acara_pembukaan_penawaran`
  ADD PRIMARY KEY (`Nomor_Berita_Acara_Pembukaan_Penawaran`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `No_RKS` (`No_RKS`),
  ADD KEY `ID_Ruang_Lingkup` (`ID_Ruang_Lingkup`),
  ADD KEY `ID_Hasil_Pembukaan_Dokumen_Penawaran` (`ID_Hasil_Pembukaan_Dokumen_Penawaran`),
  ADD KEY `ID_Tabel_Kelengkapan_Dokumen` (`ID_Tabel_Kelengkapan_Dokumen`),
  ADD KEY `ID_Tipe_Sampul` (`ID_Tipe_Sampul`);

--
-- Indeks untuk tabel `tabel_berita_acara_rapat_penjelasan`
--
ALTER TABLE `tabel_berita_acara_rapat_penjelasan`
  ADD PRIMARY KEY (`Nomor_Berita_Acara_Rapat_Penjelasan`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `ID_Peninjauan_Lapangan` (`ID_Peninjauan_Lapangan`),
  ADD KEY `ID_Penutupan_Penyerahan` (`ID_Penutupan_Penyerahan`),
  ADD KEY `ID_Perwakilan_Peserta` (`ID_Perwakilan_Peserta`),
  ADD KEY `ID_Pegawai` (`ID_Pegawai`),
  ADD KEY `ID_Ahli_Subjek_Teknis` (`ID_Ahli_Subjek_Teknis`);

--
-- Indeks untuk tabel `tabel_calon_pemenang`
--
ALTER TABLE `tabel_calon_pemenang`
  ADD PRIMARY KEY (`ID_Calon_Pemenang`),
  ADD KEY `ID_Peserta` (`ID_Peserta`),
  ADD KEY `ID_Komitmen_TKDN` (`ID_Komitmen_TKDN`);

--
-- Indeks untuk tabel `tabel_calon_peserta_shortlist_dpt`
--
ALTER TABLE `tabel_calon_peserta_shortlist_dpt`
  ADD PRIMARY KEY (`ID_Calon_Peserta`);

--
-- Indeks untuk tabel `tabel_catatan_uraian_bahp`
--
ALTER TABLE `tabel_catatan_uraian_bahp`
  ADD PRIMARY KEY (`ID_Catatan_Uraian_BAHP`),
  ADD KEY `ID_Uraian_BAHP` (`ID_Uraian_BAHP`);

--
-- Indeks untuk tabel `tabel_detail_pengumuman_pemenang`
--
ALTER TABLE `tabel_detail_pengumuman_pemenang`
  ADD PRIMARY KEY (`ID_Detail_Pengumuman_Pemenang`);

--
-- Indeks untuk tabel `tabel_dokumen_dalam_kelengkapan`
--
ALTER TABLE `tabel_dokumen_dalam_kelengkapan`
  ADD PRIMARY KEY (`ID_Dokumen`);

--
-- Indeks untuk tabel `tabel_dokumen_kontrak`
--
ALTER TABLE `tabel_dokumen_kontrak`
  ADD PRIMARY KEY (`Nomor_Kontrak`);

--
-- Indeks untuk tabel `tabel_drp`
--
ALTER TABLE `tabel_drp`
  ADD PRIMARY KEY (`Nomor_DRP`);

--
-- Indeks untuk tabel `tabel_evaluasi`
--
ALTER TABLE `tabel_evaluasi`
  ADD PRIMARY KEY (`ID_Evaluasi`),
  ADD KEY `ID_Peserta` (`ID_Peserta`);

--
-- Indeks untuk tabel `tabel_formulir_pertanyaan_dan_klarifikasi`
--
ALTER TABLE `tabel_formulir_pertanyaan_dan_klarifikasi`
  ADD PRIMARY KEY (`ID_Pertanyaan`);

--
-- Indeks untuk tabel `tabel_gagal_proses_daftar`
--
ALTER TABLE `tabel_gagal_proses_daftar`
  ADD PRIMARY KEY (`ID_Gagal_Proses_Daftar`);

--
-- Indeks untuk tabel `tabel_gagal_proses_evaluasi_administrasi_teknis`
--
ALTER TABLE `tabel_gagal_proses_evaluasi_administrasi_teknis`
  ADD PRIMARY KEY (`ID_Gagal_Evaluasi_Administrasi`),
  ADD KEY `ID_Pemasukkan_Dokumen_Penawaran` (`ID_Pemasukkan_Dokumen_Penawaran`);

--
-- Indeks untuk tabel `tabel_gagal_proses_negosiasi`
--
ALTER TABLE `tabel_gagal_proses_negosiasi`
  ADD PRIMARY KEY (`ID_Gagal_Proses_Negosiasi`),
  ADD KEY `ID_Hasil_Penilaian_Evaluasi` (`ID_Hasil_Penilaian_Evaluasi`),
  ADD KEY `ID_Hasil_Evaluasi_Komersial` (`ID_Hasil_Evaluasi_Komersial`),
  ADD KEY `Nomor_Berita_Acara_Klarifikasi_Negosiasi` (`Nomor_Berita_Acara_Klarifikasi_Negosiasi`);

--
-- Indeks untuk tabel `tabel_harga_kontrak`
--
ALTER TABLE `tabel_harga_kontrak`
  ADD PRIMARY KEY (`ID_Harga_Kontrak`);

--
-- Indeks untuk tabel `tabel_hasil_evaluasi_komersial`
--
ALTER TABLE `tabel_hasil_evaluasi_komersial`
  ADD PRIMARY KEY (`ID_Hasil_Evaluasi_Komersial`);

--
-- Indeks untuk tabel `tabel_hasil_evaluasi_penawaran`
--
ALTER TABLE `tabel_hasil_evaluasi_penawaran`
  ADD PRIMARY KEY (`ID_Hasil_Evaluasi_Penawaran`),
  ADD KEY `ID_Peserta` (`ID_Peserta`);

--
-- Indeks untuk tabel `tabel_hasil_pembukaan_dokumen_penawaran`
--
ALTER TABLE `tabel_hasil_pembukaan_dokumen_penawaran`
  ADD PRIMARY KEY (`ID_Hasil_Pembukaan_Dokumen_Penawaran`),
  ADD KEY `ID_Uraian_Pembukaan_Penawaran` (`ID_Uraian_Pembukaan_Penawaran`),
  ADD KEY `ID_Peserta` (`ID_Peserta`),
  ADD KEY `ID_Keterangan` (`ID_Keterangan`);

--
-- Indeks untuk tabel `tabel_hasil_penilaian_evaluasi`
--
ALTER TABLE `tabel_hasil_penilaian_evaluasi`
  ADD PRIMARY KEY (`ID_Hasil_Penilaian_Evaluasi`),
  ADD KEY `ID_Peserta` (`ID_Peserta`),
  ADD KEY `ID_Komitmen_TKDN` (`ID_Komitmen_TKDN`);

--
-- Indeks untuk tabel `tabel_hpe`
--
ALTER TABLE `tabel_hpe`
  ADD PRIMARY KEY (`ID_HPE`),
  ADD KEY `Nomor_PRK` (`Nomor_PRK`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Rencana_Kontrak` (`ID_Rencana_Kontrak`),
  ADD KEY `ID_Referensi_HPE` (`ID_Referensi_HPE`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`);

--
-- Indeks untuk tabel `tabel_hps`
--
ALTER TABLE `tabel_hps`
  ADD PRIMARY KEY (`ID_HPS`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `Nomor_PRK` (`Nomor_PRK`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `ID_Referensi_HPS` (`ID_Referensi_HPS`),
  ADD KEY `ID_Rencana_Kontrak` (`ID_Rencana_Kontrak`),
  ADD KEY `ID_HPE` (`ID_HPE`);

--
-- Indeks untuk tabel `tabel_idd`
--
ALTER TABLE `tabel_idd`
  ADD PRIMARY KEY (`ID_IDD`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `ID_Penjelasan_IDD` (`ID_Penjelasan_IDD`);

--
-- Indeks untuk tabel `tabel_jabatan`
--
ALTER TABLE `tabel_jabatan`
  ADD PRIMARY KEY (`ID_Jabatan`);

--
-- Indeks untuk tabel `tabel_jadwal_sanggah`
--
ALTER TABLE `tabel_jadwal_sanggah`
  ADD PRIMARY KEY (`ID_Jadwal_Sanggah`);

--
-- Indeks untuk tabel `tabel_jadwal_sanggah_tahap_satu`
--
ALTER TABLE `tabel_jadwal_sanggah_tahap_satu`
  ADD PRIMARY KEY (`ID_Jadwal_Sanggah_Tahap_Satu`);

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
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `Nomor_PRK` (`Nomor_PRK`),
  ADD KEY `ID_Peserta` (`ID_Peserta`),
  ADD KEY `ID_Kriteria_JPL` (`ID_Kriteria_JPL`);

--
-- Indeks untuk tabel `tabel_kategori_dokumen`
--
ALTER TABLE `tabel_kategori_dokumen`
  ADD PRIMARY KEY (`ID_Kategori_Dokumen`),
  ADD KEY `ID_Dokumen` (`ID_Dokumen`);

--
-- Indeks untuk tabel `tabel_kelengkapan_dokumen`
--
ALTER TABLE `tabel_kelengkapan_dokumen`
  ADD PRIMARY KEY (`ID_Tabel_Kelengkapan_Dokumen`),
  ADD KEY `ID_Peserta` (`ID_Peserta`),
  ADD KEY `ID_Dokumen` (`ID_Dokumen`),
  ADD KEY `ID_Komitmen_TKDN` (`ID_Komitmen_TKDN`);

--
-- Indeks untuk tabel `tabel_keterangan`
--
ALTER TABLE `tabel_keterangan`
  ADD PRIMARY KEY (`ID_Keterangan`),
  ADD KEY `ID_Uraian_Pembukaan_Penawaran` (`ID_Uraian_Pembukaan_Penawaran`);

--
-- Indeks untuk tabel `tabel_klbi`
--
ALTER TABLE `tabel_klbi`
  ADD PRIMARY KEY (`ID_KLBI`);

--
-- Indeks untuk tabel `tabel_komitmen_tkdn`
--
ALTER TABLE `tabel_komitmen_tkdn`
  ADD PRIMARY KEY (`ID_Komitmen_TKDN`);

--
-- Indeks untuk tabel `tabel_kota`
--
ALTER TABLE `tabel_kota`
  ADD PRIMARY KEY (`ID_Kota`);

--
-- Indeks untuk tabel `tabel_kriteria_jpl`
--
ALTER TABLE `tabel_kriteria_jpl`
  ADD PRIMARY KEY (`ID_Kriteria_JPL`);

--
-- Indeks untuk tabel `tabel_lampiran`
--
ALTER TABLE `tabel_lampiran`
  ADD PRIMARY KEY (`ID_Lampiran`);

--
-- Indeks untuk tabel `tabel_level`
--
ALTER TABLE `tabel_level`
  ADD PRIMARY KEY (`ID_Level`);

--
-- Indeks untuk tabel `tabel_metode_penawaran`
--
ALTER TABLE `tabel_metode_penawaran`
  ADD PRIMARY KEY (`ID_Metode_Penawaran`);

--
-- Indeks untuk tabel `tabel_metode_pengadaan`
--
ALTER TABLE `tabel_metode_pengadaan`
  ADD PRIMARY KEY (`ID_Metode_Pengadaan`),
  ADD KEY `ID_Kualifikasi` (`ID_Kualifikasi`),
  ADD KEY `ID_Metode_Penawaran` (`ID_Metode_Penawaran`),
  ADD KEY `ID_Tahapan` (`ID_Tahapan`);

--
-- Indeks untuk tabel `tabel_nota_dinas_user`
--
ALTER TABLE `tabel_nota_dinas_user`
  ADD PRIMARY KEY (`Nomor_ND_PPBJ`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Tujuan` (`ID_Tujuan`),
  ADD KEY `ID_Sumber_Anggaran` (`ID_Sumber_Anggaran`),
  ADD KEY `Nomor_PRK` (`Nomor_PRK`),
  ADD KEY `ID_Pegawai` (`ID_Pegawai`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `ID_RAB` (`ID_RAB`);

--
-- Indeks untuk tabel `tabel_nota_dinas_usulan_calon_penyedia`
--
ALTER TABLE `tabel_nota_dinas_usulan_calon_penyedia`
  ADD PRIMARY KEY (`Nomor_Nota_Dinas_Usulan_Calon_Penyedia`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `No_RKS` (`No_RKS`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `Nomor_Berita_Acara_Rapat_Penjelasan` (`Nomor_Berita_Acara_Rapat_Penjelasan`),
  ADD KEY `Nomor_Berita_Acara_Pembukaan_Penawaran` (`Nomor_Berita_Acara_Pembukaan_Penawaran`),
  ADD KEY `Nomor_Berita_Acara_Hasil_Pengadaan` (`Nomor_Berita_Acara_Hasil_Pengadaan`),
  ADD KEY `ID_Ruang_Lingkup` (`ID_Ruang_Lingkup`),
  ADD KEY `ID_Calon_Pemenang` (`ID_Calon_Pemenang`);

--
-- Indeks untuk tabel `tabel_pegawai`
--
ALTER TABLE `tabel_pegawai`
  ADD PRIMARY KEY (`ID_Pegawai`),
  ADD KEY `ID_Jabatan` (`ID_Jabatan`),
  ADD KEY `ID_Level` (`ID_Level`);

--
-- Indeks untuk tabel `tabel_pelaksana_tender`
--
ALTER TABLE `tabel_pelaksana_tender`
  ADD PRIMARY KEY (`ID_Pelaksana_Tender`);

--
-- Indeks untuk tabel `tabel_pemasukkan_dokumen_penawaran`
--
ALTER TABLE `tabel_pemasukkan_dokumen_penawaran`
  ADD PRIMARY KEY (`ID_Pemasukkan_Dokumen_Penawaran`);

--
-- Indeks untuk tabel `tabel_pembahasan_ba_klarifikasi_negosiasi`
--
ALTER TABLE `tabel_pembahasan_ba_klarifikasi_negosiasi`
  ADD PRIMARY KEY (`ID_Pembahasan_BA_Klarifikasi_Negosiasi`);

--
-- Indeks untuk tabel `tabel_pembahasan_cda`
--
ALTER TABLE `tabel_pembahasan_cda`
  ADD PRIMARY KEY (`ID_Pembahasan`);

--
-- Indeks untuk tabel `tabel_pemberitahuan_evaluasi_surat_undangan`
--
ALTER TABLE `tabel_pemberitahuan_evaluasi_surat_undangan`
  ADD PRIMARY KEY (`No_Surat`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Peserta` (`ID_Peserta`),
  ADD KEY `ID_Pembukaan_Sampul_Dua` (`ID_Pembukaan_Sampul_Dua`),
  ADD KEY `No_RKS` (`No_RKS`),
  ADD KEY `ID_Jadwal_Sanggah_Tahap_Satu` (`ID_Jadwal_Sanggah_Tahap_Satu`);

--
-- Indeks untuk tabel `tabel_pemberitahuan_perubahan_rks`
--
ALTER TABLE `tabel_pemberitahuan_perubahan_rks`
  ADD PRIMARY KEY (`Nomor_Surat`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Peserta` (`ID_Peserta`),
  ADD KEY `No_RKS` (`No_RKS`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `ID_Prebid` (`ID_Prebid`),
  ADD KEY `ID_Pertanyaan` (`ID_Pertanyaan`),
  ADD KEY `ID_Perubahan_RKS` (`ID_Perubahan_RKS`),
  ADD KEY `ID_Pemasukkan_Dokumen_Penawaran` (`ID_Pemasukkan_Dokumen_Penawaran`);

--
-- Indeks untuk tabel `tabel_pembukaan_dokumen_penawaran`
--
ALTER TABLE `tabel_pembukaan_dokumen_penawaran`
  ADD PRIMARY KEY (`ID_Pembukaan_Dokumen_Penawaran`);

--
-- Indeks untuk tabel `tabel_pembukaan_sampul_dua`
--
ALTER TABLE `tabel_pembukaan_sampul_dua`
  ADD PRIMARY KEY (`ID_Pembukaan_Sampul_Dua`);

--
-- Indeks untuk tabel `tabel_penawaran_alternatif_atau_penawaran_bersyarat`
--
ALTER TABLE `tabel_penawaran_alternatif_atau_penawaran_bersyarat`
  ADD PRIMARY KEY (`ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat`);

--
-- Indeks untuk tabel `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  ADD PRIMARY KEY (`ID_Pendaftaran`),
  ADD KEY `ID_Kota` (`ID_Kota`);

--
-- Indeks untuk tabel `tabel_penetapan_pemenang`
--
ALTER TABLE `tabel_penetapan_pemenang`
  ADD PRIMARY KEY (`Nomor_Lembar_Penetapan`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `Nomor_Berita_Acara_Hasil_Pengadaan` (`Nomor_Berita_Acara_Hasil_Pengadaan`),
  ADD KEY `No_RKS` (`No_RKS`),
  ADD KEY `Nomor_Nota_Dinas_Usulan_Calon_Penyedia` (`Nomor_Nota_Dinas_Usulan_Calon_Penyedia`),
  ADD KEY `ID_Peserta` (`ID_Peserta`),
  ADD KEY `ID_Harga_Kontrak` (`ID_Harga_Kontrak`);

--
-- Indeks untuk tabel `tabel_penetapan_tim_pengadaan`
--
ALTER TABLE `tabel_penetapan_tim_pengadaan`
  ADD PRIMARY KEY (`Nomor_Penetapan_Tim_Pengadaan`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `No_RKS` (`No_RKS`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `ID_Pegawai` (`ID_Pegawai`);

--
-- Indeks untuk tabel `tabel_pengadaan`
--
ALTER TABLE `tabel_pengadaan`
  ADD PRIMARY KEY (`ID_Pengadaan`),
  ADD KEY `ID_Metode_Pengadaan` (`ID_Metode_Pengadaan`),
  ADD KEY `ID_Sistem_Evaluasi_Penawaran` (`ID_Sistem_Evaluasi_Penawaran`),
  ADD KEY `ID_Jenis_Pengadaan` (`ID_Jenis_Pengadaan`);

--
-- Indeks untuk tabel `tabel_pengajuan_sanggah`
--
ALTER TABLE `tabel_pengajuan_sanggah`
  ADD PRIMARY KEY (`ID_Pengajuan_Sanggah`);

--
-- Indeks untuk tabel `tabel_pengumuman_pemenang`
--
ALTER TABLE `tabel_pengumuman_pemenang`
  ADD PRIMARY KEY (`Nomor_Pengumuman_Pemenang`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `No_RKS` (`No_RKS`),
  ADD KEY `Nomor_Lembar_Penetapan` (`Nomor_Lembar_Penetapan`),
  ADD KEY `ID_Jadwal_Sanggah` (`ID_Jadwal_Sanggah`),
  ADD KEY `ID_Peserta` (`ID_Peserta`),
  ADD KEY `ID_Hasil_Evaluasi_Penawaran` (`ID_Hasil_Evaluasi_Penawaran`);

--
-- Indeks untuk tabel `tabel_pengumuman_prakualifikasi`
--
ALTER TABLE `tabel_pengumuman_prakualifikasi`
  ADD PRIMARY KEY (`Nomor_Pengumuman`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `ID_Prakualifikasi` (`ID_Prakualifikasi`),
  ADD KEY `ID_Pendaftaran` (`ID_Pendaftaran`),
  ADD KEY `ID_Penyampaian` (`ID_Penyampaian`);

--
-- Indeks untuk tabel `tabel_pengumuman_tender`
--
ALTER TABLE `tabel_pengumuman_tender`
  ADD PRIMARY KEY (`Nomor_Pengumuman_Tender`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pelaksana_Tender` (`ID_Pelaksana_Tender`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `ID_Ruang_Lingkup` (`ID_Ruang_Lingkup`),
  ADD KEY `ID_Pendaftaran` (`ID_Pendaftaran`),
  ADD KEY `No_RKS` (`No_RKS`);

--
-- Indeks untuk tabel `tabel_pengumuman_tender_gagal`
--
ALTER TABLE `tabel_pengumuman_tender_gagal`
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `No_RKS` (`No_RKS`);

--
-- Indeks untuk tabel `tabel_peninjauan_lapangan`
--
ALTER TABLE `tabel_peninjauan_lapangan`
  ADD PRIMARY KEY (`ID_Peninjauan_Lapangan`);

--
-- Indeks untuk tabel `tabel_penjelasan_idd`
--
ALTER TABLE `tabel_penjelasan_idd`
  ADD PRIMARY KEY (`ID_Penjelasan_IDD`),
  ADD KEY `ID_Peserta` (`ID_Peserta`);

--
-- Indeks untuk tabel `tabel_penutupan_penyerahan_dokumen_penawaran`
--
ALTER TABLE `tabel_penutupan_penyerahan_dokumen_penawaran`
  ADD PRIMARY KEY (`ID_Penutupan_Penyerahan`),
  ADD KEY `ID_Pelaksana_Tender` (`ID_Pelaksana_Tender`);

--
-- Indeks untuk tabel `tabel_penyampaian`
--
ALTER TABLE `tabel_penyampaian`
  ADD PRIMARY KEY (`ID_Penyampaian`);

--
-- Indeks untuk tabel `tabel_persetujuan_pengadaan`
--
ALTER TABLE `tabel_persetujuan_pengadaan`
  ADD PRIMARY KEY (`ID_Persetujuan_Pengadaan`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `Nomor_DRP` (`Nomor_DRP`),
  ADD KEY `ID_Sumber_Anggaran` (`ID_Sumber_Anggaran`),
  ADD KEY `Nomor_PRK` (`Nomor_PRK`),
  ADD KEY `Nomor_ND_PPBJ` (`Nomor_ND_PPBJ`),
  ADD KEY `ID_Rencana_Kontrak` (`ID_Rencana_Kontrak`),
  ADD KEY `ID_KLBI` (`ID_KLBI`),
  ADD KEY `No_RKS` (`No_RKS`),
  ADD KEY `ID_HPS` (`ID_HPS`),
  ADD KEY `ID_HPE` (`ID_HPE`),
  ADD KEY `ID_Peserta` (`ID_Peserta`),
  ADD KEY `ID_Pegawai` (`ID_Pegawai`),
  ADD KEY `ID_Lampiran` (`ID_Lampiran`);

--
-- Indeks untuk tabel `tabel_perubahan_rks`
--
ALTER TABLE `tabel_perubahan_rks`
  ADD PRIMARY KEY (`ID_Perubahan_RKS`),
  ADD KEY `ID_Pelaksana_Tender` (`ID_Pelaksana_Tender`);

--
-- Indeks untuk tabel `tabel_perwakilan_peserta`
--
ALTER TABLE `tabel_perwakilan_peserta`
  ADD PRIMARY KEY (`ID_Perwakilan_Peserta`),
  ADD KEY `ID_Peserta` (`ID_Peserta`);

--
-- Indeks untuk tabel `tabel_peserta`
--
ALTER TABLE `tabel_peserta`
  ADD PRIMARY KEY (`ID_Peserta`);

--
-- Indeks untuk tabel `tabel_prakualifikasi`
--
ALTER TABLE `tabel_prakualifikasi`
  ADD PRIMARY KEY (`ID_Prakualifikasi`);

--
-- Indeks untuk tabel `tabel_prebid`
--
ALTER TABLE `tabel_prebid`
  ADD PRIMARY KEY (`ID_Prebid`);

--
-- Indeks untuk tabel `tabel_rapat_klarifikasi_negosiasi`
--
ALTER TABLE `tabel_rapat_klarifikasi_negosiasi`
  ADD PRIMARY KEY (`ID_Rapat_Klarifikasi_Negosiasi`);

--
-- Indeks untuk tabel `tabel_referensi_hpe`
--
ALTER TABLE `tabel_referensi_hpe`
  ADD PRIMARY KEY (`ID_Referensi`);

--
-- Indeks untuk tabel `tabel_referensi_hps`
--
ALTER TABLE `tabel_referensi_hps`
  ADD PRIMARY KEY (`ID_Referensi_HPS`);

--
-- Indeks untuk tabel `tabel_rencana_anggaran_biaya`
--
ALTER TABLE `tabel_rencana_anggaran_biaya`
  ADD PRIMARY KEY (`ID_RAB`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Barang` (`ID_Barang`),
  ADD KEY `ID_Transaksi` (`ID_Transaksi`);

--
-- Indeks untuk tabel `tabel_rencana_kontrak`
--
ALTER TABLE `tabel_rencana_kontrak`
  ADD PRIMARY KEY (`ID_Rencana_Kontrak`);

--
-- Indeks untuk tabel `tabel_rincian_ba_gagal`
--
ALTER TABLE `tabel_rincian_ba_gagal`
  ADD PRIMARY KEY (`ID_Rincian_BA_Gagal`),
  ADD KEY `ID_Peserta` (`ID_Peserta`);

--
-- Indeks untuk tabel `tabel_ringkasan_cda`
--
ALTER TABLE `tabel_ringkasan_cda`
  ADD PRIMARY KEY (`Nomor_Ringkasan_CDA`),
  ADD KEY `ID_Pembahasan` (`ID_Pembahasan`);

--
-- Indeks untuk tabel `tabel_ringkasan_peserta_memasukkan_dokumen_penawaran`
--
ALTER TABLE `tabel_ringkasan_peserta_memasukkan_dokumen_penawaran`
  ADD PRIMARY KEY (`ID_Ringkasan_Peserta_Memasukkan_Dokumen_Penawaran`),
  ADD KEY `ID_Uraian_BAHP` (`ID_Uraian_BAHP`),
  ADD KEY `ID_Catatan_Uraian_BAHP` (`ID_Catatan_Uraian_BAHP`);

--
-- Indeks untuk tabel `tabel_ringkasan_rapat_penjelasan`
--
ALTER TABLE `tabel_ringkasan_rapat_penjelasan`
  ADD PRIMARY KEY (`ID_Ringkasan_Rapat_Penjelasan`),
  ADD KEY `ID_Uraian_BAHP` (`ID_Uraian_BAHP`),
  ADD KEY `ID_Catatan_Uraian_BAHP` (`ID_Catatan_Uraian_BAHP`);

--
-- Indeks untuk tabel `tabel_ringkasan_rks`
--
ALTER TABLE `tabel_ringkasan_rks`
  ADD PRIMARY KEY (`No_RKS`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `Nomor_PRK` (`Nomor_PRK`),
  ADD KEY `ID_Pegawai` (`ID_Pegawai`),
  ADD KEY `ID_Sumber_Anggaran` (`ID_Sumber_Anggaran`),
  ADD KEY `ID_HPE` (`ID_HPE`),
  ADD KEY `ID_KLBI` (`ID_KLBI`),
  ADD KEY `ID_Rencana_Kontrak` (`ID_Rencana_Kontrak`);

--
-- Indeks untuk tabel `tabel_ruang_lingkup`
--
ALTER TABLE `tabel_ruang_lingkup`
  ADD PRIMARY KEY (`ID_Ruang_Lingkup`);

--
-- Indeks untuk tabel `tabel_sistem_evaluasi_penawaran`
--
ALTER TABLE `tabel_sistem_evaluasi_penawaran`
  ADD PRIMARY KEY (`ID_Sistem_Evaluasi_Penawaran`);

--
-- Indeks untuk tabel `tabel_sppbj`
--
ALTER TABLE `tabel_sppbj`
  ADD PRIMARY KEY (`Nomor_SPPBJ`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pegawai` (`ID_Pegawai`),
  ADD KEY `ID_Perwakilan_Peserta` (`ID_Perwakilan_Peserta`),
  ADD KEY `Nomor_Kontrak` (`Nomor_Kontrak`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `ID_Ruang_Lingkup` (`ID_Ruang_Lingkup`),
  ADD KEY `No_RKS` (`No_RKS`),
  ADD KEY `Nomor_Lembar_Penetapan` (`Nomor_Lembar_Penetapan`),
  ADD KEY `ID_Harga_Kontrak` (`ID_Harga_Kontrak`);

--
-- Indeks untuk tabel `tabel_sumber_anggaran`
--
ALTER TABLE `tabel_sumber_anggaran`
  ADD PRIMARY KEY (`ID_Sumber_Anggaran`);

--
-- Indeks untuk tabel `tabel_surat_undangan`
--
ALTER TABLE `tabel_surat_undangan`
  ADD PRIMARY KEY (`Nomor_Surat_Undangan`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `No_RKS` (`No_RKS`),
  ADD KEY `Nomor_Berita_Acara_Rapat_Penjelasan` (`Nomor_Berita_Acara_Rapat_Penjelasan`),
  ADD KEY `ID_Pemasukkan_Dokumen_Penawaran` (`ID_Pemasukkan_Dokumen_Penawaran`),
  ADD KEY `ID_Pembukaan_Dokumen_Penawaran` (`ID_Pembukaan_Dokumen_Penawaran`),
  ADD KEY `ID_Detail_Pengumuman_Pemenang` (`ID_Detail_Pengumuman_Pemenang`),
  ADD KEY `ID_Pengajuan_Sanggah` (`ID_Pengajuan_Sanggah`),
  ADD KEY `ID_Calon_Peserta` (`ID_Calon_Peserta`);

--
-- Indeks untuk tabel `tabel_surat_undangan_klarifikasi_negosiasi`
--
ALTER TABLE `tabel_surat_undangan_klarifikasi_negosiasi`
  ADD PRIMARY KEY (`Nomor_Surat_Undangan_Klarifikasi_Negosiasi`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Rapat_Klarifikasi_Negosiasi` (`ID_Rapat_Klarifikasi_Negosiasi`),
  ADD KEY `ID_Peserta` (`ID_Peserta`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`);

--
-- Indeks untuk tabel `tabel_tahapan`
--
ALTER TABLE `tabel_tahapan`
  ADD PRIMARY KEY (`ID_Tahapan`);

--
-- Indeks untuk tabel `tabel_tata_waktu_pelaksanaan`
--
ALTER TABLE `tabel_tata_waktu_pelaksanaan`
  ADD PRIMARY KEY (`ID_Tata_Waktu`),
  ADD KEY `ID_Kota` (`ID_Kota`),
  ADD KEY `ID_Pengadaan` (`ID_Pengadaan`),
  ADD KEY `ID_Rencana_Kontrak` (`ID_Rencana_Kontrak`);

--
-- Indeks untuk tabel `tabel_tipe_sampul`
--
ALTER TABLE `tabel_tipe_sampul`
  ADD PRIMARY KEY (`ID_Tipe_Sampul`);

--
-- Indeks untuk tabel `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`ID_Transaksi`);

--
-- Indeks untuk tabel `tabel_tujuan`
--
ALTER TABLE `tabel_tujuan`
  ADD PRIMARY KEY (`ID_Tujuan`);

--
-- Indeks untuk tabel `tabel_uraian_bahp`
--
ALTER TABLE `tabel_uraian_bahp`
  ADD PRIMARY KEY (`ID_Uraian_BAHP`);

--
-- Indeks untuk tabel `tabel_uraian_pembukaan_penawaran`
--
ALTER TABLE `tabel_uraian_pembukaan_penawaran`
  ADD PRIMARY KEY (`ID_Uraian_Pembukaan_Penawaran`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_ba_gagal_pemasukkan_dokumen`
--
ALTER TABLE `tabel_ba_gagal_pemasukkan_dokumen`
  MODIFY `Nomor_BA_Gagal_Pemasukkan_Dokumen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_ba_pengadaan_gagal`
--
ALTER TABLE `tabel_ba_pengadaan_gagal`
  MODIFY `Nomor_Berita_Acara_Pengadaan_Gagal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_berita_acara_evaluasi_teknis`
--
ALTER TABLE `tabel_berita_acara_evaluasi_teknis`
  MODIFY `Nomor_Berita_Acara_Evaluasi_Teknis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_berita_acara_hasil_pengadaan`
--
ALTER TABLE `tabel_berita_acara_hasil_pengadaan`
  MODIFY `Nomor_Berita_Acara_Hasil_Pengadaan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_berita_acara_klarifikasi_negosiasi`
--
ALTER TABLE `tabel_berita_acara_klarifikasi_negosiasi`
  MODIFY `Nomor_Berita_Acara_Klarifikasi_Negosiasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_calon_pemenang`
--
ALTER TABLE `tabel_calon_pemenang`
  MODIFY `ID_Calon_Pemenang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_catatan_uraian_bahp`
--
ALTER TABLE `tabel_catatan_uraian_bahp`
  MODIFY `ID_Catatan_Uraian_BAHP` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_evaluasi`
--
ALTER TABLE `tabel_evaluasi`
  MODIFY `ID_Evaluasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_gagal_proses_evaluasi_administrasi_teknis`
--
ALTER TABLE `tabel_gagal_proses_evaluasi_administrasi_teknis`
  MODIFY `ID_Gagal_Evaluasi_Administrasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_gagal_proses_negosiasi`
--
ALTER TABLE `tabel_gagal_proses_negosiasi`
  MODIFY `ID_Gagal_Proses_Negosiasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_hasil_evaluasi_penawaran`
--
ALTER TABLE `tabel_hasil_evaluasi_penawaran`
  MODIFY `ID_Hasil_Evaluasi_Penawaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_hasil_pembukaan_dokumen_penawaran`
--
ALTER TABLE `tabel_hasil_pembukaan_dokumen_penawaran`
  MODIFY `ID_Hasil_Pembukaan_Dokumen_Penawaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_hasil_penilaian_evaluasi`
--
ALTER TABLE `tabel_hasil_penilaian_evaluasi`
  MODIFY `ID_Hasil_Penilaian_Evaluasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_idd`
--
ALTER TABLE `tabel_idd`
  MODIFY `ID_IDD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_kategori_dokumen`
--
ALTER TABLE `tabel_kategori_dokumen`
  MODIFY `ID_Kategori_Dokumen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_kelengkapan_dokumen`
--
ALTER TABLE `tabel_kelengkapan_dokumen`
  MODIFY `ID_Tabel_Kelengkapan_Dokumen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_keterangan`
--
ALTER TABLE `tabel_keterangan`
  MODIFY `ID_Keterangan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_penjelasan_idd`
--
ALTER TABLE `tabel_penjelasan_idd`
  MODIFY `ID_Penjelasan_IDD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_penutupan_penyerahan_dokumen_penawaran`
--
ALTER TABLE `tabel_penutupan_penyerahan_dokumen_penawaran`
  MODIFY `ID_Penutupan_Penyerahan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_perwakilan_peserta`
--
ALTER TABLE `tabel_perwakilan_peserta`
  MODIFY `ID_Perwakilan_Peserta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_rincian_ba_gagal`
--
ALTER TABLE `tabel_rincian_ba_gagal`
  MODIFY `ID_Rincian_BA_Gagal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_ringkasan_peserta_memasukkan_dokumen_penawaran`
--
ALTER TABLE `tabel_ringkasan_peserta_memasukkan_dokumen_penawaran`
  MODIFY `ID_Ringkasan_Peserta_Memasukkan_Dokumen_Penawaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_ringkasan_rapat_penjelasan`
--
ALTER TABLE `tabel_ringkasan_rapat_penjelasan`
  MODIFY `ID_Ringkasan_Rapat_Penjelasan` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD CONSTRAINT `tabel_barang_ibfk_1` FOREIGN KEY (`ID_Transaksi`) REFERENCES `tabel_transaksi` (`ID_Transaksi`);

--
-- Ketidakleluasaan untuk tabel `tabel_ba_gagal_pemasukkan_dokumen`
--
ALTER TABLE `tabel_ba_gagal_pemasukkan_dokumen`
  ADD CONSTRAINT `tabel_ba_gagal_pemasukkan_dokumen_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_ba_gagal_pemasukkan_dokumen_ibfk_2` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_ba_gagal_pemasukkan_dokumen_ibfk_3` FOREIGN KEY (`ID_Rincian_BA_Gagal`) REFERENCES `tabel_rincian_ba_gagal` (`ID_Rincian_BA_Gagal`),
  ADD CONSTRAINT `tabel_ba_gagal_pemasukkan_dokumen_ibfk_4` FOREIGN KEY (`ID_Perwakilan_Peserta`) REFERENCES `tabel_perwakilan_peserta` (`ID_Perwakilan_Peserta`);

--
-- Ketidakleluasaan untuk tabel `tabel_ba_pengadaan_gagal`
--
ALTER TABLE `tabel_ba_pengadaan_gagal`
  ADD CONSTRAINT `tabel_ba_pengadaan_gagal_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_ba_pengadaan_gagal_ibfk_10` FOREIGN KEY (`ID_Gagal_Evaluasi_Administrasi`) REFERENCES `tabel_gagal_proses_evaluasi_administrasi_teknis` (`ID_Gagal_Evaluasi_Administrasi`),
  ADD CONSTRAINT `tabel_ba_pengadaan_gagal_ibfk_11` FOREIGN KEY (`ID_Gagal_Proses_Negosiasi`) REFERENCES `tabel_gagal_proses_negosiasi` (`ID_Gagal_Proses_Negosiasi`),
  ADD CONSTRAINT `tabel_ba_pengadaan_gagal_ibfk_2` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_ba_pengadaan_gagal_ibfk_3` FOREIGN KEY (`ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat`) REFERENCES `tabel_penawaran_alternatif_atau_penawaran_bersyarat` (`ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat`),
  ADD CONSTRAINT `tabel_ba_pengadaan_gagal_ibfk_4` FOREIGN KEY (`ID_HPS`) REFERENCES `tabel_hps` (`ID_HPS`),
  ADD CONSTRAINT `tabel_ba_pengadaan_gagal_ibfk_5` FOREIGN KEY (`Nomor_DRP`) REFERENCES `tabel_drp` (`Nomor_DRP`),
  ADD CONSTRAINT `tabel_ba_pengadaan_gagal_ibfk_6` FOREIGN KEY (`Nomor_Pengumuman_Tender`) REFERENCES `tabel_pengumuman_tender` (`Nomor_Pengumuman_Tender`),
  ADD CONSTRAINT `tabel_ba_pengadaan_gagal_ibfk_7` FOREIGN KEY (`ID_Pendaftaran`) REFERENCES `tabel_pendaftaran` (`ID_Pendaftaran`),
  ADD CONSTRAINT `tabel_ba_pengadaan_gagal_ibfk_8` FOREIGN KEY (`No_RKS`) REFERENCES `tabel_ringkasan_rks` (`No_RKS`),
  ADD CONSTRAINT `tabel_ba_pengadaan_gagal_ibfk_9` FOREIGN KEY (`ID_Gagal_Proses_Daftar`) REFERENCES `tabel_gagal_proses_daftar` (`ID_Gagal_Proses_Daftar`);

--
-- Ketidakleluasaan untuk tabel `tabel_berita_acara_evaluasi_teknis`
--
ALTER TABLE `tabel_berita_acara_evaluasi_teknis`
  ADD CONSTRAINT `tabel_berita_acara_evaluasi_teknis_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_berita_acara_evaluasi_teknis_ibfk_2` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_berita_acara_evaluasi_teknis_ibfk_3` FOREIGN KEY (`No_RKS`) REFERENCES `tabel_ringkasan_rks` (`No_RKS`),
  ADD CONSTRAINT `tabel_berita_acara_evaluasi_teknis_ibfk_4` FOREIGN KEY (`ID_Evaluasi`) REFERENCES `tabel_evaluasi` (`ID_Evaluasi`),
  ADD CONSTRAINT `tabel_berita_acara_evaluasi_teknis_ibfk_5` FOREIGN KEY (`Nomor_Berita_Acara_Rapat_Penjelasan`) REFERENCES `tabel_berita_acara_rapat_penjelasan` (`Nomor_Berita_Acara_Rapat_Penjelasan`),
  ADD CONSTRAINT `tabel_berita_acara_evaluasi_teknis_ibfk_6` FOREIGN KEY (`ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat`) REFERENCES `tabel_penawaran_alternatif_atau_penawaran_bersyarat` (`ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat`);

--
-- Ketidakleluasaan untuk tabel `tabel_berita_acara_hasil_pengadaan`
--
ALTER TABLE `tabel_berita_acara_hasil_pengadaan`
  ADD CONSTRAINT `tabel_berita_acara_hasil_pengadaan_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_berita_acara_hasil_pengadaan_ibfk_10` FOREIGN KEY (`ID_Hasil_Penilaian_Evaluasi`) REFERENCES `tabel_hasil_penilaian_evaluasi` (`ID_Hasil_Penilaian_Evaluasi`),
  ADD CONSTRAINT `tabel_berita_acara_hasil_pengadaan_ibfk_11` FOREIGN KEY (`ID_Calon_Pemenang`) REFERENCES `tabel_calon_pemenang` (`ID_Calon_Pemenang`),
  ADD CONSTRAINT `tabel_berita_acara_hasil_pengadaan_ibfk_12` FOREIGN KEY (`ID_Hasil_Evaluasi_Komersial`) REFERENCES `tabel_hasil_evaluasi_komersial` (`ID_Hasil_Evaluasi_Komersial`),
  ADD CONSTRAINT `tabel_berita_acara_hasil_pengadaan_ibfk_2` FOREIGN KEY (`No_RKS`) REFERENCES `tabel_ringkasan_rks` (`No_RKS`),
  ADD CONSTRAINT `tabel_berita_acara_hasil_pengadaan_ibfk_3` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_berita_acara_hasil_pengadaan_ibfk_4` FOREIGN KEY (`ID_Ringkasan_Rapat_Penjelasan`) REFERENCES `tabel_ringkasan_rapat_penjelasan` (`ID_Ringkasan_Rapat_Penjelasan`),
  ADD CONSTRAINT `tabel_berita_acara_hasil_pengadaan_ibfk_5` FOREIGN KEY (`Nomor_Berita_Acara_Pembukaan_Penawaran`) REFERENCES `tabel_berita_acara_pembukaan_penawaran` (`Nomor_Berita_Acara_Pembukaan_Penawaran`),
  ADD CONSTRAINT `tabel_berita_acara_hasil_pengadaan_ibfk_6` FOREIGN KEY (`ID_Ringkasan_Peserta_Memasukkan_Dokumen_Penawaran`) REFERENCES `tabel_ringkasan_peserta_memasukkan_dokumen_penawaran` (`ID_Ringkasan_Peserta_Memasukkan_Dokumen_Penawaran`),
  ADD CONSTRAINT `tabel_berita_acara_hasil_pengadaan_ibfk_7` FOREIGN KEY (`Nomor_Berita_Acara_Rapat_Penjelasan`) REFERENCES `tabel_berita_acara_rapat_penjelasan` (`Nomor_Berita_Acara_Rapat_Penjelasan`),
  ADD CONSTRAINT `tabel_berita_acara_hasil_pengadaan_ibfk_8` FOREIGN KEY (`ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat`) REFERENCES `tabel_penawaran_alternatif_atau_penawaran_bersyarat` (`ID_Penawaran_Alternatif_atau_Penawaran_Bersyarat`),
  ADD CONSTRAINT `tabel_berita_acara_hasil_pengadaan_ibfk_9` FOREIGN KEY (`ID_Tata_Waktu`) REFERENCES `tabel_tata_waktu_pelaksanaan` (`ID_Tata_Waktu`);

--
-- Ketidakleluasaan untuk tabel `tabel_berita_acara_klarifikasi_negosiasi`
--
ALTER TABLE `tabel_berita_acara_klarifikasi_negosiasi`
  ADD CONSTRAINT `tabel_berita_acara_klarifikasi_negosiasi_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_berita_acara_klarifikasi_negosiasi_ibfk_2` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_berita_acara_klarifikasi_negosiasi_ibfk_3` FOREIGN KEY (`No_RKS`) REFERENCES `tabel_ringkasan_rks` (`No_RKS`),
  ADD CONSTRAINT `tabel_berita_acara_klarifikasi_negosiasi_ibfk_4` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`),
  ADD CONSTRAINT `tabel_berita_acara_klarifikasi_negosiasi_ibfk_5` FOREIGN KEY (`ID_Pembahasan_BA_Klarifikasi_Negosiasi`) REFERENCES `tabel_pembahasan_ba_klarifikasi_negosiasi` (`ID_Pembahasan_BA_Klarifikasi_Negosiasi`);

--
-- Ketidakleluasaan untuk tabel `tabel_berita_acara_pembukaan_penawaran`
--
ALTER TABLE `tabel_berita_acara_pembukaan_penawaran`
  ADD CONSTRAINT `tabel_berita_acara_pembukaan_penawaran_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_berita_acara_pembukaan_penawaran_ibfk_2` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_berita_acara_pembukaan_penawaran_ibfk_3` FOREIGN KEY (`No_RKS`) REFERENCES `tabel_ringkasan_rks` (`No_RKS`),
  ADD CONSTRAINT `tabel_berita_acara_pembukaan_penawaran_ibfk_4` FOREIGN KEY (`ID_Ruang_Lingkup`) REFERENCES `tabel_ruang_lingkup` (`ID_Ruang_Lingkup`),
  ADD CONSTRAINT `tabel_berita_acara_pembukaan_penawaran_ibfk_5` FOREIGN KEY (`ID_Hasil_Pembukaan_Dokumen_Penawaran`) REFERENCES `tabel_hasil_pembukaan_dokumen_penawaran` (`ID_Hasil_Pembukaan_Dokumen_Penawaran`),
  ADD CONSTRAINT `tabel_berita_acara_pembukaan_penawaran_ibfk_6` FOREIGN KEY (`ID_Tabel_Kelengkapan_Dokumen`) REFERENCES `tabel_kelengkapan_dokumen` (`ID_Tabel_Kelengkapan_Dokumen`),
  ADD CONSTRAINT `tabel_berita_acara_pembukaan_penawaran_ibfk_7` FOREIGN KEY (`ID_Tipe_Sampul`) REFERENCES `tabel_tipe_sampul` (`ID_Tipe_Sampul`);

--
-- Ketidakleluasaan untuk tabel `tabel_berita_acara_rapat_penjelasan`
--
ALTER TABLE `tabel_berita_acara_rapat_penjelasan`
  ADD CONSTRAINT `tabel_berita_acara_rapat_penjelasan_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_berita_acara_rapat_penjelasan_ibfk_2` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_berita_acara_rapat_penjelasan_ibfk_3` FOREIGN KEY (`ID_Peninjauan_Lapangan`) REFERENCES `tabel_peninjauan_lapangan` (`ID_Peninjauan_Lapangan`),
  ADD CONSTRAINT `tabel_berita_acara_rapat_penjelasan_ibfk_4` FOREIGN KEY (`ID_Penutupan_Penyerahan`) REFERENCES `tabel_penutupan_penyerahan_dokumen_penawaran` (`ID_Penutupan_Penyerahan`),
  ADD CONSTRAINT `tabel_berita_acara_rapat_penjelasan_ibfk_5` FOREIGN KEY (`ID_Perwakilan_Peserta`) REFERENCES `tabel_perwakilan_peserta` (`ID_Perwakilan_Peserta`),
  ADD CONSTRAINT `tabel_berita_acara_rapat_penjelasan_ibfk_6` FOREIGN KEY (`ID_Pegawai`) REFERENCES `tabel_pegawai` (`ID_Pegawai`),
  ADD CONSTRAINT `tabel_berita_acara_rapat_penjelasan_ibfk_7` FOREIGN KEY (`ID_Ahli_Subjek_Teknis`) REFERENCES `tabel_ahli_subjek_teknis` (`ID_Ahli_Subjek_Teknis`);

--
-- Ketidakleluasaan untuk tabel `tabel_calon_pemenang`
--
ALTER TABLE `tabel_calon_pemenang`
  ADD CONSTRAINT `tabel_calon_pemenang_ibfk_1` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`),
  ADD CONSTRAINT `tabel_calon_pemenang_ibfk_2` FOREIGN KEY (`ID_Komitmen_TKDN`) REFERENCES `tabel_komitmen_tkdn` (`ID_Komitmen_TKDN`);

--
-- Ketidakleluasaan untuk tabel `tabel_catatan_uraian_bahp`
--
ALTER TABLE `tabel_catatan_uraian_bahp`
  ADD CONSTRAINT `tabel_catatan_uraian_bahp_ibfk_1` FOREIGN KEY (`ID_Uraian_BAHP`) REFERENCES `tabel_uraian_bahp` (`ID_Uraian_BAHP`);

--
-- Ketidakleluasaan untuk tabel `tabel_evaluasi`
--
ALTER TABLE `tabel_evaluasi`
  ADD CONSTRAINT `tabel_evaluasi_ibfk_1` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`);

--
-- Ketidakleluasaan untuk tabel `tabel_gagal_proses_evaluasi_administrasi_teknis`
--
ALTER TABLE `tabel_gagal_proses_evaluasi_administrasi_teknis`
  ADD CONSTRAINT `tabel_gagal_proses_evaluasi_administrasi_teknis_ibfk_1` FOREIGN KEY (`ID_Pemasukkan_Dokumen_Penawaran`) REFERENCES `tabel_pemasukkan_dokumen_penawaran` (`ID_Pemasukkan_Dokumen_Penawaran`);

--
-- Ketidakleluasaan untuk tabel `tabel_gagal_proses_negosiasi`
--
ALTER TABLE `tabel_gagal_proses_negosiasi`
  ADD CONSTRAINT `tabel_gagal_proses_negosiasi_ibfk_1` FOREIGN KEY (`ID_Hasil_Penilaian_Evaluasi`) REFERENCES `tabel_hasil_penilaian_evaluasi` (`ID_Hasil_Penilaian_Evaluasi`),
  ADD CONSTRAINT `tabel_gagal_proses_negosiasi_ibfk_2` FOREIGN KEY (`ID_Hasil_Evaluasi_Komersial`) REFERENCES `tabel_hasil_evaluasi_komersial` (`ID_Hasil_Evaluasi_Komersial`),
  ADD CONSTRAINT `tabel_gagal_proses_negosiasi_ibfk_3` FOREIGN KEY (`Nomor_Berita_Acara_Klarifikasi_Negosiasi`) REFERENCES `tabel_berita_acara_klarifikasi_negosiasi` (`Nomor_Berita_Acara_Klarifikasi_Negosiasi`);

--
-- Ketidakleluasaan untuk tabel `tabel_hasil_evaluasi_penawaran`
--
ALTER TABLE `tabel_hasil_evaluasi_penawaran`
  ADD CONSTRAINT `tabel_hasil_evaluasi_penawaran_ibfk_1` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`);

--
-- Ketidakleluasaan untuk tabel `tabel_hasil_pembukaan_dokumen_penawaran`
--
ALTER TABLE `tabel_hasil_pembukaan_dokumen_penawaran`
  ADD CONSTRAINT `tabel_hasil_pembukaan_dokumen_penawaran_ibfk_1` FOREIGN KEY (`ID_Uraian_Pembukaan_Penawaran`) REFERENCES `tabel_uraian_pembukaan_penawaran` (`ID_Uraian_Pembukaan_Penawaran`),
  ADD CONSTRAINT `tabel_hasil_pembukaan_dokumen_penawaran_ibfk_2` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`),
  ADD CONSTRAINT `tabel_hasil_pembukaan_dokumen_penawaran_ibfk_3` FOREIGN KEY (`ID_Keterangan`) REFERENCES `tabel_keterangan` (`ID_Keterangan`);

--
-- Ketidakleluasaan untuk tabel `tabel_hasil_penilaian_evaluasi`
--
ALTER TABLE `tabel_hasil_penilaian_evaluasi`
  ADD CONSTRAINT `tabel_hasil_penilaian_evaluasi_ibfk_1` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`),
  ADD CONSTRAINT `tabel_hasil_penilaian_evaluasi_ibfk_2` FOREIGN KEY (`ID_Komitmen_TKDN`) REFERENCES `tabel_komitmen_tkdn` (`ID_Komitmen_TKDN`);

--
-- Ketidakleluasaan untuk tabel `tabel_hpe`
--
ALTER TABLE `tabel_hpe`
  ADD CONSTRAINT `tabel_hpe_ibfk_1` FOREIGN KEY (`Nomor_PRK`) REFERENCES `tabel_anggaran` (`Nomor_PRK`),
  ADD CONSTRAINT `tabel_hpe_ibfk_2` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_hpe_ibfk_3` FOREIGN KEY (`ID_Rencana_Kontrak`) REFERENCES `tabel_rencana_kontrak` (`ID_Rencana_Kontrak`),
  ADD CONSTRAINT `tabel_hpe_ibfk_4` FOREIGN KEY (`ID_Referensi_HPE`) REFERENCES `tabel_referensi_hpe` (`ID_Referensi`),
  ADD CONSTRAINT `tabel_hpe_ibfk_5` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`);

--
-- Ketidakleluasaan untuk tabel `tabel_hps`
--
ALTER TABLE `tabel_hps`
  ADD CONSTRAINT `tabel_hps_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_hps_ibfk_2` FOREIGN KEY (`Nomor_PRK`) REFERENCES `tabel_anggaran` (`Nomor_PRK`),
  ADD CONSTRAINT `tabel_hps_ibfk_3` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_hps_ibfk_4` FOREIGN KEY (`ID_Referensi_HPS`) REFERENCES `tabel_referensi_hps` (`ID_Referensi_HPS`),
  ADD CONSTRAINT `tabel_hps_ibfk_5` FOREIGN KEY (`ID_Rencana_Kontrak`) REFERENCES `tabel_rencana_kontrak` (`ID_Rencana_Kontrak`),
  ADD CONSTRAINT `tabel_hps_ibfk_6` FOREIGN KEY (`ID_HPE`) REFERENCES `tabel_hpe` (`ID_HPE`);

--
-- Ketidakleluasaan untuk tabel `tabel_idd`
--
ALTER TABLE `tabel_idd`
  ADD CONSTRAINT `tabel_idd_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_idd_ibfk_2` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_idd_ibfk_3` FOREIGN KEY (`ID_Penjelasan_IDD`) REFERENCES `tabel_penjelasan_idd` (`ID_Penjelasan_IDD`);

--
-- Ketidakleluasaan untuk tabel `tabel_justifikasi_penunjukkan_langsung`
--
ALTER TABLE `tabel_justifikasi_penunjukkan_langsung`
  ADD CONSTRAINT `tabel_justifikasi_penunjukkan_langsung_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_justifikasi_penunjukkan_langsung_ibfk_2` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_justifikasi_penunjukkan_langsung_ibfk_3` FOREIGN KEY (`Nomor_PRK`) REFERENCES `tabel_anggaran` (`Nomor_PRK`),
  ADD CONSTRAINT `tabel_justifikasi_penunjukkan_langsung_ibfk_4` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`),
  ADD CONSTRAINT `tabel_justifikasi_penunjukkan_langsung_ibfk_5` FOREIGN KEY (`ID_Kriteria_JPL`) REFERENCES `tabel_kriteria_jpl` (`ID_Kriteria_JPL`);

--
-- Ketidakleluasaan untuk tabel `tabel_kategori_dokumen`
--
ALTER TABLE `tabel_kategori_dokumen`
  ADD CONSTRAINT `tabel_kategori_dokumen_ibfk_1` FOREIGN KEY (`ID_Dokumen`) REFERENCES `tabel_dokumen_dalam_kelengkapan` (`ID_Dokumen`);

--
-- Ketidakleluasaan untuk tabel `tabel_kelengkapan_dokumen`
--
ALTER TABLE `tabel_kelengkapan_dokumen`
  ADD CONSTRAINT `tabel_kelengkapan_dokumen_ibfk_1` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`),
  ADD CONSTRAINT `tabel_kelengkapan_dokumen_ibfk_2` FOREIGN KEY (`ID_Dokumen`) REFERENCES `tabel_dokumen_dalam_kelengkapan` (`ID_Dokumen`),
  ADD CONSTRAINT `tabel_kelengkapan_dokumen_ibfk_3` FOREIGN KEY (`ID_Komitmen_TKDN`) REFERENCES `tabel_komitmen_tkdn` (`ID_Komitmen_TKDN`);

--
-- Ketidakleluasaan untuk tabel `tabel_keterangan`
--
ALTER TABLE `tabel_keterangan`
  ADD CONSTRAINT `tabel_keterangan_ibfk_1` FOREIGN KEY (`ID_Uraian_Pembukaan_Penawaran`) REFERENCES `tabel_uraian_pembukaan_penawaran` (`ID_Uraian_Pembukaan_Penawaran`);

--
-- Ketidakleluasaan untuk tabel `tabel_metode_pengadaan`
--
ALTER TABLE `tabel_metode_pengadaan`
  ADD CONSTRAINT `tabel_metode_pengadaan_ibfk_1` FOREIGN KEY (`ID_Kualifikasi`) REFERENCES `nama_tabel_kualifikasi` (`ID_Kualifikasi`),
  ADD CONSTRAINT `tabel_metode_pengadaan_ibfk_2` FOREIGN KEY (`ID_Metode_Penawaran`) REFERENCES `tabel_metode_penawaran` (`ID_Metode_Penawaran`),
  ADD CONSTRAINT `tabel_metode_pengadaan_ibfk_3` FOREIGN KEY (`ID_Tahapan`) REFERENCES `tabel_tahapan` (`ID_Tahapan`);

--
-- Ketidakleluasaan untuk tabel `tabel_nota_dinas_user`
--
ALTER TABLE `tabel_nota_dinas_user`
  ADD CONSTRAINT `tabel_nota_dinas_user_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_nota_dinas_user_ibfk_2` FOREIGN KEY (`ID_Tujuan`) REFERENCES `tabel_tujuan` (`ID_Tujuan`),
  ADD CONSTRAINT `tabel_nota_dinas_user_ibfk_3` FOREIGN KEY (`ID_Sumber_Anggaran`) REFERENCES `tabel_sumber_anggaran` (`ID_Sumber_Anggaran`),
  ADD CONSTRAINT `tabel_nota_dinas_user_ibfk_4` FOREIGN KEY (`Nomor_PRK`) REFERENCES `tabel_anggaran` (`Nomor_PRK`),
  ADD CONSTRAINT `tabel_nota_dinas_user_ibfk_5` FOREIGN KEY (`ID_Pegawai`) REFERENCES `tabel_pegawai` (`ID_Pegawai`),
  ADD CONSTRAINT `tabel_nota_dinas_user_ibfk_6` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_nota_dinas_user_ibfk_7` FOREIGN KEY (`ID_RAB`) REFERENCES `tabel_rencana_anggaran_biaya` (`ID_RAB`);

--
-- Ketidakleluasaan untuk tabel `tabel_nota_dinas_usulan_calon_penyedia`
--
ALTER TABLE `tabel_nota_dinas_usulan_calon_penyedia`
  ADD CONSTRAINT `tabel_nota_dinas_usulan_calon_penyedia_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_nota_dinas_usulan_calon_penyedia_ibfk_2` FOREIGN KEY (`No_RKS`) REFERENCES `tabel_ringkasan_rks` (`No_RKS`),
  ADD CONSTRAINT `tabel_nota_dinas_usulan_calon_penyedia_ibfk_3` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_nota_dinas_usulan_calon_penyedia_ibfk_4` FOREIGN KEY (`Nomor_Berita_Acara_Rapat_Penjelasan`) REFERENCES `tabel_berita_acara_rapat_penjelasan` (`Nomor_Berita_Acara_Rapat_Penjelasan`),
  ADD CONSTRAINT `tabel_nota_dinas_usulan_calon_penyedia_ibfk_5` FOREIGN KEY (`Nomor_Berita_Acara_Pembukaan_Penawaran`) REFERENCES `tabel_berita_acara_pembukaan_penawaran` (`Nomor_Berita_Acara_Pembukaan_Penawaran`),
  ADD CONSTRAINT `tabel_nota_dinas_usulan_calon_penyedia_ibfk_6` FOREIGN KEY (`Nomor_Berita_Acara_Hasil_Pengadaan`) REFERENCES `tabel_berita_acara_hasil_pengadaan` (`Nomor_Berita_Acara_Hasil_Pengadaan`),
  ADD CONSTRAINT `tabel_nota_dinas_usulan_calon_penyedia_ibfk_7` FOREIGN KEY (`ID_Ruang_Lingkup`) REFERENCES `tabel_ruang_lingkup` (`ID_Ruang_Lingkup`),
  ADD CONSTRAINT `tabel_nota_dinas_usulan_calon_penyedia_ibfk_8` FOREIGN KEY (`ID_Calon_Pemenang`) REFERENCES `tabel_calon_pemenang` (`ID_Calon_Pemenang`);

--
-- Ketidakleluasaan untuk tabel `tabel_pegawai`
--
ALTER TABLE `tabel_pegawai`
  ADD CONSTRAINT `tabel_pegawai_ibfk_1` FOREIGN KEY (`ID_Jabatan`) REFERENCES `tabel_jabatan` (`ID_Jabatan`),
  ADD CONSTRAINT `tabel_pegawai_ibfk_2` FOREIGN KEY (`ID_Level`) REFERENCES `tabel_level` (`ID_Level`);

--
-- Ketidakleluasaan untuk tabel `tabel_pemberitahuan_evaluasi_surat_undangan`
--
ALTER TABLE `tabel_pemberitahuan_evaluasi_surat_undangan`
  ADD CONSTRAINT `tabel_pemberitahuan_evaluasi_surat_undangan_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_pemberitahuan_evaluasi_surat_undangan_ibfk_2` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`),
  ADD CONSTRAINT `tabel_pemberitahuan_evaluasi_surat_undangan_ibfk_3` FOREIGN KEY (`ID_Pembukaan_Sampul_Dua`) REFERENCES `tabel_pembukaan_sampul_dua` (`ID_Pembukaan_Sampul_Dua`),
  ADD CONSTRAINT `tabel_pemberitahuan_evaluasi_surat_undangan_ibfk_4` FOREIGN KEY (`No_RKS`) REFERENCES `tabel_ringkasan_rks` (`No_RKS`),
  ADD CONSTRAINT `tabel_pemberitahuan_evaluasi_surat_undangan_ibfk_5` FOREIGN KEY (`ID_Jadwal_Sanggah_Tahap_Satu`) REFERENCES `tabel_jadwal_sanggah_tahap_satu` (`ID_Jadwal_Sanggah_Tahap_Satu`);

--
-- Ketidakleluasaan untuk tabel `tabel_pemberitahuan_perubahan_rks`
--
ALTER TABLE `tabel_pemberitahuan_perubahan_rks`
  ADD CONSTRAINT `tabel_pemberitahuan_perubahan_rks_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_pemberitahuan_perubahan_rks_ibfk_2` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`),
  ADD CONSTRAINT `tabel_pemberitahuan_perubahan_rks_ibfk_3` FOREIGN KEY (`No_RKS`) REFERENCES `tabel_ringkasan_rks` (`No_RKS`),
  ADD CONSTRAINT `tabel_pemberitahuan_perubahan_rks_ibfk_4` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_pemberitahuan_perubahan_rks_ibfk_5` FOREIGN KEY (`ID_Prebid`) REFERENCES `tabel_prebid` (`ID_Prebid`),
  ADD CONSTRAINT `tabel_pemberitahuan_perubahan_rks_ibfk_6` FOREIGN KEY (`ID_Pertanyaan`) REFERENCES `tabel_formulir_pertanyaan_dan_klarifikasi` (`ID_Pertanyaan`),
  ADD CONSTRAINT `tabel_pemberitahuan_perubahan_rks_ibfk_7` FOREIGN KEY (`ID_Perubahan_RKS`) REFERENCES `tabel_perubahan_rks` (`ID_Perubahan_RKS`),
  ADD CONSTRAINT `tabel_pemberitahuan_perubahan_rks_ibfk_8` FOREIGN KEY (`ID_Pemasukkan_Dokumen_Penawaran`) REFERENCES `tabel_pemasukkan_dokumen_penawaran` (`ID_Pemasukkan_Dokumen_Penawaran`);

--
-- Ketidakleluasaan untuk tabel `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  ADD CONSTRAINT `tabel_pendaftaran_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`);

--
-- Ketidakleluasaan untuk tabel `tabel_penetapan_pemenang`
--
ALTER TABLE `tabel_penetapan_pemenang`
  ADD CONSTRAINT `tabel_penetapan_pemenang_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_penetapan_pemenang_ibfk_2` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_penetapan_pemenang_ibfk_3` FOREIGN KEY (`Nomor_Berita_Acara_Hasil_Pengadaan`) REFERENCES `tabel_berita_acara_hasil_pengadaan` (`Nomor_Berita_Acara_Hasil_Pengadaan`),
  ADD CONSTRAINT `tabel_penetapan_pemenang_ibfk_4` FOREIGN KEY (`No_RKS`) REFERENCES `tabel_ringkasan_rks` (`No_RKS`),
  ADD CONSTRAINT `tabel_penetapan_pemenang_ibfk_5` FOREIGN KEY (`Nomor_Nota_Dinas_Usulan_Calon_Penyedia`) REFERENCES `tabel_nota_dinas_usulan_calon_penyedia` (`Nomor_Nota_Dinas_Usulan_Calon_Penyedia`),
  ADD CONSTRAINT `tabel_penetapan_pemenang_ibfk_6` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`),
  ADD CONSTRAINT `tabel_penetapan_pemenang_ibfk_7` FOREIGN KEY (`ID_Harga_Kontrak`) REFERENCES `tabel_harga_kontrak` (`ID_Harga_Kontrak`);

--
-- Ketidakleluasaan untuk tabel `tabel_penetapan_tim_pengadaan`
--
ALTER TABLE `tabel_penetapan_tim_pengadaan`
  ADD CONSTRAINT `tabel_penetapan_tim_pengadaan_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_penetapan_tim_pengadaan_ibfk_2` FOREIGN KEY (`No_RKS`) REFERENCES `tabel_ringkasan_rks` (`No_RKS`),
  ADD CONSTRAINT `tabel_penetapan_tim_pengadaan_ibfk_3` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_penetapan_tim_pengadaan_ibfk_4` FOREIGN KEY (`ID_Pegawai`) REFERENCES `tabel_pegawai` (`ID_Pegawai`);

--
-- Ketidakleluasaan untuk tabel `tabel_pengadaan`
--
ALTER TABLE `tabel_pengadaan`
  ADD CONSTRAINT `tabel_pengadaan_ibfk_1` FOREIGN KEY (`ID_Metode_Pengadaan`) REFERENCES `tabel_metode_pengadaan` (`ID_Metode_Pengadaan`),
  ADD CONSTRAINT `tabel_pengadaan_ibfk_2` FOREIGN KEY (`ID_Sistem_Evaluasi_Penawaran`) REFERENCES `tabel_sistem_evaluasi_penawaran` (`ID_Sistem_Evaluasi_Penawaran`),
  ADD CONSTRAINT `tabel_pengadaan_ibfk_3` FOREIGN KEY (`ID_Jenis_Pengadaan`) REFERENCES `tabel_jenis_pengadaan` (`ID_Jenis_Pengadaan`);

--
-- Ketidakleluasaan untuk tabel `tabel_pengumuman_pemenang`
--
ALTER TABLE `tabel_pengumuman_pemenang`
  ADD CONSTRAINT `tabel_pengumuman_pemenang_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_pengumuman_pemenang_ibfk_2` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_pengumuman_pemenang_ibfk_3` FOREIGN KEY (`No_RKS`) REFERENCES `tabel_ringkasan_rks` (`No_RKS`),
  ADD CONSTRAINT `tabel_pengumuman_pemenang_ibfk_4` FOREIGN KEY (`Nomor_Lembar_Penetapan`) REFERENCES `tabel_penetapan_pemenang` (`Nomor_Lembar_Penetapan`),
  ADD CONSTRAINT `tabel_pengumuman_pemenang_ibfk_5` FOREIGN KEY (`ID_Jadwal_Sanggah`) REFERENCES `tabel_jadwal_sanggah` (`ID_Jadwal_Sanggah`),
  ADD CONSTRAINT `tabel_pengumuman_pemenang_ibfk_6` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`),
  ADD CONSTRAINT `tabel_pengumuman_pemenang_ibfk_7` FOREIGN KEY (`ID_Hasil_Evaluasi_Penawaran`) REFERENCES `tabel_hasil_evaluasi_penawaran` (`ID_Hasil_Evaluasi_Penawaran`);

--
-- Ketidakleluasaan untuk tabel `tabel_pengumuman_prakualifikasi`
--
ALTER TABLE `tabel_pengumuman_prakualifikasi`
  ADD CONSTRAINT `tabel_pengumuman_prakualifikasi_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_pengumuman_prakualifikasi_ibfk_2` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_pengumuman_prakualifikasi_ibfk_3` FOREIGN KEY (`ID_Prakualifikasi`) REFERENCES `tabel_prakualifikasi` (`ID_Prakualifikasi`),
  ADD CONSTRAINT `tabel_pengumuman_prakualifikasi_ibfk_4` FOREIGN KEY (`ID_Pendaftaran`) REFERENCES `tabel_pendaftaran` (`ID_Pendaftaran`),
  ADD CONSTRAINT `tabel_pengumuman_prakualifikasi_ibfk_5` FOREIGN KEY (`ID_Penyampaian`) REFERENCES `tabel_penyampaian` (`ID_Penyampaian`);

--
-- Ketidakleluasaan untuk tabel `tabel_pengumuman_tender`
--
ALTER TABLE `tabel_pengumuman_tender`
  ADD CONSTRAINT `tabel_pengumuman_tender_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_pengumuman_tender_ibfk_2` FOREIGN KEY (`ID_Pelaksana_Tender`) REFERENCES `tabel_pelaksana_tender` (`ID_Pelaksana_Tender`),
  ADD CONSTRAINT `tabel_pengumuman_tender_ibfk_3` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_pengumuman_tender_ibfk_4` FOREIGN KEY (`ID_Ruang_Lingkup`) REFERENCES `tabel_ruang_lingkup` (`ID_Ruang_Lingkup`),
  ADD CONSTRAINT `tabel_pengumuman_tender_ibfk_5` FOREIGN KEY (`ID_Pendaftaran`) REFERENCES `tabel_pendaftaran` (`ID_Pendaftaran`),
  ADD CONSTRAINT `tabel_pengumuman_tender_ibfk_6` FOREIGN KEY (`No_RKS`) REFERENCES `tabel_ringkasan_rks` (`No_RKS`);

--
-- Ketidakleluasaan untuk tabel `tabel_pengumuman_tender_gagal`
--
ALTER TABLE `tabel_pengumuman_tender_gagal`
  ADD CONSTRAINT `tabel_pengumuman_tender_gagal_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_pengumuman_tender_gagal_ibfk_2` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_pengumuman_tender_gagal_ibfk_3` FOREIGN KEY (`No_RKS`) REFERENCES `tabel_ringkasan_rks` (`No_RKS`);

--
-- Ketidakleluasaan untuk tabel `tabel_penjelasan_idd`
--
ALTER TABLE `tabel_penjelasan_idd`
  ADD CONSTRAINT `tabel_penjelasan_idd_ibfk_1` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`);

--
-- Ketidakleluasaan untuk tabel `tabel_penutupan_penyerahan_dokumen_penawaran`
--
ALTER TABLE `tabel_penutupan_penyerahan_dokumen_penawaran`
  ADD CONSTRAINT `tabel_penutupan_penyerahan_dokumen_penawaran_ibfk_1` FOREIGN KEY (`ID_Pelaksana_Tender`) REFERENCES `tabel_pelaksana_tender` (`ID_Pelaksana_Tender`);

--
-- Ketidakleluasaan untuk tabel `tabel_persetujuan_pengadaan`
--
ALTER TABLE `tabel_persetujuan_pengadaan`
  ADD CONSTRAINT `tabel_persetujuan_pengadaan_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_persetujuan_pengadaan_ibfk_10` FOREIGN KEY (`ID_HPS`) REFERENCES `tabel_hps` (`ID_HPS`),
  ADD CONSTRAINT `tabel_persetujuan_pengadaan_ibfk_11` FOREIGN KEY (`ID_HPE`) REFERENCES `tabel_hpe` (`ID_HPE`),
  ADD CONSTRAINT `tabel_persetujuan_pengadaan_ibfk_12` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`),
  ADD CONSTRAINT `tabel_persetujuan_pengadaan_ibfk_13` FOREIGN KEY (`ID_Pegawai`) REFERENCES `tabel_pegawai` (`ID_Pegawai`),
  ADD CONSTRAINT `tabel_persetujuan_pengadaan_ibfk_14` FOREIGN KEY (`ID_Lampiran`) REFERENCES `tabel_lampiran` (`ID_Lampiran`),
  ADD CONSTRAINT `tabel_persetujuan_pengadaan_ibfk_2` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_persetujuan_pengadaan_ibfk_3` FOREIGN KEY (`Nomor_DRP`) REFERENCES `tabel_drp` (`Nomor_DRP`),
  ADD CONSTRAINT `tabel_persetujuan_pengadaan_ibfk_4` FOREIGN KEY (`ID_Sumber_Anggaran`) REFERENCES `tabel_sumber_anggaran` (`ID_Sumber_Anggaran`),
  ADD CONSTRAINT `tabel_persetujuan_pengadaan_ibfk_5` FOREIGN KEY (`Nomor_PRK`) REFERENCES `tabel_anggaran` (`Nomor_PRK`),
  ADD CONSTRAINT `tabel_persetujuan_pengadaan_ibfk_6` FOREIGN KEY (`Nomor_ND_PPBJ`) REFERENCES `tabel_nota_dinas_user` (`Nomor_ND_PPBJ`),
  ADD CONSTRAINT `tabel_persetujuan_pengadaan_ibfk_7` FOREIGN KEY (`ID_Rencana_Kontrak`) REFERENCES `tabel_rencana_kontrak` (`ID_Rencana_Kontrak`),
  ADD CONSTRAINT `tabel_persetujuan_pengadaan_ibfk_8` FOREIGN KEY (`ID_KLBI`) REFERENCES `tabel_klbi` (`ID_KLBI`),
  ADD CONSTRAINT `tabel_persetujuan_pengadaan_ibfk_9` FOREIGN KEY (`No_RKS`) REFERENCES `tabel_ringkasan_rks` (`No_RKS`);

--
-- Ketidakleluasaan untuk tabel `tabel_perubahan_rks`
--
ALTER TABLE `tabel_perubahan_rks`
  ADD CONSTRAINT `tabel_perubahan_rks_ibfk_1` FOREIGN KEY (`ID_Pelaksana_Tender`) REFERENCES `tabel_pelaksana_tender` (`ID_Pelaksana_Tender`);

--
-- Ketidakleluasaan untuk tabel `tabel_perwakilan_peserta`
--
ALTER TABLE `tabel_perwakilan_peserta`
  ADD CONSTRAINT `tabel_perwakilan_peserta_ibfk_1` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`);

--
-- Ketidakleluasaan untuk tabel `tabel_rencana_anggaran_biaya`
--
ALTER TABLE `tabel_rencana_anggaran_biaya`
  ADD CONSTRAINT `tabel_rencana_anggaran_biaya_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_rencana_anggaran_biaya_ibfk_2` FOREIGN KEY (`ID_Barang`) REFERENCES `tabel_barang` (`ID_Barang`),
  ADD CONSTRAINT `tabel_rencana_anggaran_biaya_ibfk_3` FOREIGN KEY (`ID_Transaksi`) REFERENCES `tabel_transaksi` (`ID_Transaksi`);

--
-- Ketidakleluasaan untuk tabel `tabel_rincian_ba_gagal`
--
ALTER TABLE `tabel_rincian_ba_gagal`
  ADD CONSTRAINT `tabel_rincian_ba_gagal_ibfk_1` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`);

--
-- Ketidakleluasaan untuk tabel `tabel_ringkasan_cda`
--
ALTER TABLE `tabel_ringkasan_cda`
  ADD CONSTRAINT `tabel_ringkasan_cda_ibfk_1` FOREIGN KEY (`ID_Pembahasan`) REFERENCES `tabel_pembahasan_cda` (`ID_Pembahasan`);

--
-- Ketidakleluasaan untuk tabel `tabel_ringkasan_peserta_memasukkan_dokumen_penawaran`
--
ALTER TABLE `tabel_ringkasan_peserta_memasukkan_dokumen_penawaran`
  ADD CONSTRAINT `tabel_ringkasan_peserta_memasukkan_dokumen_penawaran_ibfk_1` FOREIGN KEY (`ID_Uraian_BAHP`) REFERENCES `tabel_uraian_bahp` (`ID_Uraian_BAHP`),
  ADD CONSTRAINT `tabel_ringkasan_peserta_memasukkan_dokumen_penawaran_ibfk_2` FOREIGN KEY (`ID_Catatan_Uraian_BAHP`) REFERENCES `tabel_catatan_uraian_bahp` (`ID_Catatan_Uraian_BAHP`);

--
-- Ketidakleluasaan untuk tabel `tabel_ringkasan_rapat_penjelasan`
--
ALTER TABLE `tabel_ringkasan_rapat_penjelasan`
  ADD CONSTRAINT `tabel_ringkasan_rapat_penjelasan_ibfk_1` FOREIGN KEY (`ID_Uraian_BAHP`) REFERENCES `tabel_uraian_bahp` (`ID_Uraian_BAHP`),
  ADD CONSTRAINT `tabel_ringkasan_rapat_penjelasan_ibfk_2` FOREIGN KEY (`ID_Catatan_Uraian_BAHP`) REFERENCES `tabel_catatan_uraian_bahp` (`ID_Catatan_Uraian_BAHP`);

--
-- Ketidakleluasaan untuk tabel `tabel_ringkasan_rks`
--
ALTER TABLE `tabel_ringkasan_rks`
  ADD CONSTRAINT `tabel_ringkasan_rks_ibfk_1` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_ringkasan_rks_ibfk_2` FOREIGN KEY (`Nomor_PRK`) REFERENCES `tabel_anggaran` (`Nomor_PRK`),
  ADD CONSTRAINT `tabel_ringkasan_rks_ibfk_3` FOREIGN KEY (`ID_Pegawai`) REFERENCES `tabel_pegawai` (`ID_Pegawai`),
  ADD CONSTRAINT `tabel_ringkasan_rks_ibfk_4` FOREIGN KEY (`ID_Sumber_Anggaran`) REFERENCES `tabel_sumber_anggaran` (`ID_Sumber_Anggaran`),
  ADD CONSTRAINT `tabel_ringkasan_rks_ibfk_5` FOREIGN KEY (`ID_HPE`) REFERENCES `tabel_hpe` (`ID_HPE`),
  ADD CONSTRAINT `tabel_ringkasan_rks_ibfk_6` FOREIGN KEY (`ID_KLBI`) REFERENCES `tabel_klbi` (`ID_KLBI`),
  ADD CONSTRAINT `tabel_ringkasan_rks_ibfk_7` FOREIGN KEY (`ID_Rencana_Kontrak`) REFERENCES `tabel_rencana_kontrak` (`ID_Rencana_Kontrak`);

--
-- Ketidakleluasaan untuk tabel `tabel_sppbj`
--
ALTER TABLE `tabel_sppbj`
  ADD CONSTRAINT `tabel_sppbj_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_sppbj_ibfk_2` FOREIGN KEY (`ID_Pegawai`) REFERENCES `tabel_pegawai` (`ID_Pegawai`),
  ADD CONSTRAINT `tabel_sppbj_ibfk_3` FOREIGN KEY (`ID_Perwakilan_Peserta`) REFERENCES `tabel_perwakilan_peserta` (`ID_Perwakilan_Peserta`),
  ADD CONSTRAINT `tabel_sppbj_ibfk_4` FOREIGN KEY (`Nomor_Kontrak`) REFERENCES `tabel_dokumen_kontrak` (`Nomor_Kontrak`),
  ADD CONSTRAINT `tabel_sppbj_ibfk_5` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_sppbj_ibfk_6` FOREIGN KEY (`ID_Ruang_Lingkup`) REFERENCES `tabel_ruang_lingkup` (`ID_Ruang_Lingkup`),
  ADD CONSTRAINT `tabel_sppbj_ibfk_7` FOREIGN KEY (`No_RKS`) REFERENCES `tabel_ringkasan_rks` (`No_RKS`),
  ADD CONSTRAINT `tabel_sppbj_ibfk_8` FOREIGN KEY (`Nomor_Lembar_Penetapan`) REFERENCES `tabel_penetapan_pemenang` (`Nomor_Lembar_Penetapan`),
  ADD CONSTRAINT `tabel_sppbj_ibfk_9` FOREIGN KEY (`ID_Harga_Kontrak`) REFERENCES `tabel_harga_kontrak` (`ID_Harga_Kontrak`);

--
-- Ketidakleluasaan untuk tabel `tabel_surat_undangan`
--
ALTER TABLE `tabel_surat_undangan`
  ADD CONSTRAINT `tabel_surat_undangan_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_surat_undangan_ibfk_2` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_surat_undangan_ibfk_3` FOREIGN KEY (`No_RKS`) REFERENCES `tabel_ringkasan_rks` (`No_RKS`),
  ADD CONSTRAINT `tabel_surat_undangan_ibfk_4` FOREIGN KEY (`Nomor_Berita_Acara_Rapat_Penjelasan`) REFERENCES `tabel_berita_acara_rapat_penjelasan` (`Nomor_Berita_Acara_Rapat_Penjelasan`),
  ADD CONSTRAINT `tabel_surat_undangan_ibfk_5` FOREIGN KEY (`ID_Pemasukkan_Dokumen_Penawaran`) REFERENCES `tabel_pemasukkan_dokumen_penawaran` (`ID_Pemasukkan_Dokumen_Penawaran`),
  ADD CONSTRAINT `tabel_surat_undangan_ibfk_6` FOREIGN KEY (`ID_Pembukaan_Dokumen_Penawaran`) REFERENCES `tabel_pembukaan_dokumen_penawaran` (`ID_Pembukaan_Dokumen_Penawaran`),
  ADD CONSTRAINT `tabel_surat_undangan_ibfk_7` FOREIGN KEY (`ID_Detail_Pengumuman_Pemenang`) REFERENCES `tabel_detail_pengumuman_pemenang` (`ID_Detail_Pengumuman_Pemenang`),
  ADD CONSTRAINT `tabel_surat_undangan_ibfk_8` FOREIGN KEY (`ID_Pengajuan_Sanggah`) REFERENCES `tabel_pengajuan_sanggah` (`ID_Pengajuan_Sanggah`),
  ADD CONSTRAINT `tabel_surat_undangan_ibfk_9` FOREIGN KEY (`ID_Calon_Peserta`) REFERENCES `tabel_calon_peserta_shortlist_dpt` (`ID_Calon_Peserta`);

--
-- Ketidakleluasaan untuk tabel `tabel_surat_undangan_klarifikasi_negosiasi`
--
ALTER TABLE `tabel_surat_undangan_klarifikasi_negosiasi`
  ADD CONSTRAINT `tabel_surat_undangan_klarifikasi_negosiasi_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_surat_undangan_klarifikasi_negosiasi_ibfk_2` FOREIGN KEY (`ID_Rapat_Klarifikasi_Negosiasi`) REFERENCES `tabel_rapat_klarifikasi_negosiasi` (`ID_Rapat_Klarifikasi_Negosiasi`),
  ADD CONSTRAINT `tabel_surat_undangan_klarifikasi_negosiasi_ibfk_3` FOREIGN KEY (`ID_Peserta`) REFERENCES `tabel_peserta` (`ID_Peserta`),
  ADD CONSTRAINT `tabel_surat_undangan_klarifikasi_negosiasi_ibfk_4` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`);

--
-- Ketidakleluasaan untuk tabel `tabel_tata_waktu_pelaksanaan`
--
ALTER TABLE `tabel_tata_waktu_pelaksanaan`
  ADD CONSTRAINT `tabel_tata_waktu_pelaksanaan_ibfk_1` FOREIGN KEY (`ID_Kota`) REFERENCES `tabel_kota` (`ID_Kota`),
  ADD CONSTRAINT `tabel_tata_waktu_pelaksanaan_ibfk_2` FOREIGN KEY (`ID_Pengadaan`) REFERENCES `tabel_pengadaan` (`ID_Pengadaan`),
  ADD CONSTRAINT `tabel_tata_waktu_pelaksanaan_ibfk_3` FOREIGN KEY (`ID_Rencana_Kontrak`) REFERENCES `tabel_rencana_kontrak` (`ID_Rencana_Kontrak`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
