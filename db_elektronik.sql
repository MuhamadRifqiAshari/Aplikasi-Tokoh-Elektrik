-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jul 2020 pada 10.58
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
-- Database: `db_elektronik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `merk`, `harga`, `stok`) VALUES
('tv001', 'TV', 'Sony', 5150000, 10),
('mc001', 'Mesin Cuci', 'Sharp', 3899000, 10),
('kp001', 'Kompor', 'Rinnai', 610000, 20),
('mj001', 'Magic Jar', 'Miyako', 210000, 15),
('ka001', 'Kipas Angin', 'Cosmos', 250000, 9),
('st001', 'Setrika', 'Miyako', 99000, 12),
('ps001', 'Playstaion 4', 'Sony', 4399000, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(10) NOT NULL,
  `id_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `jumlah_beli` int(10) NOT NULL,
  `diskon` int(10) NOT NULL,
  `harga_total` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bayar` int(20) NOT NULL,
  `kembalian` int(20) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `waktu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_barang`, `nama_barang`, `merk`, `harga`, `jumlah_beli`, `diskon`, `harga_total`, `nama`, `bayar`, `kembalian`, `tanggal`, `waktu`) VALUES
(1, 'ka001', 'Kipas Angin', 'Cosmos', 250000, 1, 10000, 240000, 'yucc', 250000, 10000, '06/07/2020', '16:50:57'),
(2, 'mj001', 'Magic Jar', 'Miyako', 210000, 2, 10000, 410000, 'Yusup', 410000, 0, '09/07/2020', '22:21:12'),
(3, 'ps001', 'Playstaion 4', 'Sony', 4399000, 1, 20000, 4379000, 'Yucubbb', 4400000, 21000, '10/07/2020', '23:33:07'),
(4, 'st001', 'Setrika', 'Miyako', 99000, 1, 10000, 89000, 'Yucubbb', 100000, 11000, '10/07/2020', '23:39:43'),
(5, 'st001', 'Setrika', 'Miyako', 99000, 2, 20000, 178000, 'Josuke', 180000, 2000, '11/07/2020', '15:17:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`, `jenis_kelamin`, `alamat`, `telp`) VALUES
(1, 'admin', 'admin', 'admin123', 'admin', 'Laki-laki', 'Bantul, Yogyakarta', '089123456789'),
(2, 'Yusup Hanafi', 'yusup', 'yusup123', 'user', 'Laki-laki', 'Boyolali', '089659570144'),
(3, 'yucc', 'yucc', 'yucc123', 'user', 'Laki-laki', 'Boyolali', '089123456789'),
(4, 'Yucubb', 'cub', 'cub123', 'user', 'Laki-laki', 'Boyolali', '089123456789'),
(5, 'Josuke', 'josuke', 'josuke123', 'user', 'Laki-laki', 'Bantul', '089123456789');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
