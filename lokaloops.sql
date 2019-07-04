-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2019 at 10:01 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lokaloops`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `barcode` varchar(55) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `barcode`, `name`, `description`, `foto`) VALUES
(1, '5c0ff80', 'Fanta', 'fanta 1,5 liter dengan banyak varian rasa', 'gb1.jpg'),
(2, '5c11103', 'Aqua 260ml', 'aqua dengan kesegaran alam', 'gb2.jpg'),
(3, '5c13d75', 'Biskuat', 'hhjhj', 'gb3.jpg'),
(4, '5c13e5b', 'Oreo', 'aaa', 'gb4.jpg'),
(5, '5c144b7', 'Pecel', 'asddsdsd', 'gb5.jpg'),
(6, '5c14bda', 'Temulawak', 'ssss', 'gb6.jpg'),
(7, '5c14f27', 'Kopiko', 'small', 'gb7.jpg'),
(8, '5c159de', 'Milo', 'jack', 'gb8.jpg'),
(9, '5c174be', 'Roma Kelapa', 'ASASAS', 'gb9.jpg'),
(10, '5c18a7e', 'Sanco', 'test', 'gb10.jpg'),
(11, '5c18c5d', 'Philips lamp', 'Really Testy', 'gb11.jpg'),
(12, '5c18c7d', 'Ale-ale', 'Test', 'gb12.jpg'),
(13, '5c18c7f', 'Relaxa', 'Test', 'gb13.jpg'),
(14, '5c19adb', 'Jeruk', 'Hdh', 'gb14.jpg'),
(15, '5c1ce8b', 'Baigon', 'sdvczdsvzdfv', 'gb15.jpg'),
(16, '5c255ec', 'Fix 44dt', 'pasta\r\n', 'gb16.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_role` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `id_role`, `id_owner`) VALUES
(1, 'hafidrf', 'coba123', 1, 1),
(2, 'rahma', 'coba123', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`id`, `nama`) VALUES
(1, 'Hafid Cafe'),
(2, 'Tegar Shop');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id_penjualan` int(11) NOT NULL,
  `outlet` varchar(50) NOT NULL,
  `metode` varchar(50) NOT NULL,
  `total` varchar(25) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id_penjualan`, `outlet`, `metode`, `total`, `tanggal`) VALUES
(1, 'Nelongso', 'Cash', '24000', '2019-06-29 05:40:13'),
(2, 'Nelongso Surabaya', 'Cash ', '57000', '2019-06-29 07:27:59'),
(3, 'Nelongso', 'Cash', '23000', '2019-06-29 07:27:59'),
(4, 'Nelongso', 'Cash ', '28000', '2019-07-04 02:12:13'),
(5, 'Nelongso Surabaya', 'Cash', '15000', '2019-07-04 06:29:41'),
(6, 'Nelongso', 'Cash ', '24000', '2019-07-04 06:30:23'),
(7, 'Nelongso Surabaya', 'Cash ', '50000', '2019-07-04 07:28:12'),
(8, 'Nelongso Surabaya', 'Cash ', '17000', '2019-07-04 07:29:39'),
(9, 'Nelongso', 'Cash', '23000', '2019-07-04 07:29:39'),
(10, 'Nelongso', 'Cash ', '13000', '2019-07-04 07:30:13'),
(11, 'Nelongso Surabaya', 'Cash', '19000', '2019-07-04 07:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'owner'),
(2, 'kasir'),
(3, 'kitchen'),
(4, 'investor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
