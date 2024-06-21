-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 10:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aufa_kodam`
--

-- --------------------------------------------------------

--
-- Table structure for table `khodam_names`
--

CREATE TABLE `khodam_names` (
  `id` int(6) UNSIGNED NOT NULL,
  `nama_khodam` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khodam_names`
--

INSERT INTO `khodam_names` (`id`, `nama_khodam`) VALUES
(1, 'Martabak Cokelat'),
(2, 'Naga Sakti'),
(3, 'Ratu Pantai Selatan'),
(4, 'Harimau Putih'),
(5, 'Raja Jin'),
(6, 'Dewi Bulan'),
(7, 'Penjaga Hutan'),
(8, 'Singa Emas'),
(9, 'Banteng Sakti'),
(10, 'Elang Perkasa'),
(11, 'Laba-laba Sunda'),
(12, 'Buaya Hitam'),
(13, 'Katak Sigma'),
(14, 'Skibidi Sigma'),
(15, 'Ikan Lohan Tidak Gyat'),
(16, 'Burung Puyuh Warna Bjir'),
(17, 'Monyet Hutan'),
(18, 'Gajah Ngawi'),
(19, 'Kursi Mewing'),
(20, 'Balon Ku Sigma'),
(21, 'Di Hina Tetap Sigma'),
(22, 'Kue Keju'),
(23, 'Mobil Bekas Toyota Gyat'),
(24, 'Rehan Toyota'),
(25, 'Ikbal Hotwil'),
(26, 'Kuda Pake Sendal'),
(27, 'Sendal'),
(28, 'Jaket Bapak'),
(29, 'Kambing Hitam'),
(30, 'Pintu Gerbang'),
(31, 'Kayu Jati'),
(32, 'Jati Diri'),
(33, 'Ayam Tidak Punya KTP'),
(34, 'Dino Sok Inggris'),
(35, 'Bibir Jontor Badag'),
(36, 'Teh Sari Wangi'),
(37, 'Indomi Kecap Asin'),
(38, 'Burung Elang Dari Jawa'),
(39, 'Tidak Ada/Kosong !'),
(40, 'Nokia Bapak'),
(41, 'Telur Gulung'),
(42, 'Sayur Asem Kecap Manis'),
(43, 'Baju Terbang'),
(44, 'Sendal Jepit'),
(45, 'Nasi Padang'),
(46, 'Pizza Mewah'),
(47, 'Jus Alpukat'),
(48, 'Sate Ayam'),
(49, 'Gado-Gado'),
(50, 'Kambing Guling'),
(51, 'Tahu Bulat'),
(52, 'Lontong Balap'),
(53, 'Soto Ayam'),
(54, 'Bakso Gepeng'),
(55, 'Cilok Kenyal'),
(56, 'Mie Ayam Lezat'),
(57, 'Es Cendol Manis'),
(58, 'Kopi Hitam Mantap'),
(59, 'Brownies Lumer'),
(60, 'Kerak Telor'),
(61, 'Tempe Mendoan'),
(62, 'Jajanan Pasar'),
(63, 'Pecel Lele'),
(64, 'Ayam Geprek'),
(65, 'Roti Bakar'),
(66, 'Pisang Goreng'),
(67, 'Bubur Ayam'),
(68, 'Nasi Goreng Spesial'),
(69, 'Sop Buntut'),
(70, 'Gule Kambing'),
(71, 'Rawon Hitam'),
(72, 'Ikan Bakar'),
(73, 'Sate Kambing'),
(74, 'Kue Cubit'),
(75, 'Cakwe'),
(76, 'Tahu Gejrot'),
(77, 'Kacang Polong'),
(78, 'Sayur Bayam'),
(79, 'Sambal Terasi'),
(80, 'Es Dawet'),
(81, 'Teh Tarik'),
(82, 'Es Teler'),
(83, 'Kerupuk Kulit'),
(84, 'Rengginang'),
(85, 'Emping Melinjo'),
(86, 'Mie Goreng'),
(87, 'Risoles'),
(88, 'Lumpia Semarang'),
(89, 'Pempek Palembang'),
(90, 'Asinan Betawi'),
(91, 'Lemper Ayam'),
(92, 'Bika Ambon'),
(93, 'Klepon'),
(94, 'Kue Lumpur'),
(95, 'Putu Ayu'),
(96, 'Onde-Onde'),
(97, 'Pukis'),
(98, 'Serabi'),
(99, 'Martabak Telur'),
(100, 'Sempol Ayam'),
(101, 'Bubur Ketan Hitam'),
(102, 'Kai Cenat'),
(103, 'Ibu Kai Cenat'),
(104, 'Bapak Kai Cenat'),
(105, 'Adek Kai Cenat'),
(106, 'Kakak Kai Cenat'),
(107, 'Nenek Kai Cenat'),
(108, 'Kakek Kai Cenat'),
(109, 'Bibi Kai Cenat'),
(110, 'Paman Kai Cenat'),
(111, 'Istri Kai Cenat'),
(112, 'Keponakan Kai Cenat'),
(113, 'Bapak Nya Istri Kai Cenat'),
(114, 'Istri nya Bapak nya Istri Kai Cenat'),
(115, 'Es Dawet Ketan Hitam Pekat Oli Bekas'),
(116, 'Kai Cenat Mode Sigma'),
(117, 'Bocil Mewing'),
(118, '[Rare,Misterius,Cool,Sigma,Mewing,Made in ohio] Akbar Motor Mio Gas Elpiji Wibu Sejati Kasur Bekas M'),
(119, 'Kapten Bajak Laut Ngawi'),
(120, 'Mio Mirza'),
(121, 'Kak Gem Mode Mewing'),
(122, 'Kak Gem'),
(123, 'Uni Bakwan'),
(124, 'Sambal Goreng Kecap Hitam'),
(125, 'Kamu Bukan User Khodam !'),
(126, 'Kosong'),
(127, 'Ambatron Type 555 - y 9 UZ'),
(128, 'Ambatukam Mewing'),
(129, 'Mas Rusdi Tidak G4Y'),
(130, 'Suki Liar'),
(131, 'Suki Type G4'),
(132, 'The World'),
(133, 'Star Platinum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `khodam_names`
--
ALTER TABLE `khodam_names`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `khodam_names`
--
ALTER TABLE `khodam_names`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
