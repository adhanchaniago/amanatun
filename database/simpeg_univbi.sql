-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Okt 2020 pada 05.19
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpeg_univbi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen_dosen`
--

CREATE TABLE `absen_dosen` (
  `id_absen_dosen` int(20) NOT NULL,
  `id_jadwal_kuliah` int(20) NOT NULL,
  `nip_pegawai` varchar(40) NOT NULL,
  `tanggal` varchar(40) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `masuk` varchar(40) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absen_dosen`
--

INSERT INTO `absen_dosen` (`id_absen_dosen`, `id_jadwal_kuliah`, `nip_pegawai`, `tanggal`, `hari`, `masuk`, `keterangan`) VALUES
(1, 1, '213123', '10', 'senin', '1', 'hadir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen_pegawai`
--

CREATE TABLE `absen_pegawai` (
  `id_absen_pegawai` int(20) NOT NULL,
  `id_detail_absen_pegawai` int(20) NOT NULL,
  `nip_pegawai` varchar(40) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `hari` varchar(40) NOT NULL,
  `jam` varchar(30) NOT NULL,
  `keterangan` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absen_pegawai`
--

INSERT INTO `absen_pegawai` (`id_absen_pegawai`, `id_detail_absen_pegawai`, `nip_pegawai`, `tanggal`, `hari`, `jam`, `keterangan`) VALUES
(1, 1, '121231', '10', 'senin', '10.00', 'hadir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_absen_pegawai`
--

CREATE TABLE `detail_absen_pegawai` (
  `id_detail_absen_pegawai` int(20) NOT NULL,
  `id_absen_pegawai` int(20) NOT NULL,
  `jam` varchar(30) NOT NULL,
  `keterangan` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_absen_pegawai`
--

INSERT INTO `detail_absen_pegawai` (`id_detail_absen_pegawai`, `id_absen_pegawai`, `jam`, `keterangan`) VALUES
(1, 1, '10.00', 'hadir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_izin`
--

CREATE TABLE `detail_izin` (
  `id_detail_izin` int(20) NOT NULL,
  `id_izin` int(20) NOT NULL,
  `tgl_izin` varchar(20) NOT NULL,
  `jenis` varchar(40) NOT NULL,
  `lama` varchar(40) NOT NULL,
  `keperluan` varchar(100) NOT NULL,
  `rentang_tanggal` varchar(40) NOT NULL,
  `keterangan` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_izin`
--

INSERT INTO `detail_izin` (`id_detail_izin`, `id_izin`, `tgl_izin`, `jenis`, `lama`, `keperluan`, `rentang_tanggal`, `keterangan`, `status`) VALUES
(1, 1, '10', 'sakit', '2', 'berobat', '10-12', 'sakit', 'sakit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_kepanitiaan`
--

CREATE TABLE `detail_kepanitiaan` (
  `id_kepanitiaan` int(20) NOT NULL,
  `id_detail_kepanitiaan` int(20) NOT NULL,
  `id_peran_kepanitiaan` int(20) NOT NULL,
  `nip_pegawai` varchar(80) NOT NULL,
  `honor` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_kepanitiaan`
--

INSERT INTO `detail_kepanitiaan` (`id_kepanitiaan`, `id_detail_kepanitiaan`, `id_peran_kepanitiaan`, `nip_pegawai`, `honor`) VALUES
(1, 1, 1, '2312312312', '1000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `izin`
--

CREATE TABLE `izin` (
  `id_izin` int(20) NOT NULL,
  `id_detail_izin` int(20) NOT NULL,
  `nip_pegawai` varchar(80) NOT NULL,
  `tgl_izin` varchar(20) NOT NULL,
  `jenis` varchar(40) NOT NULL,
  `lama` varchar(40) NOT NULL,
  `keperluan` varchar(100) NOT NULL,
  `rentang_tanggal` varchar(40) NOT NULL,
  `keterangan` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `izin`
--

INSERT INTO `izin` (`id_izin`, `id_detail_izin`, `nip_pegawai`, `tgl_izin`, `jenis`, `lama`, `keperluan`, `rentang_tanggal`, `keterangan`, `status`) VALUES
(1, 1, '231231231231', '10', 'sakit', '2', 'berobat', '10-12', 'sakit', 'sakit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `sks_wajib` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama`, `sks_wajib`) VALUES
(1, 'Merza', '24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan_fungsional`
--

CREATE TABLE `jabatan_fungsional` (
  `id_jabatan_fungsional` int(20) NOT NULL,
  `jabatan` varchar(80) NOT NULL,
  `nomor_sk` varchar(40) NOT NULL,
  `tgl_mulai` varchar(40) NOT NULL,
  `tgl_berakhir` varchar(20) NOT NULL,
  `status` varchar(40) NOT NULL,
  `nip_dosen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan_fungsional`
--

INSERT INTO `jabatan_fungsional` (`id_jabatan_fungsional`, `jabatan`, `nomor_sk`, `tgl_mulai`, `tgl_berakhir`, `status`, `nip_dosen`) VALUES
(1, 'Kaprodi', '312312', '10', '12', 'aktif', '12312312');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan_pegawai`
--

CREATE TABLE `jabatan_pegawai` (
  `id_jabatan_pegawai` int(20) NOT NULL,
  `id_jabatan` int(20) NOT NULL,
  `id_masa_kerja` int(20) NOT NULL,
  `id_jenjang` int(20) NOT NULL,
  `nip_pegawai` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan_pegawai`
--

INSERT INTO `jabatan_pegawai` (`id_jabatan_pegawai`, `id_jabatan`, `id_masa_kerja`, `id_jenjang`, `nip_pegawai`) VALUES
(1, 1, 1, 1, '0895378184182');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_surat_peringatan`
--

CREATE TABLE `jenis_surat_peringatan` (
  `id_jenis_sp` int(20) NOT NULL,
  `nama` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_surat_peringatan`
--

INSERT INTO `jenis_surat_peringatan` (`id_jenis_sp`, `nama`) VALUES
(1, 'Aku');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenjang`
--

CREATE TABLE `jenjang` (
  `id_jenjang` int(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nominal` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenjang`
--

INSERT INTO `jenjang` (`id_jenjang`, `nama`, `nominal`) VALUES
(1, 'Saputra', '1000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepanitiaan`
--

CREATE TABLE `kepanitiaan` (
  `id_kepanitiaan` int(20) NOT NULL,
  `id_detail_kepanitiaan` int(20) NOT NULL,
  `id_peran_kepanitiaan` int(20) NOT NULL,
  `nip_pegawai` varchar(80) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal` varchar(40) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `honor` varchar(40) NOT NULL,
  `keterangan` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kepanitiaan`
--

INSERT INTO `kepanitiaan` (`id_kepanitiaan`, `id_detail_kepanitiaan`, `id_peran_kepanitiaan`, `nip_pegawai`, `nama`, `tanggal`, `lokasi`, `honor`, `keterangan`) VALUES
(1, 1, 1, '2312312312', 'irvan', '10', 'asda', '1000000', 'asda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepegawaian`
--

CREATE TABLE `kepegawaian` (
  `id_kepegawaain` int(20) NOT NULL,
  `id_jabatan_pegawai` int(20) NOT NULL,
  `id_jabatan` int(20) NOT NULL,
  `id_masa_kerja` int(20) NOT NULL,
  `id_jenjang` int(20) NOT NULL,
  `id_setting_gaji` int(20) NOT NULL,
  `nip_pegawai` varchar(40) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `sks_wajib` varchar(40) NOT NULL,
  `nominal` varchar(40) NOT NULL,
  `gapok` varchar(40) NOT NULL,
  `tunjangan` varchar(40) NOT NULL,
  `transport` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kepegawaian`
--

INSERT INTO `kepegawaian` (`id_kepegawaain`, `id_jabatan_pegawai`, `id_jabatan`, `id_masa_kerja`, `id_jenjang`, `id_setting_gaji`, `nip_pegawai`, `nama`, `sks_wajib`, `nominal`, `gapok`, `tunjangan`, `transport`) VALUES
(1, 1, 1, 1, 1, 1, '0895378184182', 'Merza', '24', '1000000', '1000000', '1000000', '2000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(20) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `masa_kerja`
--

CREATE TABLE `masa_kerja` (
  `id_masa_kerja` int(20) NOT NULL,
  `masa_kerja` varchar(100) NOT NULL,
  `nominal` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `masa_kerja`
--

INSERT INTO `masa_kerja` (`id_masa_kerja`, `masa_kerja`, `nominal`) VALUES
(1, '10', '1000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peran_kepanitiaan`
--

CREATE TABLE `peran_kepanitiaan` (
  `id_peran_kepanitiaan` int(20) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peran_kepanitiaan`
--

INSERT INTO `peran_kepanitiaan` (`id_peran_kepanitiaan`, `nama`) VALUES
(1, 'irvan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang_jabatan`
--

CREATE TABLE `ruang_jabatan` (
  `id_ruang_jabatan` int(20) NOT NULL,
  `id_jabatan` int(20) NOT NULL,
  `id_krjru` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_gaji`
--

CREATE TABLE `setting_gaji` (
  `id_setting_gaji` int(20) NOT NULL,
  `id_jabatan` int(20) NOT NULL,
  `gapok` varchar(40) NOT NULL,
  `tunjangan` varchar(40) NOT NULL,
  `transport` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting_gaji`
--

INSERT INTO `setting_gaji` (`id_setting_gaji`, `id_jabatan`, `gapok`, `tunjangan`, `transport`) VALUES
(1, 1, '1000000', '1000000', '2000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_peringatan`
--

CREATE TABLE `surat_peringatan` (
  `id_surat_peringatan` int(20) NOT NULL,
  `id_jenis_sp` int(20) NOT NULL,
  `nip_pegawai` varchar(40) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `jenis_sp` varchar(100) NOT NULL,
  `perihal` varchar(40) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `file` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_peringatan`
--

INSERT INTO `surat_peringatan` (`id_surat_peringatan`, `id_jenis_sp`, `nip_pegawai`, `nama`, `jenis_sp`, `perihal`, `tanggal`, `file`) VALUES
(1, 1, '1231231', 'Aku', 'sp1', 'coli', '10', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(20) NOT NULL,
  `role` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Pimpinan'),
(3, 'Dosen'),
(4, 'Absensi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absen_dosen`
--
ALTER TABLE `absen_dosen`
  ADD PRIMARY KEY (`id_absen_dosen`);

--
-- Indeks untuk tabel `absen_pegawai`
--
ALTER TABLE `absen_pegawai`
  ADD PRIMARY KEY (`id_absen_pegawai`);

--
-- Indeks untuk tabel `detail_absen_pegawai`
--
ALTER TABLE `detail_absen_pegawai`
  ADD PRIMARY KEY (`id_detail_absen_pegawai`);

--
-- Indeks untuk tabel `detail_izin`
--
ALTER TABLE `detail_izin`
  ADD PRIMARY KEY (`id_detail_izin`);

--
-- Indeks untuk tabel `detail_kepanitiaan`
--
ALTER TABLE `detail_kepanitiaan`
  ADD PRIMARY KEY (`id_detail_kepanitiaan`);

--
-- Indeks untuk tabel `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id_izin`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `jabatan_fungsional`
--
ALTER TABLE `jabatan_fungsional`
  ADD PRIMARY KEY (`id_jabatan_fungsional`);

--
-- Indeks untuk tabel `jabatan_pegawai`
--
ALTER TABLE `jabatan_pegawai`
  ADD PRIMARY KEY (`id_jabatan_pegawai`);

--
-- Indeks untuk tabel `jenis_surat_peringatan`
--
ALTER TABLE `jenis_surat_peringatan`
  ADD PRIMARY KEY (`id_jenis_sp`);

--
-- Indeks untuk tabel `jenjang`
--
ALTER TABLE `jenjang`
  ADD PRIMARY KEY (`id_jenjang`);

--
-- Indeks untuk tabel `kepanitiaan`
--
ALTER TABLE `kepanitiaan`
  ADD PRIMARY KEY (`id_kepanitiaan`);

--
-- Indeks untuk tabel `kepegawaian`
--
ALTER TABLE `kepegawaian`
  ADD PRIMARY KEY (`id_kepegawaain`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `masa_kerja`
--
ALTER TABLE `masa_kerja`
  ADD PRIMARY KEY (`id_masa_kerja`);

--
-- Indeks untuk tabel `peran_kepanitiaan`
--
ALTER TABLE `peran_kepanitiaan`
  ADD PRIMARY KEY (`id_peran_kepanitiaan`);

--
-- Indeks untuk tabel `ruang_jabatan`
--
ALTER TABLE `ruang_jabatan`
  ADD PRIMARY KEY (`id_ruang_jabatan`);

--
-- Indeks untuk tabel `setting_gaji`
--
ALTER TABLE `setting_gaji`
  ADD PRIMARY KEY (`id_setting_gaji`);

--
-- Indeks untuk tabel `surat_peringatan`
--
ALTER TABLE `surat_peringatan`
  ADD PRIMARY KEY (`id_surat_peringatan`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;