-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Okt 2022 pada 04.54
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_7eleven`
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
('001', 'Makanan Ringan', 'Taro', 5000, 1000),
('002', 'makan ringan', 'Citato', 4000, 1000),
('003', 'susu', 'Ultra Milk', 5000, 1000),
('004', 'Minuman', 'Teh Botol Sosro', 4000, 1000),
('005', 'mie instan', 'Indomie', 3500, 1000),
('006', 'makanan ringan', 'lays', 17000, 10000),
('008', 'makanan ringan', 'oreo', 8000, 1000);

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
(7, '001', 'Makanan Ringan', 'Taro', 5000, 5, 10000, 15000, 'ashari', 20000, 5000, '19/10/2022', '07:15:35'),
(8, '002', 'makan ringan', 'Citato', 4000, 10, 10000, 30000, 'doni', 40000, 10000, '19/10/2022', '07:16:34'),
(9, '003', 'susu', 'Ultra Milk', 5000, 5, 10000, 15000, 'Nia', 20000, 5000, '19/10/2022', '07:17:12'),
(10, '004', 'Minuman', 'Teh Botol Sosro', 4000, 7, 20000, 8000, 'hilman', 10000, 2000, '19/10/2022', '07:17:58'),
(11, '005', 'mie instan', 'Indomie', 3500, 20, 20000, 50000, 'toni', 100000, 50000, '19/10/2022', '07:18:32'),
(12, '001', 'Makanan Ringan', 'Taro', 5000, 5, 20000, 5000, 'dgd', 100000, 95000, '20/10/2022', '08:02:06'),
(13, '006', 'makanan ringan', 'lays', 15000, 5, 20000, 55000, 'maemunah', 100000, 45000, '21/10/2022', '07:06:37'),
(14, '008', 'makanan ringan', 'oreo', 8000, 5, 20000, 20000, 'mawar', 30000, 10000, '21/10/2022', '09:28:48');

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
(6, 'rajendra', 'rajendra123', '123', 'admin', 'Laki-laki', 'etfewt4', '090385038'),
(7, 'ashari', 'ashari123', '123', 'user', 'Laki-laki', 'edgfew', '4675547'),
(11, 'yano', 'yano123', '123', 'admin', 'Laki-laki', 'jl. haji baping', '1234567'),
(12, 'mawar', 'mawar123', '123', 'user', 'Perempuan', 'jl. jkaja', '12345'),
(13, 'joko', 'joko123', '123', 'user', 'Laki-laki', 'jl. hhah', '12345');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
