-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2021 at 07:22 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spark`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Anmol', 'Sandipta', 3456, '2021-03-20 06:46:25'),
(2, 'Sandipta', 'Kritika', 23634, '2021-07-03 05:19:00'),
(3, 'Keshav', 'Anmol', 23880, '2021-07-05 04:50:25'),
(4, 'Priya', 'Bulbul', 12000, '2021-07-07 03:19:15'),
(5, 'Ramya', 'Mansi', 53020, '2021-07-09 06:19:25'),
(6, 'Ramya', 'Kavya', 53020, '2021-07-12 16:41:05'),
(7, 'Jitender', 'Keshav', 23400, '2021-07-16 06:23:46'),
(8, 'Kritika', 'Anmol', 85000, '2021-07-16 16:41:32'),
(9, 'Keshav', 'Jitender', 450, '2021-07-17 16:41:41'),
(10, 'Sandipta', 'Kritika', 100, '2021-07-18 13:20:14'),
(11, 'Sandipta', 'Kritika', 50, '2021-07-19 19:03:01'),
(12, 'Sandipta', 'Priya', 500, '2021-07-19 19:32:22'),
(13, 'Sandipta', 'Priya', 218, '2021-07-19 19:48:21'),
(14, 'Priya', 'Reet', 718, '2021-07-19 20:04:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Mansi', 'mansi@gmail.com', 6632),
(2, 'Reet', 'reet@gmail.com', 88118),
(3, 'Anmol', 'anmol@gmail.com', 3456),
(4, 'Sandipta', 'sandipta@gmail.com', 23000),
(5, 'Keshav', 'keshav@gmail.com', 23430),
(6, 'Priya', 'priya@gmail.com', 12000),
(7, 'Ramya', 'ramya@gmail.com', 53020),
(8, 'Jitender', 'jitender@gmail.com', 23850),
(9, 'Kritika', 'kritika@gmail.com', 85150),
(10, 'Bulbul', 'bulbul@gmail.com', 7320);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
