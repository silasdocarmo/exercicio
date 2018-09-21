-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 21-Set-2018 às 01:40
-- Versão do servidor: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estrutura`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastros`
--

DROP TABLE IF EXISTS `cadastros`;
CREATE TABLE IF NOT EXISTS `cadastros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(60) NOT NULL,
  `Email` varchar(75) NOT NULL,
  `Telefone` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadastros`
--

INSERT INTO `cadastros` (`id`, `Nome`, `Email`, `Telefone`, `created`) VALUES
(1, 'Silas do Carmo Neto', 'silas@hotmail.com', 994843147, '2018-09-20 18:26:15'),
(2, 'Maria Alice', 'Maria@live.com.br', 33932389, '2018-09-20 18:36:03'),
(3, 'Cinara Martins', 'Martins.cinara@live.com', 33950682, '2018-09-20 18:47:20'),
(4, 'Kezia Santos', 'Kezia@yahoo.com.br', 992206378, '2018-09-20 19:09:10'),
(5, 'Maria Lucia', 'Lucia@gmail.com', 25597321, '2018-09-20 19:27:17'),
(6, 'Arthur Curry', 'Aquaman@bol.com', 1135321254, '2018-09-20 22:32:17'),
(7, 'Flavio Pegoraro', 'Flavinho12@gmail.com', 32346512, '2018-09-20 22:39:49');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
