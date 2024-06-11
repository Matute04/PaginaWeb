-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2024 a las 02:06:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT;
SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS;
SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION;
SET NAMES utf8mb4;

-- Crear la base de datos si no existe y seleccionarla
CREATE DATABASE IF NOT EXISTS `bd_principalo`;
USE `bd_principalo`;

--
-- Base de datos: `bd_principalo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(30) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `tipo` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `imagen`, `nombre`, `descripcion`, `precio`, `tipo`) VALUES
(1, 'menu-1.jpg', 'Salteña de Carne', 'Empanada boliviana con masa dorada y relleno jugoso de carne de res, papas y especias.', 6.5, 'alimento'),
(2, 'menu-2.jpg', 'Salteña de Pollo', 'Empanada boliviana con masa dorada y relleno jugoso de carne de pollo, papas y especias.', 6.5, 'alimento'),
(3, 'menu-3.jpg', 'Salteña Santa Clara', 'Empanada boliviana con masa dorada y relleno especial de Santa Clara.', 5.5, 'alimento'),
(4, 'menu-11.jpg', 'Cola Cola Personal', 'Bebida refrescante con sabor a cola.', 2, 'bebida'),
(5, 'menu-21.jpg', 'Refresco de Naranja', 'Bebida refrescante con sabor a naranja.', 3.5, 'bebida'),
(6, 'menu-31.jpg', 'Refresco de Limón', 'Bebida refrescante con sabor a limón.', 3.5, 'bebida'),
(7, 'menu-41.jpg', 'Salvietti', 'Bebida refrescante de 1 litro disponible en una variedad de sabores.', 8, 'bebida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `nivel` int(11) NOT NULL,
  `pasword` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

COMMIT;

SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT;
SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS;
SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION;
