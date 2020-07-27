-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2020 at 09:51 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `nome` text DEFAULT NULL,
  `endereco` text DEFAULT NULL,
  `telefone` int(14) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `logo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(8) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco` int(6) NOT NULL,
  `imagens` text DEFAULT NULL,
  `categoria` varchar(30) NOT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `nome`, `descricao`, `preco`, `imagens`, `categoria`, `status`) VALUES
(1, 'Calabresa', 'molho, tomate, queijo, calabresa', 20, 'pizza.jpg', 'pizza', 1),
(2, 'x-egg', 'pão, queijo, hamburguer, bacon, calabresa, alface, tomate', 10, 'x.jpg', 'lanche', 1),
(3, 'x-tudo', 'pão, queijo, hamburguer, bacon, calabresa, alface, tomate', 20, 'x.jpg', 'lanche', 1),
(4, 'Brasileira', 'molho, tomate, queijo, frango', 30, 'pizza.jpg', 'pizza', 1),
(5, 'quatro queijo', 'molho, tomate, queijo, frango', 30, 'pizza.jpg', 'pizza', 1),
(6, 'bacon', 'molho, tomate, queijo, frango', 30, 'pizza.jpg', 'pizza', 1),
(7, 'vegetariana', 'molho, tomate, queijo, frango', 30, 'pizza.jpg', 'pizza', 1),
(8, 'vegetariano', 'molho, tomate, queijo, frango', 30, 'x.jpg', 'lanche', 1),
(9, 'light', 'molho, tomate, queijo, frango', 30, 'x.jpg', 'lanche', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
