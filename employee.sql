-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2024 at 07:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `Nama_Pegawai` varchar(50) NOT NULL,
  `Jenis_Kelamin` char(25) NOT NULL,
  `No_Hp` varchar(20) NOT NULL,
  `Alamat` text NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Status` varchar(25) NOT NULL,
  `TanggalMasukKerja` date NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `Nama_Pegawai`, `Jenis_Kelamin`, `No_Hp`, `Alamat`, `Email`, `Status`, `TanggalMasukKerja`, `Timestamp`) VALUES
(1, 'riyan', 'laki-laki', '0814228863543', 'jln.Meranti No.2', 'riyan@gmail.com', 'active', '0000-00-00', '2024-01-19 05:48:44'),
(2, 'fa', 'fa', 'a', 'a', 'a', 'active', '2024-01-03', '2024-01-19 05:48:48'),
(3, 'joko', 'laki-laki', '081898271524', 'jln.Exuvia No.6', 'joko@gmail.com', 'inactive', '0000-00-00', '2024-01-19 05:48:54'),
(4, 'linda', 'perempuan', '081927361442', 'jln.Wahid hasyim III', 'lindacantiq@gmail.com', 'terminated', '2022-10-14', '2024-01-19 05:49:06'),
(5, 'rina', 'perempuan', '028315527361', 'jln.menteng meredeka 12', 'rina@gmail.com', 'belum menikah', '2022-11-22', '2024-01-19 05:00:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
