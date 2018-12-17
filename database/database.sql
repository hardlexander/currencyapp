-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Des 2018 pada 12.47
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `currencyapp`
--
CREATE DATABASE IF NOT EXISTS `currencyapp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `currencyapp`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dari` varchar(5) NOT NULL,
  `ke` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `currency`
--

INSERT INTO `currency` (`id`, `dari`, `ke`) VALUES
(1, 'USD', 'GBP'),
(2, 'GBP', 'USD'),
(3, 'USD', 'IDR'),
(4, 'JPY', 'IDR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rate`
--

CREATE TABLE IF NOT EXISTS `rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `rate` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rate`
--

INSERT INTO `rate` (`id`, `currency_id`, `tanggal`, `rate`) VALUES
(29, 1, '2018-12-16', 0.794),
(30, 1, '2018-12-15', 0.795),
(31, 1, '2018-12-14', 0.796),
(32, 1, '2018-12-13', 0.797),
(33, 1, '2018-12-12', 0.798),
(34, 1, '2018-12-11', 0.799),
(35, 1, '2018-12-10', 0.8),
(36, 1, '2018-12-09', 0.801),
(37, 1, '2018-12-08', 0.802),
(38, 1, '2018-12-07', 0.803),
(39, 1, '2018-12-06', 0.804),
(40, 1, '2018-12-05', 0.805),
(41, 1, '2018-12-04', 0.806),
(42, 1, '2018-12-03', 0.807),
(43, 1, '2018-12-02', 0.808),
(44, 1, '2018-12-01', 0.809),
(45, 2, '2018-12-16', 1.25),
(46, 2, '2018-12-15', 1.251),
(47, 2, '2018-12-14', 1.252),
(48, 2, '2018-12-13', 1.253),
(49, 2, '2018-12-12', 1.254),
(50, 2, '2018-12-11', 1.255),
(51, 2, '2018-12-10', 1.256),
(52, 2, '2018-12-09', 1.257),
(53, 2, '2018-12-08', 1.258),
(54, 2, '2018-12-07', 1.259),
(55, 2, '2018-12-06', 1.26),
(56, 2, '2018-12-05', 1.261),
(57, 2, '2018-12-04', 1.262),
(58, 2, '2018-12-03', 1.263),
(59, 2, '2018-12-02', 1.264),
(60, 2, '2018-12-01', 1.265),
(61, 3, '2018-12-16', 14540),
(62, 3, '2018-12-15', 14541),
(63, 3, '2018-12-14', 14542),
(64, 3, '2018-12-13', 14543),
(65, 3, '2018-12-12', 14544),
(66, 3, '2018-12-11', 14545),
(67, 3, '2018-12-10', 14546),
(68, 3, '2018-12-09', 14547),
(69, 3, '2018-12-08', 14548),
(70, 3, '2018-12-07', 14549),
(71, 3, '2018-12-06', 14550),
(72, 3, '2018-12-05', 14551),
(73, 3, '2018-12-04', 14552),
(74, 3, '2018-12-03', 14553),
(75, 3, '2018-12-02', 14554),
(76, 3, '2018-12-01', 14555),
(77, 4, '2018-12-16', 128),
(78, 4, '2018-12-15', 129),
(79, 4, '2018-12-14', 130),
(80, 4, '2018-12-13', 131),
(81, 4, '2018-12-12', 132),
(82, 4, '2018-12-11', 133),
(83, 4, '2018-12-10', 134),
(84, 4, '2018-12-09', 135),
(85, 4, '2018-12-08', 136),
(86, 4, '2018-12-07', 137),
(87, 4, '2018-12-06', 138),
(88, 4, '2018-12-05', 139),
(89, 4, '2018-12-04', 140),
(90, 4, '2018-12-03', 141),
(91, 4, '2018-12-02', 142),
(92, 4, '2018-12-01', 143);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
