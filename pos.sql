-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2020 pada 22.13
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_tbl`
--

CREATE TABLE `category_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_active` int(2) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category_tbl`
--

INSERT INTO `category_tbl` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(6, 'Priaa', 0, '1593113349', '1593227697'),
(7, 'Wanita', 1, '1593113361', NULL),
(8, 'indra', 1, '1593184122', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hadiah_tbl`
--

CREATE TABLE `hadiah_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `poin_reward` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hadiah_tbl`
--

INSERT INTO `hadiah_tbl` (`id`, `name`, `image`, `poin_reward`, `created_at`, `updated_at`) VALUES
(4, 'mobil', 'download.jpg', 5, 1593260404, NULL),
(5, 'test', 'directur3.jpg', 100, 1593288426, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, 'admin123', 1, 0, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_tbl`
--

CREATE TABLE `product_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product_tbl`
--

INSERT INTO `product_tbl` (`id`, `name`, `category_id`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(8, 'bola', 6, 1, 1, '1593184904', NULL),
(9, 'baju', 6, 10000, 5, '1593227788', '1593260904');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_tbl`
--

CREATE TABLE `transaksi_tbl` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_jumlah` int(11) NOT NULL,
  `total_payment` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_tbl`
--

INSERT INTO `transaksi_tbl` (`id`, `product_name`, `product_jumlah`, `total_payment`, `cash`, `kembalian`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'baju', 10, 100000, 1000000, 900000, 2, 1593241789, NULL),
(2, 'baju', 5, 50000, 100000, 50000, 2, 1593242750, NULL),
(3, 'baju', 4, 40000, 100000, 60000, 2, 1593242851, NULL),
(4, 'baju', 2, 20000, 100000, 80000, 2, 1593242890, NULL),
(5, 'baju', 8, 80000, 100000, 20000, 2, 1593244816, NULL),
(6, 'baju', 1, 10000, 100000, 90000, 4, 1593260740, NULL),
(7, 'baju', 1, 10000, 100000, 90000, 4, 1593260825, NULL),
(8, 'baju', 1, 10000, 10000, 0, 4, 1593260904, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_tbl`
--

CREATE TABLE `user_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `poin` int(11) DEFAULT NULL,
  `role_id` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_tbl`
--

INSERT INTO `user_tbl` (`id`, `name`, `email`, `password`, `image`, `poin`, `role_id`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'admin@admin.com', '$2y$10$iDVBUEDvdBFMgnucbmPFSO56eBkryij46VSFXVt4YavTIVJIwo3DW', 'founder.jpg', NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'customer', 'customer@example.com', '$2y$10$HAH4bM4.tVE.F5BmT3mMB.JYKesnVqa3rT/uUu9sSTtckSwkQrm26', 'directur1.jpg', 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category_tbl`
--
ALTER TABLE `category_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hadiah_tbl`
--
ALTER TABLE `hadiah_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_tbl`
--
ALTER TABLE `product_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi_tbl`
--
ALTER TABLE `transaksi_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category_tbl`
--
ALTER TABLE `category_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `hadiah_tbl`
--
ALTER TABLE `hadiah_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `product_tbl`
--
ALTER TABLE `product_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transaksi_tbl`
--
ALTER TABLE `transaksi_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
