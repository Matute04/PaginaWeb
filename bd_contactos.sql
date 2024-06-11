-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2024 a las 08:27:33
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_contactos`
--

-- --------------------------------------------------------
CREATE DATABASE IF NOT EXISTS `bd_contactos`;
USE `bd_contactos`;
--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `asunto` varchar(100) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id`, `nombre`, `email`, `asunto`, `mensaje`, `fecha_envio`) VALUES
(1, 'Chelsea Blanchard', 'sylo@mailinator.com', 'Aperiam elit conseq', 'Voluptas impedit ma', '2024-06-11 05:24:16'),
(2, 'Chelsea Blanchard', 'sylo@mailinator.com', 'Aperiam elit conseq', 'Prueba de las pruebas', '2024-06-11 05:25:09'),
(3, 'Meredith Lott', 'goqimima@mailinator.com', 'Tenetur amet est ea', 'Corrupti at dolorum', '2024-06-11 05:49:04'),
(4, 'Roth Romero', 'fimyco@mailinator.com', 'Cillum ipsa et sint', 'Et est excepteur sed--------------------------------', '2024-06-11 05:49:26'),
(5, 'Shad Roach', 'sobyta@mailinator.com', 'Ex ullamco modi cum ', 'Nisi quis numquam qu', '2024-06-11 05:58:18'),
(6, 'Eaton Faulkner', 'jepisoh@mailinator.com', 'Lorem voluptas quo m', 'Cupidatat eiusmod ve', '2024-06-11 06:03:56'),
(7, 'Igor Olsen', 'zaxoqu@mailinator.com', 'Culpa adipisci libe', 'In laboriosam aut q', '2024-06-11 06:05:50'),
(8, 'Angelica Merrill', 'wycah@mailinator.com', 'Adipisci ratione et ', 'Et maiores odio volu', '2024-06-11 06:21:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tarjeta` varchar(50) NOT NULL,
  `carne` int(11) NOT NULL,
  `pollo` int(11) NOT NULL,
  `santaClara` int(11) NOT NULL,
  `refresco` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ordenes`
--

INSERT INTO `ordenes` (`id`, `nombre`, `correo`, `direccion`, `fecha`, `hora`, `tarjeta`, `carne`, `pollo`, `santaClara`, `refresco`, `created_at`) VALUES
(1, '', '', '', '0000-00-00', '00:00:00', '', 0, 0, 0, '', '2024-06-11 05:39:38'),
(2, '', '', '', '0000-00-00', '00:00:00', '', 0, 0, 0, '', '2024-06-11 05:41:49'),
(3, '', '', '', '0000-00-00', '00:00:00', '', 0, 0, 0, '', '2024-06-11 05:42:28'),
(4, '', '', '', '0000-00-00', '00:00:00', '', 0, 0, 0, '', '2024-06-11 05:44:52'),
(5, 'Modi id aperiam enim', 'nuvece@mailinator.com', 'Tempor sit qui at v', '0000-00-00', '00:00:00', 'Minus eaque ad incid', 25, 32, 100, '1', '2024-06-11 05:47:53'),
(6, 'Modi id aperiam enim', 'nuvece@mailinator.com', 'Tempor sit qui at v', '0000-00-00', '00:00:00', 'Minus eaque ad incid', 25, 32, 100, '1', '2024-06-11 05:47:57'),
(7, 'Deleniti ut eveniet', 'ryhuzepoza@mailinator.com', 'Amet voluptate at l', '0000-00-00', '00:00:00', 'Anim aut facere porr', 17, 16, 34, '4', '2024-06-11 05:58:39'),
(8, 'Porro ullam voluptat', 'wizekeq@mailinator.com', 'Ut excepteur dolor o', '0000-00-00', '00:00:00', 'Ex reprehenderit mo', 2, 96, 53, '2', '2024-06-11 05:58:47'),
(9, '_____________________________', 'gaqimulo@mailinator.com', 'Esse voluptatibus v', '0000-00-00', '00:00:00', 'Exercitation eius di', 98, 3, 56, 'Refrescos', '2024-06-11 05:59:00'),
(10, 'Autem dolores adipis', 'ryfim@mailinator.com', 'Anim cupidatat iste ', '0000-00-00', '00:00:00', 'Et tenetur voluptas ', 50, 93, 13, '2', '2024-06-11 06:06:34'),
(11, '22222222222222222222222222222222222222', 'kitofar@mailinator.com', 'Laborum Odio omnis ', '0000-00-00', '00:00:00', 'Sed doloremque ex et', 50, 34, 90, '2', '2024-06-11 06:08:59'),
(12, 'Explicabo Fugiat p', 'qutojumi@mailinator.com', 'Officia neque distin', '0000-00-00', '00:00:00', 'Autem eos quia sed d', 42, 66, 8, '3', '2024-06-11 06:15:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
