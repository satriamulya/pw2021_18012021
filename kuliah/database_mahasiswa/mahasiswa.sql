-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2021 at 02:31 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpdasar`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `nrp` char(9) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nrp`, `email`, `jurusan`, `gambar`) VALUES
(1, 'satria mulya', '41817010', 'satriamulya.9@gmail.com', 'sistem informasi', '6000729c2dac8.jpg'),
(2, 'bae', '41817011', 'bae@gmail.com', 'ilmu komputer', 'bae.jpg'),
(3, 'kanghan', '41817012', 'kanghan@gmail.com', 'sistem informasi', 'kanghan.jpg'),
(4, 'kimdo', '41817013', 'kimdo@gmail.com', 'teknik informatika', 'kimdo.jpg'),
(5, 'kimhae', '41817014', 'kimhae@gmail.com', 'sistem informasi', 'kimhae.jpg'),
(6, 'kimjohun', '41817015', 'kimjohun@gmail.com', 'sistem informasi', 'kimjohun.jpg'),
(7, 'kimseon', '41817016', 'kimseon@gmail.com', 'teknik informatika', 'kimseon.jpg'),
(8, 'namjo', '41817017', 'namjo@gmail.com', 'sistem informasi', 'namjo.jpg'),
(10, 'step', '41817019', 'step@gmail.com', 'ilmu komputer', 'step.jpg'),
(11, 'yoosobin', '41817020', 'yoosobin@gmail.com', 'hukum', 'yoosobin.jpg'),
(21, 'rey', '42524523', 'rey@yahoo.com', 'musik', '60006f7105572.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
