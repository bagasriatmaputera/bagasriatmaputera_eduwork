-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Des 2024 pada 14.20
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek_eduwork`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_obat`
--

CREATE TABLE `detail_obat` (
  `id_obat` int(11) NOT NULL,
  `pabrikan` varchar(100) DEFAULT NULL,
  `dosis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_obat`
--

INSERT INTO `detail_obat` (`id_obat`, `pabrikan`, `dosis`) VALUES
(1, 'Kimia Farma', '500mg'),
(2, 'Sido Muncul', '250mg'),
(3, 'Kalbe Farma', '10mg'),
(4, 'Dexa Medica', '400mg'),
(5, 'Kimia Farma', '500mg'),
(6, 'Phapros', '200mg'),
(7, 'Kalbe Farma', '100mg'),
(8, 'Sido Muncul', '250mg'),
(9, 'Kimia Farma', '5mg'),
(10, 'Phapros', '500mg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`) VALUES
(1, 'Andi Prasetyo', 'Jl. Merdeka No. 5, Jakarta'),
(2, 'Budi Santoso', 'Jl. Raya No. 8, Surabaya'),
(3, 'Cici Amalia', 'Jl. Mangga Dua No. 12, Bandung'),
(4, 'Dewi Lestari', 'Jl. Kebon Jeruk No. 20, Bali'),
(5, 'Eko Prasetyo', 'Jl. Pahlawan No. 3, Medan'),
(6, 'Fanny Indriana', 'Jl. Kuningan No. 7, Jakarta'),
(7, 'Gilang Setiawan', 'Jl. Merpati No. 15, Yogyakarta'),
(8, 'Hendra Gunawan', 'Jl. Alam Sutera No. 22, Tangerang'),
(9, 'Indra Wijaya', 'Jl. Raya No. 10, Semarang'),
(10, 'Joko Santoso', 'Jl. Cempaka No. 4, Malang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan_transaksi`
--

CREATE TABLE `pelanggan_transaksi` (
  `id_pelanggan` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_obat`
--

CREATE TABLE `table_obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(22) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `table_obat`
--

INSERT INTO `table_obat` (`id_obat`, `nama_obat`, `kategori`, `harga`, `stok`) VALUES
(1, 'Paracetamol', 'Analgesik', '5000.00', 100),
(2, 'Amoxicillin', 'Antibiotik', '10000.00', 50),
(3, 'Cetirizine', 'Antihistamin', '8000.00', 70),
(4, 'Ibuprofen', 'Analgesik', '12000.00', 30),
(5, 'Metformin', 'Antidiabetik', '15000.00', 40),
(6, 'Ranitidine', 'Antasida', '7000.00', 25),
(7, 'Loratadine', 'Antihistamin', '9000.00', 80),
(8, 'Salbutamol', 'Bronkodilator', '10000.00', 60),
(9, 'Omeprazole', 'Antasida', '20000.00', 35),
(10, 'Ciprofloxacin', 'Antibiotik', '18000.00', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_obat` int(11) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total_harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_obat`, `tanggal_transaksi`, `jumlah`, `total_harga`) VALUES
(1, 1, '2024-12-01', 2, '20000.00'),
(2, 3, '2024-12-02', 1, '15000.00'),
(3, 5, '2024-12-03', 3, '45000.00'),
(4, 6, '2024-12-04', 2, '40000.00'),
(5, 7, '2024-12-05', 5, '50000.00'),
(6, 8, '2024-12-06', 1, '25000.00'),
(7, 9, '2024-12-07', 4, '20000.00'),
(8, 10, '2024-12-08', 2, '10000.00'),
(9, 1, '2024-12-09', 6, '30000.00'),
(10, 2, '2024-12-10', 3, '45000.00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_obat`
--
ALTER TABLE `detail_obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pelanggan_transaksi`
--
ALTER TABLE `pelanggan_transaksi`
  ADD PRIMARY KEY (`id_pelanggan`,`id_transaksi`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indeks untuk tabel `table_obat`
--
ALTER TABLE `table_obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_obat` (`id_obat`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `table_obat`
--
ALTER TABLE `table_obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_obat`
--
ALTER TABLE `detail_obat`
  ADD CONSTRAINT `detail_obat_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `table_obat` (`id_obat`);

--
-- Ketidakleluasaan untuk tabel `pelanggan_transaksi`
--
ALTER TABLE `pelanggan_transaksi`
  ADD CONSTRAINT `pelanggan_transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `pelanggan_transaksi_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `table_obat` (`id_obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
