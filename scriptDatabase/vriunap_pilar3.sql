-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-12-2023 a las 16:43:41
-- Versión del servidor: 5.7.42-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vriunap_pilar3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicAmpliaciones`
--

CREATE TABLE `dicAmpliaciones` (
  `Id` int(11) NOT NULL,
  `IdTram` int(11) NOT NULL,
  `FechaApro` datetime NOT NULL,
  `FechaPre` datetime NOT NULL,
  `Dias` int(11) NOT NULL,
  `Doc` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicEstadTram`
--

CREATE TABLE `dicEstadTram` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(150) CHARACTER SET latin1 NOT NULL,
  `Descrip` varchar(800) CHARACTER SET latin1 NOT NULL,
  `Estado` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docEstudios`
--

CREATE TABLE `docEstudios` (
  `Id` int(11) NOT NULL,
  `IdDocente` int(5) NOT NULL,
  `Universidad` varchar(99) CHARACTER SET utf8 NOT NULL,
  `IdGrado` int(11) NOT NULL DEFAULT '1',
  `AbrevGrado` varchar(7) CHARACTER SET utf8 NOT NULL,
  `Mencion` varchar(120) CHARACTER SET utf8 NOT NULL,
  `Archivo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docLineas`
--

CREATE TABLE `docLineas` (
  `Id` int(11) NOT NULL,
  `IdDocente` int(5) NOT NULL,
  `IdLinea` int(5) NOT NULL,
  `Tipo` int(2) NOT NULL DEFAULT '1',
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Estado` int(3) NOT NULL,
  `Obs` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `docLineas`
--

INSERT INTO `docLineas` (`Id`, `IdDocente`, `IdLinea`, `Tipo`, `Fecha`, `Estado`, `Obs`) VALUES
(1, 1, 1, 1, '2023-08-23 05:00:00', 2, 'ninguna'),
(2, 2, 1, 1, '2023-08-01 15:34:01', 2, 'ninguna'),
(3, 3, 1, 1, '2023-08-01 15:35:18', 2, 'ninguna'),
(4, 4, 1, 1, '2023-08-01 15:35:50', 2, 'ninguna'),
(5, 2, 1, 1, '2023-08-01 16:08:28', 1, 'ninguna'),
(6, 1, 1, 1, '2023-08-01 16:08:41', 1, 'ninguna'),
(7, 1, 2, 1, '2023-08-01 16:09:42', 2, 'ninguna'),
(8, 1, 2, 1, '2023-08-01 16:09:49', 2, 'ninguna'),
(9, 1, 2, 1, '2023-08-01 16:09:55', 1, 'ninguna'),
(10, 1, 2, 1, '2023-08-01 16:10:01', 1, 'ninguna'),
(11, 1, 2, 1, '2023-08-01 16:10:08', 1, 'ninguna'),
(12, 1, 2, 1, '2023-08-01 16:10:14', 1, 'ninguna'),
(13, 7, 3, 0, '2023-08-01 16:10:14', 2, 'ninguna'),
(14, 8, 3, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(15, 9, 3, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(16, 10, 3, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(17, 11, 3, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(18, 12, 3, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(19, 13, 3, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(20, 9, 4, 0, '2023-08-01 16:10:14', 2, 'ninguna'),
(21, 6, 3, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(22, 7, 4, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(23, 11, 4, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(24, 12, 4, 1, '2023-08-01 16:10:14', 2, 'ninguna'),
(25, 2, 4, 1, '2023-10-25 14:45:18', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docParentesco`
--

CREATE TABLE `docParentesco` (
  `Id` int(11) NOT NULL,
  `Filiacion` varchar(5) NOT NULL,
  `IdDocente1` int(11) NOT NULL,
  `IdDocente2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estTramBach`
--

CREATE TABLE `estTramBach` (
  `Id` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Estado` int(11) NOT NULL,
  `Codigo` varchar(10) NOT NULL,
  `IdFac` int(11) NOT NULL,
  `IdCarr` int(11) NOT NULL,
  `IdTesista` int(11) NOT NULL,
  `IdJurado` int(11) NOT NULL,
  `IdAsesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logCordinads`
--

CREATE TABLE `logCordinads` (
  `Id` int(11) NOT NULL,
  `IdUser` int(4) NOT NULL,
  `IdCarrera` int(3) NOT NULL,
  `IdOperacion` int(3) NOT NULL,
  `Tipo` varchar(1) CHARACTER SET latin1 NOT NULL,
  `Just` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Detalle` varchar(800) CHARACTER SET latin1 NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `logCordinads`
--

INSERT INTO `logCordinads` (`Id`, `IdUser`, `IdCarrera`, `IdOperacion`, `Tipo`, `Just`, `Detalle`, `Fecha`) VALUES
(1, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 09:39:07'),
(2, 1, 2, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 09:39:13'),
(3, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 09:39:16'),
(4, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 10:15:26'),
(5, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 10:31:06'),
(6, 1, 2, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 10:52:23'),
(7, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 10:52:24'),
(8, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 10:53:57'),
(9, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 10:55:24'),
(10, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 10:56:25'),
(11, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:07:12'),
(12, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:13:06'),
(13, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:32:22'),
(14, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:35:06'),
(15, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:35:46'),
(16, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:39:23'),
(17, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:41:51'),
(18, 1, 2, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:43:06'),
(19, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:43:08'),
(20, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:43:44'),
(21, 1, 2, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:46:10'),
(22, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 11:46:12'),
(23, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 12:06:27'),
(24, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 12:23:39'),
(25, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 12:26:21'),
(26, 1, 2, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 12:27:21'),
(27, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-07 12:27:32'),
(28, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 12:03:41'),
(29, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 12:08:53'),
(30, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 12:10:11'),
(31, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 12:30:00'),
(32, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 12:31:35'),
(33, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 12:51:24'),
(34, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 12:53:28'),
(35, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 13:14:10'),
(36, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 13:16:35'),
(37, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 13:17:52'),
(38, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 13:18:22'),
(39, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 13:35:51'),
(40, 1, 1, 3, 'C', 'Publico Sustentación', '(2) Se programó la sustentación del código 2020-002', '2023-08-08 13:37:12'),
(41, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-08 13:38:20'),
(42, 1, 1, 1, 'C', 'Cambio estado Docente : R-wee', '(1 to 6 )ya se ha habilitado ', '2023-08-08 13:40:49'),
(43, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 11:24:12'),
(44, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 11:28:39'),
(45, 1, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 11:37:23'),
(46, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 11:38:22'),
(47, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 11:49:50'),
(48, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 12:51:47'),
(49, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 13:18:43'),
(50, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 13:40:20'),
(51, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 13:41:37'),
(52, 1, 3, 3, 'C', 'Publico Sustentación', '(10) Se programó la sustentación del código 2020-010', '2023-08-11 13:43:30'),
(53, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 13:49:33'),
(54, 1, 3, 1, 'C', 'Cambio estado Docente : ', '(12 to 0 ) ', '2023-08-11 13:49:47'),
(55, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-11 13:54:03'),
(56, 1, 3, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-08-15 11:53:49'),
(57, 2, 1, 5, 'C', 'Acceso a la Cuenta', '38.43.133.2', '2023-09-11 10:39:46'),
(58, 2, 2, 5, 'C', 'Acceso a la Cuenta', '38.43.133.2', '2023-09-11 10:39:48'),
(59, 2, 3, 5, 'C', 'Acceso a la Cuenta', '38.43.133.2', '2023-09-11 10:39:49'),
(60, 2, 0, 5, 'C', 'Acceso a la Cuenta', '38.43.133.2', '2023-09-11 10:39:51'),
(61, 2, 1, 5, 'C', 'Acceso a la Cuenta', '38.43.133.2', '2023-09-11 10:39:54'),
(62, 2, 3, 5, 'C', 'Acceso a la Cuenta', '190.119.174.82', '2023-09-12 09:51:21'),
(63, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.82', '2023-09-12 09:52:10'),
(64, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.82', '2023-10-13 13:30:57'),
(65, 2, 2, 5, 'C', 'Acceso a la Cuenta', '190.119.174.82', '2023-10-13 13:31:00'),
(66, 2, 3, 5, 'C', 'Acceso a la Cuenta', '190.119.174.82', '2023-10-13 13:31:01'),
(67, 2, 0, 5, 'C', 'Acceso a la Cuenta', '190.119.174.82', '2023-10-13 13:31:05'),
(68, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.82', '2023-10-13 13:31:07'),
(69, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:05:50'),
(70, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:22:27'),
(71, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:36:03'),
(72, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:40:04'),
(73, 2, 2, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:41:53'),
(74, 2, 3, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:42:00'),
(75, 2, 4, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:42:05'),
(76, 2, 5, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:42:11'),
(77, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:42:15'),
(78, 2, 0, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:42:28'),
(79, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:42:31'),
(80, 2, 0, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:42:46'),
(81, 2, 4, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:42:49'),
(82, 2, 5, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:42:51'),
(83, 2, 2, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:42:53'),
(84, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:43:19'),
(85, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 10:43:49'),
(86, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 12:47:46'),
(87, 2, 2, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 12:48:01'),
(88, 2, 3, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 12:48:03'),
(89, 2, 5, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 12:48:09'),
(90, 2, 0, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 12:48:10'),
(91, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 12:48:12'),
(92, 2, 2, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 12:48:14'),
(93, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:16:47'),
(94, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:18:25'),
(95, 2, 3, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:19:11'),
(96, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:19:18'),
(97, 2, 5, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:19:25'),
(98, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:19:28'),
(99, 2, 4, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:24:14'),
(100, 2, 3, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:24:15'),
(101, 2, 4, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:24:17'),
(102, 2, 5, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:24:19'),
(103, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:24:45'),
(104, 2, 2, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:24:51'),
(105, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:24:52'),
(106, 2, 0, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:24:58'),
(107, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:25:00'),
(108, 2, 3, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:25:02'),
(109, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:25:03'),
(110, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:27:52'),
(111, 2, 2, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:28:39'),
(112, 2, 3, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:28:40'),
(113, 2, 5, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:28:43'),
(114, 2, 0, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:28:47'),
(115, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:28:47'),
(116, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:37:55'),
(117, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:38:42'),
(118, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 13:39:28'),
(119, 2, 1, 6, 'S', 'Envia Proyecto a Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-003</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-10-25 13:42:03'),
(120, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:10:46'),
(121, 2, 2, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:11:27'),
(122, 2, 3, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:11:29'),
(123, 2, 4, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:11:30'),
(124, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:11:32'),
(125, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:19:29'),
(126, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:24:30'),
(127, 2, 2, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:24:36'),
(128, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:24:39'),
(129, 2, 2, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:25:21'),
(130, 2, 3, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:25:23'),
(131, 2, 4, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:25:26'),
(132, 2, 9, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:25:28'),
(133, 2, 6, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:25:30'),
(134, 2, 8, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:25:32'),
(135, 2, 5, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:25:34'),
(136, 2, 7, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:25:37'),
(137, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:25:49'),
(138, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:26:42'),
(139, 2, 1, 6, 'S', 'Envia Proyecto a Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-004</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-10-25 16:27:44'),
(140, 2, 1, 6, 'S', 'Envia Proyecto a Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-002</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-10-25 16:27:54'),
(141, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:53:00'),
(142, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 16:59:27'),
(143, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:05:27'),
(144, 2, 1, 6, 'S', 'Envia Proyecto a Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-006</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-10-25 17:05:42'),
(145, 2, 1, 7, 'T', 'Sorteo de Jurados', '4/3/1/2', '2023-10-25 17:07:04'),
(146, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:10:21'),
(147, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:13:25'),
(148, 4, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:16:48'),
(149, 4, 2, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:16:59'),
(150, 4, 3, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:17:01'),
(151, 4, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:17:02'),
(152, 1, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:21:29'),
(153, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:22:37'),
(154, 2, 0, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:22:49'),
(155, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:22:56'),
(156, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:26:29'),
(157, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:26:53'),
(158, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:27:57'),
(159, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:34:08'),
(160, 2, 2, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:34:36'),
(161, 2, 3, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:34:38'),
(162, 1, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:34:45'),
(163, 4, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:35:26'),
(164, 5, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:36:11'),
(165, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-25 17:36:53'),
(166, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-27 10:10:29'),
(167, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-27 10:32:53'),
(168, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-27 10:40:33'),
(169, 2, 1, 5, 'S', 'Retorna Documento : Corregir Formato', 'Saludos\r\nSu trámite ha sido rechazado, contiene los siguientes errores:\r\n\r\n EL documento no cumple con el formato de la Escuela profesional.\r\n\r\nDeberá corregir y subir su proyecto a la brevedad posible.\r\nNota: Revise el manual de tesista aquí.', '2023-10-27 10:49:42'),
(170, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-27 10:50:09'),
(171, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-27 11:46:54'),
(172, 2, 1, 5, 'S', 'Retorna Documento : Corregir Formato', 'Saludos\r\nSu trámite ha sido rechazado, contiene los siguientes errores:\r\n\r\n EL documento no cumple con el formato de la Escuela profesional.\r\n\r\nDeberá corregir y subir su proyecto a la brevedad posible.\r\nNota: Revise el manual de tesista aquí.', '2023-10-27 11:53:53'),
(173, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-27 11:54:18'),
(174, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-27 13:14:03'),
(175, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-27 13:36:26'),
(176, 2, 2, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-10-27 13:36:28'),
(177, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-11-06 09:57:39'),
(178, 2, 1, 6, 'S', 'Envia Proyecto a Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-008</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-11-06 10:00:13'),
(179, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-11-06 10:06:51'),
(180, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-11-07 11:26:34'),
(181, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-11-07 11:37:17'),
(182, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-11-07 12:00:28'),
(183, 2, 1, 7, 'T', 'Sorteo de Jurados', '4/3/1/2', '2023-11-07 12:01:30'),
(184, 2, 1, 5, 'C', 'Acceso a la Cuenta', '190.119.174.84', '2023-11-21 12:29:45'),
(185, 2, 1, 5, 'C', 'Acceso a la Cuenta', '2800:4b0:840d:32fe:79e9:37d6:f651:922c', '2023-11-23 08:26:49'),
(186, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-11-27 10:36:00'),
(187, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-11-27 20:39:38'),
(188, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-11-28 09:07:02'),
(189, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-11-28 10:23:18'),
(190, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-01 12:43:49'),
(191, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-01 12:56:26'),
(192, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-01 13:00:14'),
(193, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-01 14:30:19'),
(194, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-01 15:13:56'),
(195, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-01 15:16:16'),
(196, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-01 16:42:48'),
(197, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-04 13:02:40'),
(198, 2, 1, 7, 'T', 'Sorteo de Jurados', '3/2/1/4', '2023-12-04 13:04:42'),
(199, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-04 13:04:47'),
(200, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-04 14:36:28'),
(201, 2, 1, 1, 'C', 'Cambio estado Docente : ', '(22 to 0 ) ', '2023-12-04 14:54:04'),
(202, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-05 16:25:32'),
(203, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-07 12:27:14'),
(204, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-07 12:31:49'),
(205, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-12 15:36:59'),
(206, 2, 4, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-12 15:46:08'),
(207, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-12 15:46:51'),
(208, 2, 4, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-12 15:47:00'),
(209, 2, 2, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-12 16:02:13'),
(210, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-12 16:03:22'),
(211, 2, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-18 12:09:01'),
(212, 5, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-18 12:23:26'),
(213, 5, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-18 12:32:29'),
(214, 4, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-18 12:34:08'),
(215, 4, 1, 5, 'S', 'Retorna Documento : Corregir Formato', 'Saludos\r\nSu trámite ha sido rechazado, contiene los siguientes errores:\r\n\r\n EL documento no cumple con el formato de la Escuela profesional.\r\n\r\nDeberá corregir y subir su proyecto a la brevedad posible.\r\nNota: Revise el manual de tesista aquí.', '2023-12-18 12:34:57'),
(216, 4, 1, 5, 'C', 'Acceso a la Cuenta', '127.0.0.1', '2023-12-18 12:38:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logCorreos`
--

CREATE TABLE `logCorreos` (
  `Id` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `IdDocente` int(11) NOT NULL,
  `IdTesista` int(11) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Titulo` varchar(50) NOT NULL,
  `Mensaje` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `logCorreos`
--

INSERT INTO `logCorreos` (`Id`, `Fecha`, `IdDocente`, `IdTesista`, `Correo`, `Titulo`, `Mensaje`) VALUES
(1, '2023-08-02 09:41:23', 1, 1, 'gleidysegundogonzales@gmail.com', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(2, '2023-08-02 11:16:51', 1, 1, 'gleidysegundogonzales@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2020-001</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(3, '2023-08-02 11:56:37', 2, 2, 'sadith@gmail.com', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(4, '2023-08-02 13:09:59', 3, 3, 's@gmail.com', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(5, '2023-08-02 13:09:59', 3, 3, 'gleidysegundogonzales@gmail.com', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-003</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(6, '2023-08-02 13:50:11', 2, 2, 'sadith@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2020-002</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(7, '2023-08-02 13:50:11', 2, 2, 'sadithsegundogonzales@gmail.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>002-2020-VRI-UNAP</b><br>Codigo : <b> 2020-002 </b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(8, '2023-08-02 13:50:11', 2, 2, 'laditasegundogonzales@gmail.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>002-2020-VRI-UNAP</b><br>Codigo : <b> 2020-002 </b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(9, '2023-08-02 13:50:11', 2, 2, 'saditasegundogonzales@gmail.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>002-2020-VRI-UNAP</b><br>Codigo : <b> 2020-002 </b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(10, '2023-08-02 15:15:34', 0, 2, 'sadith@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(11, '2023-08-02 15:15:34', 0, 2, 'sadithsegundogonzales@gmail.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(12, '2023-08-02 15:15:34', 0, 2, 'laditasegundogonzales@gmail.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(13, '2023-08-02 15:15:34', 0, 2, 'saditasegundogonzales@gmail.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(14, '2023-08-02 15:15:34', 0, 2, 'gleidysegundogonzales@gmail.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(15, '2023-08-03 10:00:54', 2, 2, 'sadith@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2020-002</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(16, '2023-08-03 10:25:17', 0, 2, 'sadith@gmail.com', 'Subida de Bachiller', 'El tesista ha cargado su bachiller en el trámite:<br>Codigo: <b>2020-002 </b><br> Este proceso tiene caracter de declaración jurada bajo la responsabilidad del usuario de esta cuenta. Se habilitará la opción de cargar el borrador de tesis.<br>Se procede con el registro y envio de las notificaciones.'),
(17, '2023-08-03 10:57:04', 0, 2, 'sadithsegundogonzales@gmail.com', 'Subida de Borrador', '<br>Se ha actualizado el trámite: <b>2020-002</b><br><br> Título de Borrador de Tesis: <b>TITULO </b> <br><br>       Ud. debe apersonarse a Plataforma para revisar el formato y la conformación de su <b>Jurado Evaluador</b> de lo contrario no se procede con el envio para que el tramite de su borrador continue.'),
(18, '2023-08-03 11:02:12', 2, 2, 'sadith@gmail.com', 'Borrador enviado a Revisión', '<h4>Borrador enviado a Revisión</h4><br>Su Borrador de Tesis: <b>2020-002</b> ha sido enviado a los cuatro miembros de su Jurado. El mismo que será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(19, '2023-08-03 11:02:12', 2, 2, 'sadithsegundogonzales@gmail.com', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>003-2020-VRI-UNAP</b><br>Tesista(s) : <b>Segovia, Elmer</b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(20, '2023-08-03 11:02:12', 2, 2, 'laditasegundogonzales@gmail.com', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>003-2020-VRI-UNAP</b><br>Tesista(s) : <b>Segovia, Elmer</b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(21, '2023-08-03 11:02:12', 2, 2, 'saditasegundogonzales@gmail.com', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>003-2020-VRI-UNAP</b><br>Tesista(s) : <b>Segovia, Elmer</b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(22, '2023-08-03 11:02:12', 2, 2, 'gleidysegundogonzales@gmail.com', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>003-2020-VRI-UNAP</b><br>Tesista(s) : <b>Segovia, Elmer</b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(23, '2023-08-03 11:06:04', 0, 2, 'sadith@gmail.com', 'Subida de Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(24, '2023-08-03 11:06:04', 0, 2, 'sadithsegundogonzales@gmail.com', 'Borrador Final ', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(25, '2023-08-03 11:06:04', 0, 2, 'laditasegundogonzales@gmail.com', 'Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(26, '2023-08-03 11:06:04', 0, 2, 'saditasegundogonzales@gmail.com', 'Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(27, '2023-08-03 11:06:04', 0, 2, 'gleidysegundogonzales@gmail.com', 'Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(28, '2023-08-03 16:07:27', 0, 4, 'yguillen@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-004</b><br><br> Título de Proyecto: <b>PRUEBA</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(29, '2023-08-03 16:15:15', 4, 4, 'jmartinez@unamba.edu.pe', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(30, '2023-08-03 16:15:15', 4, 4, 'eluque@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-004</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(31, '2023-08-03 16:17:39', 3, 3, 'gvalderrama@unamba.edu.pe', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2020-003</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(32, '2023-08-03 16:17:39', 3, 3, 'eordonez@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>004-2020-VRI-UNAP</b><br>Codigo : <b> 2020-003 </b><br>Título : <b> 111223 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(33, '2023-08-03 16:17:39', 3, 3, 'eluque@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>004-2020-VRI-UNAP</b><br>Codigo : <b> 2020-003 </b><br>Título : <b> 111223 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(34, '2023-08-03 16:17:39', 3, 3, 'mperalta@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>004-2020-VRI-UNAP</b><br>Codigo : <b> 2020-003 </b><br>Título : <b> 111223 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(35, '2023-08-03 16:30:38', 0, 3, 'gvalderrama@unamba.edu.pe', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-003</b><br> Título de Proyecto : <b>111223</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(36, '2023-08-03 16:30:38', 0, 3, 'eordonez@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-003</b><br> Título de Proyecto : <b>111223</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(37, '2023-08-03 16:30:38', 0, 3, 'eluque@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-003</b><br> Título de Proyecto : <b>111223</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(38, '2023-08-03 16:30:38', 0, 3, 'mperalta@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-003</b><br> Título de Proyecto : <b>111223</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(39, '2023-08-03 16:30:38', 0, 3, 'fcari@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-003</b><br> Título de Proyecto : <b>111223</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(40, '2023-08-03 16:34:36', 3, 3, 'gvalderrama@unamba.edu.pe', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2020-003</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(41, '2023-08-10 11:52:43', 0, 5, 'minas1@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-005</b><br><br> Título de Proyecto: <b>123</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(42, '2023-08-10 11:54:09', 5, 5, 'minas1@unamba.edu.pe', 'Corregir Formato Retornado', '<b>Saludos</b><br><br>\r\nSu proyecto ha sido rechazado, contiene los siguientes errores:\r\n<br><br><ul>\r\n<li> La redacción tiene que ser mejorada.\r\n</ul><br>\r\nDeberá corregir y subir su proyecto a la brevedad posible.\r\n<br><b>Nota</b>: Revise el <a href=\'http://vriunap.pe/vriadds/pilar/doc/manual_tesistav3.pdf\'>manual de tesista aquí.</a>'),
(43, '2023-08-10 11:55:19', 0, 6, 'minas1@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-006</b><br><br> Título de Proyecto: <b>123</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(44, '2023-08-10 11:56:24', 6, 6, 'minas1@unamba.edu.pe', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(45, '2023-08-10 11:56:24', 6, 6, 'jmerma@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-006</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(46, '2023-08-10 11:59:38', 0, 7, 'minas2@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-007</b><br><br> Título de Proyecto: <b>123</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(47, '2023-08-10 12:00:00', 7, 7, 'minas2@unamba.edu.pe', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(48, '2023-08-10 12:00:00', 7, 7, 'jmerma@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-007</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(49, '2023-08-10 12:00:34', 9, 0, 'minas1@unamba.edu.pe', 'Rechazo del Director', 'El Director/Asesor ha rechazado su proyecto de tesis por lo que deberá cambiarlo o coordinar personalmente.'),
(50, '2023-08-10 12:03:12', 0, 8, 'minas1@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-008</b><br><br> Título de Proyecto: <b>RFE</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(51, '2023-08-10 12:03:53', 8, 8, 'minas1@unamba.edu.pe', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(52, '2023-08-10 12:03:53', 8, 8, 'walquer@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-008</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(53, '2023-08-10 12:05:04', 8, 8, 'minas1@unamba.edu.pe', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2020-008</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(54, '2023-08-10 12:05:04', 8, 8, 'jmerma@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>005-2020-VRI-UNAP</b><br>Codigo : <b> 2020-008 </b><br>Título : <b> RFE </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(55, '2023-08-10 12:05:04', 8, 8, 'DMinas4@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>005-2020-VRI-UNAP</b><br>Codigo : <b> 2020-008 </b><br>Título : <b> RFE </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(56, '2023-08-10 12:05:04', 8, 8, 'DMinas3@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>005-2020-VRI-UNAP</b><br>Codigo : <b> 2020-008 </b><br>Título : <b> RFE </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(57, '2023-08-10 12:06:23', 7, 7, 'minas2@unamba.edu.pe', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2020-007</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(58, '2023-08-10 12:06:23', 7, 7, 'rmattos@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>006-2020-VRI-UNAP</b><br>Codigo : <b> 2020-007 </b><br>Título : <b> 123 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(59, '2023-08-10 12:06:23', 7, 7, 'walquer@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>006-2020-VRI-UNAP</b><br>Codigo : <b> 2020-007 </b><br>Título : <b> 123 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(60, '2023-08-10 12:06:23', 7, 7, 'DMinas2@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>006-2020-VRI-UNAP</b><br>Codigo : <b> 2020-007 </b><br>Título : <b> 123 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(61, '2023-08-10 13:02:59', 0, 9, 'minas3@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-009</b><br><br> Título de Proyecto: <b>123</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(62, '2023-08-10 13:03:06', 9, 9, 'minas3@unamba.edu.pe', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(63, '2023-08-10 13:03:06', 9, 9, 'jmerma@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-009</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(64, '2023-08-10 13:03:24', 9, 0, 'minas3@unamba.edu.pe', 'Rechazo del Director', 'El Director/Asesor ha rechazado su proyecto de tesis por lo que deberá cambiarlo o coordinar personalmente.'),
(65, '2023-08-10 14:06:00', 0, 10, 'minas3@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-010</b><br><br> Título de Proyecto: <b>DW</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(66, '2023-08-10 14:06:24', 10, 10, 'minas3@unamba.edu.pe', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(67, '2023-08-10 14:06:24', 10, 10, 'jmerma@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-010</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(68, '2023-08-10 14:06:53', 10, 10, 'minas3@unamba.edu.pe', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2020-010</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(69, '2023-08-10 14:06:53', 10, 10, 'rmattos@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>007-2020-VRI-UNAP</b><br>Codigo : <b> 2020-010 </b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(70, '2023-08-10 14:06:53', 10, 10, 'DMinas2@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>007-2020-VRI-UNAP</b><br>Codigo : <b> 2020-010 </b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(71, '2023-08-10 14:06:53', 10, 10, 'DMinas4@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>007-2020-VRI-UNAP</b><br>Codigo : <b> 2020-010 </b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(72, '2023-08-11 11:10:19', 0, 11, 'minas4@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-011</b><br><br> Título de Proyecto: <b>DMINAS 2</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(73, '2023-08-11 11:10:33', 11, 11, 'minas4@unamba.edu.pe', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(74, '2023-08-11 11:10:33', 11, 11, 'DMinas2@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-011</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(75, '2023-08-11 11:11:44', 11, 11, 'minas4@unamba.edu.pe', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2020-011</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(76, '2023-08-11 11:11:44', 11, 11, 'walquer@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>008-2020-VRI-UNAP</b><br>Codigo : <b> 2020-011 </b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(77, '2023-08-11 11:11:44', 11, 11, 'rmattos@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>008-2020-VRI-UNAP</b><br>Codigo : <b> 2020-011 </b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(78, '2023-08-11 11:11:44', 11, 11, 'DMinas3@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>008-2020-VRI-UNAP</b><br>Codigo : <b> 2020-011 </b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(79, '2023-08-11 11:43:50', 0, 11, 'minas4@unamba.edu.pe', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-011</b><br> Título de Proyecto : <b>DMINAS 2</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(80, '2023-08-11 11:43:50', 0, 11, 'walquer@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-011</b><br> Título de Proyecto : <b>DMINAS 2</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(81, '2023-08-11 11:43:50', 0, 11, 'rmattos@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-011</b><br> Título de Proyecto : <b>DMINAS 2</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(82, '2023-08-11 11:43:50', 0, 11, 'DMinas3@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-011</b><br> Título de Proyecto : <b>DMINAS 2</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(83, '2023-08-11 11:43:50', 0, 11, 'DMinas2@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-011</b><br> Título de Proyecto : <b>DMINAS 2</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(84, '2023-08-11 11:49:34', 11, 11, 'minas4@unamba.edu.pe', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2020-011</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(85, '2023-08-11 11:58:48', 0, 14, 'minas4@unamba.edu.pe', 'Subida de Bachiller', 'El tesista ha cargado su bachiller en el trámite:<br>Codigo: <b>2020-011 </b><br> Este proceso tiene caracter de declaración jurada bajo la responsabilidad del usuario de esta cuenta. Se habilitará la opción de cargar el borrador de tesis.<br>Se procede con el registro y envio de las notificaciones.'),
(86, '2023-08-11 12:01:17', 11, 11, 'minas4@unamba.edu.pe', 'Borrador enviado a Revisión', '<h4>Borrador enviado a Revisión</h4><br>Su Borrador de Tesis: <b>2020-011</b> ha sido enviado a los cuatro miembros de su Jurado. El mismo que será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(87, '2023-08-11 12:01:17', 11, 11, 'walquer@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>009-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno4 minas, Alumno3 civil</b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(88, '2023-08-11 12:01:17', 11, 11, 'rmattos@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>009-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno4 minas, Alumno3 civil</b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(89, '2023-08-11 12:01:17', 11, 11, 'DMinas3@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>009-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno4 minas, Alumno3 civil</b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(90, '2023-08-11 12:01:17', 11, 11, 'DMinas2@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>009-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno4 minas, Alumno3 civil</b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(91, '2023-08-11 12:18:27', 11, 11, 'minas4@unamba.edu.pe', 'Borrador enviado a Revisión', '<h4>Borrador enviado a Revisión</h4><br>Su Borrador de Tesis: <b>2020-011</b> ha sido enviado a los cuatro miembros de su Jurado. El mismo que será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(92, '2023-08-11 12:18:27', 11, 11, 'walquer@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>010-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno4 minas, Alumno3 civil</b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(93, '2023-08-11 12:18:27', 11, 11, 'rmattos@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>010-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno4 minas, Alumno3 civil</b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(94, '2023-08-11 12:18:27', 11, 11, 'DMinas3@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>010-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno4 minas, Alumno3 civil</b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(95, '2023-08-11 12:18:27', 11, 11, 'DMinas2@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>010-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno4 minas, Alumno3 civil</b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(96, '2023-08-11 12:56:06', 0, 10, 'minas3@unamba.edu.pe', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(97, '2023-08-11 12:56:06', 0, 10, 'rmattos@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(98, '2023-08-11 12:56:06', 0, 10, 'DMinas2@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(99, '2023-08-11 12:56:06', 0, 10, 'DMinas4@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(100, '2023-08-11 12:56:06', 0, 10, 'jmerma@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(101, '2023-08-11 12:57:21', 10, 10, 'minas3@unamba.edu.pe', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2020-010</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(102, '2023-08-11 13:01:49', 0, 17, 'minas3@unamba.edu.pe', 'Subida de Bachiller', 'El tesista ha cargado su bachiller en el trámite:<br>Codigo: <b>2020-010 </b><br> Este proceso tiene caracter de declaración jurada bajo la responsabilidad del usuario de esta cuenta. Se habilitará la opción de cargar el borrador de tesis.<br>Se procede con el registro y envio de las notificaciones.'),
(103, '2023-08-11 13:01:55', 0, 17, 'minas3@unamba.edu.pe', 'Subida de Bachiller', 'El tesista ha cargado su bachiller en el trámite:<br>Codigo: <b>2020-010 </b><br> Este proceso tiene caracter de declaración jurada bajo la responsabilidad del usuario de esta cuenta. Se habilitará la opción de cargar el borrador de tesis.<br>Se procede con el registro y envio de las notificaciones.'),
(104, '2023-08-11 13:33:21', 0, 10, 'minas3@unamba.edu.pe', 'Subida de Borrador', '<br>Se ha actualizado el trámite: <b>2020-010</b><br><br> Título de Borrador de Tesis: <b>DW</b> <br><br>       Ud. debe apersonarse a Plataforma para revisar el formato y la conformación de su <b>Jurado Evaluador</b> de lo contrario no se procede con el envio para que el tramite de su borrador continue.'),
(105, '2023-08-11 13:36:27', 10, 10, 'minas3@unamba.edu.pe', 'Borrador enviado a Revisión', '<h4>Borrador enviado a Revisión</h4><br>Su Borrador de Tesis: <b>2020-010</b> ha sido enviado a los cuatro miembros de su Jurado. El mismo que será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(106, '2023-08-11 13:36:27', 10, 10, 'rmattos@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>011-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno3 Minas, Alumno3 Minas</b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(107, '2023-08-11 13:36:27', 10, 10, 'DMinas2@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>011-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno3 Minas, Alumno3 Minas</b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(108, '2023-08-11 13:36:27', 10, 10, 'DMinas4@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>011-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno3 Minas, Alumno3 Minas</b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(109, '2023-08-11 13:36:27', 10, 10, 'jmerma@unamba.edu.pe', 'Revisión de Borrador de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el borrador de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>011-2020-VRI-UNAP</b><br>Tesista(s) : <b>Alumno3 Minas, Alumno3 Minas</b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.'),
(110, '2023-08-11 13:39:59', 0, 10, 'minas3@unamba.edu.pe', 'Subida de Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(111, '2023-08-11 13:39:59', 0, 10, 'rmattos@unamba.edu.pe', 'Borrador Final ', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(112, '2023-08-11 13:39:59', 0, 10, 'DMinas2@unamba.edu.pe', 'Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(113, '2023-08-11 13:39:59', 0, 10, 'DMinas4@unamba.edu.pe', 'Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(114, '2023-08-11 13:39:59', 0, 10, 'jmerma@unamba.edu.pe', 'Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.'),
(115, '2023-08-14 16:29:53', 0, 12, 'minas5@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-010</b><br><br> Título de Proyecto: <b>SDFDF</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(116, '2023-08-14 16:32:36', 0, 13, 'minas5@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-012</b><br><br> Título de Proyecto: <b>A</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(117, '2023-08-15 10:32:23', 0, 14, 'minas5@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-012</b><br><br> Título de Proyecto: <b>SA</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(118, '2023-08-15 10:36:18', 14, 14, 'minas5@unamba.edu.pe', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(119, '2023-08-15 10:36:18', 14, 14, 'walquer@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-012</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(120, '2023-08-15 11:49:07', 0, 15, 'minas6@unamba.edu.pe', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-013</b><br><br> Título de Proyecto: <b>RT</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(121, '2023-10-25 11:49:33', 0, 1, 'rlaura@unap.edu.pe', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>SAMIRA CHIPA TEJADA</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: rlaura@unap.edu.pe<br>  * contraseña: 123<br><br><br>Gracias.'),
(122, '2023-10-25 12:04:50', 0, 2, 'gsegundo@unamba.edu.pe', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>BRYAN FELIPE CHANI PUJADAS</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: gsegundo@unamba.edu.pe<br>  * contraseña: 12345678<br><br><br>Gracias.'),
(123, '2023-10-25 12:15:19', 0, 3, 'rojas.nel07@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>RENE RAQUEL AYMARA ZAMORA</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: rojas.nel07@gmail.com<br>  * contraseña: 12345678<br><br><br>Gracias.'),
(124, '2023-10-25 12:27:02', 0, 4, 'elconejo741grupo@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>LAURA GABRIELA BARRIENTOS QUISPE</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: elconejo741grupo@gmail.com<br>  * contraseña: 12345678<br><br><br>Gracias.'),
(125, '2023-10-25 12:39:44', 0, 5, 'rojas.nel07@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>TULA BRAVO HUAMANHORCCO</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: rojas.nel07@gmail.com<br>  * contraseña: 12345678<br><br><br>Gracias.'),
(126, '2023-10-25 12:52:11', 0, 1, 'rojas.nel07@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-001</b><br><br> Título de Proyecto: <b>GRAVIDA NEQUE. ADIPISCING TRISTIQUE RISUS NEC FEUGIAT IN FERMENTUM POSUERE URNA NEC. IMPERDIET SED EUISMOD NISI PORTA </b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(127, '2023-10-25 12:57:31', 0, 6, 'rojas.nel07@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>DANY CHIPAYO BLANCO</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: rojas.nel07@gmail.com<br>  * contraseña: 123<br><br><br>Gracias.');
INSERT INTO `logCorreos` (`Id`, `Fecha`, `IdDocente`, `IdTesista`, `Correo`, `Titulo`, `Mensaje`) VALUES
(128, '2023-10-25 13:09:54', 0, 7, 'gleidysegundogonzales@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>YENIFER HUARANCCA CAHUANCAMA</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: gleidysegundogonzales@gmail.com<br>  * contraseña: 12345678<br><br><br>Gracias.'),
(129, '2023-10-25 13:12:30', 0, 8, 'nhelrojas00@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>JUAN ARTURO CANALES SOLIS</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: nhelrojas00@gmail.com<br>  * contraseña: 12345678<br><br><br>Gracias.'),
(130, '2023-10-25 13:13:48', 0, 2, 'nhelrojas00@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-002</b><br><br> Título de Proyecto: <b>CONGUE EU CONSEQUAT AC FELIS. NIBH NISL CONDIMENTUM ID VENENATIS A CONDIMENTUM VITAE SAPIEN.</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(131, '2023-10-25 13:17:11', 0, 3, 'gleidysegundogonzales@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-003</b><br><br> Título de Proyecto: <b>EJEMPLO</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(132, '2023-10-25 13:42:03', 7, 0, 'gleidysegundogonzales@gmail.com', 'Proyecto para Asesoria', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(133, '2023-10-25 13:42:07', 0, 1, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-003</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(134, '2023-10-25 13:54:09', 3, 3, 'gleidysegundogonzales@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-003</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(135, '2023-10-25 13:54:14', 3, 3, 'tovacen242@weirby.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>001-2023-VRI-UNAP</b><br>Codigo : <b> 2023-003 </b><br>Título : <b> 111223 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(136, '2023-10-25 13:54:17', 3, 3, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>001-2023-VRI-UNAP</b><br>Codigo : <b> 2023-003 </b><br>Título : <b> 111223 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(137, '2023-10-25 13:54:21', 3, 3, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>001-2023-VRI-UNAP</b><br>Codigo : <b> 2023-003 </b><br>Título : <b> 111223 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(138, '2023-10-25 13:57:52', 0, 9, 'hola@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>JANNELLY SHARYD WARTHON AGUIRRE</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: hola@gmail.com<br>  * contraseña: tesista1<br><br><br>Gracias.'),
(139, '2023-10-25 15:55:13', 0, 10, 'sadithsegundo@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>KAREN KAROL BARRIENTOS ORTIZ</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: sadithsegundo@gmail.com<br>  * contraseña: 1234<br><br><br>Gracias.'),
(140, '2023-10-25 16:01:19', 0, 11, 'sadithsegundogonzales@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>ESTEFANY INDIRA BRICEÑO SALAS</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: sadithsegundogonzales@gmail.com<br>  * contraseña: 1234<br><br><br>Gracias.'),
(141, '2023-10-25 16:05:16', 0, 12, 'johnelgr@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>JHON RICARDO CARBAJAL HERRERA</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: johnelgr@gmail.com<br>  * contraseña: 12345678<br><br><br>Gracias.'),
(142, '2023-10-25 16:09:11', 0, 4, 'johnelgr@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-004</b><br><br> Título de Proyecto: <b>LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT, SED DO </b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(143, '2023-10-25 16:27:44', 12, 0, 'johnelgr@gmail.com', 'Proyecto para Asesoria', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(144, '2023-10-25 16:27:49', 0, 2, 'tovacen242@weirby.com', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-004</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(145, '2023-10-25 16:27:54', 8, 0, 'nhelrojas00@gmail.com', 'Proyecto para Asesoria', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(146, '2023-10-25 16:27:57', 0, 2, 'tovacen242@weirby.com', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-002</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(147, '2023-10-25 16:28:40', 0, 13, 'ingeniusiis@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>FRANCISCO VILLAFUERTE HUANACO</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: ingeniusiis@gmail.com<br>  * contraseña: incubadora<br><br><br>Gracias.'),
(148, '2023-10-25 16:42:47', 0, 5, 'ingeniusiis@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-005</b><br><br> Título de Proyecto: <b>APLICACION MOVIL PARA VER EXTRATERRESTRES</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(149, '2023-10-25 16:51:27', 5, 5, 'ingeniusiis@gmail.com', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(150, '2023-10-25 16:51:32', 5, 5, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-005</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(151, '2023-10-25 16:51:32', 0, 6, 'hola@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-006</b><br><br> Título de Proyecto: <b>DISEÑO DE UN SISTEMA DE GESTIÓN DE LA CALIDAD\r\nACADÉMICA PARA LA FACULTAD DE INGENIERÍA DE LA \r\nUNIVERSIDAD PRIVADA LIDER PERUANA DEL CUSCO</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(152, '2023-10-25 17:01:23', 4, 4, 'johnelgr@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-004</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(153, '2023-10-25 17:01:27', 4, 4, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>002-2023-VRI-UNAP</b><br>Codigo : <b> 2023-004 </b><br>Título : <b> PRUEBA </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(154, '2023-10-25 17:01:31', 4, 4, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>002-2023-VRI-UNAP</b><br>Codigo : <b> 2023-004 </b><br>Título : <b> PRUEBA </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(155, '2023-10-25 17:01:34', 4, 4, 'gsegundo@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>002-2023-VRI-UNAP</b><br>Codigo : <b> 2023-004 </b><br>Título : <b> PRUEBA </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(156, '2023-10-25 17:05:42', 9, 0, 'hola@gmail.com', 'Proyecto para Asesoria', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(157, '2023-10-25 17:05:46', 0, 1, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-006</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(158, '2023-10-25 17:06:47', 0, 8, 'nhelrojas00@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-002</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(159, '2023-10-25 17:06:56', 4, 0, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>-VRI-UNAP</b><br>Codigo : <b> 2023-002 </b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(160, '2023-10-25 17:07:00', 3, 0, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>-VRI-UNAP</b><br>Codigo : <b> 2023-002 </b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(161, '2023-10-25 17:07:04', 1, 0, 'gsegundo@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>-VRI-UNAP</b><br>Codigo : <b> 2023-002 </b><br>Título : <b> TITULO  </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(162, '2023-10-25 17:09:24', 0, 7, 'sadithsegundo@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-007</b><br><br> Título de Proyecto: <b>EJEMPLO BARRIENTOS</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(163, '2023-10-25 17:33:31', 7, 7, 'sadithsegundo@gmail.com', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(164, '2023-10-25 17:33:35', 7, 7, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-007</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(165, '2023-10-27 10:49:46', 0, 13, 'ingeniusiis@gmail.com', 'Corregir Formato Retornado', 'Saludos\r\nSu trámite ha sido rechazado, contiene los siguientes errores:\r\n\r\n EL documento no cumple con el formato de la Escuela profesional.\r\n\r\nDeberá corregir y subir su proyecto a la brevedad posible.\r\nNota: Revise el manual de tesista aquí.'),
(166, '2023-10-27 10:49:49', 1, 0, 'gsegundo@unamba.edu.pe', 'Corregir Formato Retornado', 'Dirección de tesis : 2023-005 <br>Saludos\r\nSu trámite ha sido rechazado, contiene los siguientes errores:\r\n\r\n EL documento no cumple con el formato de la Escuela profesional.\r\n\r\nDeberá corregir y subir su proyecto a la brevedad posible.\r\nNota: Revise el manual de tesista aquí.'),
(167, '2023-10-27 12:15:06', 0, 4, 'johnelgr@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-004</b><br> Título de Proyecto : <b>DISEÑO E IMPLEMENTACIÓN DE UNA APLICACIÓN MÓVIL\r\nBASADA EN LA TECNOLOGÍA NFC PARA ACCESO A\r\nINFORMACIÓN DE LAS PIEZAS DE ARTE DE UN MUSEO\r\n</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(168, '2023-10-27 12:15:09', 0, 4, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-004</b><br> Título de Proyecto : <b>DISEÑO E IMPLEMENTACIÓN DE UNA APLICACIÓN MÓVIL\r\nBASADA EN LA TECNOLOGÍA NFC PARA ACCESO A\r\nINFORMACIÓN DE LAS PIEZAS DE ARTE DE UN MUSEO\r\n</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(169, '2023-10-27 12:15:12', 0, 4, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-004</b><br> Título de Proyecto : <b>DISEÑO E IMPLEMENTACIÓN DE UNA APLICACIÓN MÓVIL\r\nBASADA EN LA TECNOLOGÍA NFC PARA ACCESO A\r\nINFORMACIÓN DE LAS PIEZAS DE ARTE DE UN MUSEO\r\n</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(170, '2023-10-27 12:15:15', 0, 4, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-004</b><br> Título de Proyecto : <b>DISEÑO E IMPLEMENTACIÓN DE UNA APLICACIÓN MÓVIL\r\nBASADA EN LA TECNOLOGÍA NFC PARA ACCESO A\r\nINFORMACIÓN DE LAS PIEZAS DE ARTE DE UN MUSEO\r\n</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(171, '2023-10-27 12:15:18', 0, 4, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-004</b><br> Título de Proyecto : <b>DISEÑO E IMPLEMENTACIÓN DE UNA APLICACIÓN MÓVIL\r\nBASADA EN LA TECNOLOGÍA NFC PARA ACCESO A\r\nINFORMACIÓN DE LAS PIEZAS DE ARTE DE UN MUSEO\r\n</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(172, '2023-10-27 12:18:29', 7, 7, 'sadithsegundo@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-007</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(173, '2023-10-27 12:18:32', 7, 7, 'tovacen242@weirby.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>004-2023-VRI-UNAP</b><br>Codigo : <b> 2023-007 </b><br>Título : <b> 123 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(174, '2023-10-27 12:18:35', 7, 7, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>004-2023-VRI-UNAP</b><br>Codigo : <b> 2023-007 </b><br>Título : <b> 123 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(175, '2023-10-27 12:18:39', 7, 7, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>004-2023-VRI-UNAP</b><br>Codigo : <b> 2023-007 </b><br>Título : <b> 123 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(176, '2023-10-27 12:18:57', 6, 6, 'hola@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-006</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(177, '2023-10-27 12:42:44', 4, 4, 'johnelgr@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-004</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(178, '2023-11-06 09:17:05', 0, 14, 'rojas.nel07@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>ELI MISAEL CARRASCO ALTAMIRANO</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: rojas.nel07@gmail.com<br>  * contraseña: 12345678<br><br><br>Gracias.'),
(179, '2023-11-06 09:56:28', 0, 8, 'rojas.nel07@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-008</b><br><br> Título de Proyecto: <b>LAS APLICACIONES MÓVILES Y SU IMPACTO EN LA SOCIEDAD\r\n</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(180, '2023-11-06 10:00:13', 14, 0, 'rojas.nel07@gmail.com', 'Proyecto para Asesoria', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(181, '2023-11-06 10:00:16', 0, 1, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-008</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(182, '2023-11-06 10:07:39', 8, 8, 'rojas.nel07@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-008</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(183, '2023-11-07 08:45:37', 0, 15, 'admi7@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>JOEL RAFAEL CCASANI SORIA</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: admi7@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(184, '2023-11-07 08:47:58', 0, 9, 'admi7@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-009</b><br><br> Título de Proyecto: <b>APLICACIÓN MÓVIL COMO INSTRUMENTO DE DIFUSIÓN</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(185, '2023-11-07 08:48:27', 9, 9, 'admi7@gmail.com', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(186, '2023-11-07 08:48:30', 9, 9, 'tovacen242@weirby.com', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-009</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(187, '2023-11-07 10:12:12', 9, 9, 'admi7@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-009</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(188, '2023-11-07 10:12:15', 9, 9, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>007-2023-VRI-UNAP</b><br>Codigo : <b> 2023-009 </b><br>Título : <b> 123 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(189, '2023-11-07 10:12:18', 9, 9, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>007-2023-VRI-UNAP</b><br>Codigo : <b> 2023-009 </b><br>Título : <b> 123 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(190, '2023-11-07 10:12:21', 9, 9, 'gsegundo@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>007-2023-VRI-UNAP</b><br>Codigo : <b> 2023-009 </b><br>Título : <b> 123 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(191, '2023-11-07 10:26:06', 0, 9, 'admi7@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-009</b><br> Título de Proyecto : <b>LAS APLICACIONES MÓVILES Y SU IMPACTO EN LA SOCIEDAD\r\n</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(192, '2023-11-07 10:26:10', 0, 9, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-009</b><br> Título de Proyecto : <b>LAS APLICACIONES MÓVILES Y SU IMPACTO EN LA SOCIEDAD\r\n</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(193, '2023-11-07 10:26:12', 0, 9, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-009</b><br> Título de Proyecto : <b>LAS APLICACIONES MÓVILES Y SU IMPACTO EN LA SOCIEDAD\r\n</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(194, '2023-11-07 10:26:15', 0, 9, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-009</b><br> Título de Proyecto : <b>LAS APLICACIONES MÓVILES Y SU IMPACTO EN LA SOCIEDAD\r\n</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(195, '2023-11-07 10:26:18', 0, 9, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-009</b><br> Título de Proyecto : <b>LAS APLICACIONES MÓVILES Y SU IMPACTO EN LA SOCIEDAD\r\n</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(196, '2023-11-07 10:33:30', 9, 9, 'admi7@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-009</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(197, '2023-11-07 11:00:26', 0, 16, 'admi8@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>EFRAIN JHEDY CENTENO BARRIENTOS</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: admi8@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(198, '2023-11-07 11:03:20', 0, 10, 'admi8@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-010</b><br><br> Título de Proyecto: <b>LAS APLICACIONES MÓVILES Y LA REALIDAD AUMENTADA  SU IMPACTO EN LA SOCIEDAD </b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(199, '2023-11-07 11:04:15', 10, 10, 'admi8@gmail.com', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(200, '2023-11-07 11:04:18', 10, 10, 'neyotef796@unbiex.com', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-010</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(201, '2023-11-07 11:05:15', 10, 10, 'admi8@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-010</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(202, '2023-11-07 11:05:19', 10, 10, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>008-2023-VRI-UNAP</b><br>Codigo : <b> 2023-010 </b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(203, '2023-11-07 11:05:21', 10, 10, 'tovacen242@weirby.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>008-2023-VRI-UNAP</b><br>Codigo : <b> 2023-010 </b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(204, '2023-11-07 11:05:24', 10, 10, 'gsegundo@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>008-2023-VRI-UNAP</b><br>Codigo : <b> 2023-010 </b><br>Título : <b> DW </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(205, '2023-11-07 11:51:26', 0, 17, 'admi9@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>CARMEN VICTORIA CONDORI MOREANO</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: admi9@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(206, '2023-11-07 11:59:06', 0, 11, 'admi9@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-011</b><br><br> Título de Proyecto: <b>LAS APLICACIONES MOVILES EN 2024</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(207, '2023-11-07 11:59:17', 11, 11, 'admi9@gmail.com', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(208, '2023-11-07 11:59:20', 11, 11, 'tovacen242@weirby.com', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-011</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(209, '2023-11-07 12:01:18', 0, 17, 'admi9@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-011</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(210, '2023-11-07 12:01:24', 4, 0, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>-VRI-UNAP</b><br>Codigo : <b> 2023-011 </b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(211, '2023-11-07 12:01:28', 3, 0, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>-VRI-UNAP</b><br>Codigo : <b> 2023-011 </b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(212, '2023-11-07 12:01:30', 1, 0, 'gsegundo@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>-VRI-UNAP</b><br>Codigo : <b> 2023-011 </b><br>Título : <b> DMINAS 2 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(213, '2023-11-07 12:06:29', 0, 11, 'admi9@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-011</b><br> Título de Proyecto : <b>APLICACIÓN MÓVIL COMO INSTRUMENTO DE DIFUSIÓN</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(214, '2023-11-07 12:06:31', 0, 11, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-011</b><br> Título de Proyecto : <b>APLICACIÓN MÓVIL COMO INSTRUMENTO DE DIFUSIÓN</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(215, '2023-11-07 12:06:34', 0, 11, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-011</b><br> Título de Proyecto : <b>APLICACIÓN MÓVIL COMO INSTRUMENTO DE DIFUSIÓN</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(216, '2023-11-07 12:06:37', 0, 11, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-011</b><br> Título de Proyecto : <b>APLICACIÓN MÓVIL COMO INSTRUMENTO DE DIFUSIÓN</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(217, '2023-11-07 12:06:40', 0, 11, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-011</b><br> Título de Proyecto : <b>APLICACIÓN MÓVIL COMO INSTRUMENTO DE DIFUSIÓN</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(218, '2023-11-21 12:36:53', 0, 18, 'laurasantidenis60@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>YOVANA ESTRADA PACCO</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: laurasantidenis60@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(219, '2023-11-21 12:44:05', 0, 12, 'laurasantidenis60@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-012</b><br><br> Título de Proyecto: <b>TDR SANTIAGO</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(220, '2023-11-21 12:50:17', 12, 12, 'laurasantidenis60@gmail.com', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(221, '2023-11-21 12:50:20', 12, 12, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-012</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(222, '2023-11-21 12:54:32', 1, 0, 'laurasantidenis60@gmail.com', 'Rechazo del Director', 'El Director/Asesor ha rechazado su proyecto de tesis por lo que deberá cambiarlo o coordinar personalmente.'),
(223, '2023-11-21 13:00:59', 0, 13, 'laurasantidenis60@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-013</b><br><br> Título de Proyecto: <b>DENIS DENIS </b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(224, '2023-11-21 13:01:03', 13, 13, 'laurasantidenis60@gmail.com', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(225, '2023-11-21 13:01:07', 13, 13, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-013</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(226, '2023-11-28 08:55:09', 0, 18, 'rojas.nel07@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>MAYLI ALFARO MEJIA</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: rojas.nel07@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(227, '2023-11-28 09:22:57', 0, 19, 'carlos@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>CARLOS DANIEL APAZA CCOLQQUE</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: carlos@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(228, '2023-11-28 09:34:06', 0, 14, 'carlos@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-014</b><br><br> Título de Proyecto: <b>LAS APLICACIONES MÓVILES EN EL 2023 CREADOR DE WEBS SENCILLO</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.'),
(229, '2023-11-28 09:40:14', 14, 14, 'carlos@gmail.com', 'Enviado al Director', '<h4> Enviado al Director </h4><br>Su proyecto ha sido enviado a su Director de Proyecto con el formato revisado, su Director ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(230, '2023-11-28 09:40:17', 14, 14, 'tovacen242@weirby.com', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-014</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(231, '2023-11-28 09:45:32', 14, 14, 'carlos@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-014</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(232, '2023-11-28 09:45:35', 14, 14, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>010-2023-VRI-UNAP</b><br>Codigo : <b> 2023-014 </b><br>Título : <b> SA </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(233, '2023-11-28 09:45:38', 14, 14, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>010-2023-VRI-UNAP</b><br>Codigo : <b> 2023-014 </b><br>Título : <b> SA </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(234, '2023-11-28 09:45:40', 14, 14, 'gsegundo@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>010-2023-VRI-UNAP</b><br>Codigo : <b> 2023-014 </b><br>Título : <b> SA </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(235, '2023-11-28 10:12:28', 0, 14, 'carlos@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-014</b><br> Título de Proyecto : <b>IMPLEMENTACION DE APLICACIONES MOVILES PARA EL MONITOREA DE LOS BUSES DE LA UNAMBA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(236, '2023-11-28 10:12:32', 0, 14, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-014</b><br> Título de Proyecto : <b>IMPLEMENTACION DE APLICACIONES MOVILES PARA EL MONITOREA DE LOS BUSES DE LA UNAMBA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(237, '2023-11-28 10:12:34', 0, 14, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-014</b><br> Título de Proyecto : <b>IMPLEMENTACION DE APLICACIONES MOVILES PARA EL MONITOREA DE LOS BUSES DE LA UNAMBA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(238, '2023-11-28 10:12:38', 0, 14, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-014</b><br> Título de Proyecto : <b>IMPLEMENTACION DE APLICACIONES MOVILES PARA EL MONITOREA DE LOS BUSES DE LA UNAMBA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(239, '2023-11-28 10:12:41', 0, 14, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-014</b><br> Título de Proyecto : <b>IMPLEMENTACION DE APLICACIONES MOVILES PARA EL MONITOREA DE LOS BUSES DE LA UNAMBA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(240, '2023-11-28 10:18:33', 14, 14, 'carlos@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-014</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(241, '2023-11-29 09:00:32', 0, 20, 'rene@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>RENE RAQUEL AYMARA ZAMORA</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: rene@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(242, '2023-11-29 10:42:54', 0, 15, 'rene@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-015</b><br><br> Título de Proyecto: <b>TESIS DE IMPLEMENTACION DE APLICACIONES MOVILES CON REALIDAD AUMENTADA</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.'),
(243, '2023-11-29 12:13:55', 15, 15, 'rene@gmail.com', 'Enviado al Asesor', '<h4> Enviado al Asesor </h4><br>Su proyecto ha sido enviado a su Asesor de Proyecto con el formato revisado, su Asesor ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(244, '2023-11-29 12:13:59', 15, 15, 'tovacen242@weirby.com', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-015</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(245, '2023-11-29 12:55:28', 15, 15, 'rene@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-015</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(246, '2023-11-29 12:55:31', 15, 15, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>011-2023-VRI-UNAP</b><br>Codigo : <b> 2023-015 </b><br>Título : <b> RT </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(247, '2023-11-29 12:55:34', 15, 15, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>011-2023-VRI-UNAP</b><br>Codigo : <b> 2023-015 </b><br>Título : <b> RT </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(248, '2023-11-29 12:55:37', 15, 15, 'gsegundo@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>011-2023-VRI-UNAP</b><br>Codigo : <b> 2023-015 </b><br>Título : <b> RT </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(249, '2023-12-04 10:54:03', 0, 21, 'gaby@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>LAURA GABRIELA BARRIENTOS QUISPE</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: gaby@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(250, '2023-12-04 11:09:33', 0, 16, 'gaby@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-016</b><br><br> Título de Proyecto: <b>TESIS DE EMPRENDIMIENTO DE LA CIUDAD DE ABANCAY 2023</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.'),
(251, '2023-12-04 11:12:08', 16, 16, 'gaby@gmail.com', 'Enviado al Asesor', '<h4> Enviado al Asesor </h4><br>Su proyecto ha sido enviado a su Asesor de Proyecto con el formato revisado, su Asesor ya puede revisarlo en la <b>Plataforma PILAR</b>.');
INSERT INTO `logCorreos` (`Id`, `Fecha`, `IdDocente`, `IdTesista`, `Correo`, `Titulo`, `Mensaje`) VALUES
(252, '2023-12-04 11:12:12', 16, 16, 'tovacen242@weirby.com', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-016</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(253, '2023-12-04 11:16:02', 16, 16, 'gaby@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-016</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(254, '2023-12-04 11:16:06', 16, 16, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>012-2023-VRIN-UNAMBA</b><br>Codigo : <b> 2023-016 </b><br>Título : <b> TESIS DE EMPRENDIMIENTO DE LA CIUDAD DE ABANCAY 2023 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envi'),
(255, '2023-12-04 11:16:10', 16, 16, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>012-2023-VRIN-UNAMBA</b><br>Codigo : <b> 2023-016 </b><br>Título : <b> TESIS DE EMPRENDIMIENTO DE LA CIUDAD DE ABANCAY 2023 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envi'),
(256, '2023-12-04 11:16:13', 16, 16, 'gsegundo@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>012-2023-VRIN-UNAMBA</b><br>Codigo : <b> 2023-016 </b><br>Título : <b> TESIS DE EMPRENDIMIENTO DE LA CIUDAD DE ABANCAY 2023 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envi'),
(257, '2023-12-04 11:32:40', 0, 16, 'gaby@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-016</b><br> Título de Proyecto : <b>ESTO ES UNA MODIFICACION DEL TITULO DE LA TESIS DE EMPRENDIMIENTO DE LA CIUDAD DE ABANCAY 2023</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(258, '2023-12-04 11:32:43', 0, 16, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-016</b><br> Título de Proyecto : <b>ESTO ES UNA MODIFICACION DEL TITULO DE LA TESIS DE EMPRENDIMIENTO DE LA CIUDAD DE ABANCAY 2023</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(259, '2023-12-04 11:32:48', 0, 16, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-016</b><br> Título de Proyecto : <b>ESTO ES UNA MODIFICACION DEL TITULO DE LA TESIS DE EMPRENDIMIENTO DE LA CIUDAD DE ABANCAY 2023</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(260, '2023-12-04 11:32:52', 0, 16, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-016</b><br> Título de Proyecto : <b>ESTO ES UNA MODIFICACION DEL TITULO DE LA TESIS DE EMPRENDIMIENTO DE LA CIUDAD DE ABANCAY 2023</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(261, '2023-12-04 11:32:57', 0, 16, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-016</b><br> Título de Proyecto : <b>ESTO ES UNA MODIFICACION DEL TITULO DE LA TESIS DE EMPRENDIMIENTO DE LA CIUDAD DE ABANCAY 2023</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(262, '2023-12-04 11:36:42', 16, 16, 'gaby@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-016</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(263, '2023-12-04 11:56:50', 0, 22, 'tula@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>TULA BRAVO HUAMANHORCCO</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: tula@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(264, '2023-12-04 12:12:54', 0, 17, 'tula@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-017</b><br><br> Título de Proyecto: <b>NIVELES NUTRICIONALES Y CARACTERÍSTICAS FISICOQUIMICA DEL ENSILAJE DE CÁSCARA DE CACAO (THEOBROMA CACAO L.) ADICIONANDO MICROORGANISMOS EFICIENTES, EN TINGO MARÍA</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.'),
(265, '2023-12-04 12:14:17', 17, 17, 'tula@gmail.com', 'Enviado al Asesor', '<h4> Enviado al Asesor </h4><br>Su proyecto ha sido enviado a su Asesor de Proyecto con el formato revisado, su Asesor ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(266, '2023-12-04 12:14:21', 17, 17, 'tovacen242@weirby.com', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-017</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(267, '2023-12-04 12:24:46', 17, 17, 'tula@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-017</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(268, '2023-12-04 12:24:49', 17, 17, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>013-2023-VRIN-UNAMBA</b><br>Codigo : <b> 2023-017 </b><br>Título : <b> NIVELES NUTRICIONALES Y CARACTERÍSTICAS FISICOQUIMICA DEL ENSILAJE DE CÁSCARA DE CACAO (THEOBROMA CACAO L.) ADICIONANDO MICROORGANISMOS EFICIENTES, EN TINGO MARÍA </b><br><br>Ud. tiene un plazo de 10 dias hábiles par'),
(269, '2023-12-04 12:24:51', 17, 17, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>013-2023-VRIN-UNAMBA</b><br>Codigo : <b> 2023-017 </b><br>Título : <b> NIVELES NUTRICIONALES Y CARACTERÍSTICAS FISICOQUIMICA DEL ENSILAJE DE CÁSCARA DE CACAO (THEOBROMA CACAO L.) ADICIONANDO MICROORGANISMOS EFICIENTES, EN TINGO MARÍA </b><br><br>Ud. tiene un plazo de 10 dias hábiles par'),
(270, '2023-12-04 12:24:55', 17, 17, 'gsegundo@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>013-2023-VRIN-UNAMBA</b><br>Codigo : <b> 2023-017 </b><br>Título : <b> NIVELES NUTRICIONALES Y CARACTERÍSTICAS FISICOQUIMICA DEL ENSILAJE DE CÁSCARA DE CACAO (THEOBROMA CACAO L.) ADICIONANDO MICROORGANISMOS EFICIENTES, EN TINGO MARÍA </b><br><br>Ud. tiene un plazo de 10 dias hábiles par'),
(271, '2023-12-04 12:33:25', 0, 17, 'tula@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-017</b><br> Título de Proyecto : <b>NIVELES NUTRICIONALES Y CARACTERÍSTICAS FISICOQUIMICA DEL ENSILAJE DE CÁSCARA DE CACAO (THEOBROMA CACAO L.) ADICIONANDO MICROORGANISMOS EFICIENTES, EN TINGO MARÍA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(272, '2023-12-04 12:33:28', 0, 17, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-017</b><br> Título de Proyecto : <b>NIVELES NUTRICIONALES Y CARACTERÍSTICAS FISICOQUIMICA DEL ENSILAJE DE CÁSCARA DE CACAO (THEOBROMA CACAO L.) ADICIONANDO MICROORGANISMOS EFICIENTES, EN TINGO MARÍA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(273, '2023-12-04 12:33:31', 0, 17, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-017</b><br> Título de Proyecto : <b>NIVELES NUTRICIONALES Y CARACTERÍSTICAS FISICOQUIMICA DEL ENSILAJE DE CÁSCARA DE CACAO (THEOBROMA CACAO L.) ADICIONANDO MICROORGANISMOS EFICIENTES, EN TINGO MARÍA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(274, '2023-12-04 12:33:34', 0, 17, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-017</b><br> Título de Proyecto : <b>NIVELES NUTRICIONALES Y CARACTERÍSTICAS FISICOQUIMICA DEL ENSILAJE DE CÁSCARA DE CACAO (THEOBROMA CACAO L.) ADICIONANDO MICROORGANISMOS EFICIENTES, EN TINGO MARÍA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(275, '2023-12-04 12:33:37', 0, 17, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-017</b><br> Título de Proyecto : <b>NIVELES NUTRICIONALES Y CARACTERÍSTICAS FISICOQUIMICA DEL ENSILAJE DE CÁSCARA DE CACAO (THEOBROMA CACAO L.) ADICIONANDO MICROORGANISMOS EFICIENTES, EN TINGO MARÍA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(276, '2023-12-04 12:36:28', 17, 17, 'tula@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-017</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(277, '2023-12-04 12:54:45', 0, 23, 'brisa@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>BRISA ELENA CABRERA SUTURI</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: brisa@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(278, '2023-12-04 12:59:37', 0, 18, 'brisa@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-018</b><br><br> Título de Proyecto: <b>SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.'),
(279, '2023-12-04 13:00:34', 18, 18, 'brisa@gmail.com', 'Enviado al Asesor', '<h4> Enviado al Asesor </h4><br>Su proyecto ha sido enviado a su Asesor de Proyecto con el formato revisado, su Asesor ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(280, '2023-12-04 13:00:37', 18, 18, 'cafyalorza@gufum.com', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-018</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(281, '2023-12-04 13:04:29', 0, 23, 'brisa@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-018</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(282, '2023-12-04 13:04:36', 3, 0, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>-VRIN-UNAMBA</b><br>Codigo : <b> 2023-018 </b><br>Título : <b> SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA'),
(283, '2023-12-04 13:04:39', 2, 0, 'tovacen242@weirby.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>-VRIN-UNAMBA</b><br>Codigo : <b> 2023-018 </b><br>Título : <b> SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA'),
(284, '2023-12-04 13:04:42', 1, 0, 'gsegundo@unamba.edu.pe', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>-VRIN-UNAMBA</b><br>Codigo : <b> 2023-018 </b><br>Título : <b> SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA'),
(285, '2023-12-04 15:14:04', 0, 18, 'brisa@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-018</b><br> Título de Proyecto : <b>SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(286, '2023-12-04 15:14:07', 0, 18, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-018</b><br> Título de Proyecto : <b>SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(287, '2023-12-04 15:14:10', 0, 18, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-018</b><br> Título de Proyecto : <b>SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(288, '2023-12-04 15:14:13', 0, 18, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-018</b><br> Título de Proyecto : <b>SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(289, '2023-12-04 15:14:17', 0, 18, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-018</b><br> Título de Proyecto : <b>SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(290, '2023-12-04 15:20:29', 18, 18, 'brisa@gmail.com', 'Desaprobación de Proyecto', 'El Proyecto de Tesis con código <b>2023-018</b> <br>\r\npresentado el <b>04/12/2023 12:59pm</b> con correcciones subidas el <b>04/12/2023 03:14pm</b><br>titulado: <b>SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA</b>.<br><br>\r\n\r\nHa sido desaprobado por dos de sus jurados, por lo que se procedera a archivar el presente trámite.<br><br>Por la presente le comunicamos que queda habilitada la cuenta de Plataforma para el tesista y asi para '),
(291, '2023-12-04 15:20:32', 18, 18, 'neyotef796@unbiex.com', 'Desaprobación de Proyecto', 'El Proyecto de Tesis con código <b>2023-018</b> <br>\r\npresentado el <b>04/12/2023 12:59pm</b> con correcciones subidas el <b>04/12/2023 03:14pm</b><br>titulado: <b>SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA</b>.<br><br>\r\n\r\nHa sido desaprobado por dos de sus jurados, por lo que se procedera a archivar el presente trámite.<br><br>Por la presente le comunicamos que queda habilitada la cuenta de Plataforma para el tesista y asi para '),
(292, '2023-12-04 15:20:35', 18, 18, 'tovacen242@weirby.com', 'Desaprobación de Proyecto', 'El Proyecto de Tesis con código <b>2023-018</b> <br>\r\npresentado el <b>04/12/2023 12:59pm</b> con correcciones subidas el <b>04/12/2023 03:14pm</b><br>titulado: <b>SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA</b>.<br><br>\r\n\r\nHa sido desaprobado por dos de sus jurados, por lo que se procedera a archivar el presente trámite.<br><br>Por la presente le comunicamos que queda habilitada la cuenta de Plataforma para el tesista y asi para '),
(293, '2023-12-04 15:20:38', 18, 18, 'gsegundo@unamba.edu.pe', 'Desaprobación de Proyecto', 'El Proyecto de Tesis con código <b>2023-018</b> <br>\r\npresentado el <b>04/12/2023 12:59pm</b> con correcciones subidas el <b>04/12/2023 03:14pm</b><br>titulado: <b>SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA</b>.<br><br>\r\n\r\nHa sido desaprobado por dos de sus jurados, por lo que se procedera a archivar el presente trámite.<br><br>Por la presente le comunicamos que queda habilitada la cuenta de Plataforma para el tesista y asi para '),
(294, '2023-12-04 15:20:41', 18, 18, 'cafyalorza@gufum.com', 'Desaprobación de Proyecto', 'El Proyecto de Tesis con código <b>2023-018</b> <br>\r\npresentado el <b>04/12/2023 12:59pm</b> con correcciones subidas el <b>04/12/2023 03:14pm</b><br>titulado: <b>SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA</b>.<br><br>\r\n\r\nHa sido desaprobado por dos de sus jurados, por lo que se procedera a archivar el presente trámite.<br><br>Por la presente le comunicamos que queda habilitada la cuenta de Plataforma para el tesista y asi para '),
(295, '2023-12-14 12:46:36', 0, 24, 'rocio@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>ROCIO LEIVA CRIALES</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: rocio@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(296, '2023-12-18 12:35:00', 0, 18, 'rojas.nel07@gmail.com', 'Corregir Formato Retornado', 'Saludos\r\nSu trámite ha sido rechazado, contiene los siguientes errores:\r\n\r\n EL documento no cumple con el formato de la Escuela profesional.\r\n\r\nDeberá corregir y subir su proyecto a la brevedad posible.\r\nNota: Revise el manual de tesista aquí.'),
(297, '2023-12-18 12:35:03', 1, 0, 'gsegundo@unamba.edu.pe', 'Corregir Formato Retornado', 'Dirección de tesis : 2023-013 <br>Saludos\r\nSu trámite ha sido rechazado, contiene los siguientes errores:\r\n\r\n EL documento no cumple con el formato de la Escuela profesional.\r\n\r\nDeberá corregir y subir su proyecto a la brevedad posible.\r\nNota: Revise el manual de tesista aquí.'),
(298, '2023-12-18 14:31:26', 0, 25, 'rosa@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>ROSA GISELA MOLINA MUÑOZ</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y trabajo de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: rosa@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(299, '2023-12-20 10:14:58', 0, 19, 'brisa@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-019</b><br><br> Título de Proyecto: <b>TESIS ULTIMO</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.'),
(300, '2023-12-20 10:22:50', 19, 19, 'brisa@gmail.com', 'Enviado al Asesor', '<h4> Enviado al Asesor </h4><br>Su proyecto ha sido enviado a su Asesor de Proyecto con el formato revisado, su Asesor ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(301, '2023-12-20 10:22:54', 19, 19, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-019</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(302, '2023-12-20 10:25:13', 19, 19, 'brisa@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-019</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(303, '2023-12-20 10:25:16', 19, 19, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>015-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-019 </b><br>Título : <b> TESIS ULTIMO </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(304, '2023-12-20 10:25:19', 19, 19, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>015-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-019 </b><br>Título : <b> TESIS ULTIMO </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(305, '2023-12-20 10:25:22', 19, 19, 'tovacen242@weirby.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>015-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-019 </b><br>Título : <b> TESIS ULTIMO </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se envia al correo</b>, se envia a su cuenta en <b>PILAR</b>.'),
(306, '2023-12-20 10:31:48', 0, 19, 'brisa@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-019</b><br> Título de Proyecto : <b>TESIS DE APLICACIONES MOVILES</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(307, '2023-12-20 10:31:51', 0, 19, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-019</b><br> Título de Proyecto : <b>TESIS DE APLICACIONES MOVILES</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(308, '2023-12-20 10:31:54', 0, 19, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-019</b><br> Título de Proyecto : <b>TESIS DE APLICACIONES MOVILES</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(309, '2023-12-20 10:32:01', 0, 19, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-019</b><br> Título de Proyecto : <b>TESIS DE APLICACIONES MOVILES</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(310, '2023-12-20 10:32:03', 0, 19, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-019</b><br> Título de Proyecto : <b>TESIS DE APLICACIONES MOVILES</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(311, '2023-12-20 10:32:47', 19, 19, 'brisa@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-019</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(312, '2023-12-20 11:02:40', 0, 26, 'isabel@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>CINTYA ISABEL MOREANO PANIURA</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: isabel@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(313, '2023-12-20 11:05:40', 0, 20, 'isabel@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-020</b><br><br> Título de Proyecto: <b>ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.'),
(314, '2023-12-20 11:06:05', 20, 20, 'isabel@gmail.com', 'Enviado al Asesor', '<h4> Enviado al Asesor </h4><br>Su proyecto ha sido enviado a su Asesor de Proyecto con el formato revisado, su Asesor ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(315, '2023-12-20 11:06:08', 20, 20, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-020</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(316, '2023-12-20 11:07:48', 0, 27, 'delacruz@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>DELACRUZ PANEBRA PIZARRO</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: delacruz@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(317, '2023-12-20 11:19:04', 0, 28, 'ivana@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>IVANA QUISPE MIRAYA</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: ivana@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(318, '2023-12-20 11:20:54', 0, 21, 'ivana@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-021</b><br><br> Título de Proyecto: <b>IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.'),
(319, '2023-12-20 11:21:19', 21, 21, 'ivana@gmail.com', 'Enviado al Asesor', '<h4> Enviado al Asesor </h4><br>Su proyecto ha sido enviado a su Asesor de Proyecto con el formato revisado, su Asesor ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(320, '2023-12-20 11:21:22', 21, 21, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-021</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(321, '2023-12-20 11:23:10', 0, 29, 'medalid@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>MEDALID RIOS LEON</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: medalid@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(322, '2023-12-20 11:24:29', 0, 22, 'medalid@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-022</b><br><br> Título de Proyecto: <b>OPTIMIZACIÓN DEL CIRCUITO DE FLOTACIÓN DE COBRE ETAPA\r\nROUGHER MEDIANTE DISEÑOS EXPERIMENTALES EN LA PLANTA\r\nCONCENTRADORA TOROMOCHO - CHINALCO 2021</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.'),
(323, '2023-12-20 11:26:51', 22, 22, 'medalid@gmail.com', 'Enviado al Asesor', '<h4> Enviado al Asesor </h4><br>Su proyecto ha sido enviado a su Asesor de Proyecto con el formato revisado, su Asesor ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(324, '2023-12-20 11:26:54', 22, 22, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-022</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(325, '2023-12-20 11:28:16', 0, 30, 'lucero@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>YENIFER LUCERO ROJAS BECERRA</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: lucero@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(326, '2023-12-20 11:29:16', 0, 23, 'lucero@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-023</b><br><br> Título de Proyecto: <b>ESTUDIO DE SISTEMAS EÓLICOS PARA GENERACIÓN DE\r\nENERGÍA ELÉCTRICA PARA BOMBEO DE AGUA EN LA\r\nLOCALIDAD DE NINANTAMBO, TARMA, 2022</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.'),
(327, '2023-12-20 11:31:19', 23, 23, 'lucero@gmail.com', 'Enviado al Asesor', '<h4> Enviado al Asesor </h4><br>Su proyecto ha sido enviado a su Asesor de Proyecto con el formato revisado, su Asesor ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(328, '2023-12-20 11:31:21', 23, 23, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-023</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(329, '2023-12-20 11:33:00', 0, 31, 'liliana@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>LILIANA ROMAN QUISPE</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: liliana@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(330, '2023-12-20 11:35:12', 0, 24, 'liliana@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-024</b><br><br> Título de Proyecto: <b>GESTIÓN PRESUPUESTAL Y CALIDAD DEL GASTO DE LOS PRODUCTOS DE\r\nLA FUNCIÓN SALUD DEL PPOR PARA EL DESARROLLO INFANTIL TEMPRANO,\r\n2022.</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.'),
(331, '2023-12-20 11:39:25', 24, 24, 'liliana@gmail.com', 'Enviado al Asesor', '<h4> Enviado al Asesor </h4><br>Su proyecto ha sido enviado a su Asesor de Proyecto con el formato revisado, su Asesor ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(332, '2023-12-20 11:39:28', 24, 24, 'tovacen242@weirby.com', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-024</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(333, '2023-12-20 11:45:44', 0, 32, 'helen@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>BRENDA HELEN ROQUE QUISPE</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y borrador de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: helen@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(334, '2023-12-20 11:50:04', 0, 25, 'helen@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-025</b><br><br> Título de Proyecto: <b>VIOLENCIA FAMILIAR Y AUTOESTIMA EN LOS ESTUDIANTES DE SANTO\r\nDOMINGO DE ACOBAMBA</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.'),
(335, '2023-12-20 15:12:21', 0, 26, 'rosa@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-026</b><br><br> Título de Proyecto: <b>ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.'),
(336, '2023-12-20 15:13:26', 25, 25, 'helen@gmail.com', 'Enviado al Asesor', '<h4> Enviado al Asesor </h4><br>Su proyecto ha sido enviado a su Asesor de Proyecto con el formato revisado, su Asesor ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(337, '2023-12-20 15:13:29', 25, 25, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-025</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(338, '2023-12-20 15:13:32', 26, 26, 'rosa@gmail.com', 'Enviado al Asesor', '<h4> Enviado al Asesor </h4><br>Su proyecto ha sido enviado a su Asesor de Proyecto con el formato revisado, su Asesor ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(339, '2023-12-20 15:13:34', 26, 26, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-026</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(340, '2023-12-20 15:15:52', 0, 33, 'shayda@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>GLADY SHAYDA VALDEZ VILCAS</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y trabajo de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: shayda@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(341, '2023-12-20 15:16:55', 0, 27, 'shayda@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-027</b><br><br> Título de Proyecto: <b>IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.'),
(342, '2023-12-20 15:17:43', 27, 27, 'shayda@gmail.com', 'Enviado al Asesor', '<h4> Enviado al Asesor </h4><br>Su proyecto ha sido enviado a su Asesor de Proyecto con el formato revisado, su Asesor ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(343, '2023-12-20 15:17:46', 27, 27, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-027</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(344, '2023-12-20 15:19:45', 24, 24, 'liliana@gmail.com', 'Exceso de tiempo Asesor', '<h4>Saludos</h4>El proyecto con codigo: <b>2023-024</b>.  Ha estado en la bandeja del Asesor un excesivo tiempo por <b>0</b> dias, desde el: <b>20/12/2023 11:39am</b> se procede con el registro del hecho y la anulación del trámite, el Tesista podrá realizar un nuevo trámite en el tiempo que reformula el proyecto o elije otro Asesor.'),
(345, '2023-12-20 15:19:48', 24, 24, 'tovacen242@weirby.com', 'Exceso de tiempo Asesor', '<h4>Saludos</h4>El proyecto con codigo: <b>2023-024</b>.  Ha estado en la bandeja del Asesor un excesivo tiempo por <b>0</b> dias, desde el: <b>20/12/2023 11:39am</b> se procede con el registro del hecho y la anulación del trámite, el Tesista podrá realizar un nuevo trámite en el tiempo que reformula el proyecto o elije otro Asesor.'),
(346, '2023-12-20 15:20:15', 20, 20, 'isabel@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-020</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(347, '2023-12-20 15:20:19', 20, 20, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>016-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-020 </b><br>Título : <b> ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revision'),
(348, '2023-12-20 15:20:22', 20, 20, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>016-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-020 </b><br>Título : <b> ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revision'),
(349, '2023-12-20 15:20:25', 20, 20, 'tovacen242@weirby.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>016-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-020 </b><br>Título : <b> ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revision'),
(350, '2023-12-20 15:20:53', 21, 21, 'ivana@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-021</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(351, '2023-12-20 15:20:56', 21, 21, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>017-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-021 </b><br>Título : <b> IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Platafo'),
(352, '2023-12-20 15:20:59', 21, 21, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>017-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-021 </b><br>Título : <b> IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Platafo'),
(353, '2023-12-20 15:21:02', 21, 21, 'tovacen242@weirby.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>017-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-021 </b><br>Título : <b> IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Platafo'),
(354, '2023-12-20 15:21:16', 23, 23, 'lucero@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-023</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(355, '2023-12-20 15:21:19', 23, 23, 'tovacen242@weirby.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>018-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-023 </b><br>Título : <b> ESTUDIO DE SISTEMAS EÓLICOS PARA GENERACIÓN DE\r\nENERGÍA ELÉCTRICA PARA BOMBEO DE AGUA EN LA\r\nLOCALIDAD DE NINANTAMBO, TARMA, 2022 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante'),
(356, '2023-12-20 15:21:23', 23, 23, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>018-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-023 </b><br>Título : <b> ESTUDIO DE SISTEMAS EÓLICOS PARA GENERACIÓN DE\r\nENERGÍA ELÉCTRICA PARA BOMBEO DE AGUA EN LA\r\nLOCALIDAD DE NINANTAMBO, TARMA, 2022 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante'),
(357, '2023-12-20 15:21:27', 23, 23, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>018-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-023 </b><br>Título : <b> ESTUDIO DE SISTEMAS EÓLICOS PARA GENERACIÓN DE\r\nENERGÍA ELÉCTRICA PARA BOMBEO DE AGUA EN LA\r\nLOCALIDAD DE NINANTAMBO, TARMA, 2022 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante'),
(358, '2023-12-20 15:21:45', 22, 22, 'medalid@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-022</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(359, '2023-12-20 15:21:49', 22, 22, 'tovacen242@weirby.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>019-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-022 </b><br>Título : <b> OPTIMIZACIÓN DEL CIRCUITO DE FLOTACIÓN DE COBRE ETAPA\r\nROUGHER MEDIANTE DISEÑOS EXPERIMENTALES EN LA PLANTA\r\nCONCENTRADORA TOROMOCHO - CHINALCO 2021 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las '),
(360, '2023-12-20 15:21:52', 22, 22, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>019-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-022 </b><br>Título : <b> OPTIMIZACIÓN DEL CIRCUITO DE FLOTACIÓN DE COBRE ETAPA\r\nROUGHER MEDIANTE DISEÑOS EXPERIMENTALES EN LA PLANTA\r\nCONCENTRADORA TOROMOCHO - CHINALCO 2021 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las '),
(361, '2023-12-20 15:21:55', 22, 22, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>019-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-022 </b><br>Título : <b> OPTIMIZACIÓN DEL CIRCUITO DE FLOTACIÓN DE COBRE ETAPA\r\nROUGHER MEDIANTE DISEÑOS EXPERIMENTALES EN LA PLANTA\r\nCONCENTRADORA TOROMOCHO - CHINALCO 2021 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las '),
(362, '2023-12-20 15:22:09', 25, 25, 'helen@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-025</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(363, '2023-12-20 15:22:12', 25, 25, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>020-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-025 </b><br>Título : <b> VIOLENCIA FAMILIAR Y AUTOESTIMA EN LOS ESTUDIANTES DE SANTO\r\nDOMINGO DE ACOBAMBA </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se e'),
(364, '2023-12-20 15:22:15', 25, 25, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>020-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-025 </b><br>Título : <b> VIOLENCIA FAMILIAR Y AUTOESTIMA EN LOS ESTUDIANTES DE SANTO\r\nDOMINGO DE ACOBAMBA </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se e'),
(365, '2023-12-20 15:22:18', 25, 25, 'tovacen242@weirby.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>020-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-025 </b><br>Título : <b> VIOLENCIA FAMILIAR Y AUTOESTIMA EN LOS ESTUDIANTES DE SANTO\r\nDOMINGO DE ACOBAMBA </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plataforma.<br><br>NOTA : La tesis <b>no se e'),
(366, '2023-12-20 15:22:46', 26, 26, 'rosa@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-026</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.');
INSERT INTO `logCorreos` (`Id`, `Fecha`, `IdDocente`, `IdTesista`, `Correo`, `Titulo`, `Mensaje`) VALUES
(367, '2023-12-20 15:22:48', 26, 26, 'tovacen242@weirby.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>021-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-026 </b><br>Título : <b> ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revision'),
(368, '2023-12-20 15:22:52', 26, 26, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>021-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-026 </b><br>Título : <b> ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revision'),
(369, '2023-12-20 15:22:54', 26, 26, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>021-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-026 </b><br>Título : <b> ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revision'),
(370, '2023-12-20 15:23:18', 27, 27, 'shayda@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-027</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(371, '2023-12-20 15:23:22', 27, 27, 'tovacen242@weirby.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>022-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-027 </b><br>Título : <b> IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Platafo'),
(372, '2023-12-20 15:23:25', 27, 27, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>022-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-027 </b><br>Título : <b> IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Platafo'),
(373, '2023-12-20 15:23:28', 27, 27, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>022-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-027 </b><br>Título : <b> IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Platafo'),
(374, '2023-12-20 15:41:22', 0, 27, 'shayda@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-027</b><br> Título de Proyecto : <b>IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(375, '2023-12-20 15:41:25', 0, 27, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-027</b><br> Título de Proyecto : <b>IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(376, '2023-12-20 15:41:28', 0, 27, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-027</b><br> Título de Proyecto : <b>IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(377, '2023-12-20 15:41:32', 0, 27, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-027</b><br> Título de Proyecto : <b>IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(378, '2023-12-20 15:41:35', 0, 27, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-027</b><br> Título de Proyecto : <b>IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(379, '2023-12-20 15:41:56', 27, 27, 'shayda@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-027</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(380, '2023-12-20 15:46:23', 0, 26, 'rosa@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-026</b><br> Título de Proyecto : <b>ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(381, '2023-12-20 15:46:26', 0, 26, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-026</b><br> Título de Proyecto : <b>ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(382, '2023-12-20 15:46:30', 0, 26, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-026</b><br> Título de Proyecto : <b>ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(383, '2023-12-20 15:46:33', 0, 26, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-026</b><br> Título de Proyecto : <b>ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(384, '2023-12-20 15:46:37', 0, 26, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-026</b><br> Título de Proyecto : <b>ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(385, '2023-12-20 15:51:44', 26, 26, 'rosa@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-026</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(386, '2023-12-20 15:56:55', 0, 34, 'maria@gmail.com', 'Inscripción', '<h3>Bienvenido</h3>Sr(rta): <b>MARIA FRANCISCA VALVERDE CARRASCO</b>.<br>Ud. ha concluido satisfactoriamente su inscripción en la  Plataforma PILAR para el trámite electrónico de su proyecto y trabajo de tesis, en calidad de estudiante egresado de la <b>UNAMBA</b>.<br><br><b>Datos de su Cuenta:</b><br>  * usuario: maria@gmail.com<br>  * contraseña: 123456<br><br><br>Gracias.'),
(387, '2023-12-20 15:58:17', 0, 28, 'maria@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-028</b><br><br> Título de Proyecto: <b>EVASIÓN TRIBUTARIA Y SU RELACIÓN EN LA RECAUDACIÓN FISCAL EN LOS COMERCIANTES DEL MERCADO MODELO HONDURAS 2000 COMAS 2022</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.'),
(388, '2023-12-20 15:58:46', 28, 28, 'maria@gmail.com', 'Enviado al Asesor', '<h4> Enviado al Asesor </h4><br>Su proyecto ha sido enviado a su Asesor de Proyecto con el formato revisado, su Asesor ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(389, '2023-12-20 15:58:49', 28, 28, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-028</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(390, '2023-12-20 15:59:53', 28, 28, 'maria@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-028</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(391, '2023-12-20 15:59:56', 28, 28, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>023-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-028 </b><br>Título : <b> EVASIÓN TRIBUTARIA Y SU RELACIÓN EN LA RECAUDACIÓN FISCAL EN LOS COMERCIANTES DEL MERCADO MODELO HONDURAS 2000 COMAS 2022 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plat'),
(392, '2023-12-20 15:59:59', 28, 28, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>023-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-028 </b><br>Título : <b> EVASIÓN TRIBUTARIA Y SU RELACIÓN EN LA RECAUDACIÓN FISCAL EN LOS COMERCIANTES DEL MERCADO MODELO HONDURAS 2000 COMAS 2022 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plat'),
(393, '2023-12-20 16:00:01', 28, 28, 'tovacen242@weirby.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>023-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-028 </b><br>Título : <b> EVASIÓN TRIBUTARIA Y SU RELACIÓN EN LA RECAUDACIÓN FISCAL EN LOS COMERCIANTES DEL MERCADO MODELO HONDURAS 2000 COMAS 2022 </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediante la Plat'),
(394, '2023-12-20 16:04:02', 0, 28, 'maria@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-028</b><br> Título de Proyecto : <b>EVASIÓN TRIBUTARIA Y SU RELACIÓN EN LA RECAUDACIÓN FISCAL EN LOS COMERCIANTES DEL MERCADO MODELO HONDURAS 2000 COMAS 2022</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(395, '2023-12-20 16:04:05', 0, 28, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-028</b><br> Título de Proyecto : <b>EVASIÓN TRIBUTARIA Y SU RELACIÓN EN LA RECAUDACIÓN FISCAL EN LOS COMERCIANTES DEL MERCADO MODELO HONDURAS 2000 COMAS 2022</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(396, '2023-12-20 16:04:08', 0, 28, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-028</b><br> Título de Proyecto : <b>EVASIÓN TRIBUTARIA Y SU RELACIÓN EN LA RECAUDACIÓN FISCAL EN LOS COMERCIANTES DEL MERCADO MODELO HONDURAS 2000 COMAS 2022</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(397, '2023-12-20 16:04:11', 0, 28, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-028</b><br> Título de Proyecto : <b>EVASIÓN TRIBUTARIA Y SU RELACIÓN EN LA RECAUDACIÓN FISCAL EN LOS COMERCIANTES DEL MERCADO MODELO HONDURAS 2000 COMAS 2022</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(398, '2023-12-20 16:04:14', 0, 28, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-028</b><br> Título de Proyecto : <b>EVASIÓN TRIBUTARIA Y SU RELACIÓN EN LA RECAUDACIÓN FISCAL EN LOS COMERCIANTES DEL MERCADO MODELO HONDURAS 2000 COMAS 2022</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(399, '2023-12-20 16:08:43', 28, 28, 'maria@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-028</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(400, '2023-12-20 16:17:50', 0, 20, 'isabel@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-020</b><br> Título de Proyecto : <b>ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(401, '2023-12-20 16:17:53', 0, 20, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-020</b><br> Título de Proyecto : <b>ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(402, '2023-12-20 16:17:56', 0, 20, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-020</b><br> Título de Proyecto : <b>ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(403, '2023-12-20 16:17:59', 0, 20, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-020</b><br> Título de Proyecto : <b>ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(404, '2023-12-20 16:18:02', 0, 20, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-020</b><br> Título de Proyecto : <b>ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(405, '2023-12-20 16:18:27', 20, 20, 'isabel@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-020</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(406, '2023-12-20 16:19:47', 0, 21, 'ivana@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-021</b><br> Título de Proyecto : <b>IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(407, '2023-12-20 16:19:50', 0, 21, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-021</b><br> Título de Proyecto : <b>IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(408, '2023-12-20 16:19:53', 0, 21, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-021</b><br> Título de Proyecto : <b>IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(409, '2023-12-20 16:19:56', 0, 21, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-021</b><br> Título de Proyecto : <b>IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(410, '2023-12-20 16:19:58', 0, 21, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-021</b><br> Título de Proyecto : <b>IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(411, '2023-12-20 16:20:33', 21, 21, 'ivana@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-021</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(412, '2023-12-20 16:24:29', 0, 22, 'medalid@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-022</b><br> Título de Proyecto : <b>OPTIMIZACIÓN DEL CIRCUITO DE FLOTACIÓN DE COBRE ETAPA\r\nROUGHER MEDIANTE DISEÑOS EXPERIMENTALES EN LA PLANTA\r\nCONCENTRADORA TOROMOCHO - CHINALCO 2021</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(413, '2023-12-20 16:24:32', 0, 22, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-022</b><br> Título de Proyecto : <b>OPTIMIZACIÓN DEL CIRCUITO DE FLOTACIÓN DE COBRE ETAPA\r\nROUGHER MEDIANTE DISEÑOS EXPERIMENTALES EN LA PLANTA\r\nCONCENTRADORA TOROMOCHO - CHINALCO 2021</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(414, '2023-12-20 16:24:35', 0, 22, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-022</b><br> Título de Proyecto : <b>OPTIMIZACIÓN DEL CIRCUITO DE FLOTACIÓN DE COBRE ETAPA\r\nROUGHER MEDIANTE DISEÑOS EXPERIMENTALES EN LA PLANTA\r\nCONCENTRADORA TOROMOCHO - CHINALCO 2021</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(415, '2023-12-20 16:24:38', 0, 22, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-022</b><br> Título de Proyecto : <b>OPTIMIZACIÓN DEL CIRCUITO DE FLOTACIÓN DE COBRE ETAPA\r\nROUGHER MEDIANTE DISEÑOS EXPERIMENTALES EN LA PLANTA\r\nCONCENTRADORA TOROMOCHO - CHINALCO 2021</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(416, '2023-12-20 16:24:40', 0, 22, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-022</b><br> Título de Proyecto : <b>OPTIMIZACIÓN DEL CIRCUITO DE FLOTACIÓN DE COBRE ETAPA\r\nROUGHER MEDIANTE DISEÑOS EXPERIMENTALES EN LA PLANTA\r\nCONCENTRADORA TOROMOCHO - CHINALCO 2021</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(417, '2023-12-20 16:25:00', 22, 22, 'medalid@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-022</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(418, '2023-12-20 16:26:49', 0, 23, 'lucero@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-023</b><br> Título de Proyecto : <b>ESTUDIO DE SISTEMAS EÓLICOS PARA GENERACIÓN DE\r\nENERGÍA ELÉCTRICA PARA BOMBEO DE AGUA EN LA\r\nLOCALIDAD DE NINANTAMBO, TARMA, 2022</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(419, '2023-12-20 16:26:52', 0, 23, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-023</b><br> Título de Proyecto : <b>ESTUDIO DE SISTEMAS EÓLICOS PARA GENERACIÓN DE\r\nENERGÍA ELÉCTRICA PARA BOMBEO DE AGUA EN LA\r\nLOCALIDAD DE NINANTAMBO, TARMA, 2022</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(420, '2023-12-20 16:26:55', 0, 23, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-023</b><br> Título de Proyecto : <b>ESTUDIO DE SISTEMAS EÓLICOS PARA GENERACIÓN DE\r\nENERGÍA ELÉCTRICA PARA BOMBEO DE AGUA EN LA\r\nLOCALIDAD DE NINANTAMBO, TARMA, 2022</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(421, '2023-12-20 16:26:59', 0, 23, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-023</b><br> Título de Proyecto : <b>ESTUDIO DE SISTEMAS EÓLICOS PARA GENERACIÓN DE\r\nENERGÍA ELÉCTRICA PARA BOMBEO DE AGUA EN LA\r\nLOCALIDAD DE NINANTAMBO, TARMA, 2022</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(422, '2023-12-20 16:27:02', 0, 23, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-023</b><br> Título de Proyecto : <b>ESTUDIO DE SISTEMAS EÓLICOS PARA GENERACIÓN DE\r\nENERGÍA ELÉCTRICA PARA BOMBEO DE AGUA EN LA\r\nLOCALIDAD DE NINANTAMBO, TARMA, 2022</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(423, '2023-12-20 16:27:30', 23, 23, 'lucero@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-023</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(424, '2023-12-20 16:31:23', 0, 25, 'helen@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-025</b><br> Título de Proyecto : <b>VIOLENCIA FAMILIAR Y AUTOESTIMA EN LOS ESTUDIANTES DE SANTO\r\nDOMINGO DE ACOBAMBA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(425, '2023-12-20 16:31:27', 0, 25, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-025</b><br> Título de Proyecto : <b>VIOLENCIA FAMILIAR Y AUTOESTIMA EN LOS ESTUDIANTES DE SANTO\r\nDOMINGO DE ACOBAMBA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(426, '2023-12-20 16:31:30', 0, 25, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-025</b><br> Título de Proyecto : <b>VIOLENCIA FAMILIAR Y AUTOESTIMA EN LOS ESTUDIANTES DE SANTO\r\nDOMINGO DE ACOBAMBA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(427, '2023-12-20 16:31:33', 0, 25, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-025</b><br> Título de Proyecto : <b>VIOLENCIA FAMILIAR Y AUTOESTIMA EN LOS ESTUDIANTES DE SANTO\r\nDOMINGO DE ACOBAMBA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(428, '2023-12-20 16:31:35', 0, 25, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-025</b><br> Título de Proyecto : <b>VIOLENCIA FAMILIAR Y AUTOESTIMA EN LOS ESTUDIANTES DE SANTO\r\nDOMINGO DE ACOBAMBA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(429, '2023-12-20 16:31:54', 25, 25, 'helen@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-025</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.'),
(430, '2023-12-20 16:34:42', 0, 29, 'liliana@gmail.com', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-029</b><br><br> Título de Proyecto: <b>COSTOS DE PRODUCCIÓN Y SU INCIDENCIA EN EL RENDIMIENTO FINANCIERO DE LA EMPRESA COOPERATIVA AGRARIA ASPRAOSRA, MORROPÓN 2018-2022.</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.'),
(431, '2023-12-20 16:35:11', 29, 29, 'liliana@gmail.com', 'Enviado al Asesor', '<h4> Enviado al Asesor </h4><br>Su proyecto ha sido enviado a su Asesor de Proyecto con el formato revisado, su Asesor ya puede revisarlo en la <b>Plataforma PILAR</b>.'),
(432, '2023-12-20 16:35:14', 29, 29, 'gsegundo@unamba.edu.pe', 'Proyecto para Asesoria', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-029</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.'),
(433, '2023-12-20 16:35:53', 29, 29, 'liliana@gmail.com', 'Proyecto enviado a Revisión', '<h4>Proyecto enviado a Revisión</h4><br>Su Proyecto de Tesis: <b>2023-029</b> ha sido enviado a los miembros de su Jurado. Será revisado en un plazo de 10 dias habiles mediante la <b>Plataforma PILAR</b>.'),
(434, '2023-12-20 16:35:56', 29, 29, 'cafyalorza@gufum.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>024-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-029 </b><br>Título : <b> COSTOS DE PRODUCCIÓN Y SU INCIDENCIA EN EL RENDIMIENTO FINANCIERO DE LA EMPRESA COOPERATIVA AGRARIA ASPRAOSRA, MORROPÓN 2018-2022. </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediant'),
(435, '2023-12-20 16:35:58', 29, 29, 'neyotef796@unbiex.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>024-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-029 </b><br>Título : <b> COSTOS DE PRODUCCIÓN Y SU INCIDENCIA EN EL RENDIMIENTO FINANCIERO DE LA EMPRESA COOPERATIVA AGRARIA ASPRAOSRA, MORROPÓN 2018-2022. </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediant'),
(436, '2023-12-20 16:36:01', 29, 29, 'tovacen242@weirby.com', 'Revisión de Proyecto de Tesis', '<h4>Revisión Electrónica</h4><br>Por la presente se le comunica que se le ha enviado a su cuenta de Docente en la <b>Plataforma PILAR</b> el proyecto de tesis con el siguiente detalle:<br><br>   Memo Circular: <b>024-2023-VRI-UNAMBA</b><br>Codigo : <b> 2023-029 </b><br>Título : <b> COSTOS DE PRODUCCIÓN Y SU INCIDENCIA EN EL RENDIMIENTO FINANCIERO DE LA EMPRESA COOPERATIVA AGRARIA ASPRAOSRA, MORROPÓN 2018-2022. </b><br><br>Ud. tiene un plazo de 10 dias hábiles para realizar las revisiones mediant'),
(437, '2023-12-20 16:39:30', 0, 29, 'liliana@gmail.com', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-029</b><br> Título de Proyecto : <b>COSTOS DE PRODUCCIÓN Y SU INCIDENCIA EN EL RENDIMIENTO FINANCIERO DE LA EMPRESA COOPERATIVA AGRARIA ASPRAOSRA, MORROPÓN 2018-2022.</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(438, '2023-12-20 16:39:33', 0, 29, 'cafyalorza@gufum.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-029</b><br> Título de Proyecto : <b>COSTOS DE PRODUCCIÓN Y SU INCIDENCIA EN EL RENDIMIENTO FINANCIERO DE LA EMPRESA COOPERATIVA AGRARIA ASPRAOSRA, MORROPÓN 2018-2022.</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(439, '2023-12-20 16:39:36', 0, 29, 'neyotef796@unbiex.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-029</b><br> Título de Proyecto : <b>COSTOS DE PRODUCCIÓN Y SU INCIDENCIA EN EL RENDIMIENTO FINANCIERO DE LA EMPRESA COOPERATIVA AGRARIA ASPRAOSRA, MORROPÓN 2018-2022.</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(440, '2023-12-20 16:39:39', 0, 29, 'tovacen242@weirby.com', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-029</b><br> Título de Proyecto : <b>COSTOS DE PRODUCCIÓN Y SU INCIDENCIA EN EL RENDIMIENTO FINANCIERO DE LA EMPRESA COOPERATIVA AGRARIA ASPRAOSRA, MORROPÓN 2018-2022.</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(441, '2023-12-20 16:39:41', 0, 29, 'gsegundo@unamba.edu.pe', 'Dictaminación de Proyecto de Tesis', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-029</b><br> Título de Proyecto : <b>COSTOS DE PRODUCCIÓN Y SU INCIDENCIA EN EL RENDIMIENTO FINANCIERO DE LA EMPRESA COOPERATIVA AGRARIA ASPRAOSRA, MORROPÓN 2018-2022.</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.'),
(442, '2023-12-20 16:40:07', 29, 29, 'liliana@gmail.com', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-029</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logLogins`
--

CREATE TABLE `logLogins` (
  `Id` int(11) NOT NULL,
  `Tipo` varchar(2) CHARACTER SET utf8 NOT NULL,
  `IdUser` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Accion` varchar(25) CHARACTER SET utf8 NOT NULL,
  `IP` varchar(16) CHARACTER SET utf8 NOT NULL,
  `OS` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Browser` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `logLogins`
--

INSERT INTO `logLogins` (`Id`, `Tipo`, `IdUser`, `Fecha`, `Accion`, `IP`, `OS`, `Browser`) VALUES
(1, 'T', 11, '2023-08-01 10:27:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(2, 'T', 11, '2023-08-01 15:51:11', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(3, 'T', 11, '2023-08-01 15:52:01', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(4, 'T', 11, '2023-08-01 15:52:08', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(5, 'T', 11, '2023-08-01 16:06:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(6, 'T', 11, '2023-08-01 16:07:37', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(7, 'T', 11, '2023-08-02 09:21:02', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(8, 'T', 2, '2023-08-02 09:28:55', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(9, 'D', 1, '2023-08-02 10:08:18', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(10, 'D', 2, '2023-08-02 10:49:38', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(11, 'T', 2, '2023-08-02 11:25:25', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(12, 'D', 1, '2023-08-02 11:55:50', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(13, 'T', 3, '2023-08-02 12:47:30', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(14, 'D', 1, '2023-08-02 13:09:03', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(15, 'D', 2, '2023-08-02 13:53:28', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(16, 'D', 3, '2023-08-02 15:11:46', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(17, 'D', 4, '2023-08-02 15:12:43', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(18, 'T', 2, '2023-08-02 15:14:45', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(19, 'T', 2, '2023-08-02 15:14:49', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(20, 'D', 1, '2023-08-02 15:16:48', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(21, 'D', 3, '2023-08-02 15:17:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(22, 'D', 2, '2023-08-02 15:18:24', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(23, 'D', 1, '2023-08-02 16:08:04', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(24, 'D', 3, '2023-08-02 16:09:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(25, 'D', 4, '2023-08-02 16:10:18', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(26, 'T', 2, '2023-08-02 16:13:00', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(27, 'D', 2, '2023-08-02 16:38:09', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(28, 'D', 1, '2023-08-02 16:39:11', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(29, 'T', 2, '2023-08-03 10:01:43', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(30, 'D', 1, '2023-08-03 10:55:29', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(31, 'D', 2, '2023-08-03 10:55:56', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(32, 'D', 3, '2023-08-03 11:03:09', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(33, 'D', 4, '2023-08-03 11:03:43', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(34, 'D', 1, '2023-08-03 11:04:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(35, 'T', 2, '2023-08-03 11:04:35', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(36, 'D', 2, '2023-08-03 11:07:14', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(37, 'D', 2, '2023-08-03 11:07:29', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(38, 'D', 2, '2023-08-03 11:08:11', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(39, 'T', 2, '2023-08-03 11:08:48', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(40, 'D', 3, '2023-08-03 11:09:34', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(41, 'T', 2, '2023-08-03 11:10:10', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(42, 'T', 2, '2023-08-03 12:02:43', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(43, 'D', 1, '2023-08-03 12:02:55', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(44, 'D', 2, '2023-08-03 12:05:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(45, 'T', 2, '2023-08-03 13:52:03', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(46, 'T', 2, '2023-08-03 14:13:23', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(47, 'T', 11, '2023-08-03 15:59:38', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(48, 'T', 11, '2023-08-03 15:59:56', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(49, 'T', 11, '2023-08-03 16:00:01', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(50, 'T', 2, '2023-08-03 16:00:43', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(51, 'T', 6, '2023-08-03 16:02:41', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(52, 'T', 6, '2023-08-03 16:02:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(53, 'T', 7, '2023-08-03 16:03:53', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(54, 'D', 1, '2023-08-03 16:08:19', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(55, 'T', 11, '2023-08-03 16:11:43', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(56, 'T', 7, '2023-08-03 16:12:13', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(57, 'D', 1, '2023-08-03 16:13:50', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(58, 'T', 6, '2023-08-03 16:14:40', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(59, 'D', 1, '2023-08-03 16:15:45', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(60, 'D', 2, '2023-08-03 16:18:13', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(61, 'D', 3, '2023-08-03 16:20:27', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(62, 'D', 3, '2023-08-03 16:20:30', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(63, 'D', 4, '2023-08-03 16:21:22', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(64, 'D', 1, '2023-08-03 16:22:02', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(65, 'T', 2, '2023-08-03 16:25:03', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(66, 'T', 2, '2023-08-03 16:25:07', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(67, 'T', 7, '2023-08-03 16:26:13', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(68, 'T', 11, '2023-08-03 16:26:36', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(69, 'T', 3, '2023-08-03 16:27:22', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(70, 'T', 3, '2023-08-03 16:27:25', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(71, 'D', 2, '2023-08-03 16:31:33', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(72, 'D', 3, '2023-08-03 16:32:16', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(73, 'D', 4, '2023-08-03 16:32:38', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(74, 'T', 7, '2023-08-03 16:35:08', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(75, 'T', 3, '2023-08-03 16:35:52', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(76, 'T', 3, '2023-08-03 16:35:56', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(77, 'T', 3, '2023-08-03 16:35:59', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(78, 'T', 2, '2023-08-08 13:42:33', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(79, 'D', 2, '2023-08-08 13:43:37', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(80, 'D', 2, '2023-08-08 13:43:41', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(81, 'T', 15, '2023-08-10 11:00:42', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(82, 'T', 15, '2023-08-10 11:00:45', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(83, 'T', 15, '2023-08-10 11:54:46', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(84, 'T', 15, '2023-08-10 11:54:56', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(85, 'T', 15, '2023-08-10 11:54:56', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(86, 'D', 9, '2023-08-10 11:57:05', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(87, 'T', 16, '2023-08-10 11:59:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(88, 'D', 9, '2023-08-10 12:00:20', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(89, 'T', 16, '2023-08-10 12:01:06', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(90, 'T', 15, '2023-08-10 12:01:27', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(91, 'T', 15, '2023-08-10 12:02:48', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(92, 'D', 8, '2023-08-10 12:03:42', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(93, 'T', 15, '2023-08-10 12:58:22', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(94, 'D', 9, '2023-08-10 13:01:00', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(95, 'T', 17, '2023-08-10 13:02:40', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(96, 'D', 9, '2023-08-10 13:03:19', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(97, 'T', 15, '2023-08-10 14:05:03', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(98, 'T', 17, '2023-08-10 14:05:22', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(99, 'D', 9, '2023-08-10 14:06:14', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(100, 'D', 9, '2023-08-11 11:02:41', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(101, 'D', 8, '2023-08-11 11:05:59', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(102, 'D', 8, '2023-08-11 11:06:03', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(103, 'T', 14, '2023-08-11 11:09:34', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(104, 'D', 11, '2023-08-11 11:10:57', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(105, 'D', 8, '2023-08-11 11:39:40', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(106, 'D', 8, '2023-08-11 11:39:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(107, 'D', 7, '2023-08-11 11:40:18', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(108, 'D', 7, '2023-08-11 11:40:25', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(109, 'D', 7, '2023-08-11 11:40:30', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(110, 'D', 12, '2023-08-11 11:41:05', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(111, 'D', 9, '2023-08-11 11:42:13', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(112, 'D', 11, '2023-08-11 11:42:35', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(113, 'T', 15, '2023-08-11 11:43:16', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(114, 'T', 14, '2023-08-11 11:43:32', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(115, 'D', 8, '2023-08-11 11:44:38', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(116, 'D', 7, '2023-08-11 11:48:27', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(117, 'D', 12, '2023-08-11 11:48:52', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(118, 'T', 14, '2023-08-11 11:51:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(119, 'D', 8, '2023-08-11 12:00:17', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(120, 'D', 8, '2023-08-11 12:00:21', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(121, 'D', 8, '2023-08-11 12:00:34', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(122, 'T', 14, '2023-08-11 12:16:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(123, 'T', 14, '2023-08-11 12:37:37', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(124, 'T', 14, '2023-08-11 12:37:48', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(125, 'T', 17, '2023-08-11 12:53:26', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(126, 'D', 7, '2023-08-11 12:54:05', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(127, 'D', 7, '2023-08-11 12:54:42', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(128, 'D', 11, '2023-08-11 12:54:59', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(129, 'D', 13, '2023-08-11 12:55:29', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(130, 'T', 17, '2023-08-11 12:55:51', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(131, 'D', 7, '2023-08-11 12:56:17', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(132, 'D', 11, '2023-08-11 12:56:37', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(133, 'D', 13, '2023-08-11 12:56:51', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(134, 'T', 17, '2023-08-11 12:58:27', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(135, 'T', 15, '2023-08-11 13:17:58', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(136, 'D', 11, '2023-08-11 13:18:58', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(137, 'T', 17, '2023-08-11 13:21:01', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(138, 'T', 15, '2023-08-11 13:21:30', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(139, 'T', 17, '2023-08-11 13:22:33', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(140, 'D', 11, '2023-08-11 13:36:43', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(141, 'D', 7, '2023-08-11 13:37:13', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(142, 'D', 13, '2023-08-11 13:37:40', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(143, 'T', 17, '2023-08-11 13:38:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(144, 'D', 9, '2023-08-11 13:38:58', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(145, 'T', 17, '2023-08-11 13:39:35', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(146, 'D', 9, '2023-08-11 13:40:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(147, 'D', 11, '2023-08-11 13:40:54', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(148, 'D', 11, '2023-08-11 13:42:57', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(149, 'T', 17, '2023-08-11 13:45:07', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(150, 'T', 14, '2023-08-11 13:46:28', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(151, 'T', 14, '2023-08-11 13:50:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(152, 'T', 17, '2023-08-11 15:34:59', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(153, 'D', 11, '2023-08-11 15:38:05', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(154, 'D', 11, '2023-08-11 15:54:00', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(155, 'T', 17, '2023-08-14 16:23:51', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(156, 'T', 13, '2023-08-14 16:29:33', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(157, 'T', 13, '2023-08-15 10:30:42', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(158, 'D', 8, '2023-08-15 10:34:54', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(159, 'T', 12, '2023-08-15 11:48:33', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(160, 'T', 18, '2023-10-11 11:29:00', 'Ingreso', '38.43.133.2', 'Windows 10', 'Chrome 117.0.0.0'),
(161, 'T', 18, '2023-10-11 11:50:57', 'Clave incorrecta', '38.43.133.2', 'Windows 10', 'Chrome 117.0.0.0'),
(162, 'T', 18, '2023-10-11 11:50:58', 'Ingreso', '38.43.133.2', 'Windows 10', 'Chrome 117.0.0.0'),
(163, 'D', 1, '2023-10-13 13:31:33', 'Clave incorrecta', '190.119.174.82', 'Windows 10', 'Chrome 117.0.0.0'),
(164, 'D', 1, '2023-10-13 13:31:38', 'Clave incorrecta', '190.119.174.82', 'Windows 10', 'Chrome 117.0.0.0'),
(165, 'D', 1, '2023-10-13 13:31:41', 'Ingreso', '190.119.174.82', 'Windows 10', 'Chrome 117.0.0.0'),
(166, 'T', 20, '2023-10-23 09:23:06', 'Ingreso', '38.43.133.2', 'Windows 10', 'Chrome 118.0.0.0'),
(167, 'T', 21, '2023-10-24 11:41:59', 'Ingreso', '38.43.133.2', 'Windows 10', 'Chrome 118.0.0.0'),
(168, 'T', 19, '2023-10-24 12:00:28', 'Ingreso', '38.43.133.2', 'Windows 10', 'Chrome 118.0.0.0'),
(169, 'T', 24, '2023-10-25 10:03:39', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(170, 'T', 24, '2023-10-25 10:05:12', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(171, 'T', 19, '2023-10-25 10:11:31', 'Ingreso', '38.43.133.2', 'Windows 10', 'Chrome 118.0.0.0'),
(172, 'T', 23, '2023-10-25 10:12:17', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(173, 'T', 24, '2023-10-25 10:16:22', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(174, 'T', 24, '2023-10-25 10:19:31', 'Clave incorrecta', '38.43.133.2', 'Windows 10', 'Chrome 118.0.0.0'),
(175, 'T', 24, '2023-10-25 10:19:33', 'Clave incorrecta', '38.43.133.2', 'Windows 10', 'Chrome 118.0.0.0'),
(176, 'T', 24, '2023-10-25 10:20:22', 'Ingreso', '38.43.133.2', 'Windows 10', 'Chrome 118.0.0.0'),
(177, 'D', 2, '2023-10-25 10:34:26', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(178, 'D', 2, '2023-10-25 10:34:31', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(179, 'D', 2, '2023-10-25 10:34:42', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(180, 'D', 2, '2023-10-25 10:34:46', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(181, 'D', 2, '2023-10-25 10:44:15', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(182, 'T', 2, '2023-10-25 12:08:49', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(183, 'T', 4, '2023-10-25 12:28:38', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(184, 'T', 4, '2023-10-25 12:31:23', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(185, 'T', 3, '2023-10-25 12:48:39', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(186, 'D', 2, '2023-10-25 12:53:20', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(187, 'T', 3, '2023-10-25 12:53:54', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(188, 'T', 3, '2023-10-25 13:03:22', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(189, 'T', 8, '2023-10-25 13:12:44', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(190, 'D', 2, '2023-10-25 13:14:05', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(191, 'T', 7, '2023-10-25 13:14:45', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(192, 'D', 1, '2023-10-25 13:42:48', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(193, 'D', 1, '2023-10-25 13:42:51', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(194, 'D', 2, '2023-10-25 13:56:50', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(195, 'D', 2, '2023-10-25 13:56:54', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(196, 'T', 9, '2023-10-25 13:58:21', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(197, 'D', 2, '2023-10-25 15:44:23', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(198, 'D', 3, '2023-10-25 15:51:34', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(199, 'D', 4, '2023-10-25 15:52:07', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(200, 'T', 8, '2023-10-25 15:57:06', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(201, 'T', 10, '2023-10-25 16:01:44', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(202, 'T', 12, '2023-10-25 16:05:27', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(203, 'T', 12, '2023-10-25 16:34:36', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(204, 'T', 13, '2023-10-25 16:35:18', 'Ingreso', '2001:1388:6120:4', 'Windows 10', 'Chrome 118.0.0.0'),
(205, 'T', 13, '2023-10-25 16:39:37', 'Ingreso', '2001:1388:6120:4', 'Windows 10', 'Chrome 118.0.0.0'),
(206, 'T', 9, '2023-10-25 16:46:00', 'Ingreso', '181.224.233.178', 'Windows 10', 'Chrome 118.0.0.0'),
(207, 'T', 9, '2023-10-25 16:46:22', 'Ingreso', '181.224.233.178', 'Windows 10', 'Chrome 118.0.0.0'),
(208, 'T', 10, '2023-10-25 16:51:49', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(209, 'D', 2, '2023-10-25 16:53:36', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(210, 'D', 1, '2023-10-25 16:55:42', 'Clave incorrecta', '181.224.233.178', 'Windows 10', 'Chrome 118.0.0.0'),
(211, 'D', 1, '2023-10-25 16:55:47', 'Ingreso', '181.224.233.178', 'Windows 10', 'Chrome 118.0.0.0'),
(212, 'D', 2, '2023-10-25 17:07:36', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(213, 'D', 2, '2023-10-25 17:07:41', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(214, 'T', 12, '2023-10-25 17:09:43', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(215, 'D', 1, '2023-10-25 17:17:00', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(216, 'D', 1, '2023-10-25 17:17:05', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(217, 'D', 3, '2023-10-25 17:18:30', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(218, 'D', 3, '2023-10-25 17:18:35', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(219, 'D', 4, '2023-10-25 17:20:54', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(220, 'D', 5, '2023-10-25 17:22:22', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(221, 'D', 5, '2023-10-25 17:22:26', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(222, 'T', 8, '2023-10-25 17:37:38', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(223, 'D', 2, '2023-10-27 10:39:29', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 117.0.0.0'),
(224, 'T', 12, '2023-10-27 11:56:36', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(225, 'D', 1, '2023-10-27 11:58:34', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(226, 'D', 2, '2023-10-27 12:00:10', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(227, 'D', 3, '2023-10-27 12:02:52', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(228, 'D', 4, '2023-10-27 12:04:23', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(229, 'D', 5, '2023-10-27 12:05:05', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(230, 'D', 2, '2023-10-27 12:05:38', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(231, 'D', 1, '2023-10-27 12:06:10', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(232, 'T', 12, '2023-10-27 12:07:54', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(233, 'T', 12, '2023-10-27 12:17:25', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(234, 'T', 12, '2023-10-27 12:59:53', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(235, 'T', 12, '2023-10-27 13:37:18', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(236, 'D', 3, '2023-10-27 13:52:24', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(237, 'D', 4, '2023-10-27 13:58:24', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(238, 'D', 2, '2023-10-27 13:59:22', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(239, 'D', 1, '2023-10-27 14:00:13', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(240, 'D', 5, '2023-10-27 14:00:38', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(241, 'D', 3, '2023-10-27 14:00:53', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(242, 'T', 8, '2023-10-27 15:45:42', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(243, 'D', 3, '2023-10-27 15:46:20', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(244, 'D', 4, '2023-10-27 15:48:21', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(245, 'T', 12, '2023-10-27 15:50:48', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(246, 'T', 12, '2023-10-27 15:50:58', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 118.0.0.0'),
(247, 'D', 2, '2023-11-02 16:24:33', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(248, 'D', 2, '2023-11-02 16:24:37', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(249, 'T', 14, '2023-11-06 09:17:17', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(250, 'T', 14, '2023-11-06 09:19:39', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(251, 'T', 14, '2023-11-06 09:19:55', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(252, 'T', 14, '2023-11-06 09:20:02', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(253, 'T', 14, '2023-11-06 09:20:12', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(254, 'T', 8, '2023-11-06 09:28:33', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(255, 'T', 14, '2023-11-06 09:28:54', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(256, 'T', 14, '2023-11-06 09:52:15', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(257, 'D', 1, '2023-11-06 10:06:21', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(258, 'D', 2, '2023-11-06 10:08:43', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(259, 'D', 3, '2023-11-06 10:09:22', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(260, 'D', 4, '2023-11-06 10:10:32', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(261, 'D', 5, '2023-11-06 10:11:03', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(262, 'T', 14, '2023-11-06 10:11:31', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(263, 'T', 14, '2023-11-06 10:20:27', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(264, 'T', 15, '2023-11-07 08:45:50', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(265, 'D', 2, '2023-11-07 08:48:51', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(266, 'T', 15, '2023-11-07 09:26:16', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(267, 'T', 15, '2023-11-07 09:26:24', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(268, 'T', 15, '2023-11-07 09:26:34', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(269, 'T', 15, '2023-11-07 09:26:42', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(270, 'T', 15, '2023-11-07 09:31:03', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(271, 'T', 15, '2023-11-07 09:31:18', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(272, 'D', 2, '2023-11-07 09:37:50', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(273, 'D', 2, '2023-11-07 10:11:12', 'Ingreso', '172.16.60.1', 'Windows 10', 'Chrome 119.0.0.0'),
(274, 'T', 15, '2023-11-07 10:12:52', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(275, 'D', 1, '2023-11-07 10:14:12', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(276, 'D', 2, '2023-11-07 10:22:14', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(277, 'D', 3, '2023-11-07 10:22:30', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(278, 'D', 4, '2023-11-07 10:23:28', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(279, 'T', 15, '2023-11-07 10:24:32', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(280, 'T', 16, '2023-11-07 11:00:37', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(281, 'D', 3, '2023-11-07 11:03:36', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(282, 'T', 16, '2023-11-07 11:05:56', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(283, 'D', 2, '2023-11-07 11:21:19', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(284, 'D', 3, '2023-11-07 11:21:37', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(285, 'D', 4, '2023-11-07 11:22:12', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(286, 'D', 1, '2023-11-07 11:23:21', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(287, 'T', 16, '2023-11-07 11:24:43', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(288, 'D', 2, '2023-11-07 11:28:40', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(289, 'D', 3, '2023-11-07 11:29:34', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(290, 'D', 4, '2023-11-07 11:29:59', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(291, 'D', 2, '2023-11-07 11:34:32', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(292, 'T', 17, '2023-11-07 11:51:40', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(293, 'D', 2, '2023-11-07 11:59:29', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(294, 'D', 2, '2023-11-07 11:59:37', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(295, 'T', 17, '2023-11-07 12:02:00', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(296, 'D', 2, '2023-11-07 12:02:19', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(297, 'D', 3, '2023-11-07 12:02:37', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(298, 'D', 4, '2023-11-07 12:03:15', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(299, 'T', 17, '2023-11-07 12:05:01', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(300, 'T', 17, '2023-11-07 12:07:54', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(301, 'T', 14, '2023-11-16 10:51:37', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(302, 'T', 14, '2023-11-16 10:51:43', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(303, 'T', 14, '2023-11-16 10:52:29', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(304, 'T', 14, '2023-11-20 11:00:45', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(305, 'T', 14, '2023-11-20 11:00:52', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(306, 'D', 7, '2023-11-20 11:01:07', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(307, 'T', 12, '2023-11-20 11:01:18', 'Clave incorrecta', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(308, 'T', 12, '2023-11-20 11:01:25', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(309, 'T', 18, '2023-11-21 12:38:03', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(310, 'D', 1, '2023-11-21 12:47:16', 'Ingreso', '2800:4b0:8431:22', 'Windows 10', 'Chrome 119.0.0.0'),
(311, 'T', 12, '2023-11-23 08:25:39', 'Clave incorrecta', '2800:4b0:840d:32', 'Windows 10', 'Chrome 119.0.0.0'),
(312, 'T', 12, '2023-11-23 08:25:46', 'Ingreso', '2800:4b0:840d:32', 'Windows 10', 'Chrome 119.0.0.0'),
(313, 'D', 3, '2023-11-23 08:26:10', 'Ingreso', '2800:4b0:840d:32', 'Windows 10', 'Chrome 119.0.0.0'),
(314, 'D', 2, '2023-11-23 10:39:14', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(315, 'D', 14, '2023-11-23 11:03:29', 'Ingreso', '190.119.174.84', 'Windows 10', 'Chrome 119.0.0.0'),
(316, 'T', 17, '2023-11-27 09:56:42', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(317, 'D', 2, '2023-11-27 10:33:22', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(318, 'D', 2, '2023-11-27 10:33:31', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(319, 'D', 2, '2023-11-27 10:34:06', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(320, 'D', 2, '2023-11-27 11:05:05', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(321, 'D', 2, '2023-11-27 11:05:10', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(322, 'D', 2, '2023-11-27 15:30:08', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(323, 'D', 2, '2023-11-27 15:30:14', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(324, 'D', 7, '2023-11-27 20:25:58', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(325, 'D', 2, '2023-11-27 20:26:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(326, 'D', 2, '2023-11-27 20:27:35', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(327, 'D', 2, '2023-11-27 20:27:39', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(328, 'T', 17, '2023-11-27 20:29:36', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(329, 'T', 17, '2023-11-27 20:29:40', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(330, 'T', 17, '2023-11-27 20:29:42', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(331, 'T', 17, '2023-11-27 20:29:48', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(332, 'T', 16, '2023-11-27 20:32:51', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(333, 'T', 16, '2023-11-27 20:39:49', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(334, 'T', 18, '2023-11-28 08:59:32', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(335, 'D', 1, '2023-11-28 09:05:45', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(336, 'T', 18, '2023-11-28 09:06:29', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(337, 'D', 2, '2023-11-28 09:09:27', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(338, 'D', 2, '2023-11-28 09:09:32', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(339, 'D', 3, '2023-11-28 09:11:40', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(340, 'D', 4, '2023-11-28 09:12:27', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(341, 'T', 19, '2023-11-28 09:23:04', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(342, 'D', 2, '2023-11-28 09:41:12', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(343, 'D', 2, '2023-11-28 09:41:16', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(344, 'D', 1, '2023-11-28 09:50:48', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(345, 'D', 3, '2023-11-28 09:52:07', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(346, 'D', 4, '2023-11-28 10:02:39', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(347, 'T', 19, '2023-11-28 10:03:42', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(348, 'D', 4, '2023-11-28 10:13:26', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(349, 'D', 1, '2023-11-28 10:16:49', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(350, 'D', 3, '2023-11-28 10:17:17', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(351, 'D', 2, '2023-11-28 10:17:41', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(352, 'D', 2, '2023-11-28 10:17:46', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(353, 'T', 19, '2023-11-28 10:18:58', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(354, 'D', 2, '2023-11-28 10:21:08', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(355, 'T', 19, '2023-11-28 11:05:23', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(356, 'T', 19, '2023-11-28 14:11:55', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(357, 'T', 19, '2023-11-28 15:01:10', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(358, 'T', 20, '2023-11-29 09:06:48', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(359, 'T', 20, '2023-11-29 10:23:28', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(360, 'T', 20, '2023-11-29 10:41:16', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(361, 'D', 2, '2023-11-29 12:44:20', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(362, 'T', 20, '2023-11-29 15:40:02', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(363, 'D', 2, '2023-11-29 15:40:33', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(364, 'T', 21, '2023-12-04 10:54:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(365, 'T', 19, '2023-12-04 10:57:41', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(366, 'T', 21, '2023-12-04 10:58:17', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(367, 'D', 2, '2023-12-04 11:11:01', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(368, 'T', 21, '2023-12-04 11:12:57', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(369, 'D', 2, '2023-12-04 11:14:52', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(370, 'D', 4, '2023-12-04 11:16:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(371, 'T', 21, '2023-12-04 11:23:53', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(372, 'D', 4, '2023-12-04 11:25:09', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(373, 'D', 3, '2023-12-04 11:25:32', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(374, 'D', 1, '2023-12-04 11:27:22', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(375, 'D', 3, '2023-12-04 11:28:58', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(376, 'T', 21, '2023-12-04 11:29:20', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(377, 'T', 22, '2023-12-04 11:56:57', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(378, 'D', 2, '2023-12-04 12:15:01', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(379, 'D', 4, '2023-12-04 12:23:41', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(380, 'D', 1, '2023-12-04 12:27:03', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(381, 'D', 3, '2023-12-04 12:28:35', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(382, 'T', 21, '2023-12-04 12:30:00', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(383, 'T', 22, '2023-12-04 12:30:27', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(384, 'D', 4, '2023-12-04 12:33:55', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(385, 'D', 1, '2023-12-04 12:34:29', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(386, 'D', 3, '2023-12-04 12:35:04', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(387, 'T', 23, '2023-12-04 12:55:07', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(388, 'D', 4, '2023-12-04 13:01:19', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(389, 'D', 4, '2023-12-04 14:35:58', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(390, 'T', 23, '2023-12-04 14:54:58', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(391, 'D', 1, '2023-12-04 14:56:51', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(392, 'D', 3, '2023-12-04 15:08:27', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(393, 'D', 1, '2023-12-04 15:11:20', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(394, 'D', 2, '2023-12-04 15:11:50', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(395, 'T', 23, '2023-12-04 15:12:48', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(396, 'D', 4, '2023-12-04 15:14:57', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(397, 'D', 1, '2023-12-04 15:15:55', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(398, 'D', 3, '2023-12-04 15:16:21', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(399, 'D', 1, '2023-12-04 15:17:25', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(400, 'D', 2, '2023-12-04 15:17:44', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(401, 'T', 23, '2023-12-04 15:18:21', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(402, 'D', 4, '2023-12-04 15:21:45', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(403, 'T', 23, '2023-12-04 15:24:13', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 92.0'),
(404, 'T', 23, '2023-12-07 11:03:40', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(405, 'D', 4, '2023-12-07 12:26:53', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(406, 'T', 23, '2023-12-08 09:28:29', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(407, 'T', 16, '2023-12-08 09:55:47', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(408, 'T', 23, '2023-12-08 10:11:06', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(409, 'T', 23, '2023-12-08 10:29:42', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(410, 'D', 4, '2023-12-12 15:35:33', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(411, 'D', 4, '2023-12-12 15:58:59', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(412, 'T', 23, '2023-12-12 15:59:14', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(413, 'T', 22, '2023-12-12 16:08:57', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(414, 'T', 24, '2023-12-14 12:46:53', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(415, 'T', 23, '2023-12-15 10:43:40', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(416, 'T', 23, '2023-12-18 14:26:40', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(417, 'T', 25, '2023-12-18 14:31:33', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(418, 'T', 25, '2023-12-19 11:38:20', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(419, 'T', 23, '2023-12-19 12:40:20', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(420, 'T', 23, '2023-12-19 14:59:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(421, 'T', 23, '2023-12-19 15:02:04', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(422, 'T', 25, '2023-12-19 15:32:37', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(423, 'T', 25, '2023-12-19 15:36:37', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(424, 'T', 23, '2023-12-19 15:51:04', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(425, 'T', 23, '2023-12-19 16:38:29', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(426, 'T', 23, '2023-12-20 10:11:47', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(427, 'T', 23, '2023-12-20 10:14:27', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(428, 'D', 1, '2023-12-20 10:23:10', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(429, 'D', 2, '2023-12-20 10:24:01', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(430, 'D', 4, '2023-12-20 10:24:14', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(431, 'D', 4, '2023-12-20 10:25:53', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(432, 'D', 3, '2023-12-20 10:26:22', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(433, 'D', 2, '2023-12-20 10:26:52', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(434, 'D', 1, '2023-12-20 10:27:15', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(435, 'D', 4, '2023-12-20 10:29:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(436, 'D', 1, '2023-12-20 10:29:27', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(437, 'T', 23, '2023-12-20 10:29:45', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(438, 'T', 23, '2023-12-20 10:52:43', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(439, 'D', 4, '2023-12-20 10:53:33', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(440, 'T', 23, '2023-12-20 10:55:02', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(441, 'T', 26, '2023-12-20 11:03:15', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(442, 'T', 28, '2023-12-20 11:19:15', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(443, 'T', 29, '2023-12-20 11:23:18', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(444, 'T', 30, '2023-12-20 11:28:22', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(445, 'T', 31, '2023-12-20 11:33:07', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(446, 'D', 1, '2023-12-20 11:40:08', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(447, 'D', 2, '2023-12-20 11:41:37', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(448, 'T', 32, '2023-12-20 11:46:01', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(449, 'T', 32, '2023-12-20 11:49:09', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(450, 'T', 23, '2023-12-20 15:06:17', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(451, 'T', 25, '2023-12-20 15:08:17', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(452, 'T', 33, '2023-12-20 15:15:59', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(453, 'D', 1, '2023-12-20 15:18:09', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(454, 'T', 33, '2023-12-20 15:19:13', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(455, 'D', 1, '2023-12-20 15:23:56', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(456, 'D', 2, '2023-12-20 15:24:14', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(457, 'D', 2, '2023-12-20 15:34:01', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(458, 'D', 3, '2023-12-20 15:35:27', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(459, 'D', 4, '2023-12-20 15:37:39', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(460, 'T', 33, '2023-12-20 15:40:14', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(461, 'T', 25, '2023-12-20 15:42:46', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(462, 'D', 2, '2023-12-20 15:50:40', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(463, 'D', 4, '2023-12-20 15:50:58', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(464, 'D', 3, '2023-12-20 15:51:22', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(465, 'T', 34, '2023-12-20 15:57:04', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(466, 'D', 1, '2023-12-20 15:59:12', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(467, 'D', 4, '2023-12-20 16:00:11', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(468, 'D', 3, '2023-12-20 16:01:04', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(469, 'D', 2, '2023-12-20 16:01:34', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(470, 'T', 34, '2023-12-20 16:02:06', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(471, 'D', 4, '2023-12-20 16:07:10', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(472, 'D', 3, '2023-12-20 16:07:51', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(473, 'D', 2, '2023-12-20 16:08:13', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(474, 'T', 26, '2023-12-20 16:16:26', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(475, 'T', 28, '2023-12-20 16:19:18', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(476, 'T', 29, '2023-12-20 16:21:18', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(477, 'D', 4, '2023-12-20 16:22:23', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(478, 'D', 4, '2023-12-20 16:23:05', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(479, 'D', 3, '2023-12-20 16:23:29', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(480, 'T', 29, '2023-12-20 16:24:01', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(481, 'T', 30, '2023-12-20 16:25:46', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(482, 'T', 31, '2023-12-20 16:28:15', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(483, 'T', 31, '2023-12-20 16:28:30', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(484, 'T', 32, '2023-12-20 16:28:52', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(485, 'T', 31, '2023-12-20 16:32:30', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(486, 'D', 1, '2023-12-20 16:35:24', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(487, 'D', 4, '2023-12-20 16:36:10', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(488, 'D', 3, '2023-12-20 16:36:36', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(489, 'D', 4, '2023-12-20 16:37:01', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(490, 'D', 3, '2023-12-20 16:37:14', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(491, 'D', 4, '2023-12-20 16:38:00', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(492, 'D', 4, '2023-12-20 16:38:06', 'Clave incorrecta', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(493, 'D', 4, '2023-12-20 16:38:11', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(494, 'D', 2, '2023-12-20 16:38:28', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0'),
(495, 'T', 31, '2023-12-20 16:39:02', 'Ingreso', '127.0.0.1', 'Linux', 'Firefox 113.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logTramites`
--

CREATE TABLE `logTramites` (
  `Id` int(11) NOT NULL,
  `Tipo` varchar(2) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `IdTramite` int(11) NOT NULL,
  `Quien` varchar(30) NOT NULL,
  `Accion` varchar(50) NOT NULL,
  `Detalle` varchar(500) NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `logTramites`
--

INSERT INTO `logTramites` (`Id`, `Tipo`, `IdUser`, `IdTramite`, `Quien`, `Accion`, `Detalle`, `Fecha`) VALUES
(1, 'T', 11, 1, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-001</b><br><br> Título de Proyecto: <b>RQ</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-01 17:28:50'),
(2, 'T', 2, 2, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-002</b><br><br> Título de Proyecto: <b>TITULO </b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-02 11:38:45'),
(3, 'T', 3, 3, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-003</b><br><br> Título de Proyecto: <b>111223</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-02 12:47:59'),
(4, 'A', 2, 3, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-003</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-02 13:09:59'),
(5, 'D', 1, 3, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-08-02 13:10:13'),
(6, 'A', 3, 2, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2020-002  -- Linea: 1\n- Presidente: (2) \n- Primer Miembro: (4) \n- Segundo Miembro: (3) \n- Director: (1)', '2023-08-02 13:50:11'),
(7, 'D', 2, 2, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2020-002</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-08-02 13:56:02'),
(8, 'D', 3, 2, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2020-002</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-08-02 15:12:11'),
(9, 'D', 4, 2, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2020-002</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-08-02 15:13:18'),
(10, 'T', 2, 2, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-08-02 15:15:34'),
(11, 'D', 2, 2, 'Pilar', 'Dictaminación de Jurado 1', '<br>Procesando Proyecto : <b>2020-002</b> con <b>1</b><br>Orden de Jurado : 1<br>Iteracion : 2', '2023-08-02 16:01:30'),
(12, 'D', 1, 2, 'Pilar', 'Dictaminación de Jurado 4', '<br>Procesando Proyecto : <b>2020-002</b> con <b>1</b><br>Orden de Jurado : 4<br>Iteracion : 2', '2023-08-02 16:08:46'),
(13, 'D', 3, 2, 'Pilar', 'Dictaminación de Jurado 3', '<br>Procesando Proyecto : <b>2020-002</b> con <b>1</b><br>Orden de Jurado : 3<br>Iteracion : 2', '2023-08-02 16:09:58'),
(14, 'D', 4, 2, 'Pilar', 'Dictaminación de Jurado 2', '<br>Procesando Proyecto : <b>2020-002</b> con <b>1</b><br>Orden de Jurado : 2<br>Iteracion : 2', '2023-08-02 16:10:48'),
(15, 'A', 3, 2, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2020-002</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-08-03 10:00:54'),
(16, 'T', 2, 2, 'Tesista', 'Subida de Bachiller', 'El tesista ha cargado su bachiller en el trámite:<br>Codigo: <b>2020-002 </b><br> Este proceso tiene caracter de declaración jurada bajo la responsabilidad del usuario de esta cuenta. Se habilitará la opción de cargar el borrador de tesis.<br>Se procede con el registro y envio de las notificaciones.', '2023-08-03 10:25:17'),
(17, 'T', 2, 2, 'Tesista', 'Subida de Borrador', '<br>Se ha actualizado el trámite: <b>2020-002</b><br><br> Título de Borrador de Tesis: <b>TITULO </b> <br><br>       Ud. debe apersonarse a Plataforma para revisar el formato y la conformación de su <b>Jurado Evaluador</b> de lo contrario no se procede con el envio para que el tramite de su borrador continue.', '2023-08-03 10:57:04'),
(18, 'D', 2, 2, 'Pilar', 'Fin de Correcciones Borrador Jurado 1', '<br>Procesando Proyecto : <b>2020-002</b><br>Orden de Jurado : 1<br>Iteracion : 4', '2023-08-03 11:02:40'),
(19, 'D', 3, 2, 'Pilar', 'Fin de Correcciones Borrador Jurado 3', '<br>Procesando Proyecto : <b>2020-002</b><br>Orden de Jurado : 3<br>Iteracion : 4', '2023-08-03 11:03:22'),
(20, 'D', 4, 2, 'Pilar', 'Fin de Correcciones Borrador Jurado 2', '<br>Procesando Proyecto : <b>2020-002</b><br>Orden de Jurado : 2<br>Iteracion : 4', '2023-08-03 11:03:57'),
(21, 'D', 1, 2, 'Pilar', 'Fin de Correcciones Borrador Jurado 4', '<br>Procesando Proyecto : <b>2020-002</b><br>Orden de Jurado : 4<br>Iteracion : 4', '2023-08-03 11:04:21'),
(22, 'T', 2, 2, 'Tesista', 'Subida de Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-002</b><br> Título de Proyecto : <b>TITULO </b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.', '2023-08-03 11:06:04'),
(23, 'T', 6, 4, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-004</b><br><br> Título de Proyecto: <b>PRUEBA</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-03 16:07:27'),
(24, 'A', 2, 4, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-004</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-03 16:15:15'),
(25, 'A', 3, 3, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2020-003  -- Linea: 1\n- Presidente: (3) \n- Primer Miembro: (2) \n- Segundo Miembro: (4) \n- Director: (1)', '2023-08-03 16:17:39'),
(26, 'D', 2, 3, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2020-003</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-08-03 16:18:49'),
(27, 'D', 3, 3, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2020-003</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-08-03 16:20:49'),
(28, 'D', 4, 3, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2020-003</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-08-03 16:21:44'),
(29, 'T', 3, 3, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-003</b><br> Título de Proyecto : <b>111223</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-08-03 16:30:38'),
(30, 'D', 2, 3, 'Pilar', 'Dictaminación de Jurado 2', '<br>Procesando Proyecto : <b>2020-003</b> con <b>1</b><br>Orden de Jurado : 2<br>Iteracion : 2', '2023-08-03 16:31:54'),
(31, 'D', 3, 3, 'Pilar', 'Dictaminación de Jurado 1', '<br>Procesando Proyecto : <b>2020-003</b> con <b>1</b><br>Orden de Jurado : 1<br>Iteracion : 2', '2023-08-03 16:32:21'),
(32, 'D', 4, 3, 'Pilar', 'Dictaminación de Jurado 3', '<br>Procesando Proyecto : <b>2020-003</b> con <b>-1</b><br>Orden de Jurado : 3<br>Iteracion : 2', '2023-08-03 16:32:42'),
(33, 'A', 3, 3, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2020-003</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-08-03 16:34:36'),
(34, 'T', 15, 5, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-005</b><br><br> Título de Proyecto: <b>123</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-10 11:52:43'),
(35, 'T', 15, 6, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-006</b><br><br> Título de Proyecto: <b>123</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-10 11:55:19'),
(36, 'A', 2, 6, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-006</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-10 11:56:24'),
(37, 'T', 16, 7, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-007</b><br><br> Título de Proyecto: <b>123</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-10 11:59:38'),
(38, 'A', 2, 7, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-007</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-10 12:00:00'),
(39, 'D', 9, 7, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-08-10 12:00:29'),
(40, 'D', 9, 6, 'Pilar', 'Rechazo del Director', 'El Director/Asesor ha rechazado su proyecto de tesis por lo que deberá cambiarlo o coordinar personalmente.', '2023-08-10 12:00:34'),
(41, 'T', 15, 8, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-008</b><br><br> Título de Proyecto: <b>RFE</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-10 12:03:12'),
(42, 'A', 2, 8, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-008</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-10 12:03:53'),
(43, 'D', 8, 8, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-08-10 12:04:01'),
(44, 'A', 2, 8, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2020-008  -- Linea: 3\n- Presidente: (9) \n- Primer Miembro: (13) \n- Segundo Miembro: (12) \n- Director: (8)', '2023-08-10 12:05:04'),
(45, 'A', 2, 7, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2020-007  -- Linea: 3\n- Presidente: (7) \n- Primer Miembro: (8) \n- Segundo Miembro: (11) \n- Director: (9)', '2023-08-10 12:06:23'),
(46, 'T', 17, 9, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-009</b><br><br> Título de Proyecto: <b>123</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-10 13:02:59'),
(47, 'A', 2, 9, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-009</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-10 13:03:06'),
(48, 'D', 9, 9, 'Pilar', 'Rechazo del Director', 'El Director/Asesor ha rechazado su proyecto de tesis por lo que deberá cambiarlo o coordinar personalmente.', '2023-08-10 13:03:24'),
(49, 'T', 17, 10, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-010</b><br><br> Título de Proyecto: <b>DW</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-10 14:06:00'),
(50, 'A', 2, 10, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-010</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-10 14:06:24'),
(51, 'D', 9, 10, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-08-10 14:06:30'),
(52, 'A', 2, 10, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2020-010  -- Linea: 3\n- Presidente: (7) \n- Primer Miembro: (11) \n- Segundo Miembro: (13) \n- Director: (9)', '2023-08-10 14:06:53'),
(53, 'T', 14, 11, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-011</b><br><br> Título de Proyecto: <b>DMINAS 2</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-11 11:10:19'),
(54, 'A', 2, 11, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2020-011</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-11 11:10:33'),
(55, 'D', 11, 11, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-08-11 11:11:13'),
(56, 'A', 3, 11, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2020-011  -- Linea: 3\n- Presidente: (8) \n- Primer Miembro: (7) \n- Segundo Miembro: (12) \n- Director: (11)', '2023-08-11 11:11:44'),
(57, 'D', 8, 11, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2020-011</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-08-11 11:39:55'),
(58, 'D', 7, 11, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2020-011</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-08-11 11:40:40'),
(59, 'D', 12, 11, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2020-011</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-08-11 11:41:14'),
(60, 'T', 14, 11, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-011</b><br> Título de Proyecto : <b>DMINAS 2</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-08-11 11:43:50'),
(61, 'D', 8, 11, 'Pilar', 'Dictaminación de Jurado 1', '<br>Procesando Proyecto : <b>2020-011</b> con <b>1</b><br>Orden de Jurado : 1<br>Iteracion : 2', '2023-08-11 11:45:03'),
(62, 'D', 7, 11, 'Pilar', 'Dictaminación de Jurado 2', '<br>Procesando Proyecto : <b>2020-011</b> con <b>1</b><br>Orden de Jurado : 2<br>Iteracion : 2', '2023-08-11 11:48:34'),
(63, 'D', 12, 11, 'Pilar', 'Dictaminación de Jurado 3', '<br>Procesando Proyecto : <b>2020-011</b> con <b>1</b><br>Orden de Jurado : 3<br>Iteracion : 2', '2023-08-11 11:48:57'),
(64, 'A', 3, 11, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2020-011</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-08-11 11:49:34'),
(65, 'T', 14, 11, 'Tesista', 'Subida de Bachiller', 'El tesista ha cargado su bachiller en el trámite:<br>Codigo: <b>2020-011 </b><br> Este proceso tiene caracter de declaración jurada bajo la responsabilidad del usuario de esta cuenta. Se habilitará la opción de cargar el borrador de tesis.<br>Se procede con el registro y envio de las notificaciones.', '2023-08-11 11:58:48'),
(66, 'D', 7, 10, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2020-010</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-08-11 12:54:28'),
(67, 'D', 11, 10, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2020-010</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-08-11 12:55:14'),
(68, 'D', 13, 10, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2020-010</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-08-11 12:55:35'),
(69, 'T', 17, 10, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-08-11 12:56:06'),
(70, 'D', 7, 10, 'Pilar', 'Dictaminación de Jurado 1', '<br>Procesando Proyecto : <b>2020-010</b> con <b>1</b><br>Orden de Jurado : 1<br>Iteracion : 2', '2023-08-11 12:56:24'),
(71, 'D', 11, 10, 'Pilar', 'Dictaminación de Jurado 2', '<br>Procesando Proyecto : <b>2020-010</b> con <b>1</b><br>Orden de Jurado : 2<br>Iteracion : 2', '2023-08-11 12:56:41'),
(72, 'D', 13, 10, 'Pilar', 'Dictaminación de Jurado 3', '<br>Procesando Proyecto : <b>2020-010</b> con <b>1</b><br>Orden de Jurado : 3<br>Iteracion : 2', '2023-08-11 12:56:56'),
(73, 'A', 3, 10, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2020-010</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-08-11 12:57:21'),
(74, 'T', 17, 10, 'Tesista', 'Subida de Bachiller', 'El tesista ha cargado su bachiller en el trámite:<br>Codigo: <b>2020-010 </b><br> Este proceso tiene caracter de declaración jurada bajo la responsabilidad del usuario de esta cuenta. Se habilitará la opción de cargar el borrador de tesis.<br>Se procede con el registro y envio de las notificaciones.', '2023-08-11 13:01:49'),
(75, 'T', 17, 10, 'Tesista', 'Subida de Bachiller', 'El tesista ha cargado su bachiller en el trámite:<br>Codigo: <b>2020-010 </b><br> Este proceso tiene caracter de declaración jurada bajo la responsabilidad del usuario de esta cuenta. Se habilitará la opción de cargar el borrador de tesis.<br>Se procede con el registro y envio de las notificaciones.', '2023-08-11 13:01:55'),
(76, 'T', 17, 10, 'Tesista', 'Subida de Borrador', '<br>Se ha actualizado el trámite: <b>2020-010</b><br><br> Título de Borrador de Tesis: <b>DW</b> <br><br>       Ud. debe apersonarse a Plataforma para revisar el formato y la conformación de su <b>Jurado Evaluador</b> de lo contrario no se procede con el envio para que el tramite de su borrador continue.', '2023-08-11 13:33:21'),
(77, 'D', 11, 10, 'Pilar', 'Fin de Correcciones Borrador Jurado 2', '<br>Procesando Proyecto : <b>2020-010</b><br>Orden de Jurado : 2<br>Iteracion : 4', '2023-08-11 13:36:59'),
(78, 'D', 7, 10, 'Pilar', 'Fin de Correcciones Borrador Jurado 1', '<br>Procesando Proyecto : <b>2020-010</b><br>Orden de Jurado : 1<br>Iteracion : 4', '2023-08-11 13:37:22'),
(79, 'D', 13, 10, 'Pilar', 'Fin de Correcciones Borrador Jurado 3', '<br>Procesando Proyecto : <b>2020-010</b><br>Orden de Jurado : 3<br>Iteracion : 4', '2023-08-11 13:37:49'),
(80, 'D', 9, 10, 'Pilar', 'Fin de Correcciones Borrador Jurado 4', '<br>Procesando Proyecto : <b>2020-010</b><br>Orden de Jurado : 4<br>Iteracion : 4', '2023-08-11 13:39:06'),
(81, 'T', 17, 10, 'Tesista', 'Subida de Borrador Final', '<br>El tesista ha subido el Borrador Final en el trámite:<br><br>Codigo: <b>2020-010</b><br> Título de Proyecto : <b>DW</b> <br><br>  Se realizará la verificación de este proceso con el <b>Jurado Evaluador</b> y el <b>Repositorio Institucional</b>. Se procede con el registro y envio de las notificaciones.', '2023-08-11 13:39:59'),
(82, 'T', 13, 12, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2020-010</b><br><br> Título de Proyecto: <b>SDFDF</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-14 16:29:53'),
(83, 'T', 13, 13, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-012</b><br><br> Título de Proyecto: <b>A</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-14 16:32:36'),
(84, 'T', 13, 14, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-012</b><br><br> Título de Proyecto: <b>SA</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-15 10:32:23'),
(85, 'A', 2, 14, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-012</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-08-15 10:36:18'),
(86, 'D', 8, 14, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-08-15 10:36:33'),
(87, 'T', 12, 15, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-013</b><br><br> Título de Proyecto: <b>RT</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-08-15 11:49:07'),
(88, 'T', 3, 1, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-001</b><br><br> Título de Proyecto: <b>GRAVIDA NEQUE. ADIPISCING TRISTIQUE RISUS NEC FEUGIAT IN FERMENTUM POSUERE URNA NEC. IMPERDIET SED EUISMOD NISI PORTA </b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-10-25 12:52:08'),
(89, 'T', 8, 2, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-002</b><br><br> Título de Proyecto: <b>CONGUE EU CONSEQUAT AC FELIS. NIBH NISL CONDIMENTUM ID VENENATIS A CONDIMENTUM VITAE SAPIEN.</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-10-25 13:13:44'),
(90, 'T', 7, 3, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-003</b><br><br> Título de Proyecto: <b>EJEMPLO</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-10-25 13:17:07'),
(91, 'C', 2, 3, 'Coordinacion', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-003</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.Mensaje Enviado al 00519823355667', '2023-10-25 13:42:08'),
(92, 'D', 1, 3, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-10-25 13:44:26'),
(93, 'A', 3, 3, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-003  -- Linea: 1\n- Presidente: (2) \n- Primer Miembro: (3) \n- Segundo Miembro: (4) \n- Director: (1)', '2023-10-25 13:54:14'),
(94, 'T', 12, 4, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-004</b><br><br> Título de Proyecto: <b>LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT, SED DO </b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-10-25 16:09:07'),
(95, 'C', 2, 4, 'Coordinacion', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-004</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.Mensaje Enviado al 0051999999999', '2023-10-25 16:27:50'),
(96, 'C', 2, 2, 'Coordinacion', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-002</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.Mensaje Enviado al 0051999999999', '2023-10-25 16:27:58'),
(97, 'T', 13, 5, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-005</b><br><br> Título de Proyecto: <b>APLICACION MOVIL PARA VER EXTRATERRESTRES</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-10-25 16:42:43'),
(98, 'T', 9, 6, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-006</b><br><br> Título de Proyecto: <b>DISEÑO DE UN SISTEMA DE GESTIÓN DE LA CALIDAD\r\nACADÉMICA PARA LA FACULTAD DE INGENIERÍA DE LA \r\nUNIVERSIDAD PRIVADA LIDER PERUANA DEL CUSCO</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-10-25 16:51:28'),
(99, 'A', 2, 5, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-005</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-10-25 16:51:35'),
(100, 'D', 2, 2, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-10-25 16:56:19'),
(101, 'D', 2, 4, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-10-25 16:56:33'),
(102, 'A', 3, 4, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-004  -- Linea: 1\n- Presidente: (3) \n- Primer Miembro: (4) \n- Segundo Miembro: (1) \n- Director: (2)', '2023-10-25 17:01:27'),
(103, 'C', 2, 6, 'Coordinacion', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-006</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.Mensaje Enviado al 00519823355667', '2023-10-25 17:05:47'),
(104, 'C', 2, 2, 'Coordinacion', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-002  -- Linea: 1\n- Presidente: (4) \n- Primer Miembro: (3) \n- Segundo Miembro: (1) \n- Director: (2)', '2023-10-25 17:06:47'),
(105, 'T', 10, 7, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-007</b><br><br> Título de Proyecto: <b>EJEMPLO BARRIENTOS</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-10-25 17:09:21'),
(106, 'D', 1, 6, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-10-25 17:17:25'),
(107, 'D', 1, 5, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-10-25 17:17:30'),
(108, 'D', 1, 1, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-10-25 17:17:34'),
(109, 'D', 3, 4, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-004</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-10-25 17:20:06'),
(110, 'D', 4, 4, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-004</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-10-25 17:21:40'),
(111, 'A', 2, 7, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-007</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-10-25 17:33:38'),
(112, 'C', 2, 5, 'Coordinacion', 'Retorna Documento : Corregir Formato', 'Saludos\r\nSu trámite ha sido rechazado, contiene los siguientes errores:\r\n\r\n EL documento no cumple con el formato de la Escuela profesional.\r\n\r\nDeberá corregir y subir su proyecto a la brevedad posible.\r\nNota: Revise el manual de tesista aquí.', '2023-10-27 10:49:49'),
(113, 'D', 1, 7, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-10-27 11:58:46'),
(114, 'D', 1, 4, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-004</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-10-27 12:07:01'),
(115, 'T', 12, 4, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-004</b><br> Título de Proyecto : <b>DISEÑO E IMPLEMENTACIÓN DE UNA APLICACIÓN MÓVIL\r\nBASADA EN LA TECNOLOGÍA NFC PARA ACCESO A\r\nINFORMACIÓN DE LAS PIEZAS DE ARTE DE UN MUSEO\r\n</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-10-27 12:15:03'),
(116, 'A', 3, 7, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-007  -- Linea: 1\n- Presidente: (2) \n- Primer Miembro: (3) \n- Segundo Miembro: (4) \n- Director: (1)', '2023-10-27 12:18:32'),
(117, 'A', 3, 6, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-006  -- Linea: 2\n- Presidente: () \n- Primer Miembro: () \n- Segundo Miembro: () \n- Director: ()', '2023-10-27 12:19:12'),
(118, 'A', 3, 4, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-004</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-10-27 12:42:44'),
(119, 'D', 3, 7, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-007</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-10-27 13:57:38'),
(120, 'D', 4, 7, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-007</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-10-27 13:58:59'),
(121, 'D', 2, 7, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-007</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-10-27 13:59:53'),
(122, 'T', 14, 8, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-008</b><br><br> Título de Proyecto: <b>LAS APLICACIONES MÓVILES Y SU IMPACTO EN LA SOCIEDAD\r\n</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-11-06 09:56:25'),
(123, 'C', 2, 8, 'Coordinacion', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-008</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.Mensaje Enviado al 00519823355667', '2023-11-06 10:00:17'),
(124, 'D', 1, 8, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-11-06 10:06:42'),
(125, 'A', 3, 8, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-008  -- Linea: 2\n- Presidente: () \n- Primer Miembro: () \n- Segundo Miembro: () \n- Director: ()', '2023-11-06 10:07:41'),
(126, 'T', 15, 9, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-009</b><br><br> Título de Proyecto: <b>APLICACIÓN MÓVIL COMO INSTRUMENTO DE DIFUSIÓN</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-11-07 08:47:54'),
(127, 'A', 2, 9, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-009</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-11-07 08:48:32'),
(128, 'D', 2, 9, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-11-07 09:37:56'),
(129, 'A', 3, 9, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-009  -- Linea: 1\n- Presidente: (3) \n- Primer Miembro: (4) \n- Segundo Miembro: (1) \n- Director: (2)', '2023-11-07 10:12:15'),
(130, 'D', 1, 9, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-009</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-11-07 10:21:57'),
(131, 'D', 3, 9, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-009</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-11-07 10:23:15'),
(132, 'D', 4, 9, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-009</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-11-07 10:24:06'),
(133, 'T', 15, 9, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-009</b><br> Título de Proyecto : <b>LAS APLICACIONES MÓVILES Y SU IMPACTO EN LA SOCIEDAD\r\n</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-11-07 10:26:04'),
(134, 'A', 3, 9, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-009</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-11-07 10:33:30'),
(135, 'T', 16, 10, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-010</b><br><br> Título de Proyecto: <b>LAS APLICACIONES MÓVILES Y LA REALIDAD AUMENTADA  SU IMPACTO EN LA SOCIEDAD </b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-11-07 11:03:17'),
(136, 'A', 2, 10, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-010</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-11-07 11:04:20'),
(137, 'D', 3, 10, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-11-07 11:04:41'),
(138, 'A', 3, 10, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-010  -- Linea: 1\n- Presidente: (4) \n- Primer Miembro: (2) \n- Segundo Miembro: (1) \n- Director: (3)', '2023-11-07 11:05:19'),
(139, 'T', 17, 11, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-011</b><br><br> Título de Proyecto: <b>LAS APLICACIONES MOVILES EN 2024</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-11-07 11:59:02'),
(140, 'A', 2, 11, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-011</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-11-07 11:59:23'),
(141, 'D', 2, 11, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-11-07 11:59:47'),
(142, 'C', 2, 11, 'Coordinacion', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-011  -- Linea: 1\n- Presidente: (4) \n- Primer Miembro: (3) \n- Segundo Miembro: (1) \n- Director: (2)', '2023-11-07 12:01:18'),
(143, 'T', 17, 11, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-011</b><br> Título de Proyecto : <b>APLICACIÓN MÓVIL COMO INSTRUMENTO DE DIFUSIÓN</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-11-07 12:06:26'),
(144, 'T', 18, 12, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-012</b><br><br> Título de Proyecto: <b>TDR SANTIAGO</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-11-21 12:44:02'),
(145, 'A', 2, 12, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-012</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-11-21 12:50:24'),
(146, 'D', 1, 12, 'Pilar', 'Rechazo del Director', 'El Director/Asesor ha rechazado su proyecto de tesis por lo que deberá cambiarlo o coordinar personalmente.', '2023-11-21 12:54:32'),
(147, 'T', 18, 13, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-013</b><br><br> Título de Proyecto: <b>DENIS DENIS </b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-11-21 13:00:55'),
(148, 'A', 2, 13, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-013</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-11-21 13:01:10'),
(149, 'D', 2, 11, 'Pilar', 'Dictaminación de Jurado 4', '<br>Procesando Proyecto : <b>2023-011</b> con <b>1</b><br>Orden de Jurado : 4<br>Iteracion : 2', '2023-11-27 11:05:21'),
(150, 'D', 1, 13, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-11-28 09:05:55'),
(151, 'D', 2, 11, 'Pilar', 'Dictaminación de Jurado 4', '<br>Procesando Proyecto : <b>2023-011</b> con <b>1</b><br>Orden de Jurado : 4<br>Iteracion : 2', '2023-11-28 09:09:39'),
(152, 'T', 19, 14, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-014</b><br><br> Título de Proyecto: <b>LAS APLICACIONES MÓVILES EN EL 2023 CREADOR DE WEBS SENCILLO</b> <br><br>Ud. debe comunicarse con su Director/Asesor para que su proyecto sea evaluado.', '2023-11-28 09:34:03'),
(153, 'A', 2, 14, 'Pilar', 'Enviado al Director', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-014</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-11-28 09:40:20'),
(154, 'D', 2, 14, 'Pilar', 'Aceptación del Director', '<b>Saludos</b><br><br>El Director/Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-11-28 09:41:48'),
(155, 'A', 3, 14, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-014  -- Linea: 1\n- Presidente: (3) \n- Primer Miembro: (4) \n- Segundo Miembro: (1) \n- Director: (2)', '2023-11-28 09:45:35'),
(156, 'D', 1, 14, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-014</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-11-28 09:51:42'),
(157, 'D', 3, 14, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-014</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-11-28 10:02:19'),
(158, 'D', 4, 14, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-014</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-11-28 10:03:20'),
(159, 'T', 19, 14, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-014</b><br> Título de Proyecto : <b>IMPLEMENTACION DE APLICACIONES MOVILES PARA EL MONITOREA DE LOS BUSES DE LA UNAMBA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-11-28 10:12:25'),
(160, 'D', 4, 14, 'Pilar', 'Dictaminación de Jurado 2', '<br>Procesando Proyecto : <b>2023-014</b> con <b>1</b><br>Orden de Jurado : 2<br>Iteracion : 2', '2023-11-28 10:16:28'),
(161, 'D', 1, 14, 'Pilar', 'Dictaminación de Jurado 3', '<br>Procesando Proyecto : <b>2023-014</b> con <b>1</b><br>Orden de Jurado : 3<br>Iteracion : 2', '2023-11-28 10:16:58'),
(162, 'D', 3, 14, 'Pilar', 'Dictaminación de Jurado 1', '<br>Procesando Proyecto : <b>2023-014</b> con <b>1</b><br>Orden de Jurado : 1<br>Iteracion : 2', '2023-11-28 10:17:25'),
(163, 'D', 2, 14, 'Pilar', 'Dictaminación de Jurado 4', '<br>Procesando Proyecto : <b>2023-014</b> con <b>1</b><br>Orden de Jurado : 4<br>Iteracion : 2', '2023-11-28 10:17:54'),
(164, 'A', 3, 14, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-014</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-11-28 10:18:33'),
(165, 'D', 2, 11, 'Pilar', 'Dictaminación de Jurado 4', '<br>Procesando Proyecto : <b>2023-011</b> con <b>1</b><br>Orden de Jurado : 4<br>Iteracion : 2', '2023-11-28 10:22:05'),
(166, 'T', 20, 15, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-015</b><br><br> Título de Proyecto: <b>TESIS DE IMPLEMENTACION DE APLICACIONES MOVILES CON REALIDAD AUMENTADA</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.', '2023-11-29 10:42:50'),
(167, 'A', 2, 15, 'Pilar', 'Enviado al Asesor', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-015</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-11-29 12:14:03'),
(168, 'D', 2, 15, 'Pilar', 'Aceptación del Asesor', '<b>Saludos</b><br><br>El Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-11-29 12:45:01'),
(169, 'A', 3, 15, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-015  -- Linea: 1\n- Presidente: (4) \n- Primer Miembro: (3) \n- Segundo Miembro: (1) \n- Asesor: (2)', '2023-11-29 12:55:31'),
(170, 'T', 21, 16, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-016</b><br><br> Título de Proyecto: <b>TESIS DE EMPRENDIMIENTO DE LA CIUDAD DE ABANCAY 2023</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.', '2023-12-04 11:09:30'),
(171, 'A', 2, 16, 'Pilar', 'Enviado al Asesor', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-016</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-12-04 11:12:16'),
(172, 'D', 21, 16, 'Pilar', 'Aceptación del Asesor', '<b>Saludos</b><br><br>El Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-12-04 11:14:38'),
(173, 'A', 3, 16, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-016  -- Linea: 1\n- Presidente: (3) \n- Primer Miembro: (4) \n- Segundo Miembro: (1) \n- Asesor: (2)', '2023-12-04 11:16:06'),
(174, 'D', 4, 16, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-016</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-12-04 11:18:34'),
(175, 'D', 3, 16, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-016</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-12-04 11:26:14'),
(176, 'D', 1, 16, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-016</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-12-04 11:28:36'),
(177, 'T', 21, 16, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-016</b><br> Título de Proyecto : <b>ESTO ES UNA MODIFICACION DEL TITULO DE LA TESIS DE EMPRENDIMIENTO DE LA CIUDAD DE ABANCAY 2023</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-12-04 11:32:37'),
(178, 'A', 3, 16, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-016</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-12-04 11:36:42'),
(179, 'T', 22, 17, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-017</b><br><br> Título de Proyecto: <b>NIVELES NUTRICIONALES Y CARACTERÍSTICAS FISICOQUIMICA DEL ENSILAJE DE CÁSCARA DE CACAO (THEOBROMA CACAO L.) ADICIONANDO MICROORGANISMOS EFICIENTES, EN TINGO MARÍA</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.', '2023-12-04 12:12:51'),
(180, 'A', 2, 17, 'Pilar', 'Enviado al Asesor', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-017</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-12-04 12:14:25'),
(181, 'D', 2, 17, 'Pilar', 'Aceptación del Asesor', '<b>Saludos</b><br><br>El Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-12-04 12:18:18'),
(182, 'A', 3, 17, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-017  -- Linea: 1\n- Presidente: (4) \n- Primer Miembro: (3) \n- Segundo Miembro: (1) \n- Asesor: (2)', '2023-12-04 12:24:49'),
(183, 'D', 4, 17, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-017</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-12-04 12:26:39'),
(184, 'D', 1, 17, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-017</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-12-04 12:28:21'),
(185, 'D', 3, 17, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-017</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-12-04 12:29:42'),
(186, 'T', 22, 17, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-017</b><br> Título de Proyecto : <b>NIVELES NUTRICIONALES Y CARACTERÍSTICAS FISICOQUIMICA DEL ENSILAJE DE CÁSCARA DE CACAO (THEOBROMA CACAO L.) ADICIONANDO MICROORGANISMOS EFICIENTES, EN TINGO MARÍA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-12-04 12:33:22'),
(187, 'D', 4, 17, 'Pilar', 'Dictaminación de Jurado 1', '<br>Procesando Proyecto : <b>2023-017</b> con <b>1</b><br>Orden de Jurado : 1<br>Iteracion : 2', '2023-12-04 12:34:13'),
(188, 'D', 1, 17, 'Pilar', 'Dictaminación de Jurado 3', '<br>Procesando Proyecto : <b>2023-017</b> con <b>1</b><br>Orden de Jurado : 3<br>Iteracion : 2', '2023-12-04 12:34:47'),
(189, 'D', 3, 17, 'Pilar', 'Dictaminación de Jurado 2', '<br>Procesando Proyecto : <b>2023-017</b> con <b>1</b><br>Orden de Jurado : 2<br>Iteracion : 2', '2023-12-04 12:35:41'),
(190, 'A', 3, 17, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-017</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-12-04 12:36:28'),
(191, 'T', 23, 18, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-018</b><br><br> Título de Proyecto: <b>SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.', '2023-12-04 12:59:34'),
(192, 'A', 2, 18, 'Pilar', 'Enviado al Asesor', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-018</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-12-04 13:00:40'),
(193, 'D', 4, 18, 'Pilar', 'Aceptación del Asesor', '<b>Saludos</b><br><br>El Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-12-04 13:01:46'),
(194, 'C', 2, 18, 'Coordinacion', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-018  -- Linea: 1\n- Presidente: (3) \n- Primer Miembro: (2) \n- Segundo Miembro: (1) \n- Director: (4)', '2023-12-04 13:04:30'),
(195, 'D', 1, 18, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-018</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-12-04 14:57:59'),
(196, 'D', 3, 18, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-018</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-12-04 15:10:28'),
(197, 'D', 2, 18, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-018</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-12-04 15:12:31'),
(198, 'T', 23, 18, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-018</b><br> Título de Proyecto : <b>SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-12-04 15:14:00'),
(199, 'D', 4, 18, 'Pilar', 'Dictaminación de Jurado 4', '<br>Procesando Proyecto : <b>2023-018</b> con <b>1</b><br>Orden de Jurado : 4<br>Iteracion : 2', '2023-12-04 15:15:12'),
(200, 'D', 1, 18, 'Pilar', 'Dictaminación de Jurado 3', '<br>Procesando Proyecto : <b>2023-018</b> con <b>-1</b><br>Orden de Jurado : 3<br>Iteracion : 2', '2023-12-04 15:16:03'),
(201, 'D', 3, 18, 'Pilar', 'Dictaminación de Jurado 1', '<br>Procesando Proyecto : <b>2023-018</b> con <b>-1</b><br>Orden de Jurado : 1<br>Iteracion : 2', '2023-12-04 15:16:30'),
(202, 'D', 2, 18, 'Pilar', 'Dictaminación de Jurado 2', '<br>Procesando Proyecto : <b>2023-018</b> con <b>-1</b><br>Orden de Jurado : 2<br>Iteracion : 2', '2023-12-04 15:17:53'),
(203, 'A', 3, 18, 'Pilar', 'Desaprobación de Proyecto', 'El Proyecto de Tesis con código <b>2023-018</b> <br>\r\npresentado el <b>04/12/2023 12:59pm</b> con correcciones subidas el <b>04/12/2023 03:14pm</b><br>titulado: <b>SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA</b>.<br><br>\r\n\r\nHa sido desaprobado por dos de sus jurados, por lo que se procedera a archivar el presente trámite.<br><br>Por la presente le comunicamos que queda habilitada la cuenta de Plataforma para el tesista y asi para ', '2023-12-04 15:20:29'),
(204, 'D', 4, 15, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-015</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-12-12 15:35:58'),
(205, 'C', 4, 13, 'Coordinacion', 'Retorna Documento : Corregir Formato', 'Saludos\r\nSu trámite ha sido rechazado, contiene los siguientes errores:\r\n\r\n EL documento no cumple con el formato de la Escuela profesional.\r\n\r\nDeberá corregir y subir su proyecto a la brevedad posible.\r\nNota: Revise el manual de tesista aquí.', '2023-12-18 12:35:03'),
(206, 'T', 23, 19, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-019</b><br><br> Título de Proyecto: <b>TESIS ULTIMO</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.', '2023-12-20 10:14:53');
INSERT INTO `logTramites` (`Id`, `Tipo`, `IdUser`, `IdTramite`, `Quien`, `Accion`, `Detalle`, `Fecha`) VALUES
(207, 'A', 2, 19, 'Pilar', 'Enviado al Asesor', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-019</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-12-20 10:22:57'),
(208, 'D', 1, 19, 'Pilar', 'Aceptación del Asesor', '<b>Saludos</b><br><br>El Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-12-20 10:23:26'),
(209, 'A', 3, 19, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-019  -- Linea: 1\n- Presidente: (4) \n- Primer Miembro: (3) \n- Segundo Miembro: (2) \n- Asesor: (1)', '2023-12-20 10:25:16'),
(210, 'D', 4, 19, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-019</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-12-20 10:26:06'),
(211, 'D', 3, 19, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-019</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-12-20 10:26:34'),
(212, 'D', 2, 19, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-019</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-12-20 10:27:04'),
(213, 'T', 23, 19, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-019</b><br> Título de Proyecto : <b>TESIS DE APLICACIONES MOVILES</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-12-20 10:31:44'),
(214, 'A', 3, 19, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-019</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-12-20 10:32:47'),
(215, 'T', 26, 20, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-020</b><br><br> Título de Proyecto: <b>ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.', '2023-12-20 11:05:36'),
(216, 'A', 2, 20, 'Pilar', 'Enviado al Asesor', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-020</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-12-20 11:06:11'),
(217, 'T', 28, 21, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-021</b><br><br> Título de Proyecto: <b>IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.', '2023-12-20 11:20:51'),
(218, 'A', 2, 21, 'Pilar', 'Enviado al Asesor', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-021</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-12-20 11:21:26'),
(219, 'T', 29, 22, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-022</b><br><br> Título de Proyecto: <b>OPTIMIZACIÓN DEL CIRCUITO DE FLOTACIÓN DE COBRE ETAPA\r\nROUGHER MEDIANTE DISEÑOS EXPERIMENTALES EN LA PLANTA\r\nCONCENTRADORA TOROMOCHO - CHINALCO 2021</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.', '2023-12-20 11:24:26'),
(220, 'A', 2, 22, 'Pilar', 'Enviado al Asesor', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-022</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-12-20 11:26:57'),
(221, 'T', 30, 23, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-023</b><br><br> Título de Proyecto: <b>ESTUDIO DE SISTEMAS EÓLICOS PARA GENERACIÓN DE\r\nENERGÍA ELÉCTRICA PARA BOMBEO DE AGUA EN LA\r\nLOCALIDAD DE NINANTAMBO, TARMA, 2022</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.', '2023-12-20 11:29:13'),
(222, 'A', 2, 23, 'Pilar', 'Enviado al Asesor', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-023</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-12-20 11:31:24'),
(223, 'T', 31, 24, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-024</b><br><br> Título de Proyecto: <b>GESTIÓN PRESUPUESTAL Y CALIDAD DEL GASTO DE LOS PRODUCTOS DE\r\nLA FUNCIÓN SALUD DEL PPOR PARA EL DESARROLLO INFANTIL TEMPRANO,\r\n2022.</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.', '2023-12-20 11:35:09'),
(224, 'A', 2, 24, 'Pilar', 'Enviado al Asesor', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-024</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-12-20 11:39:30'),
(225, 'D', 1, 20, 'Pilar', 'Aceptación del Asesor', '<b>Saludos</b><br><br>El Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-12-20 11:40:37'),
(226, 'D', 1, 21, 'Pilar', 'Aceptación del Asesor', '<b>Saludos</b><br><br>El Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-12-20 11:40:45'),
(227, 'D', 1, 23, 'Pilar', 'Aceptación del Asesor', '<b>Saludos</b><br><br>El Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-12-20 11:40:55'),
(228, 'D', 1, 22, 'Pilar', 'Aceptación del Asesor', '<b>Saludos</b><br><br>El Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-12-20 11:41:01'),
(229, 'T', 32, 25, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-025</b><br><br> Título de Proyecto: <b>VIOLENCIA FAMILIAR Y AUTOESTIMA EN LOS ESTUDIANTES DE SANTO\r\nDOMINGO DE ACOBAMBA</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.', '2023-12-20 11:50:01'),
(230, 'T', 25, 26, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-026</b><br><br> Título de Proyecto: <b>ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.', '2023-12-20 15:12:18'),
(231, 'A', 2, 25, 'Pilar', 'Enviado al Asesor', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-025</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-12-20 15:13:32'),
(232, 'A', 2, 26, 'Pilar', 'Enviado al Asesor', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-026</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-12-20 15:13:37'),
(233, 'T', 33, 27, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-027</b><br><br> Título de Proyecto: <b>IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.', '2023-12-20 15:16:52'),
(234, 'A', 2, 27, 'Pilar', 'Enviado al Asesor', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-027</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-12-20 15:17:49'),
(235, 'D', 1, 25, 'Pilar', 'Aceptación del Asesor', '<b>Saludos</b><br><br>El Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-12-20 15:18:17'),
(236, 'D', 1, 26, 'Pilar', 'Aceptación del Asesor', '<b>Saludos</b><br><br>El Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-12-20 15:18:27'),
(237, 'D', 1, 27, 'Pilar', 'Aceptación del Asesor', '<b>Saludos</b><br><br>El Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-12-20 15:18:57'),
(238, 'A', 2, 24, 'Pilar', 'Exceso de tiempo Asesor', '<h4>Saludos</h4>El proyecto con codigo: <b>2023-024</b>.  Ha estado en la bandeja del Asesor un excesivo tiempo por <b>0</b> dias, desde el: <b>20/12/2023 11:39am</b> se procede con el registro del hecho y la anulación del trámite, el Tesista podrá realizar un nuevo trámite en el tiempo que reformula el proyecto o elije otro Asesor.', '2023-12-20 15:19:51'),
(239, 'A', 3, 20, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-020  -- Linea: 1\n- Presidente: (3) \n- Primer Miembro: (4) \n- Segundo Miembro: (2) \n- Asesor: (1)', '2023-12-20 15:20:19'),
(240, 'A', 3, 21, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-021  -- Linea: 1\n- Presidente: (3) \n- Primer Miembro: (4) \n- Segundo Miembro: (2) \n- Asesor: (1)', '2023-12-20 15:20:56'),
(241, 'A', 3, 23, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-023  -- Linea: 1\n- Presidente: (2) \n- Primer Miembro: (4) \n- Segundo Miembro: (3) \n- Asesor: (1)', '2023-12-20 15:21:19'),
(242, 'A', 3, 22, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-022  -- Linea: 1\n- Presidente: (2) \n- Primer Miembro: (3) \n- Segundo Miembro: (4) \n- Asesor: (1)', '2023-12-20 15:21:49'),
(243, 'A', 3, 25, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-025  -- Linea: 1\n- Presidente: (4) \n- Primer Miembro: (3) \n- Segundo Miembro: (2) \n- Asesor: (1)', '2023-12-20 15:22:12'),
(244, 'A', 3, 26, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-026  -- Linea: 1\n- Presidente: (2) \n- Primer Miembro: (3) \n- Segundo Miembro: (4) \n- Asesor: (1)', '2023-12-20 15:22:48'),
(245, 'A', 3, 27, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-027  -- Linea: 1\n- Presidente: (2) \n- Primer Miembro: (3) \n- Segundo Miembro: (4) \n- Asesor: (1)', '2023-12-20 15:23:22'),
(246, 'D', 2, 20, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-020</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-12-20 15:24:32'),
(247, 'D', 2, 21, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-021</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-12-20 15:24:54'),
(248, 'D', 2, 23, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-023</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-12-20 15:25:12'),
(249, 'D', 2, 22, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-022</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-12-20 15:26:00'),
(250, 'D', 2, 25, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-025</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-12-20 15:34:24'),
(251, 'D', 2, 26, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-026</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-12-20 15:34:47'),
(252, 'D', 2, 27, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-027</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-12-20 15:35:14'),
(253, 'D', 3, 20, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-020</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-12-20 15:35:44'),
(254, 'D', 3, 21, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-021</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-12-20 15:35:59'),
(255, 'D', 3, 23, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-023</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-12-20 15:36:18'),
(256, 'D', 3, 25, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-025</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-12-20 15:36:34'),
(257, 'D', 3, 26, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-026</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-12-20 15:37:10'),
(258, 'D', 3, 27, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-027</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-12-20 15:37:28'),
(259, 'D', 4, 20, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-020</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-12-20 15:38:27'),
(260, 'D', 4, 21, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-021</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-12-20 15:38:36'),
(261, 'D', 4, 23, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-023</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-12-20 15:38:43'),
(262, 'D', 4, 25, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-025</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-12-20 15:38:52'),
(263, 'D', 4, 26, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-026</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-12-20 15:39:06'),
(264, 'D', 4, 27, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-027</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-12-20 15:39:18'),
(265, 'T', 33, 27, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-027</b><br> Título de Proyecto : <b>IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-12-20 15:41:18'),
(266, 'A', 3, 27, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-027</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-12-20 15:41:56'),
(267, 'T', 25, 26, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-026</b><br> Título de Proyecto : <b>ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-12-20 15:46:19'),
(268, 'D', 2, 26, 'Pilar', 'Dictaminación de Jurado 1', '<br>Procesando Proyecto : <b>2023-026</b> con <b>1</b><br>Orden de Jurado : 1<br>Iteracion : 2', '2023-12-20 15:50:49'),
(269, 'D', 4, 26, 'Pilar', 'Dictaminación de Jurado 3', '<br>Procesando Proyecto : <b>2023-026</b> con <b>1</b><br>Orden de Jurado : 3<br>Iteracion : 2', '2023-12-20 15:51:05'),
(270, 'D', 3, 26, 'Pilar', 'Dictaminación de Jurado 2', '<br>Procesando Proyecto : <b>2023-026</b> con <b>1</b><br>Orden de Jurado : 2<br>Iteracion : 2', '2023-12-20 15:51:31'),
(271, 'A', 3, 26, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-026</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-12-20 15:51:44'),
(272, 'T', 34, 28, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-028</b><br><br> Título de Proyecto: <b>EVASIÓN TRIBUTARIA Y SU RELACIÓN EN LA RECAUDACIÓN FISCAL EN LOS COMERCIANTES DEL MERCADO MODELO HONDURAS 2000 COMAS 2022</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.', '2023-12-20 15:58:14'),
(273, 'A', 2, 28, 'Pilar', 'Enviado al Asesor', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-028</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-12-20 15:58:52'),
(274, 'D', 1, 28, 'Pilar', 'Aceptación del Asesor', '<b>Saludos</b><br><br>El Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-12-20 15:59:23'),
(275, 'A', 3, 28, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-028  -- Linea: 1\n- Presidente: (3) \n- Primer Miembro: (4) \n- Segundo Miembro: (2) \n- Asesor: (1)', '2023-12-20 15:59:56'),
(276, 'D', 4, 28, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-028</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-12-20 16:00:52'),
(277, 'D', 3, 28, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-028</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-12-20 16:01:18'),
(278, 'D', 2, 28, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-028</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-12-20 16:01:52'),
(279, 'T', 34, 28, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-028</b><br> Título de Proyecto : <b>EVASIÓN TRIBUTARIA Y SU RELACIÓN EN LA RECAUDACIÓN FISCAL EN LOS COMERCIANTES DEL MERCADO MODELO HONDURAS 2000 COMAS 2022</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-12-20 16:03:59'),
(280, 'D', 4, 28, 'Pilar', 'Dictaminación de Jurado 2', '<br>Procesando Proyecto : <b>2023-028</b> con <b>1</b><br>Orden de Jurado : 2<br>Iteracion : 2', '2023-12-20 16:07:27'),
(281, 'D', 3, 28, 'Pilar', 'Dictaminación de Jurado 1', '<br>Procesando Proyecto : <b>2023-028</b> con <b>1</b><br>Orden de Jurado : 1<br>Iteracion : 2', '2023-12-20 16:07:58'),
(282, 'D', 2, 28, 'Pilar', 'Dictaminación de Jurado 3', '<br>Procesando Proyecto : <b>2023-028</b> con <b>1</b><br>Orden de Jurado : 3<br>Iteracion : 2', '2023-12-20 16:08:20'),
(283, 'A', 3, 28, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-028</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-12-20 16:08:43'),
(284, 'T', 26, 20, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-020</b><br> Título de Proyecto : <b>ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-12-20 16:17:47'),
(285, 'A', 3, 20, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-020</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-12-20 16:18:27'),
(286, 'T', 28, 21, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-021</b><br> Título de Proyecto : <b>IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-12-20 16:19:45'),
(287, 'A', 3, 21, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-021</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-12-20 16:20:33'),
(288, 'D', 4, 22, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-022</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-12-20 16:22:36'),
(289, 'D', 3, 22, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-022</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-12-20 16:23:43'),
(290, 'T', 29, 22, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-022</b><br> Título de Proyecto : <b>OPTIMIZACIÓN DEL CIRCUITO DE FLOTACIÓN DE COBRE ETAPA\r\nROUGHER MEDIANTE DISEÑOS EXPERIMENTALES EN LA PLANTA\r\nCONCENTRADORA TOROMOCHO - CHINALCO 2021</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-12-20 16:24:26'),
(291, 'A', 3, 22, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-022</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-12-20 16:25:00'),
(292, 'T', 30, 23, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-023</b><br> Título de Proyecto : <b>ESTUDIO DE SISTEMAS EÓLICOS PARA GENERACIÓN DE\r\nENERGÍA ELÉCTRICA PARA BOMBEO DE AGUA EN LA\r\nLOCALIDAD DE NINANTAMBO, TARMA, 2022</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-12-20 16:26:46'),
(293, 'A', 3, 23, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-023</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-12-20 16:27:30'),
(294, 'T', 32, 25, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-025</b><br> Título de Proyecto : <b>VIOLENCIA FAMILIAR Y AUTOESTIMA EN LOS ESTUDIANTES DE SANTO\r\nDOMINGO DE ACOBAMBA</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-12-20 16:31:20'),
(295, 'A', 3, 25, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-025</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-12-20 16:31:54'),
(296, 'T', 31, 29, 'Tesista', 'Subida de Proyecto', '<br>Se ha registrado el proyecto: <b>2023-029</b><br><br> Título de Proyecto: <b>COSTOS DE PRODUCCIÓN Y SU INCIDENCIA EN EL RENDIMIENTO FINANCIERO DE LA EMPRESA COOPERATIVA AGRARIA ASPRAOSRA, MORROPÓN 2018-2022.</b> <br><br>Ud. debe comunicarse con su Asesor para que su proyecto sea evaluado.', '2023-12-20 16:34:39'),
(297, 'A', 2, 29, 'Pilar', 'Enviado al Asesor', '<h4> Proyecto para Asesoria </h4><br>Se le ha remitido el proyecto con código <b>2023-029</b> Ud. ya puede revisarlo y aprobarlo para enviarlo a sorteo en la <b>Plataforma PILAR</b>.', '2023-12-20 16:35:17'),
(298, 'D', 1, 29, 'Pilar', 'Aceptación del Asesor', '<b>Saludos</b><br><br>El Asesor que Ud. eligió, ha aceptado su proyecto y en un máximo de 48 horas serán sorteados sus jurados', '2023-12-20 16:35:33'),
(299, 'A', 3, 29, 'Pilar', 'Proyecto enviado a Revisión', 'Sorteo y Envio a Revisión\nProyecto: 2023-029  -- Linea: 1\n- Presidente: (4) \n- Primer Miembro: (3) \n- Segundo Miembro: (2) \n- Asesor: (1)', '2023-12-20 16:35:56'),
(300, 'D', 4, 29, 'Pilar', 'Fin de Correcciones Jurado 1', '<br>Procesando Proyecto : <b>2023-029</b><br>Orden de Jurado : 1<br>Iteracion : 1', '2023-12-20 16:36:22'),
(301, 'D', 3, 29, 'Pilar', 'Fin de Correcciones Jurado 2', '<br>Procesando Proyecto : <b>2023-029</b><br>Orden de Jurado : 2<br>Iteracion : 1', '2023-12-20 16:36:47'),
(302, 'D', 2, 29, 'Pilar', 'Fin de Correcciones Jurado 3', '<br>Procesando Proyecto : <b>2023-029</b><br>Orden de Jurado : 3<br>Iteracion : 1', '2023-12-20 16:38:38'),
(303, 'T', 31, 29, 'Tesista', 'Subida de Corrección', '<br>El tesista ha subido Correcciones en el trámite:<br><br>Codigo: <b>2023-029</b><br> Título de Proyecto : <b>COSTOS DE PRODUCCIÓN Y SU INCIDENCIA EN EL RENDIMIENTO FINANCIERO DE LA EMPRESA COOPERATIVA AGRARIA ASPRAOSRA, MORROPÓN 2018-2022.</b> <br><br>  A partir de la fecha en un plazo de 5 días hábiles (sin feriados) se realizará la <b>Dictaminación del Jurado Evaluador</b>. Se procede con el registro y envio de las notificaciones.', '2023-12-20 16:39:27'),
(304, 'A', 3, 29, 'Pilar', 'Aprobación de Proyecto', '<h4> Felicitaciones </h4><br>Su proyecto <b>2023-029</b>, ha sido aprobado ya puede visualizarlo y descargarlo desde su cuenta de la <b>Plataforma PILAR</b>.', '2023-12-20 16:40:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Repositorio`
--

CREATE TABLE `Repositorio` (
  `Id` int(11) NOT NULL,
  `DNI` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Codigo` varchar(8) CHARACTER SET utf8 NOT NULL,
  `IdFacultad` int(5) NOT NULL,
  `IdCarrera` int(5) NOT NULL,
  `IdEspec` int(5) NOT NULL,
  `Apellidos` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Nombres` varchar(75) CHARACTER SET utf8 NOT NULL,
  `IdModal` int(11) NOT NULL,
  `FechaReg` datetime NOT NULL,
  `SemReg` varchar(25) CHARACTER SET utf8 NOT NULL,
  `FechaSus` date NOT NULL,
  `Link1` varchar(99) NOT NULL,
  `Link2` varchar(99) NOT NULL,
  `NroCelular` varchar(12) CHARACTER SET utf8 NOT NULL,
  `Correo` varchar(40) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblCorrects`
--

CREATE TABLE `tblCorrects` (
  `Id` int(11) NOT NULL,
  `IdTramite` int(5) NOT NULL,
  `Iteracion` int(5) NOT NULL,
  `IdDocente` int(5) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Mensaje` varchar(1024) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblCorrects`
--

INSERT INTO `tblCorrects` (`Id`, `IdTramite`, `Iteracion`, `IdDocente`, `Fecha`, `Mensaje`) VALUES
(1, 2, 1, 2, '2023-08-02 18:55:07', 'Hasta mi fecha de conocimiento en septiembre de 2021, GenMailer no es una herramienta o software ampliamente conocido o documentado. Parece ser que GenMailer se refiere a un nombre específico de alguna aplicación o script personalizado.\r\n\r\nDado que no tengo información específica sobre GenMailer, no puedo proporcionar instrucciones precisas para hacerlo funcionar en Ubuntu 18.04. Sin embargo, puedo ofrecerte un enfoque general para hacer que cualquier herramienta o script funcione en Ubuntu 18.04:'),
(2, 2, 1, 2, '2023-08-02 18:55:38', 'Descarga o obtén GenMailer:\r\n\r\n    Si GenMailer es una herramienta o script disponible públicamente, asegúrate de descargarlo desde una fuente confiable o obtenerlo del desarrollador original.'),
(3, 2, 1, 3, '2023-08-02 20:12:06', 'te falta muchacho'),
(4, 2, 1, 4, '2023-08-02 20:13:01', 'hola'),
(5, 2, 4, 2, '2023-08-03 16:02:34', 'dfdfgfrdgrrghrtgth'),
(6, 2, 4, 2, '2023-08-03 16:02:37', 'gfhhfgfgffg'),
(7, 2, 4, 3, '2023-08-03 16:03:20', '1'),
(8, 2, 4, 4, '2023-08-03 16:03:54', '2'),
(9, 2, 4, 1, '2023-08-03 16:04:19', 'qwswd'),
(10, 3, 1, 2, '2023-08-03 21:18:37', 'Correcion'),
(11, 3, 1, 2, '2023-08-03 21:18:44', 'correcion'),
(12, 3, 1, 3, '2023-08-03 21:20:42', 'correcion 1'),
(13, 3, 1, 3, '2023-08-03 21:20:46', 'correcion2'),
(14, 3, 1, 4, '2023-08-03 21:21:35', 'correcion 1'),
(15, 3, 1, 4, '2023-08-03 21:21:39', 'correcion2'),
(16, 3, 1, 4, '2023-08-03 21:21:43', 'correcion 3'),
(17, 11, 1, 8, '2023-08-11 16:39:52', '1'),
(18, 11, 1, 7, '2023-08-11 16:40:38', '1'),
(19, 11, 1, 12, '2023-08-11 16:41:12', '3'),
(20, 10, 4, 11, '2023-08-11 18:36:57', 'de'),
(21, 10, 4, 7, '2023-08-11 18:37:20', 'ed'),
(22, 10, 4, 13, '2023-08-11 18:37:47', 'e'),
(23, 10, 4, 9, '2023-08-11 18:39:03', 'e'),
(24, 4, 1, 3, '2023-10-25 22:19:13', 'citar en formato apa'),
(25, 4, 1, 3, '2023-10-25 22:19:30', 'mejorar el resumen de la tesis'),
(26, 4, 1, 3, '2023-10-25 22:19:44', 'mejorar el marco terorico'),
(27, 4, 1, 3, '2023-10-25 22:20:02', 'precisar mejor la formula de estadistica utilizada'),
(28, 4, 1, 4, '2023-10-25 22:21:27', 'corregir la tesis en la linea de marco teorico'),
(29, 4, 1, 4, '2023-10-25 22:21:37', 'mejorar su abstrac'),
(30, 4, 1, 1, '2023-10-27 17:06:35', 'esta muy bien'),
(31, 4, 1, 1, '2023-10-27 17:06:44', 'mejorar el abstract'),
(32, 4, 1, 1, '2023-10-27 17:06:58', 'mejorar la redaccion de parafraseo'),
(33, 7, 1, 3, '2023-10-27 18:56:46', 'mejorar la redaccion del titulo'),
(34, 7, 1, 3, '2023-10-27 18:57:01', 'mejorar el parafraseo'),
(35, 7, 1, 3, '2023-10-27 18:57:11', 'mejorar el marco teorico'),
(36, 7, 1, 3, '2023-10-27 18:57:24', 'mejorar la introduccion'),
(37, 7, 1, 3, '2023-10-27 18:57:35', 'mejorar las palabras claves'),
(38, 7, 1, 4, '2023-10-27 18:58:43', 'no hay citas de bibliografias'),
(39, 7, 1, 4, '2023-10-27 18:58:57', 'no tiene definido el fromato Apa'),
(40, 7, 1, 2, '2023-10-27 18:59:36', 'mejorar la tesis '),
(41, 7, 1, 2, '2023-10-27 18:59:52', 'redactar mejor el titulo'),
(42, 9, 1, 1, '2023-11-07 15:14:34', 'mejorar la tesis'),
(43, 9, 1, 1, '2023-11-07 15:15:06', 'El archivo pdf,  no es el que se subio por el tesista'),
(44, 9, 1, 1, '2023-11-07 15:21:50', 'vuelva a cargar su tesis.'),
(45, 9, 1, 3, '2023-11-07 15:23:04', 'CAMBIE DE ARCHIVO,NO ES SU TESIS'),
(46, 9, 1, 3, '2023-11-07 15:23:12', 'Se confundio de tesis'),
(47, 9, 1, 4, '2023-11-07 15:23:51', 'El titulo de sus tesis no es la misa'),
(48, 9, 1, 4, '2023-11-07 15:24:03', 'No es , su tesis'),
(49, 14, 1, 1, '2023-11-28 14:51:09', 'corregir el marco teorico'),
(50, 14, 1, 1, '2023-11-28 14:51:32', 'definir las variables independientes y dependientes'),
(51, 14, 1, 3, '2023-11-28 15:01:47', 'mejorar el titulo de la tesis'),
(52, 14, 1, 3, '2023-11-28 15:02:16', 'mejorar el planteamiento del problema'),
(53, 14, 1, 4, '2023-11-28 15:03:05', 'mejorar la introduccion'),
(54, 14, 1, 4, '2023-11-28 15:03:16', 'arreglar la caratula'),
(55, 16, 1, 4, '2023-12-04 16:18:08', 'corregir el titulo'),
(56, 16, 1, 4, '2023-12-04 16:18:23', 'mejorar la introduccion'),
(57, 16, 1, 3, '2023-12-04 16:25:53', 'mejorar el titulo de la tesis'),
(58, 16, 1, 3, '2023-12-04 16:26:09', 'la hipotesis mejorar'),
(59, 16, 1, 1, '2023-12-04 16:27:48', 'corregir las fuentes'),
(60, 16, 1, 1, '2023-12-04 16:28:09', 'corregir el planteamiento del problema'),
(61, 17, 1, 4, '2023-12-04 17:26:14', 'mejorar la introduccion de la tesis'),
(62, 17, 1, 4, '2023-12-04 17:26:35', 'el marco teorico debe mejorar'),
(63, 17, 1, 1, '2023-12-04 17:27:48', 'el planteamiento de su problema definir mucho mejor'),
(64, 17, 1, 1, '2023-12-04 17:28:18', 'en la pagina 18, no esta citado '),
(65, 17, 1, 3, '2023-12-04 17:29:14', 'su matriz de concistencia debe mejorar'),
(66, 17, 1, 3, '2023-12-04 17:29:39', 'la hipotesis no esta definitdad'),
(67, 18, 1, 1, '2023-12-04 19:57:12', 'esta correcto la tesis'),
(68, 18, 1, 1, '2023-12-04 19:57:52', 'poner en formato APA 7'),
(69, 18, 1, 3, '2023-12-04 20:09:14', 'mejorar su tesis '),
(70, 18, 1, 3, '2023-12-04 20:09:28', 'errores en citar'),
(71, 18, 1, 2, '2023-12-04 20:12:13', 'corregir marco conceptual'),
(72, 18, 1, 2, '2023-12-04 20:12:28', 'corregir marco teorico en pag. 18'),
(73, 15, 1, 4, '2023-12-12 20:35:53', 'todo ok'),
(74, 19, 1, 4, '2023-12-20 15:26:03', 'ok'),
(75, 19, 1, 3, '2023-12-20 15:26:32', 'ok mejor'),
(76, 19, 1, 2, '2023-12-20 15:27:01', 'ok mejor ok'),
(77, 20, 1, 2, '2023-12-20 20:24:27', 'si esta bien'),
(78, 21, 1, 2, '2023-12-20 20:24:52', 'ok arregala el pdf'),
(79, 23, 1, 2, '2023-12-20 20:25:08', 'el documento no es el mismo'),
(80, 22, 1, 2, '2023-12-20 20:25:57', 'tenemos que arreglar el documento'),
(81, 25, 1, 2, '2023-12-20 20:34:21', 'mejorar la tesis'),
(82, 26, 1, 2, '2023-12-20 20:34:44', 'su tesis esta bien'),
(83, 27, 1, 2, '2023-12-20 20:35:12', 'mejorar en la introduccion'),
(84, 20, 1, 3, '2023-12-20 20:35:39', 'esta muy mal'),
(85, 21, 1, 3, '2023-12-20 20:35:56', 'no cito correctamente'),
(86, 23, 1, 3, '2023-12-20 20:36:16', 'la hipotesis esta pobre'),
(87, 25, 1, 3, '2023-12-20 20:36:32', 'no tiene marco tetorico'),
(88, 26, 1, 3, '2023-12-20 20:37:07', 'planteamineto del problema esta por corrgir'),
(89, 27, 1, 3, '2023-12-20 20:37:24', 'su tesis esta correcto'),
(90, 20, 1, 4, '2023-12-20 20:38:23', 'la metodolofia no esta muy bien'),
(91, 21, 1, 4, '2023-12-20 20:38:33', 'ok'),
(92, 23, 1, 4, '2023-12-20 20:38:41', 'ok'),
(93, 25, 1, 4, '2023-12-20 20:38:49', 'ok'),
(94, 26, 1, 4, '2023-12-20 20:39:04', 'ok mwjoe'),
(95, 27, 1, 4, '2023-12-20 20:39:15', 'ok mucho mejor'),
(96, 28, 1, 4, '2023-12-20 21:00:46', 'a su tesis mejorar el planteamiento del problema'),
(97, 28, 1, 3, '2023-12-20 21:01:16', 'esta muy bien'),
(98, 28, 1, 2, '2023-12-20 21:01:50', 'excelente tesis'),
(99, 22, 1, 4, '2023-12-20 21:22:33', 'ok'),
(100, 22, 1, 3, '2023-12-20 21:23:41', 'ok'),
(101, 29, 1, 4, '2023-12-20 21:36:20', 'ok'),
(102, 29, 1, 3, '2023-12-20 21:36:45', 'ok'),
(103, 29, 1, 2, '2023-12-20 21:38:36', 'ok');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblManagers`
--

CREATE TABLE `tblManagers` (
  `Id` int(11) NOT NULL,
  `Nivel` int(11) NOT NULL,
  `Responsable` varchar(32) NOT NULL,
  `Usuario` varchar(12) NOT NULL,
  `Clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblManagers`
--

INSERT INTO `tblManagers` (`Id`, `Nivel`, `Responsable`, `Usuario`, `Clave`) VALUES
(2, 0, 'user', 'user', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(3, 1, 'sadith', 'Sadith', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(4, 1, 'dev', 'dev', '*6E8B7CA4771D9432B828130B15F301006028B960'),
(5, 1, 'marco', 'marco', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblMemos`
--

CREATE TABLE `tblMemos` (
  `Id` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Ordinal` int(11) NOT NULL,
  `Anio` int(11) NOT NULL,
  `IdTramite` int(11) NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblMemos`
--

INSERT INTO `tblMemos` (`Id`, `Tipo`, `Ordinal`, `Anio`, `IdTramite`, `IdCarrera`, `Fecha`) VALUES
(1, 1, 1, 2020, 1, 1, '2023-08-02 11:16:51'),
(2, 1, 2, 2020, 2, 1, '2023-08-02 13:50:11'),
(3, 4, 3, 2020, 2, 1, '2023-08-03 11:02:12'),
(4, 1, 4, 2020, 3, 1, '2023-08-03 16:17:39'),
(5, 1, 5, 2020, 8, 3, '2023-08-10 12:05:04'),
(6, 1, 6, 2020, 7, 3, '2023-08-10 12:06:23'),
(7, 1, 7, 2020, 10, 3, '2023-08-10 14:06:53'),
(8, 1, 8, 2020, 11, 3, '2023-08-11 11:11:44'),
(9, 4, 9, 2020, 11, 3, '2023-08-11 12:01:17'),
(10, 4, 10, 2020, 11, 3, '2023-08-11 12:18:27'),
(11, 4, 11, 2020, 10, 3, '2023-08-11 13:36:27'),
(12, 1, 1, 2023, 3, 1, '2023-10-25 13:54:09'),
(13, 1, 2, 2023, 4, 1, '2023-10-25 17:01:23'),
(14, 1, 3, 2023, 2, 1, '2023-10-25 17:06:44'),
(15, 1, 4, 2023, 7, 1, '2023-10-27 12:18:29'),
(16, 1, 5, 2023, 6, 1, '2023-10-27 12:18:57'),
(17, 1, 6, 2023, 8, 1, '2023-11-06 10:07:39'),
(18, 1, 7, 2023, 9, 1, '2023-11-07 10:12:12'),
(19, 1, 8, 2023, 10, 1, '2023-11-07 11:05:15'),
(20, 1, 9, 2023, 11, 1, '2023-11-07 12:01:15'),
(21, 1, 10, 2023, 14, 1, '2023-11-28 09:45:32'),
(22, 1, 11, 2023, 15, 1, '2023-11-29 12:55:28'),
(23, 1, 12, 2023, 16, 1, '2023-12-04 11:16:02'),
(24, 1, 13, 2023, 17, 1, '2023-12-04 12:24:46'),
(25, 1, 14, 2023, 18, 1, '2023-12-04 13:04:26'),
(26, 1, 15, 2023, 19, 1, '2023-12-20 10:25:13'),
(27, 1, 16, 2023, 20, 1, '2023-12-20 15:20:15'),
(28, 1, 17, 2023, 21, 1, '2023-12-20 15:20:53'),
(29, 1, 18, 2023, 23, 1, '2023-12-20 15:21:16'),
(30, 1, 19, 2023, 22, 1, '2023-12-20 15:21:45'),
(31, 1, 20, 2023, 25, 1, '2023-12-20 15:22:09'),
(32, 1, 21, 2023, 26, 1, '2023-12-20 15:22:46'),
(33, 1, 22, 2023, 27, 1, '2023-12-20 15:23:18'),
(34, 1, 23, 2023, 28, 1, '2023-12-20 15:59:53'),
(35, 1, 24, 2023, 29, 1, '2023-12-20 16:35:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblPreguntas`
--

CREATE TABLE `tblPreguntas` (
  `idpregunta` int(11) NOT NULL,
  `pregunta` varchar(500) DEFAULT NULL,
  `respuesta` varchar(500) DEFAULT NULL,
  `obs` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='¿Tenemos libre albedrío?';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblSecres`
--

CREATE TABLE `tblSecres` (
  `Id` int(11) NOT NULL,
  `Id_Facultad` int(11) NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `UserLevel` int(3) NOT NULL,
  `Resp` varchar(400) NOT NULL,
  `Usuario` varchar(70) NOT NULL,
  `Clave` varchar(90) NOT NULL,
  `Celular` varchar(9) NOT NULL,
  `Correo` varchar(300) NOT NULL,
  `Direccion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblSecres`
--

INSERT INTO `tblSecres` (`Id`, `Id_Facultad`, `IdCarrera`, `UserLevel`, `Resp`, `Usuario`, `Clave`, `Celular`, `Correo`, `Direccion`) VALUES
(1, 1, 1, 2, 'Guillermo', 'director', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', '983375009', 'coordinador@gmail.com', 'dir'),
(2, 1, 1, 1, 'Sadith', 'coordinador', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', '983375003', 'coordinador@gmail.com', 'dd'),
(3, 1, 1, 1, 'pilar', 'coordinador', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6', '9', 'pilar@p', ''),
(4, 1, 1, 3, 'unidad', 'subdirector', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6', '983375003', 'unidad@gmail.com', 'dd'),
(5, 1, 1, 4, 'secretria', 'secretaria', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6', '983375003', 'unidad@gmail.com', 'dd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblTesistas`
--

CREATE TABLE `tblTesistas` (
  `Id` int(11) NOT NULL,
  `Activo` int(5) NOT NULL DEFAULT '1',
  `DNI` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Sexo` varchar(4) NOT NULL,
  `Codigo` varchar(8) CHARACTER SET utf8 NOT NULL,
  `IdFacultad` int(5) NOT NULL,
  `IdCarrera` int(5) NOT NULL,
  `IdEspec` int(5) NOT NULL,
  `Apellidos` varchar(75) CHARACTER SET utf8 NOT NULL,
  `Nombres` varchar(75) CHARACTER SET utf8 NOT NULL,
  `FechaReg` datetime NOT NULL,
  `SemReg` varchar(25) CHARACTER SET utf8 NOT NULL,
  `Direccion` varchar(50) CHARACTER SET utf8 NOT NULL,
  `NroCelular` varchar(12) CHARACTER SET utf8 NOT NULL,
  `Correo` varchar(75) CHARACTER SET utf8 NOT NULL,
  `Clave` varchar(90) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblTesistas`
--

INSERT INTO `tblTesistas` (`Id`, `Activo`, `DNI`, `Sexo`, `Codigo`, `IdFacultad`, `IdCarrera`, `IdEspec`, `Apellidos`, `Nombres`, `FechaReg`, `SemReg`, `Direccion`, `NroCelular`, `Correo`, `Clave`) VALUES
(1, 2, '47490383', '', '192020', 1, 1, 0, 'CHIPA TEJADA', 'SAMIRA', '2023-10-25 11:49:29', '2023-2', 'd1', '911223344', 'rlaura@unap.edu.pe', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'),
(2, 2, '72745161', '', '191018', 1, 1, 0, 'CHANI PUJADAS', 'BRYAN FELIPE', '2023-10-25 12:04:47', '2023-2', 'jr.Huancavelica 840', '983345675', 'gsegundo@unamba.edu.pe', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1'),
(7, 2, '76670824', '', '191029', 1, 1, 0, 'HUARANCCA CAHUANCAMA', 'YENIFER', '2023-10-25 13:09:51', '2023-2', 'jr.abancay', '983375008', 'gleidysegundogonzales@gmail.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1'),
(9, 2, '70831354', '', '101049', 1, 1, 0, 'WARTHON AGUIRRE', 'JANNELLY SHARYD', '2023-10-25 13:57:49', '2023-2', 'Av.Los perdidos ', '92546201755', 'hola@gmail.com', '*CABA3A35E8E7E0A6A48B59382A6926569B96BE5B'),
(13, 2, '48183840', '', '131047', 1, 1, 0, 'VILLAFUERTE HUANACO', 'FRANCISCO', '2023-10-25 16:28:36', '2023-2', 'av. peru', '983233980', 'ingeniusiis@gmail.com', '*48657DFDA520F9476B6C795D2D59CE43CCD11B99'),
(15, 2, '75858706', '', '191015', 1, 1, 0, 'CCASANI SORIA', 'JOEL RAFAEL', '2023-11-07 08:45:33', '2023-2', 'cusco', '123456789', 'admi7@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(16, 2, '71229629', '', '191017', 1, 1, 0, 'CENTENO BARRIENTOS', 'EFRAIN JHEDY', '2023-11-07 11:00:23', '2023-2', 'ica', '123456789', 'admi8@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(17, 2, '61687138', '', '191019', 1, 1, 0, 'CONDORI MOREANO', 'CARMEN VICTORIA', '2023-11-07 11:51:24', '2023-2', 'nazca', '123456789', 'admi9@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(18, 2, '73204486', '', '231002', 1, 1, 0, 'ALFARO MEJIA', 'MAYLI', '2023-11-28 08:55:05', '2023-2', 'Av.cusco Nro 123', '123456789', 'rojas.nel07@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(19, 2, '76187120', '', '191004', 1, 1, 0, 'APAZA CCOLQQUE', 'CARLOS DANIEL', '2023-11-28 09:22:54', '2023-2', 'cusco', '123456789', 'carlos@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(20, 2, '77242912', '', '191006', 1, 1, 0, 'AYMARA ZAMORA', 'RENE RAQUEL', '2023-11-29 09:00:27', '2023-2', 'av.lima', '123456', 'rene@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(21, 2, '73219778', '', '191007', 1, 1, 0, 'BARRIENTOS QUISPE', 'LAURA GABRIELA', '2023-12-04 10:54:00', '2023-2', 'lima', '12345678', 'gaby@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(22, 2, '74167272', '', '191009', 1, 1, 0, 'BRAVO HUAMANHORCCO', 'TULA', '2023-12-04 11:56:46', '2023-2', 'Huancavelica', '12345678', 'tula@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(23, 2, '60304096', '', '191011', 1, 1, 0, 'CABRERA SUTURI', 'BRISA ELENA', '2023-12-04 12:54:42', '2023-2', 'NAZCA', '12345678', 'brisa@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(24, 2, '75792730', '', '191032', 1, 1, 0, 'LEIVA CRIALES', 'ROCIO', '2023-12-14 12:46:33', '2023-2', 'lima', '123456789', 'rocio@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(25, 2, '73604030', '', '191035', 1, 1, 0, 'MOLINA MUÑOZ', 'ROSA GISELA', '2023-12-18 14:31:22', '2023-2', 'abancay', '12345678', 'rosa@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(26, 2, '72386839', '', '191036', 1, 1, 0, 'MOREANO PANIURA', 'CINTYA ISABEL', '2023-12-20 11:02:37', '2023-2', 'cusco', '123456789', 'isabel@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(27, 2, '74208959', '', '191041', 1, 1, 0, 'PANEBRA PIZARRO', 'DELACRUZ', '2023-12-20 11:07:45', '2023-2', 'lima', '123456789', 'delacruz@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(28, 2, '77021422', '', '191045', 1, 1, 0, 'QUISPE MIRAYA', 'IVANA', '2023-12-20 11:19:00', '2023-2', 'lima', '123456789', 'ivana@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(29, 2, '79136699', '', '191049', 1, 1, 0, 'RIOS LEON', 'MEDALID', '2023-12-20 11:23:07', '2023-2', 'lima', '123456789', 'medalid@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(30, 2, '76565429', '', '191050', 1, 1, 0, 'ROJAS BECERRA', 'YENIFER LUCERO', '2023-12-20 11:28:14', '2023-2', 'lima', '123456789', 'lucero@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(31, 2, '74463798', '', '191051', 1, 1, 0, 'ROMAN QUISPE', 'LILIANA', '2023-12-20 11:32:58', '2023-2', 'cusco', '123456789', 'liliana@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(32, 2, '71032325', '', '191052', 1, 1, 0, 'ROQUE QUISPE', 'BRENDA HELEN', '2023-12-20 11:45:41', '2023-2', 'lima', '123456789', 'helen@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(33, 2, '75917788', '', '191056', 1, 1, 0, 'VALDEZ VILCAS', 'GLADY SHAYDA', '2023-12-20 15:15:49', '2023-2', 'lima', '123456789', 'shayda@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(34, 2, '72834903', '', '191057', 1, 1, 0, 'VALVERDE CARRASCO', 'MARIA FRANCISCA', '2023-12-20 15:56:52', '2023-2', 'cusco', '123456789', 'maria@gmail.com', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesJuCambios`
--

CREATE TABLE `tesJuCambios` (
  `Id` int(11) NOT NULL,
  `IdTramite` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Referens` varchar(50) NOT NULL,
  `IdJurado1` int(11) NOT NULL,
  `IdJurado2` int(11) NOT NULL,
  `IdJurado3` int(11) NOT NULL,
  `IdJurado4` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Motivo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tesJuCambios`
--

INSERT INTO `tesJuCambios` (`Id`, `IdTramite`, `Tipo`, `Referens`, `IdJurado1`, `IdJurado2`, `IdJurado3`, `IdJurado4`, `Fecha`, `Motivo`) VALUES
(1, 2, 1, 'Coords', 2, 4, 3, 1, '2023-08-02 13:50:11', 'Sortea'),
(2, 3, 1, 'Coords', 3, 2, 4, 1, '2023-08-03 16:17:39', 'Sortea'),
(3, 8, 1, 'Coords', 9, 13, 12, 8, '2023-08-10 12:05:04', 'Sortea'),
(4, 7, 1, 'Coords', 7, 8, 11, 9, '2023-08-10 12:06:23', 'Sortea'),
(5, 10, 1, 'Coords', 7, 11, 13, 9, '2023-08-10 14:06:53', 'Sortea'),
(6, 11, 1, 'Coords', 8, 7, 12, 11, '2023-08-11 11:11:44', 'Sortea'),
(7, 3, 1, 'Coords', 2, 3, 4, 1, '2023-10-25 13:54:24', 'Sortea'),
(8, 4, 1, 'Coords', 3, 4, 1, 2, '2023-10-25 17:01:38', 'Sortea'),
(9, 2, 1, 'Coords', 4, 3, 1, 2, '2023-10-25 17:06:36', 'Intento 2'),
(10, 2, 1, 'Coords', 4, 3, 1, 2, '2023-10-25 17:07:04', 'Sorteo'),
(11, 1, 1, 'Coords', 4, 3, 2, 1, '2023-10-27 10:41:01', 'Intento 1'),
(12, 1, 1, 'Coords', 2, 3, 4, 1, '2023-10-27 10:47:47', 'Intento 2'),
(13, 1, 1, 'Coords', 4, 2, 3, 1, '2023-10-27 10:47:55', 'Intento 3'),
(14, 1, 1, 'Coords', 4, 2, 3, 1, '2023-10-27 10:48:32', 'Intento 4'),
(15, 1, 1, 'Coords', 4, 2, 3, 1, '2023-10-27 10:50:19', 'Intento 5'),
(16, 7, 1, 'Coords', 2, 3, 4, 1, '2023-10-27 12:18:42', 'Sortea'),
(17, 6, 1, 'Coords', 0, 0, 0, 1, '2023-10-27 12:19:12', 'Sortea'),
(18, 8, 1, 'Coords', 0, 0, 0, 1, '2023-11-06 10:07:41', 'Sortea'),
(19, 9, 1, 'Coords', 3, 4, 1, 2, '2023-11-07 10:12:24', 'Sortea'),
(20, 10, 1, 'Coords', 4, 2, 1, 3, '2023-11-07 11:05:27', 'Sortea'),
(21, 11, 1, 'Coords', 4, 3, 1, 2, '2023-11-07 12:00:53', 'Intento 2'),
(22, 11, 1, 'Coords', 4, 3, 1, 2, '2023-11-07 12:01:30', 'Sorteo'),
(23, 14, 1, 'Coords', 3, 4, 1, 2, '2023-11-28 09:45:43', 'Sortea'),
(24, 15, 1, 'Coords', 4, 3, 1, 2, '2023-11-29 12:55:40', 'Sortea'),
(25, 16, 1, 'Coords', 3, 4, 1, 2, '2023-12-04 11:16:18', 'Sortea'),
(26, 17, 1, 'Coords', 4, 3, 1, 2, '2023-12-04 12:24:59', 'Sortea'),
(27, 18, 1, 'Coords', 3, 2, 1, 4, '2023-12-04 13:03:49', 'Intento 1'),
(28, 18, 1, 'Coords', 3, 2, 1, 4, '2023-12-04 13:04:18', 'Intento 2'),
(29, 18, 1, 'Coords', 3, 2, 1, 4, '2023-12-04 13:04:42', 'Sorteo'),
(30, 19, 1, 'Coords', 4, 3, 2, 1, '2023-12-20 10:25:25', 'Sortea'),
(31, 20, 1, 'Coords', 3, 4, 2, 1, '2023-12-20 15:20:28', 'Sortea'),
(32, 21, 1, 'Coords', 3, 4, 2, 1, '2023-12-20 15:21:05', 'Sortea'),
(33, 23, 1, 'Coords', 2, 4, 3, 1, '2023-12-20 15:21:31', 'Sortea'),
(34, 22, 1, 'Coords', 2, 3, 4, 1, '2023-12-20 15:21:58', 'Sortea'),
(35, 25, 1, 'Coords', 4, 3, 2, 1, '2023-12-20 15:22:20', 'Sortea'),
(36, 26, 1, 'Coords', 2, 3, 4, 1, '2023-12-20 15:22:57', 'Sortea'),
(37, 27, 1, 'Coords', 2, 3, 4, 1, '2023-12-20 15:23:31', 'Sortea'),
(38, 28, 1, 'Coords', 3, 4, 2, 1, '2023-12-20 16:00:04', 'Sortea'),
(39, 29, 1, 'Coords', 4, 3, 2, 1, '2023-12-20 16:36:05', 'Sortea');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesProyHabs`
--

CREATE TABLE `tesProyHabs` (
  `Id` int(11) NOT NULL,
  `IdTram` int(11) NOT NULL,
  `Codigo` varchar(10) NOT NULL,
  `IdDocente` int(11) NOT NULL,
  `PosJurado` int(11) NOT NULL,
  `Motivo` varchar(300) NOT NULL,
  `FechSort` datetime NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesSustenAct`
--

CREATE TABLE `tesSustenAct` (
  `Id` int(11) NOT NULL,
  `IdTramite` int(11) NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `Dictamen` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Num` int(11) NOT NULL,
  `Obs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesSustens`
--

CREATE TABLE `tesSustens` (
  `Id` int(11) NOT NULL,
  `Activo` int(4) NOT NULL DEFAULT '1',
  `Tipo` int(11) NOT NULL DEFAULT '1',
  `IdBorrador` int(11) NOT NULL,
  `IdTramite` int(11) NOT NULL,
  `Codigo` varchar(12) NOT NULL,
  `Fecha` datetime NOT NULL,
  `FechaDic` date NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `Lugar` varchar(100) NOT NULL,
  `obs` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tesSustens`
--

INSERT INTO `tesSustens` (`Id`, `Activo`, `Tipo`, `IdBorrador`, `IdTramite`, `Codigo`, `Fecha`, `FechaDic`, `IdCarrera`, `Lugar`, `obs`) VALUES
(1, 1, 1, 2, 2, '2020-002', '2023-08-12 12:00:00', '2023-08-08', 1, 'Auditorio de Ingenierìa informàtica y Sistemas', ''),
(2, 1, 1, 10, 10, '2020-010', '2023-08-08 11:00:00', '2023-08-08', 3, 'auditorio', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesSustensSolic`
--

CREATE TABLE `tesSustensSolic` (
  `Id` int(4) NOT NULL,
  `Estado` int(3) NOT NULL,
  `IdTramite` int(7) NOT NULL,
  `IdTesista` int(11) NOT NULL,
  `IdCarrera` int(4) NOT NULL,
  `UrlRepo` varchar(300) NOT NULL,
  `FechDic` date NOT NULL,
  `FechSusten` date NOT NULL,
  `FileDiapo` varchar(200) NOT NULL,
  `DateSolic` datetime NOT NULL,
  `DateModif` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Obs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesTramDoc`
--

CREATE TABLE `tesTramDoc` (
  `Id` int(11) NOT NULL,
  `Tipo` int(2) NOT NULL,
  `IdTramite` int(11) NOT NULL,
  `Title` varchar(350) CHARACTER SET utf8 NOT NULL,
  `Abstract` text CHARACTER SET utf8 NOT NULL,
  `Keywords` varchar(99) CHARACTER SET utf8 NOT NULL,
  `Conclus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tesTramDoc`
--

INSERT INTO `tesTramDoc` (`Id`, `Tipo`, `IdTramite`, `Title`, `Abstract`, `Keywords`, `Conclus`) VALUES
(1, 1, 1, 'RQ', 'rt', 'erter', ''),
(2, 1, 2, 'TITULO ', 'ndfweljkntge', 'sdfsdf', ''),
(3, 1, 3, '111223', '123', '123', ''),
(4, 1, 2, 'TITULO ', 'fref', 'fefg lmdnglvjevngjngkjeg', '*'),
(5, 2, 2, 'TITULO ', 'dfgfdfg', 'dfgdfg', 'fgddfgdfg'),
(6, 3, 2, 'TITULO ', 'sdcdfsg', 'fddgf', 'dggggggggg'),
(7, 1, 4, 'PRUEBA', 'Prueba', 'prueba', ''),
(8, 1, 3, '111223', 'prueba', 'prueba', '*'),
(9, 1, 5, '123', '132', '123', ''),
(10, 1, 6, '123', '123', '1232', ''),
(11, 1, 7, '123', 'ffdh', 'sdggf', ''),
(12, 1, 8, 'RFE', 'erg', 'er', ''),
(13, 1, 9, '123', '3345', '2344', ''),
(14, 1, 10, 'DW', 'we', 'e', ''),
(15, 1, 11, 'DMINAS 2', 'Dminas 2', 'Dminas 2', ''),
(16, 1, 11, 'DMINAS 2', 'de', '3', '*'),
(17, 1, 10, 'DW', 'a', 'AS', '*'),
(18, 2, 10, 'DW', 'g', 'g', 'g'),
(19, 3, 10, 'DW', 'w', 'e', 'e'),
(20, 1, 12, 'SDFDF', 'dfd', 'dfgdg', ''),
(21, 1, 13, 'A', 'as', 'AS', ''),
(22, 1, 14, 'SA', 'sa', 'Dminas 2', ''),
(23, 1, 15, 'RT', '5t', 'rt', ''),
(24, 1, 1, 'GRAVIDA NEQUE. ADIPISCING TRISTIQUE RISUS NEC FEUGIAT IN FERMENTUM POSUERE URNA NEC. IMPERDIET SED EUISMOD NISI PORTA ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Non diam phasellus vestibulum lorem. Lacus suspendisse faucibus interdum posuere lorem. Tristique sollicitudin nibh sit amet commodo. Luctus venenatis lectus magna fringilla urna porttitor rhoncus dolor. Sollicitudin nibh sit amet commodo nulla facilisi nullam. Neque vitae tempus quam pellentesque. Adipiscing elit ut aliquam purus sit amet. Nunc eget lorem dolor sed viverra. Ac placerat vestibulum lectus mauris ultrices eros. Metus aliquam eleifend mi in nulla posuere. Ultricies lacus sed turpis tincidunt id aliquet. Dictum sit amet justo donec enim diam vulputate ut pharetra. Orci nulla pellentesque dignissim enim sit. Ultrices neque ornare aenean euismod elementum nisi. Tempor nec feugiat nisl pretium fusce id. Commodo elit at imperdiet dui. Ultricies lacus sed turpis tincidunt id aliquet. Sociis natoque penatibus et magnis. Libero enim sed faucibus turpis in eu mi bibendum neque.\r\n\r\nConsectetur lorem donec massa sapien faucibus et molestie ac. Gravida cum sociis natoque penatibus et magnis dis parturient. Tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Fermentum iaculis eu non diam phasellus vestibulum. Ut ornare lectus sit amet est placerat in egestas. Metus aliquam eleifend mi in nulla posuere sollicitudin. Morbi tristique senectus et netus et malesuada. Feugiat pretium nibh ipsum consequat nisl vel. Enim praesent elementum facilisis leo vel. Sagittis orci a scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo. Diam sollicitudin tempor id eu nisl. At lectus urna duis convallis convallis.\r\n\r\nPurus sit amet luctus venenatis lectus magna fringilla. Hac habitasse platea dictumst quisque. Rhoncus urna neque viverra justo nec ultrices dui sapien. Pellentesque id nibh tortor id. Sit amet commodo nulla facilisi nullam vehicula. Pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Blandit volutpat maecenas volutpat blandit aliquam etiam. Dictum fusce ut placerat orci nulla pellentesque. Ut porttitor leo a diam sollicitudin. Nulla pellentesque dignissim enim sit amet venenatis. Nec tincidunt praesent semper feugiat nibh sed pulvinar proin gravida. Id leo in vitae turpis massa sed elementum tempus egestas. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nOrnare lectus sit amet est placerat. Dapibus ultrices in iaculis nunc. Ultrices mi tempus imperdiet nulla. Nunc sed blandit libero volutpat sed. Senectus et netus et malesuada fames ac. Quam quisque id diam vel. Morbi tempus iaculis urna id volutpat lacus. Lacinia at quis risus sed. Molestie a iaculis at erat pellentesque adipiscing commodo elit. Est ultricies integer quis auctor elit sed vulputate.\r\n\r\nPulvinar proin gravida hendrerit lectus. In est ante in nibh mauris cursus mattis. Nunc mattis enim ut tellus elementum sagittis vitae et leo. Est sit amet facilisis magna etiam tempor. Velit dignissim sodales ut eu sem integer. Non quam lacus suspendisse faucibus interdum posuere lorem ipsum. Tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sit amet purus gravida quis. Sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus. Pellentesque habitant morbi tristique senectus et netus. Enim eu turpis egestas pretium aenean pharetra magna ac. Tristique senectus et netus et malesuada fames ac turpis egestas. Vitae purus faucibus ornare suspendisse sed nisi lacus sed viverra. Odio aenean sed adipiscing diam donec adipiscing. Ultrices vitae auctor eu augue ut lectus arcu bibendum.\r\n\r\nUrna duis convallis convallis tellus id interdum velit laoreet id. Lorem sed risus ultricies tristique nulla aliquet enim tortor. Nisi lacus sed viverra tellus in. Massa sed elementum tempus egestas. Lacus vel facilisis volutpat est velit egestas dui id ornare. Elit ut aliquam purus sit amet luctus. Diam maecenas ultricies mi eget mauris pharetra et ultrices. Aenean et tortor at risus viverra. Vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Adipiscing at in tellus integer feugiat. Aliquam sem fringilla ut morbi tincidunt augue interdum velit.\r\n\r\nEu non diam phasellus vestibulum. Convallis aenean et tortor at. Ac felis donec et odio pellentesque diam. Magnis dis parturient montes nascetur ridiculus mus mauris vitae. Sed felis eget velit aliquet sagittis id. A scelerisque purus semper eget duis at. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Gravida quis blandit turpis cursus. Nibh sit amet commodo nulla. Metus aliquam eleifend mi in nulla posuere. Nulla facilisi cras fermentum odio eu feugiat pretium nibh ipsum. Dignissim enim sit amet venenatis urna cursus. Sapien eget mi proin sed libero enim sed faucibus turpis. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Congue eu consequat ac felis donec et odio pellentesque diam. Porttitor massa id neque aliquam vestibulum morbi blandit cursus. Faucibus purus in massa tempor nec feugiat nisl. Eu turpis egestas pretium aenean pharetra magna ac. Gravida rutrum quisque non tellus orci ac auctor augue. Urna porttitor rhoncus dolor purus non enim.\r\n\r\nDictum fusce ut placerat orci nulla. Malesuada proin libero nunc consequat interdum varius. Adipiscing bibendum est ultricies integer quis auctor elit. Donec ac odio tempor orci dapibus ultrices in. Ornare lectus sit amet est placerat in egestas erat. Amet luctus venenatis lectus magna fringilla urna porttitor. Sit amet purus gravida quis blandit turpis cursus. Sed viverra tellus in hac. Aliquet bibendum enim facilisis gravida neque. Porttitor rhoncus dolor purus non enim praesent.\r\n\r\nMorbi tempus iaculis urna id volutpat lacus laoreet non curabitur. Sit amet massa vitae tortor. Commodo quis imperdiet massa tincidunt nunc pulvinar sapien et ligula. Risus nullam eget felis eget nunc. Urna id volutpat lacus laoreet non. Et ligula ullamcorper malesuada proin libero nunc. Nulla aliquet enim tortor at auctor. Fusce ut placerat orci nulla pellentesque dignissim enim sit. Lectus mauris ultrices eros in cursus. Rhoncus dolor purus non enim praesent. Velit ut tortor pretium viverra suspendisse potenti nullam ac. Elit ullamcorper dignissim cras tincidunt lobortis feugiat. Pharetra vel turpis nunc eget lorem dolor sed viverra ipsum. Accumsan tortor posuere ac ut consequat semper viverra nam. Nisl suscipit adipiscing bibendum est ultricies integer quis. Lacus sed viverra tellus in hac habitasse. Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin. Sit amet nulla facilisi morbi tempus iaculis urna. Urna neque viverra justo nec. Fusce id velit ut tortor pretium viverra suspendisse.\r\n\r\nEuismod lacinia at quis risus sed vulputate. Vel quam elementum pulvinar etiam non quam lacus suspendisse. Amet commodo nulla facilisi nullam vehicula ipsum. Auctor neque vitae tempus quam pellentesque nec nam aliquam sem. Adipiscing vitae proin sagittis nisl rhoncus mattis. Proin fermentum leo vel orci porta non. Pretium quam vulputate dignissim suspendisse in est ante in nibh. Cras adipiscing enim eu turpis. Phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Egestas diam in arcu cursus euismod quis.\r\n\r\nMauris vitae ultricies leo integer malesuada nunc vel risus commodo. Praesent semper feugiat nibh sed. Venenatis a condimentum vitae sapien pellentesque habitant. Ornare massa eget egestas purus viverra. Hac habitasse platea dictumst quisque sagittis. Semper eget duis at tellus at. Ante in nibh mauris cursus mattis molestie a. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius. Aliquam nulla facilisi cras fermentum odio eu feugiat pretium nibh. Mauris a diam maecenas sed. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Scelerisque viverra mauris in aliquam. Posuere urna nec tincidunt praesent. Donec pretium vulputate sapien nec. Turpis in eu mi bibendum neque egestas congue quisque. Blandit aliquam etiam erat velit scelerisque in dictum non.\r\n\r\nFacilisi nullam vehicula ipsum a arcu cursus. Senectus et netus et malesuada fames ac. Est placerat in egestas erat imperdiet sed euismod. Aliquet nec ullamcorper sit amet risus. Morbi tempus iaculis urna id volutpat. Nulla aliquet enim tortor at. Consequat nisl vel pretium lectus quam. Et netus et malesuada fames ac turpis. Tincidunt tortor aliquam nulla facilisi. Orci eu lobortis elementum nibh tellus molestie nunc. Sem integer vitae justo eget. Sit amet luctus venenatis lectus. Bibendum enim facilisis gravida neque convallis a.\r\n\r\nPorta non pulvinar neque laoreet. Pellentesque diam volutpat commodo sed egestas. Leo vel fringilla est ullamcorper eget nulla facilisi. Posuere sollicitudin aliquam ultrices sagittis. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Vel facilisis volutpat est velit egestas dui id. Amet massa vitae tortor condimentum lacinia. Dis parturient montes nascetur ridiculus mus mauris vitae ultricies leo. Euismod lacinia at quis risus sed vulputate odio ut. Vitae congue eu consequat ac felis donec. Vulputate mi sit amet mauris commodo quis. Nisi est sit amet facilisis magna etiam tempor. Massa enim nec dui nunc mattis enim ut tellus. At tellus at urna condimentum mattis. Mauris augue neque gravida in fermentum et sollicitudin ac.\r\n\r\nFringilla est ullamcorper eget nulla facilisi etiam dignissim diam. In dictum non consectetur a erat nam. Ultrices in iaculis nunc sed augue lacus viverra vitae congue. Elementum pulvinar etiam non quam lacus suspendisse. Tempor commodo ullamcorper a lacus vestibulum sed. Purus faucibus ornare suspendisse sed nisi lacus sed. Malesuada bibendum arcu vitae elementum curabitur vitae nunc. Feugiat nisl pretium fusce id velit ut. Ornare quam viverra orci sagittis eu volutpat odio facilisis. Dolor purus non enim praesent elementum facilisis leo vel. Bibendum at varius vel pharetra. Lectus arcu bibendum at varius vel pharetra vel turpis. Tristique nulla aliquet enim tortor. Ornare lectus sit amet est placerat in egestas erat. Malesuada fames ac turpis egestas sed tempus urna. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Vitae aliquet nec ullamcorper sit amet risus.\r\n\r\nVitae elementum curabitur vitae nunc sed. Lectus magna fringilla urna porttitor. Dictum non consectetur a erat nam at. Id leo in vitae turpis massa sed elementum tempus egestas. Risus quis varius quam quisque id. Venenatis cras sed felis eget velit aliquet sagittis id. Laoreet non curabitur gravida arcu. Eget gravida cum sociis natoque penatibus. Aliquam faucibus purus in massa tempor nec. Velit egestas dui id ornare arcu. Odio euismod lacinia at quis risus sed vulputate odio. Ullamcorper morbi tincidunt ornare massa. Lectus urna duis convallis convallis tellus id interdum velit. Lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor. Ut placerat orci nulla pellentesque. Diam ut venenatis tellus in metus. Morbi blandit cursus risus at. Neque sodales ut etiam sit amet.\r\n\r\nMauris cursus mattis molestie a iaculis at. Et malesuada fames ac turpis egestas maecenas pharetra. Tortor aliquam nulla facilisi cras fermentum odio. Habitasse platea dictumst quisque sagittis. Eget mi proin sed libero. Amet porttitor eget dolor morbi non. Sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur. Ultrices vitae auctor eu augue ut lectus arcu bibendum at. A diam maecenas sed enim ut sem. Ultricies lacus sed turpis tincidunt id aliquet risus. Lorem mollis aliquam ut porttitor. Amet justo donec enim diam vulputate ut pharetra.\r\n\r\nUrna id volutpat lacus laoreet. Interdum posuere lorem ipsum dolor sit amet consectetur adipiscing elit. Urna molestie at elementum eu. Quis enim lobortis scelerisque fermentum dui faucibus in ornare quam. Libero enim sed faucibus turpis in eu. Augue ut lectus arcu bibendum at. Pellentesque massa placerat duis ultricies lacus sed turpis tincidunt id. Non arcu risus quis varius. Odio facilisis mauris sit amet massa vitae tortor condimentum lacinia. Dictum varius duis at consectetur lorem donec massa sapien faucibus. Vitae tortor condimentum lacinia quis vel eros donec ac. Pellentesque habitant morbi tristique senectus et. Tellus id interdum velit laoreet id donec ultrices tincidunt arcu. Mi tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Diam volutpat commodo sed egestas. Massa tincidunt dui ut ornare lectus sit amet est placerat.\r\n\r\nBibendum arcu vitae elementum curabitur. Faucibus pulvinar elementum integer enim neque. Vitae proin sagittis nisl rhoncus mattis rhoncus. Fermentum posuere urna nec tincidunt praesent semper. Id volutpat lacus laoreet non curabitur gravida. Vestibulum sed arcu non odio euismod. Ipsum a arcu cursus vitae congue. Interdum varius sit amet mattis vulputate enim nulla aliquet. Amet venenatis urna cursus eget nunc scelerisque viverra mauris in. Turpis in eu mi bibendum neque egestas congue quisque. Turpis egestas sed tempus urna et pharetra pharetra. Ipsum dolor sit amet consectetur adipiscing elit. Condimentum lacinia quis vel eros donec ac odio tempor. Sagittis purus sit amet volutpat consequat mauris nunc congue nisi. Quis lectus nulla at volutpat diam ut venenatis tellus in. Purus in massa tempor nec feugiat nisl pretium fusce id. At varius vel pharetra vel turpis nunc eget lorem. Feugiat nisl pretium fusce id velit ut. Phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.\r\n\r\nFacilisi etiam dignissim diam quis enim lobortis. Et tortor at risus viverra adipiscing. Volutpat lacus laoreet non curabitur gravida arcu ac. Justo eget magna fermentum iaculis. Euismod elementum nisi quis eleifend quam adipiscing vitae proin. Elit at imperdiet dui accumsan sit amet nulla facilisi morbi. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Convallis tellus id interdum velit laoreet id. Suscipit tellus mauris a diam. Quis commodo odio aenean sed adipiscing diam donec adipiscing. Urna id volutpat lacus laoreet non curabitur gravida arcu. Magna sit amet purus gravida. Vel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam. Tortor dignissim convallis aenean et tortor at risus. Dui vivamus arcu felis bibendum ut tristique et.\r\n\r\nUllamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas. Curabitur gravida arcu ac tortor dignissim convallis aenean. Tortor id aliquet lectus proin. Vel fringilla est ullamcorper eget nulla facilisi etiam dignissim. Duis at consectetur lorem donec massa sapien. Id diam vel quam elementum pulvinar etiam non. Nunc sed augue lacus viverra vitae congue eu. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius. Semper auctor neque vitae tempus quam pellentesque nec nam. Pharetra diam sit amet nisl. Placerat vestibulum lectus mauris ultrices eros in. Quis auctor elit sed vulputate mi sit amet mauris. Iaculis at erat pellentesque adipiscing commodo elit at imperdiet. Etiam dignissim diam quis enim lobortis scelerisque fermentum. Id donec ultrices tincidunt arcu non sodales neque. Suspendisse ultrices gravida dictum fusce. Turpis cursus in hac habitasse platea dictumst quisque. Aliquet bibendum enim facilisis gravida neque. Adipiscing tristique risus nec feugiat in fermentum posuere urna nec. Imperdiet sed euismod nisi porta lorem mollis aliquam ut porttitor.', 'lorem mollis aliquam ut porttitor.', '');
INSERT INTO `tesTramDoc` (`Id`, `Tipo`, `IdTramite`, `Title`, `Abstract`, `Keywords`, `Conclus`) VALUES
(25, 1, 2, 'CONGUE EU CONSEQUAT AC FELIS. NIBH NISL CONDIMENTUM ID VENENATIS A CONDIMENTUM VITAE SAPIEN.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vestibulum sed arcu non odio. Vitae suscipit tellus mauris a diam. Amet facilisis magna etiam tempor orci. Purus viverra accumsan in nisl. Adipiscing enim eu turpis egestas pretium aenean. Eget sit amet tellus cras. A diam sollicitudin tempor id eu. Consequat interdum varius sit amet mattis vulputate enim. At tempor commodo ullamcorper a lacus vestibulum sed arcu. Sed pulvinar proin gravida hendrerit lectus a. Mollis nunc sed id semper risus in hendrerit gravida. Lectus arcu bibendum at varius vel pharetra vel turpis nunc. Enim lobortis scelerisque fermentum dui faucibus in ornare quam viverra. Velit aliquet sagittis id consectetur purus ut faucibus pulvinar elementum. At augue eget arcu dictum varius duis at consectetur. Dictum at tempor commodo ullamcorper a lacus. A pellentesque sit amet porttitor eget dolor morbi non. Non quam lacus suspendisse faucibus interdum posuere. Accumsan tortor posuere ac ut consequat semper viverra nam.\r\n\r\nId volutpat lacus laoreet non curabitur gravida. Auctor neque vitae tempus quam pellentesque. Adipiscing elit duis tristique sollicitudin nibh sit amet commodo nulla. Mauris in aliquam sem fringilla ut morbi tincidunt. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Dignissim sodales ut eu sem integer vitae justo eget. Enim neque volutpat ac tincidunt vitae semper quis lectus nulla. Semper auctor neque vitae tempus quam. Diam vel quam elementum pulvinar etiam non quam lacus suspendisse. Pulvinar etiam non quam lacus suspendisse faucibus interdum. Gravida in fermentum et sollicitudin ac orci phasellus. Cursus turpis massa tincidunt dui. Lacus vestibulum sed arcu non odio euismod lacinia at quis. Velit aliquet sagittis id consectetur purus ut faucibus pulvinar elementum. Vel pharetra vel turpis nunc eget lorem. Aliquam nulla facilisi cras fermentum. Lobortis elementum nibh tellus molestie nunc.\r\n\r\nIn est ante in nibh mauris cursus. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare. Turpis egestas maecenas pharetra convallis posuere morbi. Consectetur adipiscing elit ut aliquam. Lectus arcu bibendum at varius vel pharetra vel turpis nunc. Aliquam purus sit amet luctus venenatis. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat. Euismod in pellentesque massa placerat duis ultricies lacus sed turpis. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Mauris ultrices eros in cursus turpis massa. Justo laoreet sit amet cursus sit amet dictum sit amet. Et tortor at risus viverra adipiscing at in. Interdum velit euismod in pellentesque massa placerat duis ultricies lacus. Morbi tempus iaculis urna id volutpat lacus laoreet non curabitur. Tempor nec feugiat nisl pretium fusce. Fames ac turpis egestas integer. Non odio euismod lacinia at quis risus sed. Vestibulum lorem sed risus ultricies tristique.\r\n\r\nErat velit scelerisque in dictum non consectetur a. Neque vitae tempus quam pellentesque. Aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc. Egestas sed sed risus pretium quam vulputate. Urna duis convallis convallis tellus id interdum velit laoreet id. Sagittis id consectetur purus ut faucibus pulvinar elementum. Tristique senectus et netus et malesuada fames ac turpis egestas. Proin sed libero enim sed faucibus turpis in eu. Pellentesque habitant morbi tristique senectus et netus et malesuada. Dui nunc mattis enim ut tellus elementum sagittis vitae et. Feugiat scelerisque varius morbi enim. Sagittis orci a scelerisque purus semper eget duis.\r\n\r\nUt venenatis tellus in metus vulputate eu scelerisque. In fermentum posuere urna nec. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum. Pellentesque adipiscing commodo elit at imperdiet dui accumsan sit. Lacinia at quis risus sed vulputate odio ut enim. Vitae turpis massa sed elementum tempus. Neque ornare aenean euismod elementum nisi. Hac habitasse platea dictumst quisque sagittis purus sit. Quisque non tellus orci ac auctor augue mauris augue neque. Consectetur a erat nam at lectus urna duis convallis convallis. Urna cursus eget nunc scelerisque viverra. Scelerisque varius morbi enim nunc faucibus a. Amet tellus cras adipiscing enim eu.\r\n\r\nCursus eget nunc scelerisque viverra mauris. Nec sagittis aliquam malesuada bibendum. A pellentesque sit amet porttitor eget dolor morbi. Accumsan sit amet nulla facilisi morbi tempus. In hac habitasse platea dictumst vestibulum rhoncus. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet non. Pulvinar pellentesque habitant morbi tristique senectus et netus. Placerat in egestas erat imperdiet sed euismod nisi. Vitae sapien pellentesque habitant morbi tristique. Quis risus sed vulputate odio ut enim blandit volutpat maecenas. Pharetra sit amet aliquam id diam maecenas. Posuere ac ut consequat semper viverra nam libero justo. Volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque in. Tincidunt eget nullam non nisi est. Eget nunc scelerisque viverra mauris in aliquam sem fringilla. Lacus laoreet non curabitur gravida arcu ac.\r\n\r\nAuctor neque vitae tempus quam pellentesque nec. Vel orci porta non pulvinar neque laoreet suspendisse interdum. Orci porta non pulvinar neque laoreet suspendisse. Iaculis eu non diam phasellus vestibulum. Est sit amet facilisis magna etiam tempor orci eu lobortis. Eget aliquet nibh praesent tristique magna sit amet purus gravida. Nunc sed id semper risus. Volutpat est velit egestas dui id. Nunc lobortis mattis aliquam faucibus purus. Malesuada fames ac turpis egestas sed tempus urna. Rhoncus est pellentesque elit ullamcorper. Vestibulum lorem sed risus ultricies. Arcu risus quis varius quam quisque id diam. Quam lacus suspendisse faucibus interdum. Massa tempor nec feugiat nisl pretium fusce id velit ut. Id ornare arcu odio ut. Mauris nunc congue nisi vitae suscipit. Quis blandit turpis cursus in. Velit sed ullamcorper morbi tincidunt ornare. Cursus in hac habitasse platea dictumst.\r\n\r\nIn nulla posuere sollicitudin aliquam ultrices sagittis orci a. Commodo elit at imperdiet dui accumsan sit. Quisque id diam vel quam elementum. Dui vivamus arcu felis bibendum ut tristique et egestas. Tempor orci dapibus ultrices in iaculis. Neque gravida in fermentum et. Duis tristique sollicitudin nibh sit. Feugiat scelerisque varius morbi enim nunc. Massa sapien faucibus et molestie ac feugiat sed lectus. Velit ut tortor pretium viverra. Vitae turpis massa sed elementum tempus egestas. Nisl rhoncus mattis rhoncus urna neque viverra justo nec.\r\n\r\nAt tellus at urna condimentum mattis pellentesque id. Morbi enim nunc faucibus a pellentesque sit amet. Massa tempor nec feugiat nisl pretium. Ut tortor pretium viverra suspendisse potenti. Neque ornare aenean euismod elementum nisi. Dictum varius duis at consectetur lorem donec massa sapien. Malesuada proin libero nunc consequat interdum varius sit amet mattis. Ut placerat orci nulla pellentesque dignissim enim sit amet. Massa eget egestas purus viverra accumsan in nisl. Sagittis orci a scelerisque purus semper eget duis at tellus. Nunc non blandit massa enim nec dui nunc mattis. Bibendum neque egestas congue quisque egestas diam in. Pellentesque habitant morbi tristique senectus et netus. Semper auctor neque vitae tempus. Nibh nisl condimentum id venenatis a. Ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Porttitor lacus luctus accumsan tortor posuere ac ut consequat semper. Rhoncus mattis rhoncus urna neque viverra justo nec. Cursus euismod quis viverra nibh cras pulvinar mattis nunc sed.\r\n\r\nQuis eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis. Semper risus in hendrerit gravida rutrum quisque non. Justo donec enim diam vulputate ut pharetra sit amet. Nam aliquam sem et tortor. Orci a scelerisque purus semper eget. Tempor commodo ullamcorper a lacus vestibulum sed arcu non. Euismod lacinia at quis risus. Faucibus turpis in eu mi bibendum. Pharetra massa massa ultricies mi quis hendrerit dolor. Magna fermentum iaculis eu non. Nec nam aliquam sem et tortor. Pellentesque adipiscing commodo elit at. Lobortis scelerisque fermentum dui faucibus in ornare quam viverra. Netus et malesuada fames ac turpis egestas integer. Massa vitae tortor condimentum lacinia. Id aliquet risus feugiat in ante. Quis commodo odio aenean sed adipiscing diam. Sem integer vitae justo eget magna fermentum iaculis.\r\n\r\nElementum integer enim neque volutpat ac tincidunt vitae semper quis. Tellus orci ac auctor augue mauris augue. Vulputate enim nulla aliquet porttitor lacus. Ullamcorper sit amet risus nullam eget felis eget. Sapien nec sagittis aliquam malesuada bibendum. Vitae et leo duis ut diam quam nulla. Venenatis tellus in metus vulputate eu scelerisque felis. Et sollicitudin ac orci phasellus egestas tellus rutrum tellus. Varius sit amet mattis vulputate enim nulla aliquet. Sed adipiscing diam donec adipiscing tristique. Nulla facilisi etiam dignissim diam quis enim. Pharetra et ultrices neque ornare. Sit amet tellus cras adipiscing enim eu turpis egestas. Posuere urna nec tincidunt praesent semper feugiat nibh. Suscipit adipiscing bibendum est ultricies integer quis. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Lacus laoreet non curabitur gravida arcu ac. Gravida rutrum quisque non tellus orci ac auctor.\r\n\r\nNunc id cursus metus aliquam eleifend mi in. Morbi tincidunt ornare massa eget egestas purus viverra accumsan. Sagittis orci a scelerisque purus semper eget. Mauris rhoncus aenean vel elit. Aliquam sem et tortor consequat id porta nibh venenatis. Morbi blandit cursus risus at ultrices mi. Dolor sit amet consectetur adipiscing elit duis. Aliquet enim tortor at auctor urna nunc id cursus metus. Sit amet porttitor eget dolor morbi non. Faucibus et molestie ac feugiat sed lectus vestibulum mattis ullamcorper.\r\n\r\nScelerisque in dictum non consectetur a erat. Urna duis convallis convallis tellus. Posuere morbi leo urna molestie at elementum eu facilisis. Gravida rutrum quisque non tellus orci. Sed augue lacus viverra vitae congue eu consequat. Lectus arcu bibendum at varius vel pharetra vel. Est pellentesque elit ullamcorper dignissim cras tincidunt. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum. Suspendisse sed nisi lacus sed viverra tellus in hac habitasse. Quam quisque id diam vel quam elementum pulvinar etiam. Nunc sed velit dignissim sodales ut eu. Quis enim lobortis scelerisque fermentum. Eget egestas purus viverra accumsan in nisl nisi scelerisque eu. Faucibus ornare suspendisse sed nisi lacus. Lacus sed turpis tincidunt id. Viverra maecenas accumsan lacus vel facilisis volutpat est. Elementum pulvinar etiam non quam lacus.\r\n\r\nNec feugiat nisl pretium fusce id velit. Morbi tempus iaculis urna id volutpat lacus laoreet non. Euismod lacinia at quis risus sed vulputate odio. Eu facilisis sed odio morbi quis commodo odio aenean. Gravida neque convallis a cras semper auctor neque vitae tempus. Malesuada proin libero nunc consequat interdum. Tempus iaculis urna id volutpat lacus laoreet non curabitur. Urna nec tincidunt praesent semper feugiat nibh. Lacus luctus accumsan tortor posuere ac ut. Urna et pharetra pharetra massa massa ultricies mi quis.\r\n\r\nSollicitudin tempor id eu nisl nunc mi. Ultricies integer quis auctor elit sed. Felis bibendum ut tristique et egestas quis ipsum suspendisse. Tincidunt praesent semper feugiat nibh sed pulvinar proin gravida hendrerit. Interdum velit laoreet id donec ultrices tincidunt arcu. Amet tellus cras adipiscing enim eu turpis egestas pretium. Nisl condimentum id venenatis a condimentum vitae sapien. Fames ac turpis egestas integer eget aliquet nibh. Donec massa sapien faucibus et molestie ac feugiat. Suscipit adipiscing bibendum est ultricies integer quis. Mattis molestie a iaculis at erat. Ullamcorper morbi tincidunt ornare massa eget egestas purus. Parturient montes nascetur ridiculus mus mauris vitae ultricies. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Ut sem nulla pharetra diam sit amet nisl. Magna fringilla urna porttitor rhoncus dolor purus. Nunc sed blandit libero volutpat sed cras ornare arcu dui. Ac feugiat sed lectus vestibulum mattis. Sit amet volutpat consequat mauris nunc congue nisi vitae suscipit.\r\n\r\nSed vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Justo laoreet sit amet cursus sit amet dictum sit amet. Diam maecenas sed enim ut sem viverra aliquet. Dui ut ornare lectus sit amet est placerat. Nunc mi ipsum faucibus vitae aliquet nec. Mauris pharetra et ultrices neque ornare aenean euismod elementum nisi. Integer quis auctor elit sed vulputate mi sit amet mauris. Vel quam elementum pulvinar etiam. Sodales neque sodales ut etiam sit amet nisl purus. Consectetur adipiscing elit ut aliquam purus. Mattis enim ut tellus elementum sagittis vitae et. Consectetur a erat nam at lectus urna.\r\n\r\nDignissim sodales ut eu sem integer vitae. Pellentesque elit eget gravida cum sociis natoque penatibus. Proin nibh nisl condimentum id venenatis a condimentum vitae. Ac odio tempor orci dapibus ultrices in iaculis. Id interdum velit laoreet id. Enim diam vulputate ut pharetra sit amet aliquam id diam. Cursus vitae congue mauris rhoncus. Et ultrices neque ornare aenean euismod elementum. Ut ornare lectus sit amet est placerat in. Morbi tincidunt ornare massa eget egestas purus viverra accumsan. Bibendum enim facilisis gravida neque convallis a. Libero volutpat sed cras ornare. Aenean pharetra magna ac placerat.\r\n\r\nRutrum quisque non tellus orci ac auctor augue. Sit amet cursus sit amet dictum sit amet justo. Arcu ac tortor dignissim convallis aenean et tortor at. Metus aliquam eleifend mi in nulla posuere sollicitudin aliquam ultrices. Nunc scelerisque viverra mauris in aliquam sem fringilla ut. Tincidunt dui ut ornare lectus sit amet est placerat in. Et odio pellentesque diam volutpat commodo. Sit amet aliquam id diam maecenas ultricies mi eget. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Maecenas ultricies mi eget mauris pharetra et ultrices. Eget duis at tellus at urna condimentum mattis pellentesque id. Sit amet nulla facilisi morbi tempus iaculis urna. Id porta nibh venenatis cras sed. Urna duis convallis convallis tellus id interdum velit laoreet id.\r\n\r\nFaucibus turpis in eu mi. Fringilla urna porttitor rhoncus dolor purus non enim praesent elementum. Nisl rhoncus mattis rhoncus urna neque. Lectus mauris ultrices eros in cursus turpis massa tincidunt. Interdum velit euismod in pellentesque massa placerat duis ultricies. Et leo duis ut diam. Lobortis mattis aliquam faucibus purus. Condimentum lacinia quis vel eros donec ac odio. Nisi scelerisque eu ultrices vitae auctor eu augue ut lectus. Egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Nulla posuere sollicitudin aliquam ultrices sagittis orci. Neque aliquam vestibulum morbi blandit cursus risus.\r\n\r\nId interdum velit laoreet id donec. Montes nascetur ridiculus mus mauris. Ut morbi tincidunt augue interdum velit. Amet consectetur adipiscing elit ut aliquam purus sit amet. Sit amet consectetur adipiscing elit pellentesque habitant. Tellus orci ac auctor augue mauris augue neque gravida in. Adipiscing enim eu turpis egestas pretium. Urna condimentum mattis pellentesque id. Odio eu feugiat pretium nibh ipsum consequat nisl vel. Eget egestas purus viverra accumsan in nisl.\r\n\r\nBibendum enim facilisis gravida neque convallis a cras. Volutpat lacus laoreet non curabitur gravida arcu ac tortor. Tempor id eu nisl nunc mi ipsum faucibus vitae aliquet. Arcu vitae elementum curabitur vitae nunc sed. Libero justo laoreet sit amet cursus sit amet dictum. Malesuada proin libero nunc consequat interdum. Sit amet consectetur adipiscing elit ut. Maecenas pharetra convallis posuere morbi. Vel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam. At urna condimentum mattis pellentesque. Tempus imperdiet nulla malesuada pellentesque elit eget. Tincidunt augue interdum velit euismod in pellentesque massa. Fermentum posuere urna nec tincidunt praesent semper. Sed tempus urna et pharetra pharetra massa massa ultricies mi. Cursus euismod quis viverra nibh cras pulvinar mattis. Habitant morbi tristique senectus et netus et malesuada fames ac. Ullamcorper morbi tincidunt ornare massa eget egestas. Magna eget est lorem ipsum. Proin fermentum leo vel orci porta non.\r\n\r\nEnim eu turpis egestas pretium aenean pharetra magna. Lacus sed viverra tellus in. Mauris a diam maecenas sed enim ut. Dignissim cras tincidunt lobortis feugiat vivamus at augue. Magna sit amet purus gravida quis blandit. Sed cras ornare arcu dui vivamus arcu felis bibendum ut. Sed risus ultricies tristique nulla aliquet enim. Diam volutpat commodo sed egestas. Justo eget magna fermentum iaculis eu non diam phasellus. Libero volutpat sed cras ornare. Morbi tristique senectus et netus. Dis parturient montes nascetur ridiculus mus mauris.\r\n\r\nEt malesuada fames ac turpis egestas. Aenean sed adipiscing diam donec adipiscing tristique. Elementum pulvinar etiam non quam lacus. Augue eget arcu dictum varius duis. Consequat semper viverra nam libero justo laoreet sit amet. Mauris in aliquam sem fringilla. Erat velit scelerisque in dictum non consectetur. Orci eu lobortis elementum nibh tellus. Volutpat maecenas volutpat blandit aliquam. Nulla facilisi cras fermentum odio. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Tempor orci eu lobortis elementum nibh. Cras adipiscing enim eu turpis egestas. Tristique senectus et netus et malesuada. Enim tortor at auctor urna nunc id cursus. Diam in arcu cursus euismod quis viverra nibh cras pulvinar. Duis convallis convallis tellus id interdum velit laoreet id. Quis risus sed vulputate odio ut enim. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius.\r\n\r\nCursus mattis molestie a iaculis at erat pellentesque adipiscing. Libero nunc consequat interdum varius sit amet mattis. Vitae aliquet nec ullamcorper sit amet. Rhoncus est pellentesque elit ullamcorper dignissim cras. Laoreet non curabitur gravida arcu ac. Nullam vehicula ipsum a arcu cursus vitae. Lectus magna fringilla urna porttitor rhoncus dolor purus non enim. Urna et pharetra pharetra massa massa ultricies mi quis hendrerit. Bibendum ut tristique et egestas quis ipsum suspendisse ultrices gravida. Mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Nibh nisl condimentum id venenatis a condimentum vitae sapien pellentesque.\r\n\r\nSuspendisse potenti nullam ac tortor vitae purus. Sed adipiscing diam donec adipiscing tristique risus nec. Integer feugiat scelerisque varius morbi enim nunc faucibus a pellentesque. Et molestie ac feugiat sed lectus vestibulum mattis. Nec ultrices dui sapien eget mi. Condimentum vitae sapien pellentesque habitant morbi. Malesuada proin libero nunc consequat interdum. Nibh sit amet commodo nulla facilisi nullam. Feugiat in ante metus dictum at. Habitasse platea dictumst vestibulum rhoncus. Fermentum iaculis eu non diam phasellus vestibulum lorem sed. Eu scelerisque felis imperdiet proin fermentum leo. Ut lectus arcu bibendum at varius vel pharetra. Nullam eget felis eget nunc lobortis mattis aliquam. Sed cras ornare arcu dui vivamus. Duis tristique sollicitudin nibh sit amet commodo nulla. Tempus quam pellentesque nec nam aliquam sem et. Ac orci phasellus egestas tellus rutrum tellus.\r\n\r\nMagna sit amet purus gravida quis blandit. Elementum integer enim neque volutpat ac. Hendrerit dolor magna eget est lorem ipsum dolor sit. Odio ut enim blandit volutpat maecenas volutpat blandit aliquam. Fermentum leo vel orci porta non pulvinar neque laoreet. Libero id faucibus nisl tincidunt eget nullam non nisi est. Sed risus pretium quam vulputate dignissim suspendisse in. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Libero nunc consequat interdum varius sit amet mattis vulputate. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Amet venenatis urna cursus eget nunc. Ut venenatis tellus in metus vulputate. Faucibus nisl tincidunt eget nullam non.\r\n\r\nSagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae. Libero enim sed faucibus turpis in eu. Tincidunt praesent semper feugiat nibh sed. Varius vel pharetra vel turpis nunc eget. Diam quis enim lobortis scelerisque fermentum dui faucibus in ornare. Egestas egestas fringilla phasellus faucibus scelerisque eleifend. Ut eu sem integer vitae. Ipsum dolor sit amet consectetur adipiscing elit ut aliquam. A condimentum vitae sapien pellentesque. Elementum eu facilisis sed odio morbi quis. Commodo viverra maecenas accumsan lacus vel facilisis volutpat est.\r\n\r\nNisi est sit amet facilisis. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Dui faucibus in ornare quam viverra. Convallis convallis tellus id interdum velit laoreet. Proin nibh nisl condimentum id venenatis. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Tortor posuere ac ut consequat. Sit amet consectetur adipiscing elit. Sed risus ultricies tristique nulla aliquet enim tortor at. Neque aliquam vestibulum morbi blandit cursus risus at ultrices mi. Commodo elit at imperdiet dui accumsan. In nulla posuere sollicitudin aliquam ultrices sagittis orci a scelerisque. Diam phasellus vestibulum lorem sed risus ultricies tristique. Nisl vel pretium lectus quam id leo in. Dis parturient montes nascetur ridiculus mus. A iaculis at erat pellentesque adipiscing commodo elit.\r\n\r\nSem nulla pharetra diam sit amet. Et malesuada fames ac turpis egestas sed. Auctor urna nunc id cursus. Iaculis urna id volutpat lacus laoreet non curabitur. Duis convallis convallis tellus id interdum velit laoreet id. Integer enim neque volutpat ac tincidunt vitae. Ac auctor augue mauris augue neque. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Nisl nisi scelerisque eu ultrices vitae auctor eu. Tristique magna sit amet purus gravida quis blandit turpis cursus.\r\n\r\nDuis ut diam quam nulla porttitor massa id neque aliquam. Quam elementum pulvinar etiam non. Faucibus pulvinar elementum integer enim neque volutpat. Felis eget nunc lobortis mattis aliquam. Consectetur purus ut faucibus pulvinar elementum integer enim neque. Orci nulla pellentesque dignissim enim sit amet venenatis urna. Pulvinar sapien et ligula ullamcorper malesuada. Sodales neque sodales ut etiam. Elementum nibh tellus molestie nunc non blandit massa. Orci ac auctor augue mauris augue neque gravida in fermentum. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Laoreet suspendisse interdum consectetur libero. Non odio euismod lacinia at quis risus sed vulputate. Vestibulum sed arcu non odio euismod lacinia at quis. Posuere morbi leo urna molestie at elementum eu facilisis sed. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla. Non curabitur gravida arcu ac tortor dignissim convallis. Lectus nulla at volutpat diam ut venenatis tellus in metus.\r\n\r\nNunc faucibus a pellentesque sit. Erat velit scelerisque in dictum non consectetur a. At erat pellentesque adipiscing commodo elit at imperdiet dui accumsan. Tellus mauris a diam maecenas. Scelerisque felis imperdiet proin fermentum leo. Augue lacus viverra vitae congue eu. Nunc aliquet bibendum enim facilisis gravida neque convallis. Mauris nunc congue nisi vitae suscipit. Id ornare arcu odio ut sem nulla pharetra diam. In massa tempor nec feugiat. Eget arcu dictum varius duis at. Lacus sed turpis tincidunt id aliquet risus feugiat. Commodo viverra maecenas accumsan lacus. Volutpat maecenas volutpat blandit aliquam. Rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis.\r\n\r\nDiam sollicitudin tempor id eu. Non enim praesent elementum facilisis leo. Nulla aliquet porttitor lacus luctus accumsan tortor. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi. Viverra accumsan in nisl nisi scelerisque. Placerat orci nulla pellentesque dignissim. Rutrum quisque non tellus orci ac auctor. Convallis posuere morbi leo urna molestie. Eu consequat ac felis donec et odio pellentesque diam volutpat. Vestibulum morbi blandit cursus risus at. Pulvinar pellentesque habitant morbi tristique senectus et netus et.\r\n\r\nSemper feugiat nibh sed pulvinar. Sit amet nisl purus in mollis nunc. Congue eu consequat ac felis donec et odio pellentesque. Ornare arcu odio ut sem nulla. Sed egestas egestas fringilla phasellus. Mauris nunc congue nisi vitae suscipit tellus mauris a. Ut porttitor leo a diam. Egestas integer eget aliquet nibh praesent tristique magna sit amet. Phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam. At ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget. Ut enim blandit volutpat maecenas volutpat blandit aliquam etiam erat. Cum sociis natoque penatibus et magnis dis parturient montes. Quis risus sed vulputate odio ut. Dolor morbi non arcu risus quis varius quam quisque. Enim nulla aliquet porttitor lacus luctus accumsan. Non quam lacus suspendisse faucibus interdum posuere lorem. Sed viverra tellus in hac habitasse.\r\n\r\nIn hendrerit gravida rutrum quisque non tellus orci ac auctor. Pretium aenean pharetra magna ac. Tortor id aliquet lectus proin nibh nisl condimentum id venenatis. Posuere sollicitudin aliquam ultrices sagittis. Volutpat diam ut venenatis tellus in metus vulputate eu scelerisque. Commodo odio aenean sed adipiscing diam donec adipiscing. Ultrices dui sapien eget mi proin sed libero. Posuere morbi leo urna molestie at elementum eu. Diam sollicitudin tempor id eu nisl nunc mi ipsum. Pretium lectus quam id leo in. Risus ultricies tristique nulla aliquet enim tortor at auctor urna. Egestas integer eget aliquet nibh praesent tristique magna. Habitant morbi tristique senectus et netus et malesuada fames. Purus faucibus ornare suspendisse sed. Adipiscing elit pellentesque habitant morbi tristique senectus et.\r\n\r\nVel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi. Urna cursus eget nunc scelerisque viverra. Nec ullamcorper sit amet risus nullam eget felis. Viverra suspendisse potenti nullam ac tortor vitae purus faucibus. Viverra maecenas accumsan lacus vel facilisis volutpat est velit. Morbi tristique senectus et netus et malesuada fames. Tellus cras adipiscing enim eu turpis egestas. Luctus accumsan tortor posuere ac ut consequat. Massa tincidunt dui ut ornare lectus. Parturient montes nascetur ridiculus mus mauris vitae ultricies leo. Congue eu consequat ac felis donec. Duis tristique sollicitudin nibh sit amet commodo nulla facilisi nullam. Aliquam purus sit amet luctus venenatis lectus magna fringilla urna. Leo a diam sollicitudin tempor. Feugiat nisl pretium fusce id. Mi bibendum neque egestas congue quisque. Volutpat blandit aliquam etiam erat velit. Pulvinar pellentesque habitant morbi tristique senectus et netus et malesuada. Enim ut sem viverra aliquet eget sit amet tellus. Fermentum posuere urna nec tincidunt praesent.\r\n\r\nSed risus pretium quam vulputate dignissim suspendisse. Et netus et malesuada fames ac turpis egestas maecenas pharetra. Amet porttitor eget dolor morbi non arcu risus quis varius. Ultrices tincidunt arcu non sodales neque sodales. Lacus sed viverra tellus in hac habitasse platea. Aenean sed adipiscing diam donec adipiscing. Facilisis volutpat est velit egestas dui. Elit ut aliquam purus sit amet. Iaculis eu non diam phasellus vestibulum lorem sed. Pellentesque massa placerat duis ultricies lacus sed. In nulla posuere sollicitudin aliquam ultrices sagittis orci. Pulvinar etiam non quam lacus suspendisse faucibus interdum. Amet aliquam id diam maecenas. Proin nibh nisl condimentum id venenatis a. Dictumst quisque sagittis purus sit amet volutpat consequat mauris nunc. Neque volutpat ac tincidunt vitae semper quis. Nunc non blandit massa enim nec dui nunc mattis. Ultrices dui sapien eget mi proin sed libero. Sagittis id consectetur purus ut.\r\n\r\nSollicitudin aliquam ultrices sagittis orci a. Sit amet risus nullam eget felis eget. Metus vulputate eu scelerisque felis imperdiet proin. Vel turpis nunc eget lorem dolor sed viverra ipsum. Fermentum et sollicitudin ac orci phasellus egestas tellus rutrum. Orci dapibus ultrices in iaculis nunc sed augue. Velit aliquet sagittis id consectetur purus ut faucibus pulvinar elementum. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. In metus vulputate eu scelerisque. Tellus in hac habitasse platea dictumst vestibulum rhoncus est. Malesuada fames ac turpis egestas integer eget. Leo duis ut diam quam nulla porttitor massa id neque.\r\n\r\nViverra aliquet eget sit amet tellus cras adipiscing. Phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam. Nulla pellentesque dignissim enim sit amet venenatis urna cursus. Id semper risus in hendrerit gravida rutrum. Vitae auctor eu augue ut. Ut porttitor leo a diam sollicitudin tempor id. At imperdiet dui accumsan sit amet nulla facilisi. Semper eget duis at tellus at urna. Vel fringilla est ullamcorper eget nulla facilisi etiam. Lacus laoreet non curabitur gravida arcu ac tortor dignissim. Phasellus faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis. Quis viverra nibh cras pulvinar mattis nunc sed blandit libero. Sit amet massa vitae tortor condimentum lacinia quis.\r\n\r\nTempor commodo ullamcorper a lacus vestibulum. Malesuada proin libero nunc consequat interdum varius. Neque egestas congue quisque egestas diam in. Sed augue lacus viverra vitae congue eu consequat. Sollicitudin ac orci phasellus egestas tellus rutrum. Volutpat consequat mauris nunc congue nisi vitae suscipit. Tristique sollicitudin nibh sit amet commodo nulla facilisi. Interdum posuere lorem ipsum dolor sit amet consectetur adipiscing. Scelerisque fermentum dui faucibus in ornare quam. Dolor sit amet consectetur adipiscing. Molestie a iaculis at erat pellentesque adipiscing commodo. Faucibus purus in massa tempor nec. Consectetur adipiscing elit duis tristique sollicitudin nibh. Ultricies integer quis auctor elit sed vulputate mi sit amet. Maecenas accumsan lacus vel facilisis volutpat est velit egestas.\r\n\r\nPulvinar sapien et ligula ullamcorper malesuada proin. Eget gravida cum sociis natoque penatibus et magnis. Montes nascetur ridiculus mus mauris vitae ultricies leo. Nisi porta lorem mollis aliquam ut porttitor leo a. Proin sed libero enim sed faucibus. Vestibulum rhoncus est pellentesque elit. Mattis nunc sed blandit libero. Tempor nec feugiat nisl pretium. Mattis vulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Massa tempor nec feugiat nisl pretium fusce id velit ut. Varius duis at consectetur lorem donec massa sapien faucibus.\r\n\r\nVolutpat sed cras ornare arcu. Scelerisque purus semper eget duis. Dictumst quisque sagittis purus sit. Neque laoreet suspendisse interdum consectetur libero id faucibus nisl. Phasellus vestibulum lorem sed risus. Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi tristique. Curabitur vitae nunc sed velit dignissim sodales ut eu. Quis risus sed vulputate odio ut enim blandit volutpat maecenas. Congue quisque egestas diam in arcu cursus. In hac habitasse platea dictumst vestibulum rhoncus est. Elit ullamcorper dignissim cras tincidunt lobortis feugiat. Porttitor rhoncus dolor purus non enim praesent elementum facilisis leo. Blandit volutpat maecenas volutpat blandit. Arcu bibendum at varius vel pharetra vel. In mollis nunc sed id semper risus in. Adipiscing tristique risus nec feugiat in fermentum. Dignissim enim sit amet venenatis. Risus nec feugiat in fermentum posuere. Gravida quis blandit turpis cursus in hac habitasse platea dictumst.\r\n\r\nVestibulum sed arcu non odio euismod lacinia at quis. Dolor purus non enim praesent elementum. Adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna neque. Suspendisse ultrices gravida dictum fusce ut placerat orci nulla. Pulvinar etiam non quam lacus suspendisse faucibus interdum. Venenatis lectus magna fringilla urna porttitor rhoncus dolor. Eu ultrices vitae auctor eu augue ut lectus arcu bibendum. A condimentum vitae sapien pellentesque habitant morbi tristique. Nibh sed pulvinar proin gravida. Quam nulla porttitor massa id neque aliquam vestibulum morbi. Feugiat scelerisque varius morbi enim nunc faucibus. In mollis nunc sed id semper. Augue interdum velit euismod in pellentesque. Posuere urna nec tincidunt praesent semper. Sed pulvinar proin gravida hendrerit lectus. Ornare arcu odio ut sem nulla pharetra diam. Donec ultrices tincidunt arcu non. Laoreet suspendisse interdum consectetur libero id faucibus nisl.\r\n\r\nAdipiscing commodo elit at imperdiet dui accumsan sit amet. Ut pharetra sit amet aliquam id diam maecenas ultricies. A condimentum vitae sapien pellentesque habitant morbi tristique senectus. Posuere lorem ipsum dolor sit. Amet consectetur adipiscing elit pellentesque habitant. In massa tempor nec feugiat nisl pretium fusce id velit. Tortor at auctor urna nunc id cursus. Phasellus egestas tellus rutrum tellus pellentesque eu tincidunt. Nunc scelerisque viverra mauris in aliquam sem fringilla. Mollis nunc sed id semper. Massa placerat duis ultricies lacus sed turpis. Orci ac auctor augue mauris augue neque gravida. Fames ac turpis egestas maecenas pharetra convallis posuere morbi leo. Quis commodo odio aenean sed adipiscing diam donec. Pretium viverra suspendisse potenti nullam ac tortor vitae purus faucibus. Libero id faucibus nisl tincidunt eget nullam non nisi. Pellentesque habitant morbi tristique senectus et netus et.\r\n\r\nDui sapien eget mi proin. Ornare lectus sit amet est placerat in. Curabitur vitae nunc sed velit dignissim sodales ut eu sem. Viverra suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Cursus turpis massa tincidunt dui. Nisl pretium fusce id velit ut tortor pretium. Et tortor consequat id porta nibh venenatis cras sed. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Aliquet enim tortor at auctor urna nunc id cursus. Lorem mollis aliquam ut porttitor leo a diam sollicitudin. Nibh tellus molestie nunc non blandit. Ultrices dui sapien eget mi proin sed libero enim. Amet facilisis magna etiam tempor orci eu lobortis elementum nibh. Integer enim neque volutpat ac tincidunt vitae semper quis.\r\n\r\nConsequat nisl vel pretium lectus quam id leo in. Ipsum suspendisse ultrices gravida dictum fusce ut placerat orci. Magnis dis parturient montes nascetur. Diam maecenas sed enim ut. Facilisis volutpat est velit egestas dui id ornare arcu. Duis tristique sollicitudin nibh sit amet commodo nulla facilisi nullam. Rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Justo nec ultrices dui sapien eget mi. Leo vel orci porta non. Aenean et tortor at risus viverra adipiscing at. Vitae justo eget magna fermentum iaculis eu non diam. Facilisis leo vel fringilla est ullamcorper eget nulla facilisi etiam. Consequat mauris nunc congue nisi vitae suscipit tellus mauris a. Mauris a diam maecenas sed enim ut sem viverra aliquet. Pulvinar neque laoreet suspendisse interdum consectetur libero. Blandit massa enim nec dui nunc mattis enim ut tellus. Ligula ullamcorper malesuada proin libero nunc consequat. Tempus quam pellentesque nec nam aliquam sem et tortor. Egestas diam in arcu cursus euismod quis viverra. Ut diam quam nulla porttitor massa.\r\n\r\nA pellentesque sit amet porttitor eget dolor. Sit amet est placerat in egestas erat imperdiet. Nibh venenatis cras sed felis eget velit aliquet sagittis id. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Pellentesque adipiscing commodo elit at imperdiet. Consequat ac felis donec et odio pellentesque diam volutpat. Nisl suscipit adipiscing bibendum est ultricies integer quis. Sed faucibus turpis in eu. Sodales neque sodales ut etiam sit. Sed adipiscing diam donec adipiscing tristique risus. Purus non enim praesent elementum. Lacus laoreet non curabitur gravida arcu ac tortor.\r\n\r\nNon consectetur a erat nam at lectus urna. Aenean sed adipiscing diam donec adipiscing tristique risus. Cursus euismod quis viverra nibh. Justo eget magna fermentum iaculis eu non. Aliquam ut porttitor leo a diam sollicitudin tempor id eu. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Sit amet nisl purus in mollis nunc sed. A diam sollicitudin tempor id eu nisl. Sed turpis tincidunt id aliquet. Pellentesque elit ullamcorper dignissim cras. Dictum sit amet justo donec. Nunc scelerisque viverra mauris in aliquam. Aliquet lectus proin nibh nisl. Mauris commodo quis imperdiet massa tincidunt nunc. Ultricies tristique nulla aliquet enim tortor at auctor. Suscipit tellus mauris a diam maecenas.\r\n\r\nParturient montes nascetur ridiculus mus mauris vitae. Eget lorem dolor sed viverra ipsum nunc aliquet. Quis lectus nulla at volutpat. Tortor aliquam nulla facilisi cras fermentum odio eu feugiat pretium. Feugiat pretium nibh ipsum consequat nisl vel. Neque sodales ut etiam sit. Lacus sed viverra tellus in. Et malesuada fames ac turpis. Eu consequat ac felis donec et odio. Id diam maecenas ultricies mi eget mauris pharetra et ultrices. Lobortis feugiat vivamus at augue eget arcu dictum varius duis. Semper feugiat nibh sed pulvinar proin gravida hendrerit lectus a. Turpis massa tincidunt dui ut. Tempor id eu nisl nunc. Varius vel pharetra vel turpis nunc eget. Ipsum suspendisse ultrices gravida dictum fusce ut placerat orci nulla. Faucibus interdum posuere lorem ipsum. Magna ac placerat vestibulum lectus mauris ultrices eros in cursus.\r\n\r\nEgestas sed tempus urna et pharetra pharetra massa massa ultricies. Quam nulla porttitor massa id neque aliquam vestibulum morbi blandit. Tellus rutrum tellus pellentesque eu tincidunt. Eget magna fermentum iaculis eu non diam. Nulla pellentesque dignissim enim sit amet. Id interdum velit laoreet id. Sit amet volutpat consequat mauris nunc congue. Neque volutpat ac tincidunt vitae semper quis. Lobortis mattis aliquam faucibus purus in massa tempor nec. Malesuada nunc vel risus commodo viverra. Et leo duis ut diam quam nulla porttitor. Tellus integer feugiat scelerisque varius morbi enim nunc. Sed enim ut sem viverra aliquet. Sit amet nisl purus in mollis nunc. Semper viverra nam libero justo laoreet sit. Lacus laoreet non curabitur gravida. Fames ac turpis egestas sed tempus urna et. Suspendisse potenti nullam ac tortor vitae. Eu turpis egestas pretium aenean pharetra magna ac. Donec ultrices tincidunt arcu non sodales neque sodales ut.\r\n\r\nCursus vitae congue mauris rhoncus aenean. Est placerat in egestas erat imperdiet sed. Dolor sed viverra ipsum nunc aliquet. Augue ut lectus arcu bibendum at. Facilisis gravida neque convallis a cras semper. Tincidunt arcu non sodales neque sodales ut etiam. Facilisi nullam vehicula ipsum a arcu cursus vitae. Fermentum iaculis eu non diam. Euismod lacinia at quis risus sed vulputate odio ut. Sem nulla pharetra diam sit amet nisl. Sed lectus vestibulum mattis ullamcorper. Sed odio morbi quis commodo odio aenean. Egestas egestas fringilla phasellus faucibus. Imperdiet sed euismod nisi porta. Suspendisse faucibus interdum posuere lorem ipsum dolor. Euismod in pellentesque massa placerat duis ultricies. Aliquam malesuada bibendum arcu vitae elementum. Lacus viverra vitae congue eu consequat ac felis. Nibh nisl condimentum id venenatis a condimentum vitae sapien.', 'congue eu consequat ac felis. Nibh nisl condimentum id ', '');
INSERT INTO `tesTramDoc` (`Id`, `Tipo`, `IdTramite`, `Title`, `Abstract`, `Keywords`, `Conclus`) VALUES
(26, 1, 3, 'EJEMPLO', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nec nam aliquam sem et tortor consequat id porta nibh. Tellus rutrum tellus pellentesque eu tincidunt. Sollicitudin nibh sit amet commodo nulla facilisi nullam. Lorem mollis aliquam ut porttitor leo a diam. Duis at consectetur lorem donec. Convallis a cras semper auctor neque vitae tempus. Ipsum suspendisse ultrices gravida dictum. At imperdiet dui accumsan sit. Placerat in egestas erat imperdiet. Scelerisque in dictum non consectetur a erat nam at lectus. Curabitur vitae nunc sed velit. Ultrices sagittis orci a scelerisque purus semper eget. Semper auctor neque vitae tempus.\r\n\r\nElit eget gravida cum sociis natoque penatibus. Morbi tristique senectus et netus et. Nulla aliquet porttitor lacus luctus accumsan. Posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Varius morbi enim nunc faucibus a. Nisl pretium fusce id velit ut tortor pretium. Odio morbi quis commodo odio aenean. Dolor sit amet consectetur adipiscing elit. Odio aenean sed adipiscing diam donec adipiscing tristique risus. Fermentum et sollicitudin ac orci phasellus egestas tellus. Nunc faucibus a pellentesque sit amet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Ut eu sem integer vitae justo. Dignissim sodales ut eu sem integer vitae. Sed viverra ipsum nunc aliquet bibendum enim facilisis. Interdum varius sit amet mattis vulputate enim nulla aliquet. Interdum posuere lorem ipsum dolor sit amet.\r\n\r\nCondimentum mattis pellentesque id nibh tortor id. Quisque sagittis purus sit amet volutpat consequat mauris nunc congue. Netus et malesuada fames ac turpis egestas integer. Morbi tristique senectus et netus et malesuada fames ac. Lectus proin nibh nisl condimentum id venenatis a. Scelerisque mauris pellentesque pulvinar pellentesque. Eget mauris pharetra et ultrices. Sed arcu non odio euismod lacinia at quis. Eu sem integer vitae justo eget. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Vestibulum lectus mauris ultrices eros in cursus turpis. Ullamcorper velit sed ullamcorper morbi tincidunt ornare. In arcu cursus euismod quis.\r\n\r\nQuam id leo in vitae turpis massa. Sit amet venenatis urna cursus eget. Vestibulum morbi blandit cursus risus at ultrices. Nunc consequat interdum varius sit. Imperdiet sed euismod nisi porta lorem mollis aliquam. Amet luctus venenatis lectus magna fringilla urna porttitor. Risus ultricies tristique nulla aliquet enim tortor at auctor urna. Egestas sed tempus urna et pharetra pharetra massa massa ultricies. Nullam non nisi est sit amet facilisis magna etiam. Amet est placerat in egestas erat imperdiet sed euismod. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Arcu non sodales neque sodales ut etiam.\r\n\r\nSapien et ligula ullamcorper malesuada proin libero nunc consequat interdum. Orci sagittis eu volutpat odio facilisis mauris sit amet. Luctus accumsan tortor posuere ac ut consequat. Risus pretium quam vulputate dignissim suspendisse in est ante. Risus quis varius quam quisque id. Mi quis hendrerit dolor magna eget est lorem ipsum dolor. Ac feugiat sed lectus vestibulum mattis ullamcorper velit. Nunc sed blandit libero volutpat sed cras. Aliquam etiam erat velit scelerisque in dictum non consectetur. Faucibus et molestie ac feugiat sed. Volutpat diam ut venenatis tellus. Nunc consequat interdum varius sit. Et malesuada fames ac turpis egestas sed tempus urna et. Et molestie ac feugiat sed lectus vestibulum mattis. Cursus sit amet dictum sit amet justo donec enim diam. Leo in vitae turpis massa sed elementum tempus egestas. Aliquet eget sit amet tellus cras adipiscing enim eu.\r\n\r\nTempus iaculis urna id volutpat lacus. Amet nisl suscipit adipiscing bibendum est ultricies. Ullamcorper eget nulla facilisi etiam. Ullamcorper a lacus vestibulum sed arcu non odio euismod. Egestas erat imperdiet sed euismod nisi porta lorem. Id cursus metus aliquam eleifend mi in nulla posuere. Tristique senectus et netus et malesuada fames ac turpis egestas. Neque viverra justo nec ultrices. Turpis in eu mi bibendum neque egestas congue quisque egestas. Maecenas ultricies mi eget mauris pharetra et ultrices neque. Convallis convallis tellus id interdum velit laoreet id donec.\r\n\r\nArcu risus quis varius quam quisque id diam vel quam. Tincidunt vitae semper quis lectus nulla at volutpat diam ut. Nunc sed velit dignissim sodales ut eu sem. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Vivamus at augue eget arcu dictum varius duis. Nulla pellentesque dignissim enim sit amet venenatis. Neque ornare aenean euismod elementum nisi. Amet nisl suscipit adipiscing bibendum est. Hendrerit gravida rutrum quisque non tellus orci ac. Pulvinar pellentesque habitant morbi tristique. Urna duis convallis convallis tellus id interdum velit laoreet id. Consectetur lorem donec massa sapien faucibus. Non odio euismod lacinia at quis risus sed vulputate.\r\n\r\nAt quis risus sed vulputate odio ut. Eget nunc lobortis mattis aliquam faucibus. Cursus turpis massa tincidunt dui. Amet venenatis urna cursus eget nunc. Elit sed vulputate mi sit amet mauris commodo quis. Consequat ac felis donec et. Sapien pellentesque habitant morbi tristique senectus et netus et. Odio pellentesque diam volutpat commodo sed egestas. Sit amet facilisis magna etiam tempor orci eu lobortis. Dictum at tempor commodo ullamcorper. Integer malesuada nunc vel risus commodo viverra maecenas. Orci sagittis eu volutpat odio. Mattis nunc sed blandit libero volutpat sed cras ornare arcu. Aliquet lectus proin nibh nisl condimentum id venenatis a.\r\n\r\nAt lectus urna duis convallis convallis tellus id. Mollis aliquam ut porttitor leo a diam. Magna fermentum iaculis eu non diam phasellus vestibulum lorem. Enim praesent elementum facilisis leo vel fringilla est ullamcorper eget. Venenatis cras sed felis eget. Aliquet lectus proin nibh nisl condimentum id. Nulla malesuada pellentesque elit eget. Laoreet non curabitur gravida arcu ac. Blandit volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Bibendum neque egestas congue quisque egestas diam. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Aenean et tortor at risus. Aliquet eget sit amet tellus cras adipiscing.\r\n\r\nIpsum dolor sit amet consectetur adipiscing. Dictumst quisque sagittis purus sit. Purus sit amet volutpat consequat mauris nunc congue nisi. Elit at imperdiet dui accumsan sit amet nulla facilisi. Interdum velit laoreet id donec ultrices tincidunt arcu non. Ultrices tincidunt arcu non sodales neque sodales ut. Donec massa sapien faucibus et molestie ac feugiat. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec. Morbi tempus iaculis urna id volutpat lacus laoreet non. Aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin. Sed lectus vestibulum mattis ullamcorper velit. Viverra vitae congue eu consequat ac felis donec et odio. Erat imperdiet sed euismod nisi porta lorem. Non quam lacus suspendisse faucibus interdum. At elementum eu facilisis sed. Sit amet luctus venenatis lectus magna fringilla. Mus mauris vitae ultricies leo integer malesuada nunc vel. Morbi tristique senectus et netus et malesuada fames. Ut morbi tincidunt augue interdum velit euismod in. Nunc non blandit massa enim nec.\r\n\r\nTellus id interdum velit laoreet id donec ultrices. Vitae sapien pellentesque habitant morbi tristique senectus et netus. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere. Id donec ultrices tincidunt arcu non. Suspendisse ultrices gravida dictum fusce. Id ornare arcu odio ut sem nulla pharetra. Ultricies mi eget mauris pharetra et ultrices. Vitae congue mauris rhoncus aenean vel elit scelerisque. Ultricies mi eget mauris pharetra. In ornare quam viverra orci. Fames ac turpis egestas maecenas pharetra convallis posuere. Massa tincidunt dui ut ornare. Auctor augue mauris augue neque gravida in fermentum et. Pulvinar elementum integer enim neque volutpat ac. Lectus quam id leo in vitae turpis massa sed elementum. Sem nulla pharetra diam sit amet nisl. Urna duis convallis convallis tellus id interdum velit laoreet.\r\n\r\nEt ultrices neque ornare aenean euismod elementum nisi quis. Risus ultricies tristique nulla aliquet enim tortor at. Mauris augue neque gravida in fermentum et sollicitudin ac orci. Ullamcorper malesuada proin libero nunc consequat interdum varius sit. Id aliquet risus feugiat in ante metus dictum at tempor. Sit amet nisl suscipit adipiscing bibendum. Tellus orci ac auctor augue mauris augue neque. Quisque egestas diam in arcu cursus. Eget velit aliquet sagittis id consectetur purus ut. Enim sed faucibus turpis in eu. Praesent elementum facilisis leo vel fringilla est ullamcorper. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper. Dui ut ornare lectus sit amet est placerat in. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Dictum fusce ut placerat orci nulla pellentesque. Risus viverra adipiscing at in tellus integer. Suscipit tellus mauris a diam maecenas sed enim ut. Sed viverra ipsum nunc aliquet.\r\n\r\nBibendum at varius vel pharetra vel turpis nunc eget lorem. Elementum nibh tellus molestie nunc non blandit massa enim. Nibh mauris cursus mattis molestie a iaculis. Scelerisque mauris pellentesque pulvinar pellentesque habitant. Nisi lacus sed viverra tellus in hac. Sem viverra aliquet eget sit amet tellus cras. Duis tristique sollicitudin nibh sit. Nulla facilisi cras fermentum odio. Et netus et malesuada fames ac turpis egestas maecenas. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper eget. Mattis vulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. A lacus vestibulum sed arcu non odio euismod lacinia. Id ornare arcu odio ut. Senectus et netus et malesuada. Et sollicitudin ac orci phasellus egestas tellus rutrum.\r\n\r\nMassa sapien faucibus et molestie ac feugiat sed lectus. Augue ut lectus arcu bibendum at. Vestibulum lorem sed risus ultricies tristique nulla aliquet enim tortor. Amet consectetur adipiscing elit ut aliquam purus sit amet luctus. Mi in nulla posuere sollicitudin aliquam. At elementum eu facilisis sed odio. Tincidunt vitae semper quis lectus nulla. Cursus turpis massa tincidunt dui ut ornare lectus sit amet. Tristique senectus et netus et. Posuere morbi leo urna molestie. Faucibus purus in massa tempor nec feugiat nisl pretium. Diam maecenas ultricies mi eget mauris pharetra et ultrices. Egestas integer eget aliquet nibh praesent. Bibendum enim facilisis gravida neque convallis a. Cursus metus aliquam eleifend mi in. Et ultrices neque ornare aenean euismod elementum nisi quis.\r\n\r\nMorbi quis commodo odio aenean sed adipiscing diam donec adipiscing. Lacus luctus accumsan tortor posuere ac. Ut pharetra sit amet aliquam id diam maecenas ultricies. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Turpis nunc eget lorem dolor sed. Viverra aliquet eget sit amet tellus cras. Rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat. Ultricies lacus sed turpis tincidunt id aliquet. Eu turpis egestas pretium aenean pharetra magna ac placerat vestibulum. Vulputate sapien nec sagittis aliquam malesuada bibendum arcu vitae. Venenatis lectus magna fringilla urna porttitor. Condimentum mattis pellentesque id nibh tortor id aliquet lectus proin. Vel orci porta non pulvinar neque.\r\n\r\nTristique senectus et netus et malesuada fames ac. Semper viverra nam libero justo laoreet sit. Nisi scelerisque eu ultrices vitae auctor eu. Netus et malesuada fames ac turpis. Lacus viverra vitae congue eu consequat ac felis donec et. Sit amet tellus cras adipiscing enim eu turpis. Auctor neque vitae tempus quam pellentesque nec nam. Amet luctus venenatis lectus magna fringilla urna porttitor rhoncus dolor. Donec ultrices tincidunt arcu non sodales neque sodales ut etiam. Gravida dictum fusce ut placerat orci nulla pellentesque dignissim. Volutpat commodo sed egestas egestas fringilla phasellus faucibus. Eget est lorem ipsum dolor sit amet consectetur adipiscing elit. Purus sit amet luctus venenatis. Semper viverra nam libero justo. Sed odio morbi quis commodo odio aenean sed. Non enim praesent elementum facilisis leo vel fringilla. Cras semper auctor neque vitae tempus quam pellentesque nec. Scelerisque in dictum non consectetur a erat.\r\n\r\nSagittis aliquam malesuada bibendum arcu. Semper eget duis at tellus at urna condimentum mattis pellentesque. Neque aliquam vestibulum morbi blandit cursus risus at. Nec feugiat in fermentum posuere. Sed faucibus turpis in eu mi bibendum neque. Vitae proin sagittis nisl rhoncus mattis rhoncus urna neque. Sit amet facilisis magna etiam tempor orci eu. Et netus et malesuada fames ac turpis egestas. Sed sed risus pretium quam vulputate dignissim suspendisse in. Turpis egestas integer eget aliquet nibh praesent tristique. Feugiat scelerisque varius morbi enim nunc faucibus. Enim nunc faucibus a pellentesque sit amet porttitor eget. Vulputate odio ut enim blandit. Sit amet porttitor eget dolor. Malesuada fames ac turpis egestas integer. Suspendisse in est ante in nibh mauris. Et pharetra pharetra massa massa ultricies mi quis hendrerit.\r\n\r\nPellentesque adipiscing commodo elit at imperdiet dui accumsan sit amet. Ullamcorper eget nulla facilisi etiam dignissim diam. Consequat nisl vel pretium lectus quam id leo. Lectus arcu bibendum at varius vel pharetra vel. Commodo elit at imperdiet dui accumsan sit amet. Ac tortor dignissim convallis aenean et. Nibh praesent tristique magna sit amet purus gravida quis blandit. Pretium vulputate sapien nec sagittis. Rhoncus urna neque viverra justo nec ultrices. Quisque egestas diam in arcu cursus euismod. Mi sit amet mauris commodo quis. Aliquet eget sit amet tellus cras adipiscing enim eu. Elit sed vulputate mi sit amet mauris commodo quis. In aliquam sem fringilla ut. At augue eget arcu dictum varius duis at.\r\n\r\nSuscipit tellus mauris a diam maecenas. Purus viverra accumsan in nisl nisi scelerisque eu ultrices. Non blandit massa enim nec dui nunc. At consectetur lorem donec massa sapien faucibus et molestie ac. Morbi tristique senectus et netus et malesuada fames ac turpis. Tempus urna et pharetra pharetra massa. Felis bibendum ut tristique et egestas. Aliquam vestibulum morbi blandit cursus. Ornare arcu dui vivamus arcu felis bibendum ut tristique et. Mus mauris vitae ultricies leo integer malesuada. Sit amet mauris commodo quis. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Velit ut tortor pretium viverra suspendisse potenti nullam ac. Cras pulvinar mattis nunc sed. Tellus pellentesque eu tincidunt tortor aliquam. Erat velit scelerisque in dictum non consectetur. Posuere ac ut consequat semper. Venenatis urna cursus eget nunc scelerisque viverra mauris in aliquam. Sem nulla pharetra diam sit amet nisl suscipit.\r\n\r\nTortor at auctor urna nunc id cursus metus. Amet est placerat in egestas. Ut aliquam purus sit amet luctus venenatis lectus magna. Vel quam elementum pulvinar etiam non quam lacus suspendisse. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Ipsum faucibus vitae aliquet nec. Vel elit scelerisque mauris pellentesque pulvinar pellentesque. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque convallis. Hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Aliquet porttitor lacus luctus accumsan tortor.', 'sdwerwe', ''),
(27, 1, 4, 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT, SED DO ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu sem integer vitae justo eget magna. Sed turpis tincidunt id aliquet. Nibh ipsum consequat nisl vel pretium lectus quam. Quis hendrerit dolor magna eget est lorem ipsum. Non diam phasellus vestibulum lorem sed risus ultricies tristique. Ut aliquam purus sit amet luctus venenatis lectus magna fringilla. Non sodales neque sodales ut etiam sit. Adipiscing commodo elit at imperdiet dui accumsan sit. Vulputate ut pharetra sit amet aliquam id diam. Commodo ullamcorper a lacus vestibulum sed. Massa eget egestas purus viverra accumsan in.', 'vestibulum sed. Massa eget egestas purus viverra accumsan in.', ''),
(28, 1, 5, 'APLICACION MOVIL PARA VER EXTRATERRESTRES', 'APLICACION MOVIL PARA VER EXTRATERRESTRESAPLICACION MOVIL PARA VER EXTRATERRESTRESAPLICACION MOVIL PARA VER EXTRATERRESTRESAPLICACION MOVIL PARA VER EXTRATERRESTRESAPLICACION MOVIL PARA VER EXTRATERRESTRES', 'CLAVE CLAVE CLAVE', ''),
(29, 1, 6, 'DISEÑO DE UN SISTEMA DE GESTIÓN DE LA CALIDAD\r\nACADÉMICA PARA LA FACULTAD DE INGENIERÍA DE LA \r\nUNIVERSIDAD PRIVADA LIDER PERUANA DEL CUSCO', 'La Facultad de Ingeniería de la Universidad Privada Líder Peruana viene \r\natravesando dificultades para establecer los lineamientos que hagan efectiva la \r\nimplementación de un sistema de gestión de la calidad, debido a limitaciones económicas y \r\nestructurales. La situación es preocupante debido al contexto educativo que se vive en el \r\nPerú, en el que se han cerrado 09 universidades que no lograron cumplir con las exigencias \r\ndel proceso de Licenciamiento Institucional impuesto por la Superintendencia Nacional de \r\nEducación Superior Universitaria SUNEDU. Por tales motivos, y buscando aportar a la \r\nmejora de la gestión de la calidad en la Facultad de Ingeniería, la investigación asume \r\ncomo problema de investigación el siguiente: ¿Qué componentes debe considerar el diseño \r\nde un sistema de gestión de la calidad académica para la Facultad de Ingeniería de la \r\nUniversidad Privada Líder Peruana de la ciudad de Quillabamba en el año 2019?\r\n', 'academic quality management system, International Standard ISO  9001: 2008, service implementation,', ''),
(30, 1, 7, 'EJEMPLO BARRIENTOS', 'eejemplo', 'dd', ''),
(31, 1, 4, 'DISEÑO E IMPLEMENTACIÓN DE UNA APLICACIÓN MÓVIL\r\nBASADA EN LA TECNOLOGÍA NFC PARA ACCESO A\r\nINFORMACIÓN DE LAS PIEZAS DE ARTE DE UN MUSEO\r\n', 'La presente tesis desarrolla el diseño e implementación de una aplicación móvil\r\nenfocado en el sistema operativo Android para agilizar y dinamizar el acceso a\r\ninformación de las piezas de arte de un museo. Para este propósito, se adaptará la base\r\nde datos del museo arqueológico Josefina Ramos de Cox. Además, se implementará\r\nuna aplicación web en el framework Web2py para la gestión de contenidos que serán\r\nmostrados en la aplicación móvil. La aplicación móvil estará basada en la tecnología\r\nNear Field Communication para obtener el identificador de la pieza de arte de un tag\r\nNFC. Adicionalmente, se desarrolla un servicio web en Web2py para consultar a la base\r\nde datos y retornar la información en formato JSON a la aplicación móvil.\r\nEn el capítulo 1 se desarrolla el análisis de entornos y situación actual respecto a la\r\nvisita a un museo, se identifica la problemática, se plantea los objetivos de la presente\r\nTesis y se justifica su desarrollo.\r\nEn el capítulo 2 se revisan las tecnologías necesarias para la implementación de la\r\naplicación móvil y la aplicación web, entre ellas la tecnología NFC, los sistemas\r\noperativos móviles con mayor cobertura de mercado, PhoneGap y Web2py.\r\nEn el capítulo 3 definimos el diseño de nuestras aplicaciones en base a la justificación\r\ndel uso de NFC sobre otras tecnologías. Asimismo, se definen los diagramas de casos\r\nde uso, mockups de las aplicaciones y sus especificaciones.\r\nPor último, en el capítulo 4 se indica el proceso de construcción de la aplicación móvil y\r\nla aplicación web de administración. Se explica la escritura de un tag NFC a través de a\r\naplicación TagWriter, se muestra las aplicaciones finales con sus funcionalidades\r\ndefinidas y se exponen los resultados.', 'SQL, Framework, JSON ,NFC, Payload ', '*'),
(32, 1, 8, 'LAS APLICACIONES MÓVILES Y SU IMPACTO EN LA SOCIEDAD\r\n', 'En los últimos años, se ha visto un desarrollo constante en el uso de las tecnologías de la información y comunicación, especialmente\r\nen el uso de dispositivos móviles para acceso a aplicaciones web y móviles, sean estas relacionadas a comercio\r\nelectrónico, diversión, productividad y temas relacionadas a la salud. Las aplicaciones móviles en lo que tiene que ver con\r\nsalud han ido en crecimiento en el mundo y por qué no en el Ecuador, este tipo de aplicaciones son utilizadas por pacientes\r\ny por personal prestador de salud, sin embargo, el uso de redes sociales también ha visto cambios en la búsqueda de\r\ninformación respecto a salud. Ayudados por el método analítico - sintético, la investigación descriptiva y una metodología\r\nde desarrollo de software, se obtuvo características para el desarrollo de un aplicativo web que permita a los usuarios de\r\nla Fundación Santo Domingo acceder a información sobre medicina preventiva y permitir una comunicación activa con los\r\nmédicos a través de los medios de mensajería incorporados a la aplicación.', 'Web application, mobile application, information, health, technology.', ''),
(33, 1, 9, 'APLICACIÓN MÓVIL COMO INSTRUMENTO DE DIFUSIÓN', 'Ante la disponibilidad tecnológica omnipresente en la sociedad actual y en nuestro caso\r\nparticular la Facultad de Ingeniería de la Universidad Nacional de La Pampa (UNLPam), es posible\r\nbrindar información en el preciso instante en el que surge la noticia. En éste artículo se presenta\r\nFacultad de Ingeniería Móvil, una aplicación conformada por diferentes módulos que se gestiona de\r\nforma descentralizada a través de las diferentes áreas que conforman el sector administrativo de la\r\ninstitución con el objetivo de noti????car con inmediatez los diferentes hechos que resultan de interés\r\na directivos, docentes, estudiantes y demás actores de la comunidad universitaria e instituciones\r\nde orden público que con ella interactúan. La aplicación móvil que se presenta está desarrollada\r\níntegramente con software libre, y el proceso de análisis, desarrollo e implantación se efectúa en\r\nla Facultad de Ingeniería de la UNLPam por el Grupo de Investigación de Ambientes Ubicuos\r\n(GIAU) [1].', 'Dispositivos móviles convergencia digital contenido audiovisual', ''),
(34, 1, 9, 'LAS APLICACIONES MÓVILES Y SU IMPACTO EN LA SOCIEDAD\r\n', 'En los últimos años, se ha visto un desarrollo constante en el uso de las tecnologías de la información y comunicación, especialmente\r\nen el uso de dispositivos móviles para acceso a aplicaciones web y móviles, sean estas relacionadas a comercio\r\nelectrónico, diversión, productividad y temas relacionadas a la salud. Las aplicaciones móviles en lo que tiene que ver con\r\nsalud han ido en crecimiento en el mundo y por qué no en el Ecuador, este tipo de aplicaciones son utilizadas por pacientes\r\ny por personal prestador de salud, sin embargo, el uso de redes sociales también ha visto cambios en la búsqueda de\r\ninformación respecto a salud. Ayudados por el método analítico - sintético, la investigación descriptiva y una metodología\r\nde desarrollo de software, se obtuvo características para el desarrollo de un aplicativo web que permita a los usuarios de\r\nla Fundación Santo Domingo acceder a información sobre medicina preventiva y permitir una comunicación activa con los\r\nmédicos a través de los medios de mensajería incorporados a la aplicación.', 'Aplicación web, aplicación móvil, información, salud, tecnología.', '*'),
(35, 1, 10, 'LAS APLICACIONES MÓVILES Y LA REALIDAD AUMENTADA  SU IMPACTO EN LA SOCIEDAD ', 'En los últimos años, se ha visto un desarrollo constante en el uso de las tecnologías de la información y comunicación, especialmente\r\nen el uso de dispositivos móviles para acceso a aplicaciones web y móviles, sean estas relacionadas a comercio\r\nelectrónico, diversión, productividad y temas relacionadas a la salud. Las aplicaciones móviles en lo que tiene que ver con\r\nsalud han ido en crecimiento en el mundo y por qué no en el Ecuador, este tipo de aplicaciones son utilizadas por pacientes\r\ny por personal prestador de salud, sin embargo, el uso de redes sociales también ha visto cambios en la búsqueda de\r\ninformación respecto a salud. Ayudados por el método analítico - sintético, la investigación descriptiva y una metodología\r\nde desarrollo de software, se obtuvo características para el desarrollo de un aplicativo web que permita a los usuarios de\r\nla Fundación Santo Domingo acceder a información sobre medicina preventiva y permitir una comunicación activa con los\r\nmédicos a través de los medios de mensajería incorporados a la aplicación.', 'Aplicación web, aplicación móvil, información, salud, tecnología.', ''),
(36, 1, 11, 'LAS APLICACIONES MOVILES EN 2024', 'En los últimos años, se ha visto un desarrollo constante en el uso de las tecnologías de la información y comunicación, especialmente\r\nen el uso de dispositivos móviles para acceso a aplicaciones web y móviles, sean estas relacionadas a comercio\r\nelectrónico, diversión, productividad y temas relacionadas a la salud. Las aplicaciones móviles en lo que tiene que ver con\r\nsalud han ido en crecimiento en el mundo y por qué no en el Ecuador, este tipo de aplicaciones son utilizadas por pacientes\r\ny por personal prestador de salud, sin embargo, el uso de redes sociales también ha visto cambios en la búsqueda de\r\ninformación respecto a salud. Ayudados por el método analítico - sintético, la investigación descriptiva y una metodología\r\nde desarrollo de software, se obtuvo características para el desarrollo de un aplicativo web que permita a los usuarios de\r\nla Fundación Santo Domingo acceder a información sobre medicina preventiva y permitir una comunicación activa con los\r\nmédicos a través de los medios de mensajería incorporados a la aplicación.', 'Aplicación web, aplicación móvil, información, salud, tecnología.', ''),
(37, 1, 11, 'APLICACIÓN MÓVIL COMO INSTRUMENTO DE DIFUSIÓN', 'Ante la disponibilidad tecnológica omnipresente en la sociedad actual y en nuestro caso\r\nparticular la Facultad de Ingeniería de la Universidad Nacional de La Pampa (UNLPam), es posible\r\nbrindar información en el preciso instante en el que surge la noticia. En éste artículo se presenta\r\nFacultad de Ingeniería Móvil, una aplicación conformada por diferentes módulos que se gestiona de\r\nforma descentralizada a través de las diferentes áreas que conforman el sector administrativo de la\r\ninstitución con el objetivo de noti????car con inmediatez los diferentes hechos que resultan de interés\r\na directivos, docentes, estudiantes y demás actores de la comunidad universitaria e instituciones\r\nde orden público que con ella interactúan. La aplicación móvil que se presenta está desarrollada\r\níntegramente con software libre, y el proceso de análisis, desarrollo e implantación se efectúa en\r\nla Facultad de Ingeniería de la UNLPam por el Grupo de Investigación de Ambientes Ubicuos\r\n(GIAU) [1].', 'Dispositivos móviles convergencia digital contenido audiovisual', '*'),
(38, 1, 12, 'TDR SANTIAGO', 'alex es un viajero', 'alex, viajero', ''),
(39, 1, 13, 'DENIS DENIS ', 'chavo alex ', 'alex, chavo', ''),
(40, 1, 14, 'LAS APLICACIONES MÓVILES EN EL 2023 CREADOR DE WEBS SENCILLO', 'Las aplicaciones móviles ayudan bastante en el desarrollo de negocios', 'appmoviles, desarrollo, personas', ''),
(41, 1, 14, 'IMPLEMENTACION DE APLICACIONES MOVILES PARA EL MONITOREA DE LOS BUSES DE LA UNAMBA', 'esto es un resumen de app moviles', 'monitoreo, moviles, implementacion', '*'),
(42, 1, 15, 'TESIS DE IMPLEMENTACION DE APLICACIONES MOVILES CON REALIDAD AUMENTADA', 'esto es un resumen', 'appmoviles, desarrollo, personas', ''),
(43, 1, 16, 'TESIS DE EMPRENDIMIENTO DE LA CIUDAD DE ABANCAY 2023', 'ESTO ES RESUMEN DE EMPRENDIMIENTO DE LA UNIVERSIDAD UNAMBA', 'EMPREMDIENTO, EMPRESAS, CARROS', ''),
(44, 1, 16, 'ESTO ES UNA MODIFICACION DEL TITULO DE LA TESIS DE EMPRENDIMIENTO DE LA CIUDAD DE ABANCAY 2023', 'Investigación en emprendimiento,\r\nun reto para la construcción\r\nde conocimiento', 'Investigación, emprendimiento', '*'),
(45, 1, 17, 'NIVELES NUTRICIONALES Y CARACTERÍSTICAS FISICOQUIMICA DEL ENSILAJE DE CÁSCARA DE CACAO (THEOBROMA CACAO L.) ADICIONANDO MICROORGANISMOS EFICIENTES, EN TINGO MARÍA', 'The objective that was considered for the study was to evaluate the nutritional and\r\nphysicochemical characteristics of the silage from cacao pods with the application of different\r\ndoses of efficient microorganisms in Tingo Maria, [Peru]. The work was carried out in the grass\r\nlaboratory spaces at the Universidad Nacional Agraria de la Selva in Tingo Maria within the\r\nRupa Rupa district in the Huánuco department [of Peru]. Of the waste from the cacao\r\n(Theobroma cacao L) industry, 60 kg was used from the Pumahuasi district. They were ground\r\nand distributed into four treatments [which were] differentiated by the concentration of efficient\r\nmicroorganisms (EM ME in Spanish) per kilogram of cacao (Theobroma cacao L). [The\r\ntreatments were] T0: silage from cacao hulls with 0.0 efficient microorganisms T1: silage\r\nfrom cacao hulls with 0.5 EM T2: silage from cacao hulls with 1.0 EM and T3: silage\r\nfrom cacao hulls with 1.5 EM. Each treatment was deposited into polyethylene bags, [where]\r\nthe air was eliminated from the silage. After twenty five days the evaluations of the physical\r\nand chemical characteristics, [as well as] a cost analysis were done for the treatments in study.\r\nThe data was analyzed using the non-parametric statistic. When the chemical composition of\r\nthe silage from cacao hulls with efficient microorganisms added at different levels was done,\r\nT3 (1.0 EM) and T4 (1.5 EM) resulted to be highly nutritive, especially in the levels of\r\nprotein, energy, and minerals, specifically, phosphorous (P). The cacao hulls contained 76.67\r\nhumidity, 22.36 dry matter, 1.97 ash, 1.81 total protein, 7.24 total fiber, 0.17 fats,\r\n11.17 nitrogen free extract, and 938 kcal/kg total energy. [Treatment] T3 (1.0 EM) was that\r\nwith which the best organoleptic characteristics were obtained, with respect to color, humidity,\r\nand pH level.', 'Theobroma cacao L, silage, efficient microorganisms, organoleptic characteristics, quality, product', ''),
(46, 1, 17, 'NIVELES NUTRICIONALES Y CARACTERÍSTICAS FISICOQUIMICA DEL ENSILAJE DE CÁSCARA DE CACAO (THEOBROMA CACAO L.) ADICIONANDO MICROORGANISMOS EFICIENTES, EN TINGO MARÍA', 'El estudio consideró como objetivo evaluar las características nutricionales y\r\nfisicoquímicas del ensilado de la cáscara de cacao con la aplicación de diferente dosis de\r\nmicroorganismos eficientes en Tingo María. Las labores se llevaron a cabo en ambientes del\r\nLaboratorio de pastos de la Universidad Nacional Agraria de la Selva en Tingo María, distrito\r\nde Rupa Rupa, en el departamento de Huánuco. Se utilizó 60 kg de residuos de la industria de\r\ncacao Theobroma cacao L. del distrito de Pumahuasi, las mismas que se molieron y se\r\ndistribuyeron en cuatro tratamientos diferenciados por la concentración de microorganismos\r\neficientes (ME) por kilogramo de Theobroma cacao L. (T0: Ensilaje de cáscara de cacao sin\r\nmicroorganismos eficientes 0.0, T1: Ensilaje de cáscara de cacao con 0.5 de ME., T2:\r\nEnsilaje de cáscara de cacao con 1.0 de ME, T3: Ensilaje de cáscara de cacao con 1.5 de\r\nME.) cada tratamiento fue depositado en las bolsas de polietileno eliminando el aire del\r\nensilado. Pasado los 25 días, se realizaron las evaluaciones de las características físicas,\r\nquímicas y un análisis de costo de los tratamientos estudiados los datos fueron analizados\r\nmediante el uso de la estadística no paramétrica. Al determinar la composición química del\r\nensilado de la cáscara de cacao con la adición de microorganismos eficientes a niveles de T3\r\n(1.0 de ME) y T4 (1.5 de ME) resultan altamente nutritivos especialmente en los niveles de\r\nproteínas, energía y minerales específicamente el fósforo (P). La cáscara de cacao contiene\r\n76.67 de humedad, 22.36 de materia seca, 1.97 de ceniza, 1.81 de proteína total, 7.24\r\nde fibra total, 0.17 de grasa, 11.17 de extracto libre de nitrógeno y 938 kcal/kg de energía\r\ntotal. T3 (1.0 ME) es el que logra obtener mejores características organolépticas en cuanto al\r\ncolor, humedad y el nivel de pH.', 'Theobroma cacao L, ensilaje, microorganismos eficientes, característica organoléptica, calidad, cos', '*'),
(47, 1, 18, 'SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA', 'Este estudio, tuvo como objetivo, evaluar los parámetros productivos (consumo de\r\nalimento, ganancia de peso vivo, conversión alimenticia, rendimiento de carcasa, y\r\nretribución económica del sistema de producción) con el sistema de cama profunda en fase\r\nder recría de cerdos (Sus scrofa domesticus). La investigación se realizó en la granja\r\nAgropok Andina ubicada en el Barrio Miraflores del distrito de Huamancaca provincia de\r\nChupaca y región de Junín, situada a 3,218 msnm, con cerdos híbridos (Yorkshire,\r\nLandrace y Duroc) de 21 días de dad y con peso vivo promedio de 6.9 kilogramos (kg.),\r\nhasta los 90 días de edad para ello se utilizó 27 lechones machos distribuidos en tres\r\ntratamientos con tres repeticiones. Los datos fueron tomados semanalmente durante 8\r\nsemanas. Se empleó el método de análisis descriptivo de datos y los resultados fueron\r\nanalizados con el Software, Statistical Analysys System (SAS) a través de la media\r\naritmética y la desviación estándar. Parámetros obtenidos: ganancia de peso vivo 22.64 ±\r\n0.30., consumo de alimento 38.98 ± 0.06 y 39.00 ± 0.04, kg., índice de conversión\r\nalimenticia 1.77 ± 0.02 y 1.72 ± 0.02, con respecto a la evaluación económica la\r\nrentabilidad parcial por animal fue de S/.115.80 para rastrojo de paja de trigo, de S/.106.20\r\npara cama profunda de rastrojo de chala y de S/.98.40 para piso de cemento. Los parámetros\r\nobtenidos se asemejan o son menores a otros sistemas de producción realizados en\r\nAyacucho.', 'Parámetro productivo, evaluación económica.', ''),
(48, 1, 18, 'SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA', 'Antes de iniciar este procedimiento le recordamos que debe poner en texto rojo con fondo blanco los parrafos o elementos que su jurado le ha indicado corregir, por ello revise bien su proyecto de tesis asi evitar el rechazo del mismo. ', 'SISTEMA CAMA PROFUNDA ', '*'),
(49, 1, 19, 'TESIS ULTIMO', 'asdasdasd', 'asdasdasdas', ''),
(50, 1, 19, 'TESIS DE APLICACIONES MOVILES', 'esto es un resumen de aplicaciones moviles', 'tesis, aplicaciones,moviles', '*'),
(51, 1, 20, 'ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO', 'esto es resumen', 'claves', ''),
(52, 1, 21, 'IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020', 'esto es resumen', 'hola', ''),
(53, 1, 22, 'OPTIMIZACIÓN DEL CIRCUITO DE FLOTACIÓN DE COBRE ETAPA\r\nROUGHER MEDIANTE DISEÑOS EXPERIMENTALES EN LA PLANTA\r\nCONCENTRADORA TOROMOCHO - CHINALCO 2021', 'esto es un resumen', 'hola', ''),
(54, 1, 23, 'ESTUDIO DE SISTEMAS EÓLICOS PARA GENERACIÓN DE\r\nENERGÍA ELÉCTRICA PARA BOMBEO DE AGUA EN LA\r\nLOCALIDAD DE NINANTAMBO, TARMA, 2022', 'esot es resumen', 'jola, loa', ''),
(55, 1, 24, 'GESTIÓN PRESUPUESTAL Y CALIDAD DEL GASTO DE LOS PRODUCTOS DE\r\nLA FUNCIÓN SALUD DEL PPOR PARA EL DESARROLLO INFANTIL TEMPRANO,\r\n2022.', 'resuemne', 'claves', ''),
(56, 1, 25, 'VIOLENCIA FAMILIAR Y AUTOESTIMA EN LOS ESTUDIANTES DE SANTO\r\nDOMINGO DE ACOBAMBA', 'esto es resumen', 'hola', ''),
(57, 1, 26, 'ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO', 'resumen', 'aczxczxcz', ''),
(58, 1, 27, 'IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020', 'resumen', 'hola', ''),
(59, 1, 27, 'IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020', 'EL RESUMEN ES ESTO', 'identidad, corporativa', '*'),
(60, 1, 26, 'ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO', 'esta muy bien', 'vamos con tofo', '*'),
(61, 1, 28, 'EVASIÓN TRIBUTARIA Y SU RELACIÓN EN LA RECAUDACIÓN FISCAL EN LOS COMERCIANTES DEL MERCADO MODELO HONDURAS 2000 COMAS 2022', 'La presente investigación tuvo como objetivo determinar como la evasión\r\ntributaria influye en la recaudación fiscal en los comerciantes del mercado modelo\r\nHonduras 2000 Comas 2022, es una indagación aplicada, de nivel descriptivo\r\ncorrelacional, diseño no experimental, esto está respaldado con el método\r\ncientífico, la población estuvo conformada por 57 comerciantes de los diversos\r\nrubros de ellos se seleccionó 50 comerciantes como muestra probabilística para la\r\nindagación, la técnica que se utilizo es la encuesta , instrumento el cuestionario,\r\nel procesamiento de los datos recolectados se realizó mediante el Programa SPSS\r\nversión 25. En donde se obtuvo como resultados en la indagación que en el\r\nmencionado centro de abastos hay un comportamiento y la voluntad de no cumplir\r\ncon sus obligaciones por parte de los comerciantes que participan en diferentes\r\nactividades comerciales de diferentes rubros lo cual este incide directamente en la\r\nrecaudación fiscal, así como al Estado que ya habrá un mínimo porcentaje en el\r\nrecaudo de impuesto.\r\nEn conclusión, la Evasión Tributaria incide de manera significativa en la\r\nrecaudación fiscal en los comerciantes del mercado modelo honduras 2000 Comas\r\n2022, así como se muestra en la en la correlación que r = 0, 551 positiva media alta\r\nentre ambas variables, esto significara que si disminuye la Evasión Tributaria por lo\r\nconsiguiente aumentara la Recaudación Fiscal de los comerciantes', 'hello, vamos', ''),
(62, 1, 28, 'EVASIÓN TRIBUTARIA Y SU RELACIÓN EN LA RECAUDACIÓN FISCAL EN LOS COMERCIANTES DEL MERCADO MODELO HONDURAS 2000 COMAS 2022', 'resumen de tesis', 'vamos con tofo', '*'),
(63, 1, 20, 'ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO', 'ok', 'ok', '*'),
(64, 1, 21, 'IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020', 'ok', 'ok', '*'),
(65, 1, 22, 'OPTIMIZACIÓN DEL CIRCUITO DE FLOTACIÓN DE COBRE ETAPA\r\nROUGHER MEDIANTE DISEÑOS EXPERIMENTALES EN LA PLANTA\r\nCONCENTRADORA TOROMOCHO - CHINALCO 2021', 'ok', 'ok', '*'),
(66, 1, 23, 'ESTUDIO DE SISTEMAS EÓLICOS PARA GENERACIÓN DE\r\nENERGÍA ELÉCTRICA PARA BOMBEO DE AGUA EN LA\r\nLOCALIDAD DE NINANTAMBO, TARMA, 2022', 'ok', 'ok', '*'),
(67, 1, 25, 'VIOLENCIA FAMILIAR Y AUTOESTIMA EN LOS ESTUDIANTES DE SANTO\r\nDOMINGO DE ACOBAMBA', 'ok', 'ok', '*'),
(68, 1, 29, 'COSTOS DE PRODUCCIÓN Y SU INCIDENCIA EN EL RENDIMIENTO FINANCIERO DE LA EMPRESA COOPERATIVA AGRARIA ASPRAOSRA, MORROPÓN 2018-2022.', 'ok', 'ok', ''),
(69, 1, 29, 'COSTOS DE PRODUCCIÓN Y SU INCIDENCIA EN EL RENDIMIENTO FINANCIERO DE LA EMPRESA COOPERATIVA AGRARIA ASPRAOSRA, MORROPÓN 2018-2022.', 'ok', 'ok', '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesTramites`
--

CREATE TABLE `tesTramites` (
  `Id` int(11) NOT NULL,
  `Tipo` int(2) NOT NULL DEFAULT '1',
  `Codigo` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Anio` int(5) NOT NULL,
  `Orden` int(5) NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `Estado` int(2) NOT NULL,
  `SuEst` int(2) NOT NULL,
  `IdTesista1` int(7) NOT NULL,
  `IdTesista2` int(7) NOT NULL,
  `IdLinea` int(5) NOT NULL,
  `IdLinAlte` int(5) NOT NULL,
  `IdJurado1` int(5) NOT NULL,
  `IdJurado2` int(5) NOT NULL,
  `IdJurado3` int(5) NOT NULL,
  `IdJurado4` int(5) NOT NULL,
  `FechRegProy` datetime NOT NULL,
  `FechActBorr` datetime NOT NULL,
  `_T_` varchar(5) NOT NULL,
  `FechModif` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tesTramites`
--

INSERT INTO `tesTramites` (`Id`, `Tipo`, `Codigo`, `Anio`, `Orden`, `IdCarrera`, `Estado`, `SuEst`, `IdTesista1`, `IdTesista2`, `IdLinea`, `IdLinAlte`, `IdJurado1`, `IdJurado2`, `IdJurado3`, `IdJurado4`, `FechRegProy`, `FechActBorr`, `_T_`, `FechModif`) VALUES
(1, 0, '2023-001', 2023, 1, 1, 3, 0, 3, 0, 1, 0, 0, 0, 0, 1, '2023-10-25 12:52:08', '0000-00-00 00:00:00', '', '2023-10-25 22:17:34'),
(2, 1, '2023-002', 2023, 2, 1, 4, 0, 8, 0, 1, 0, 4, 3, 1, 2, '2023-10-25 13:13:44', '0000-00-00 00:00:00', '', '2023-10-25 22:06:44'),
(3, 1, '2023-003', 2023, 3, 1, 4, 0, 7, 0, 1, 0, 2, 3, 4, 1, '2023-10-25 13:17:07', '0000-00-00 00:00:00', '', '2023-10-25 18:54:09'),
(4, 1, '2023-004', 2023, 4, 1, 6, 0, 12, 0, 1, 0, 3, 4, 1, 2, '2023-10-25 16:09:07', '0000-00-00 00:00:00', '', '2023-10-27 17:42:44'),
(5, 0, '2023-005', 2023, 5, 1, 3, 0, 13, 0, 2, 0, 0, 0, 0, 1, '2023-10-25 16:42:43', '0000-00-00 00:00:00', '', '2023-10-25 22:17:30'),
(6, 1, '2023-006', 2023, 6, 1, 4, 0, 9, 0, 2, 0, 0, 0, 0, 1, '2023-10-25 16:51:28', '0000-00-00 00:00:00', '', '2023-10-27 17:18:57'),
(7, 1, '2023-007', 2023, 7, 1, 4, 0, 10, 0, 1, 0, 2, 3, 4, 1, '2023-10-25 17:09:21', '0000-00-00 00:00:00', '', '2023-10-27 17:18:29'),
(8, 1, '2023-008', 2023, 8, 1, 4, 0, 14, 0, 2, 0, 0, 0, 0, 1, '2023-11-06 09:56:25', '0000-00-00 00:00:00', '', '2023-11-06 15:07:39'),
(9, 1, '2023-009', 2023, 9, 1, 6, 0, 15, 0, 1, 0, 3, 4, 1, 2, '2023-11-07 08:47:54', '0000-00-00 00:00:00', '', '2023-11-07 15:33:30'),
(10, 1, '2023-010', 2023, 10, 1, 4, 0, 16, 0, 1, 0, 4, 2, 1, 3, '2023-11-07 11:03:17', '0000-00-00 00:00:00', '', '2023-11-07 16:05:15'),
(11, 1, '2023-011', 2023, 11, 1, 5, 0, 17, 0, 1, 0, 4, 3, 1, 2, '2023-11-07 11:59:02', '0000-00-00 00:00:00', '', '2023-11-07 17:06:26'),
(12, 0, '2023-012', 2023, 12, 1, 0, 0, 18, 0, 1, 0, 0, 0, 0, 1, '2023-11-21 12:44:02', '0000-00-00 00:00:00', '', '2023-11-21 17:54:29'),
(13, 0, '2023-013', 2023, 13, 1, 3, 0, 18, 0, 2, 0, 0, 0, 0, 1, '2023-11-21 13:00:55', '0000-00-00 00:00:00', '', '2023-11-28 14:05:55'),
(14, 1, '2023-014', 2023, 14, 1, 6, 0, 19, 0, 1, 0, 3, 4, 1, 2, '2023-11-28 09:34:03', '0000-00-00 00:00:00', '', '2023-11-28 15:18:33'),
(15, 1, '2023-015', 2023, 15, 1, 4, 0, 20, 0, 1, 0, 4, 3, 1, 2, '2023-11-29 10:42:50', '0000-00-00 00:00:00', '', '2023-11-29 17:55:28'),
(16, 1, '2023-016', 2023, 16, 1, 6, 0, 21, 0, 1, 0, 3, 4, 1, 2, '2023-12-04 11:09:30', '0000-00-00 00:00:00', '', '2023-12-04 16:36:42'),
(17, 1, '2023-017', 2023, 17, 1, 6, 0, 22, 0, 1, 0, 4, 3, 1, 2, '2023-12-04 12:12:50', '0000-00-00 00:00:00', '', '2023-12-04 17:36:28'),
(18, 0, '2023-018', 2023, 18, 1, 5, 0, 23, 0, 1, 0, 3, 2, 1, 4, '2023-12-04 12:59:34', '0000-00-00 00:00:00', '', '2023-12-04 20:14:00'),
(19, 1, '2023-019', 2023, 19, 1, 6, 0, 23, 0, 1, 0, 4, 3, 2, 1, '2023-12-20 10:14:53', '0000-00-00 00:00:00', '', '2023-12-20 15:32:47'),
(20, 1, '2023-020', 2023, 20, 1, 6, 0, 26, 0, 1, 0, 3, 4, 2, 1, '2023-12-20 11:05:36', '0000-00-00 00:00:00', '', '2023-12-20 21:18:27'),
(21, 1, '2023-021', 2023, 21, 1, 6, 0, 28, 0, 1, 0, 3, 4, 2, 1, '2023-12-20 11:20:51', '0000-00-00 00:00:00', '', '2023-12-20 21:20:33'),
(22, 1, '2023-022', 2023, 22, 1, 6, 0, 29, 0, 1, 0, 2, 3, 4, 1, '2023-12-20 11:24:26', '0000-00-00 00:00:00', '', '2023-12-20 21:25:00'),
(23, 1, '2023-023', 2023, 23, 1, 6, 0, 30, 0, 1, 0, 2, 4, 3, 1, '2023-12-20 11:29:13', '0000-00-00 00:00:00', '', '2023-12-20 21:27:30'),
(24, 0, '2023-024', 2023, 24, 1, 0, 0, 31, 0, 1, 0, 0, 0, 0, 2, '2023-12-20 11:35:09', '0000-00-00 00:00:00', '', '2023-12-20 16:39:25'),
(25, 1, '2023-025', 2023, 25, 1, 6, 0, 32, 0, 1, 0, 4, 3, 2, 1, '2023-12-20 11:50:01', '0000-00-00 00:00:00', '', '2023-12-20 21:31:53'),
(26, 1, '2023-026', 2023, 26, 1, 6, 0, 25, 0, 1, 0, 2, 3, 4, 1, '2023-12-20 15:12:18', '0000-00-00 00:00:00', '', '2023-12-20 20:51:43'),
(27, 1, '2023-027', 2023, 27, 1, 6, 0, 33, 0, 1, 0, 2, 3, 4, 1, '2023-12-20 15:16:52', '0000-00-00 00:00:00', '', '2023-12-20 20:41:56'),
(28, 1, '2023-028', 2023, 28, 1, 6, 0, 34, 0, 1, 0, 3, 4, 2, 1, '2023-12-20 15:58:13', '0000-00-00 00:00:00', '', '2023-12-20 21:08:43'),
(29, 1, '2023-029', 2023, 29, 1, 6, 0, 31, 0, 1, 0, 4, 3, 2, 1, '2023-12-20 16:34:39', '0000-00-00 00:00:00', '', '2023-12-20 21:40:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesTramsBach`
--

CREATE TABLE `tesTramsBach` (
  `Id` int(5) NOT NULL,
  `Estado` int(5) NOT NULL,
  `IdTramite` int(5) NOT NULL,
  `IdTesista` int(5) NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `NroRes` int(11) NOT NULL,
  `AnioRes` int(11) NOT NULL,
  `DateRes` date NOT NULL,
  `DateUpolad` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `File` varchar(20) NOT NULL,
  `Obs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tesTramsBach`
--

INSERT INTO `tesTramsBach` (`Id`, `Estado`, `IdTramite`, `IdTesista`, `IdCarrera`, `NroRes`, `AnioRes`, `DateRes`, `DateUpolad`, `File`, `Obs`) VALUES
(1, 1, 2, 2, 1, 12, 2020, '2023-08-03', '2023-08-03 14:25:17', 'd00000002-Bach.pdf', '-'),
(2, 1, 11, 14, 3, 123, 2020, '2023-08-01', '2023-08-11 15:58:48', 'd00000014-Bach.pdf', '-'),
(3, 1, 10, 17, 3, 1233, 2020, '2023-08-17', '2023-08-11 17:01:49', 'd00000017-Bach.pdf', '-'),
(4, 1, 10, 17, 3, 1233, 2020, '2023-08-17', '2023-08-11 17:01:55', 'd00000017-Bach.pdf', '-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesTramsDet`
--

CREATE TABLE `tesTramsDet` (
  `Id` int(11) NOT NULL,
  `IdTramite` int(11) NOT NULL,
  `Iteracion` int(2) NOT NULL,
  `Titulo` varchar(350) CHARACTER SET utf8 NOT NULL,
  `Archivo` varchar(25) CHARACTER SET utf8 NOT NULL,
  `vb1` int(2) NOT NULL,
  `vb2` int(2) NOT NULL,
  `vb3` int(2) NOT NULL,
  `vb4` int(2) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Obs` varchar(75) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tesTramsDet`
--

INSERT INTO `tesTramsDet` (`Id`, `IdTramite`, `Iteracion`, `Titulo`, `Archivo`, `vb1`, `vb2`, `vb3`, `vb4`, `Fecha`, `Obs`) VALUES
(1, 1, 1, 'RQ', 'd00000011-Proy.pdf', 0, 0, 0, 0, '2023-08-01 17:28:50', ''),
(2, 2, 1, 'TITULO ', 'd00000002-Proy.pdf', 1, 1, 1, 0, '2023-08-02 11:38:45', ''),
(3, 3, 1, '111223', 'd00000003-Proy.pdf', 1, 1, 1, 0, '2023-03-02 12:47:59', ''),
(4, 2, 2, 'TITULO ', 'd00000002-Proy.pdf', 1, 1, 1, 1, '2023-08-02 15:15:34', ''),
(5, 2, 3, 'TITULO ', 'd00000002-Proy.pdf', 1, 1, 1, 1, '2023-03-03 10:00:54', ''),
(6, 2, 4, 'TITULO ', 'd00000002-Borr.pdf', 1, 1, 1, 1, '2023-08-03 10:57:04', ''),
(7, 4, 1, 'PRUEBA', 'd00000007-Proy.pdf', 1, 1, 1, 0, '2023-08-03 16:07:27', ''),
(8, 3, 2, '111223', 'd00000003-Proy.pdf', 1, 1, -1, 0, '2023-08-03 16:30:38', ''),
(9, 3, 3, '111223', 'd00000003-Proy.pdf', 1, 1, -1, 0, '2023-08-03 16:34:36', ''),
(10, 2, 5, 'TITULO ', 'd00000002-Borr.pdf', -1, -1, -1, -1, '2023-08-08 13:37:12', 'Sustentacion'),
(11, 5, 1, '123', 'd00000015-Proy.pdf', 0, 0, 0, 0, '2023-08-10 11:52:43', ''),
(12, 6, 1, '123', 'd00000015-Proy.pdf', 0, 0, 0, 0, '2023-08-10 11:55:19', ''),
(13, 7, 1, '123', 'd00000016-Proy.pdf', 1, 1, 1, 0, '2023-08-10 11:59:38', ''),
(14, 8, 1, 'RFE', 'd00000015-Proy.pdf', 0, 0, 0, 0, '2023-08-10 12:03:12', ''),
(15, 9, 1, '123', 'd00000017-Proy.pdf', 1, 1, 1, 0, '2023-08-10 13:02:59', ''),
(16, 10, 1, 'DW', 'd00000017-Proy.pdf', 1, 1, 1, 0, '2023-08-10 14:06:00', ''),
(17, 11, 1, 'DMINAS 2', 'd00000014-Proy.pdf', 1, 1, 1, 0, '2023-08-11 11:10:19', ''),
(18, 11, 2, 'DMINAS 2', 'd00000014-Proy.pdf', 1, 1, 1, 1, '2023-08-11 11:43:50', ''),
(19, 11, 3, 'DMINAS 2', 'd00000014-Proy.pdf', 1, 1, 1, 0, '2023-04-11 11:49:34', ''),
(20, 10, 2, 'DW', 'd00000017-Proy.pdf', 1, 1, 1, 0, '2023-08-11 12:56:06', ''),
(21, 10, 3, 'DW', 'd00000017-Proy.pdf', 1, 1, 1, 0, '2023-04-11 12:57:21', ''),
(22, 10, 4, 'DW', 'd00000017-Borr.pdf', 1, 1, 1, 1, '2023-08-11 13:33:21', ''),
(23, 10, 5, 'DW', 'd00000017-Borr.pdf', -1, -1, -1, -1, '2023-08-11 13:43:30', 'Sustentacion'),
(24, 12, 1, 'SDFDF', 'd00000013-Proy.pdf', 0, 0, 0, 0, '2023-08-14 16:29:53', ''),
(25, 13, 1, 'A', 'd00000013-Proy.pdf', 0, 0, 0, 0, '2023-08-14 16:32:36', ''),
(26, 14, 1, 'SA', 'd00000013-Proy.pdf', 1, 1, 1, 0, '2023-08-15 10:32:23', ''),
(27, 15, 1, 'RT', 'd00000012-Proy.pdf', 1, 0, 0, 0, '2023-08-15 11:49:07', ''),
(28, 1, 1, 'GRAVIDA NEQUE. ADIPISCING TRISTIQUE RISUS NEC FEUGIAT IN FERMENTUM POSUERE URNA NEC. IMPERDIET SED EUISMOD NISI PORTA ', 'd00000003-Proy.pdf', 0, 0, 0, 0, '2023-10-25 12:52:08', ''),
(29, 2, 1, 'CONGUE EU CONSEQUAT AC FELIS. NIBH NISL CONDIMENTUM ID VENENATIS A CONDIMENTUM VITAE SAPIEN.', 'd00000008-Proy.pdf', 0, 0, 0, 0, '2023-10-25 13:13:44', ''),
(30, 3, 1, 'EJEMPLO', 'd00000007-Proy.pdf', 0, 0, 0, 0, '2023-10-25 13:17:07', ''),
(31, 4, 1, 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT, SED DO ', 'd00000012-Proy.pdf', 0, 0, 0, 0, '2023-10-25 16:09:07', ''),
(32, 5, 1, 'APLICACION MOVIL PARA VER EXTRATERRESTRES', 'd00000013-Proy.pdf', 0, 0, 0, 0, '2023-10-25 16:42:43', ''),
(33, 6, 1, 'DISEÑO DE UN SISTEMA DE GESTIÓN DE LA CALIDAD\r\nACADÉMICA PARA LA FACULTAD DE INGENIERÍA DE LA \r\nUNIVERSIDAD PRIVADA LIDER PERUANA DEL CUSCO', 'd00000009-Proy.pdf', 0, 0, 0, 0, '2023-10-25 16:51:28', ''),
(34, 7, 1, 'EJEMPLO BARRIENTOS', 'd00000010-Proy.pdf', 0, 0, 0, 0, '2023-10-25 17:09:21', ''),
(35, 4, 2, 'DISEÑO E IMPLEMENTACIÓN DE UNA APLICACIÓN MÓVIL\r\nBASADA EN LA TECNOLOGÍA NFC PARA ACCESO A\r\nINFORMACIÓN DE LAS PIEZAS DE ARTE DE UN MUSEO\r\n', 'd00000012-Proy.pdf', 0, 0, 0, 0, '2023-10-27 12:15:03', ''),
(36, 4, 3, 'DISEÑO E IMPLEMENTACIÓN DE UNA APLICACIÓN MÓVIL\r\nBASADA EN LA TECNOLOGÍA NFC PARA ACCESO A\r\nINFORMACIÓN DE LAS PIEZAS DE ARTE DE UN MUSEO\r\n', 'd00000012-Proy.pdf', 0, 0, 0, 0, '2023-10-27 12:42:44', ''),
(37, 8, 1, 'LAS APLICACIONES MÓVILES Y SU IMPACTO EN LA SOCIEDAD\r\n', 'd00000014-Proy.pdf', 0, 0, 0, 0, '2023-11-06 09:56:25', ''),
(38, 9, 1, 'APLICACIÓN MÓVIL COMO INSTRUMENTO DE DIFUSIÓN', 'd00000015-Proy.pdf', 0, 0, 0, 0, '2023-11-07 08:47:54', ''),
(39, 9, 2, 'LAS APLICACIONES MÓVILES Y SU IMPACTO EN LA SOCIEDAD\r\n', 'd00000015-Proy.pdf', 0, 0, 0, 0, '2023-11-07 10:26:04', ''),
(40, 9, 3, 'LAS APLICACIONES MÓVILES Y SU IMPACTO EN LA SOCIEDAD\r\n', 'd00000015-Proy.pdf', 0, 0, 0, 0, '2023-11-07 10:33:30', ''),
(41, 10, 1, 'LAS APLICACIONES MÓVILES Y LA REALIDAD AUMENTADA  SU IMPACTO EN LA SOCIEDAD ', 'd00000016-Proy.pdf', 0, 0, 0, 0, '2023-11-07 11:03:17', ''),
(42, 11, 1, 'LAS APLICACIONES MOVILES EN 2024', 'd00000017-Proy.pdf', 0, 0, 0, 0, '2023-11-07 11:59:02', ''),
(43, 11, 2, 'APLICACIÓN MÓVIL COMO INSTRUMENTO DE DIFUSIÓN', 'd00000017-Proy.pdf', 0, 0, 0, 0, '2023-11-07 12:06:26', ''),
(44, 12, 1, 'TDR SANTIAGO', 'd00000018-Proy.pdf', 0, 0, 0, 0, '2023-11-21 12:44:02', ''),
(45, 13, 1, 'DENIS DENIS ', 'd00000018-Proy.pdf', 0, 0, 0, 0, '2023-11-21 13:00:55', ''),
(46, 14, 1, 'LAS APLICACIONES MÓVILES EN EL 2023 CREADOR DE WEBS SENCILLO', 'd00000019-Proy.pdf', 0, 0, 0, 0, '2023-11-28 09:34:03', ''),
(47, 14, 2, 'IMPLEMENTACION DE APLICACIONES MOVILES PARA EL MONITOREA DE LOS BUSES DE LA UNAMBA', 'd00000019-Proy.pdf', 1, 1, 1, 1, '2023-11-28 10:12:25', ''),
(48, 14, 3, 'IMPLEMENTACION DE APLICACIONES MOVILES PARA EL MONITOREA DE LOS BUSES DE LA UNAMBA', 'd00000019-Proy.pdf', 1, 1, 1, 1, '2023-11-28 10:18:33', ''),
(49, 15, 1, 'TESIS DE IMPLEMENTACION DE APLICACIONES MOVILES CON REALIDAD AUMENTADA', 'd00000020-Proy.pdf', 0, 0, 0, 0, '2023-11-29 10:42:50', ''),
(50, 16, 1, 'TESIS DE EMPRENDIMIENTO DE LA CIUDAD DE ABANCAY 2023', 'd00000021-Proy.pdf', 1, 1, 1, 0, '2023-12-04 11:09:30', ''),
(51, 16, 2, 'ESTO ES UNA MODIFICACION DEL TITULO DE LA TESIS DE EMPRENDIMIENTO DE LA CIUDAD DE ABANCAY 2023', 'd00000021-Proy.pdf', 0, 0, 0, 0, '2023-12-04 11:32:37', ''),
(52, 16, 3, 'ESTO ES UNA MODIFICACION DEL TITULO DE LA TESIS DE EMPRENDIMIENTO DE LA CIUDAD DE ABANCAY 2023', 'd00000021-Proy.pdf', 0, 0, 0, 0, '2023-12-04 11:36:42', ''),
(53, 17, 1, 'NIVELES NUTRICIONALES Y CARACTERÍSTICAS FISICOQUIMICA DEL ENSILAJE DE CÁSCARA DE CACAO (THEOBROMA CACAO L.) ADICIONANDO MICROORGANISMOS EFICIENTES, EN TINGO MARÍA', 'd00000022-Proy.pdf', 1, 1, 1, 0, '2023-12-04 12:12:51', ''),
(54, 17, 2, 'NIVELES NUTRICIONALES Y CARACTERÍSTICAS FISICOQUIMICA DEL ENSILAJE DE CÁSCARA DE CACAO (THEOBROMA CACAO L.) ADICIONANDO MICROORGANISMOS EFICIENTES, EN TINGO MARÍA', 'd00000022-Proy.pdf', 1, 1, 1, 0, '2023-12-04 12:33:22', ''),
(55, 17, 3, 'NIVELES NUTRICIONALES Y CARACTERÍSTICAS FISICOQUIMICA DEL ENSILAJE DE CÁSCARA DE CACAO (THEOBROMA CACAO L.) ADICIONANDO MICROORGANISMOS EFICIENTES, EN TINGO MARÍA', 'd00000022-Proy.pdf', 1, 1, 1, 0, '2023-12-04 12:36:28', ''),
(56, 18, 1, 'SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA', 'd00000023-Proy.pdf', 1, 1, 1, 0, '2023-12-04 12:59:34', ''),
(57, 18, 2, 'SISTEMA CAMA PROFUNDA CON RASTROJOS DE MAIZ Y TRIGO, DE CERDOS EN RECRIA EN EL DISTRITO DE HUAMANCACA-CHUPACA', 'd00000023-Proy.pdf', -1, -1, -1, 1, '2023-12-04 15:14:00', ''),
(58, 19, 1, 'TESIS ULTIMO', 'd00000023-Proy.pdf', 1, 1, 1, 0, '2023-12-20 10:14:53', ''),
(59, 19, 2, 'TESIS DE APLICACIONES MOVILES', 'd00000023-Proy.pdf', 0, 0, 0, 0, '2023-12-20 10:31:44', ''),
(60, 19, 3, 'TESIS DE APLICACIONES MOVILES', 'd00000023-Proy.pdf', 0, 0, 0, 0, '2023-12-20 10:32:47', ''),
(61, 20, 1, 'ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO', 'd00000026-Proy.pdf', 1, 1, 1, 0, '2023-12-20 11:05:36', ''),
(62, 21, 1, 'IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020', 'd00000028-Proy.pdf', 1, 1, 1, 0, '2023-12-20 11:20:51', ''),
(63, 22, 1, 'OPTIMIZACIÓN DEL CIRCUITO DE FLOTACIÓN DE COBRE ETAPA\r\nROUGHER MEDIANTE DISEÑOS EXPERIMENTALES EN LA PLANTA\r\nCONCENTRADORA TOROMOCHO - CHINALCO 2021', 'd00000029-Proy.pdf', 1, 1, 1, 0, '2023-12-20 11:24:26', ''),
(64, 23, 1, 'ESTUDIO DE SISTEMAS EÓLICOS PARA GENERACIÓN DE\r\nENERGÍA ELÉCTRICA PARA BOMBEO DE AGUA EN LA\r\nLOCALIDAD DE NINANTAMBO, TARMA, 2022', 'd00000030-Proy.pdf', 1, 1, 1, 0, '2023-12-20 11:29:13', ''),
(65, 24, 1, 'GESTIÓN PRESUPUESTAL Y CALIDAD DEL GASTO DE LOS PRODUCTOS DE\r\nLA FUNCIÓN SALUD DEL PPOR PARA EL DESARROLLO INFANTIL TEMPRANO,\r\n2022.', 'd00000031-Proy.pdf', 0, 0, 0, 0, '2023-12-20 11:35:09', ''),
(66, 25, 1, 'VIOLENCIA FAMILIAR Y AUTOESTIMA EN LOS ESTUDIANTES DE SANTO\r\nDOMINGO DE ACOBAMBA', 'd00000032-Proy.pdf', 1, 1, 1, 0, '2023-12-20 11:50:01', ''),
(67, 26, 1, 'ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO', 'd00000025-Proy.pdf', 1, 1, 1, 0, '2023-12-20 15:12:18', ''),
(68, 27, 1, 'IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020', 'd00000033-Proy.pdf', 1, 1, 1, 0, '2023-12-20 15:16:52', ''),
(69, 27, 2, 'IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020', 'd00000033-Proy.pdf', 0, 0, 0, 0, '2023-12-20 15:41:18', ''),
(70, 27, 3, 'IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020', 'd00000033-Proy.pdf', 0, 0, 0, 0, '2023-12-20 15:41:56', ''),
(71, 26, 2, 'ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO', 'd00000025-Proy.pdf', 1, 1, 1, 0, '2023-12-20 15:46:19', ''),
(72, 26, 3, 'ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO', 'd00000025-Proy.pdf', 1, 1, 1, 0, '2023-12-20 15:51:44', ''),
(73, 28, 1, 'EVASIÓN TRIBUTARIA Y SU RELACIÓN EN LA RECAUDACIÓN FISCAL EN LOS COMERCIANTES DEL MERCADO MODELO HONDURAS 2000 COMAS 2022', 'd00000034-Proy.pdf', 1, 1, 1, 0, '2023-12-20 15:58:13', ''),
(74, 28, 2, 'EVASIÓN TRIBUTARIA Y SU RELACIÓN EN LA RECAUDACIÓN FISCAL EN LOS COMERCIANTES DEL MERCADO MODELO HONDURAS 2000 COMAS 2022', 'd00000034-Proy.pdf', 1, 1, 1, 0, '2023-12-20 16:03:59', ''),
(75, 28, 3, 'EVASIÓN TRIBUTARIA Y SU RELACIÓN EN LA RECAUDACIÓN FISCAL EN LOS COMERCIANTES DEL MERCADO MODELO HONDURAS 2000 COMAS 2022', 'd00000034-Proy.pdf', 1, 1, 1, 0, '2023-12-20 16:08:43', ''),
(76, 20, 2, 'ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO', 'd00000026-Proy.pdf', 0, 0, 0, 0, '2023-12-20 16:17:47', ''),
(77, 20, 3, 'ESTUDIO DE LA OBLIGACIÓN\r\nTRIBUTARIA MUNICIPAL Y SU\r\nRELACIÓN CON LAS AMNISTIAS TRIBUTARIAS\r\nRECURRENTES DESARROLLADAS EN EL SATH - HUANCAYO', 'd00000026-Proy.pdf', 0, 0, 0, 0, '2023-12-20 16:18:27', ''),
(78, 21, 2, 'IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020', 'd00000028-Proy.pdf', 0, 0, 0, 0, '2023-12-20 16:19:45', ''),
(79, 21, 3, 'IDENTIDAD CORPORATIVA Y RESPONSABILIDAD SOCIAL EMPRESARIAL EN\r\nEMPRESAS CONCESIONARIAS DE ALIMENTOS EN HUANCAYO - 2020', 'd00000028-Proy.pdf', 0, 0, 0, 0, '2023-12-20 16:20:33', ''),
(80, 22, 2, 'OPTIMIZACIÓN DEL CIRCUITO DE FLOTACIÓN DE COBRE ETAPA\r\nROUGHER MEDIANTE DISEÑOS EXPERIMENTALES EN LA PLANTA\r\nCONCENTRADORA TOROMOCHO - CHINALCO 2021', 'd00000029-Proy.pdf', 0, 0, 0, 0, '2023-12-20 16:24:26', ''),
(81, 22, 3, 'OPTIMIZACIÓN DEL CIRCUITO DE FLOTACIÓN DE COBRE ETAPA\r\nROUGHER MEDIANTE DISEÑOS EXPERIMENTALES EN LA PLANTA\r\nCONCENTRADORA TOROMOCHO - CHINALCO 2021', 'd00000029-Proy.pdf', 0, 0, 0, 0, '2023-12-20 16:25:00', ''),
(82, 23, 2, 'ESTUDIO DE SISTEMAS EÓLICOS PARA GENERACIÓN DE\r\nENERGÍA ELÉCTRICA PARA BOMBEO DE AGUA EN LA\r\nLOCALIDAD DE NINANTAMBO, TARMA, 2022', 'd00000030-Proy.pdf', 0, 0, 0, 0, '2023-12-20 16:26:46', ''),
(83, 23, 3, 'ESTUDIO DE SISTEMAS EÓLICOS PARA GENERACIÓN DE\r\nENERGÍA ELÉCTRICA PARA BOMBEO DE AGUA EN LA\r\nLOCALIDAD DE NINANTAMBO, TARMA, 2022', 'd00000030-Proy.pdf', 0, 0, 0, 0, '2023-12-20 16:27:30', ''),
(84, 25, 2, 'VIOLENCIA FAMILIAR Y AUTOESTIMA EN LOS ESTUDIANTES DE SANTO\r\nDOMINGO DE ACOBAMBA', 'd00000032-Proy.pdf', 0, 0, 0, 0, '2023-12-20 16:31:20', ''),
(85, 25, 3, 'VIOLENCIA FAMILIAR Y AUTOESTIMA EN LOS ESTUDIANTES DE SANTO\r\nDOMINGO DE ACOBAMBA', 'd00000032-Proy.pdf', 0, 0, 0, 0, '2023-12-20 16:31:54', ''),
(86, 29, 1, 'COSTOS DE PRODUCCIÓN Y SU INCIDENCIA EN EL RENDIMIENTO FINANCIERO DE LA EMPRESA COOPERATIVA AGRARIA ASPRAOSRA, MORROPÓN 2018-2022.', 'd00000031-Proy.pdf', 1, 1, 1, 0, '2023-12-20 16:34:39', ''),
(87, 29, 2, 'COSTOS DE PRODUCCIÓN Y SU INCIDENCIA EN EL RENDIMIENTO FINANCIERO DE LA EMPRESA COOPERATIVA AGRARIA ASPRAOSRA, MORROPÓN 2018-2022.', 'd00000031-Proy.pdf', 0, 0, 0, 0, '2023-12-20 16:39:27', ''),
(88, 29, 3, 'COSTOS DE PRODUCCIÓN Y SU INCIDENCIA EN EL RENDIMIENTO FINANCIERO DE LA EMPRESA COOPERATIVA AGRARIA ASPRAOSRA, MORROPÓN 2018-2022.', 'd00000031-Proy.pdf', 0, 0, 0, 0, '2023-12-20 16:40:07', '');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwAnoingJuly`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vwAnoingJuly` (
`Id` int(11)
,`Tipo` int(2)
,`Estado` int(2)
,`Codigo` varchar(10)
,`IdCarrera` int(11)
,`IdTesista1` int(7)
,`IdTesista2` int(7)
,`Iteracion` int(2)
,`Titulo` varchar(350)
,`vb1` int(2)
,`vb2` int(2)
,`vb3` int(2)
,`vb4` int(2)
,`Fecha` datetime
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxDatDocentes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxDatDocentes` (
`Id` int(11)
,`IdDocente` int(11)
,`Activo` int(11)
,`Codigo` varchar(12)
,`DNI` varchar(10)
,`IdCategoria` int(11)
,`Tipo` varchar(1)
,`CategAbrev` varchar(15)
,`IdFacultad` int(11)
,`FacuAbrev` varchar(1)
,`IdCarrera` int(11)
,`Carrera` varchar(100)
,`DatosPers` varchar(152)
,`DatosNom` varchar(151)
,`Antiguedad` int(7)
,`FechaAsc` date
,`FechaIn` date
,`NroCelular` varchar(12)
,`Correo` varchar(50)
,`Clave` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxDatTesistas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxDatTesistas` (
`Id` int(11)
,`Activo` int(5)
,`DNI` varchar(10)
,`Codigo` varchar(8)
,`IdFacultad` int(5)
,`Facultad` varchar(100)
,`IdCarrera` int(5)
,`Carrera` varchar(100)
,`IdEspec` int(5)
,`DatosPers` varchar(152)
,`Apellidos` varchar(75)
,`Nombres` varchar(75)
,`FechaReg` datetime
,`SemReg` varchar(25)
,`Direccion` varchar(50)
,`NroCelular` varchar(12)
,`Correo` varchar(75)
,`Clave` varchar(90)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxDocInLin`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxDocInLin` (
`IdDocente` int(5)
,`IdLinea` int(5)
,`LinEstado` int(3)
,`TipoLin` int(2)
,`TipoDoc` varchar(1)
,`CategAbrev` varchar(15)
,`DatosPers` varchar(152)
,`Activo` int(11)
,`IdCarrera` int(11)
,`IdCategoria` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxDocInLinEx`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxDocInLinEx` (
`IdDocente` int(5)
,`IdLinea` int(5)
,`Linea` varchar(300)
,`TipoLin` int(2)
,`TipoDoc` varchar(1)
,`CategAbrev` varchar(15)
,`DatosPers` varchar(152)
,`Activo` int(11)
,`IdCarrera` int(11)
,`IdCategoria` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxLineas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxLineas` (
`Id` int(5)
,`Nombre` varchar(300)
,`Repets` bigint(21)
,`TotDoceRegs` bigint(21)
,`IdArea` int(1)
,`IdSubArea` int(2)
,`IdDiscip` int(3)
,`IdFacultad` int(2)
,`IdCarrera` int(2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxMemos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxMemos` (
`Id` int(11)
,`Tipo` int(11)
,`Ordinal` int(11)
,`Anio` int(11)
,`IdTramite` int(11)
,`IdCarrera` int(11)
,`Fecha` datetime
,`Codigo` varchar(10)
,`Estado` int(2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxSustens`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxSustens` (
`Id` int(11)
,`Activo` int(4)
,`IdTramite` int(11)
,`Codigo` varchar(12)
,`Pendiente` int(1)
,`IdCarrera` int(11)
,`IdFacultad` int(11)
,`Carrera` varchar(100)
,`Fecha` datetime
,`Lugar` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxTesTramites`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxTesTramites` (
`Id` int(11)
,`Tipo` int(2)
,`Codigo` varchar(10)
,`Anio` int(5)
,`Orden` int(5)
,`IdCarrera` int(11)
,`Estado` int(2)
,`IdTesista1` int(7)
,`IdTesista2` int(7)
,`IdLinea` int(5)
,`IdLinAlte` int(5)
,`IdJurado1` int(5)
,`IdJurado2` int(5)
,`IdJurado3` int(5)
,`IdJurado4` int(5)
,`FechRegProy` datetime
,`FechActBorr` datetime
,`_T_` varchar(5)
,`FechModif` timestamp
,`IdEspec` bigint(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxZumLoginDoc`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxZumLoginDoc` (
`Id` int(11)
,`Tipo` varchar(2)
,`IdUser` int(11)
,`DatosPers` varchar(151)
,`Fecha` datetime
,`Accion` varchar(25)
,`OS` varchar(45)
,`Browser` varchar(45)
,`IP` varchar(16)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxZumLoginDocEx`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxZumLoginDocEx` (
`Tipo` varchar(2)
,`IdUser` int(11)
,`DatosPers` varchar(151)
,`A1` decimal(23,0)
,`A2` decimal(23,0)
,`Total` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vxZumLoginTes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vxZumLoginTes` (
`Id` int(11)
,`Tipo` varchar(2)
,`IdUser` int(11)
,`DatosPers` varchar(151)
,`Fecha` datetime
,`Accion` varchar(25)
,`OS` varchar(45)
,`Browser` varchar(45)
,`IP` varchar(16)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vwAnoingJuly`
--
DROP TABLE IF EXISTS `vwAnoingJuly`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwAnoingJuly`  AS  select `T`.`Id` AS `Id`,`T`.`Tipo` AS `Tipo`,`T`.`Estado` AS `Estado`,`T`.`Codigo` AS `Codigo`,`T`.`IdCarrera` AS `IdCarrera`,`T`.`IdTesista1` AS `IdTesista1`,`T`.`IdTesista2` AS `IdTesista2`,`D`.`Iteracion` AS `Iteracion`,`D`.`Titulo` AS `Titulo`,`D`.`vb1` AS `vb1`,`D`.`vb2` AS `vb2`,`D`.`vb3` AS `vb3`,`D`.`vb4` AS `vb4`,`D`.`Fecha` AS `Fecha` from (`tesTramites` `T` join `tesTramsDet` `D`) where ((`T`.`Estado` = 5) and (`T`.`Tipo` = 1) and (`T`.`Id` = `D`.`IdTramite`) and (`D`.`Iteracion` = 2)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxDatDocentes`
--
DROP TABLE IF EXISTS `vxDatDocentes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxDatDocentes`  AS  select `D`.`Id` AS `Id`,`D`.`Id` AS `IdDocente`,`D`.`Activo` AS `Activo`,`D`.`Codigo` AS `Codigo`,`D`.`DNI` AS `DNI`,`D`.`IdCategoria` AS `IdCategoria`,`K`.`Tipo` AS `Tipo`,`K`.`Abrev` AS `CategAbrev`,`D`.`IdFacultad` AS `IdFacultad`,'F' AS `FacuAbrev`,`D`.`IdCarrera` AS `IdCarrera`,`C`.`Nombre` AS `Carrera`,concat(upper(`D`.`Apellidos`),', ',upper(`D`.`Nombres`)) AS `DatosPers`,concat(upper(`D`.`Nombres`),' ',upper(`D`.`Apellidos`)) AS `DatosNom`,(to_days(now()) - to_days(`D`.`FechaAsc`)) AS `Antiguedad`,`D`.`FechaAsc` AS `FechaAsc`,`D`.`FechaIn` AS `FechaIn`,`D`.`NroCelular` AS `NroCelular`,`D`.`Correo` AS `Correo`,`D`.`Clave` AS `Clave` from ((`vriunap_absmain`.`tblDocentes` `D` join `vriunap_absmain`.`dicCarreras` `C`) join `vriunap_absmain`.`dicCategorias` `K`) where ((`C`.`Id` = `D`.`IdCarrera`) and (`K`.`Id` = `D`.`IdCategoria`) and (`D`.`Activo` >= 1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxDatTesistas`
--
DROP TABLE IF EXISTS `vxDatTesistas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxDatTesistas`  AS  select `T`.`Id` AS `Id`,`T`.`Activo` AS `Activo`,`T`.`DNI` AS `DNI`,`T`.`Codigo` AS `Codigo`,`T`.`IdFacultad` AS `IdFacultad`,`F`.`Nombre` AS `Facultad`,`T`.`IdCarrera` AS `IdCarrera`,`C`.`Nombre` AS `Carrera`,`T`.`IdEspec` AS `IdEspec`,concat(`T`.`Apellidos`,', ',`T`.`Nombres`) AS `DatosPers`,`T`.`Apellidos` AS `Apellidos`,`T`.`Nombres` AS `Nombres`,`T`.`FechaReg` AS `FechaReg`,`T`.`SemReg` AS `SemReg`,`T`.`Direccion` AS `Direccion`,`T`.`NroCelular` AS `NroCelular`,`T`.`Correo` AS `Correo`,`T`.`Clave` AS `Clave` from ((`tblTesistas` `T` join `vriunap_absmain`.`dicCarreras` `C`) join `vriunap_absmain`.`dicFacultades` `F`) where ((`F`.`Id` = `T`.`IdFacultad`) and (`C`.`Id` = `T`.`IdCarrera`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxDocInLin`
--
DROP TABLE IF EXISTS `vxDocInLin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxDocInLin`  AS  select `L`.`IdDocente` AS `IdDocente`,`L`.`IdLinea` AS `IdLinea`,`L`.`Estado` AS `LinEstado`,`L`.`Tipo` AS `TipoLin`,`D`.`Tipo` AS `TipoDoc`,`D`.`CategAbrev` AS `CategAbrev`,`D`.`DatosPers` AS `DatosPers`,`D`.`Activo` AS `Activo`,`D`.`IdCarrera` AS `IdCarrera`,`D`.`IdCategoria` AS `IdCategoria` from (`docLineas` `L` join `vriunap_absmain`.`vwDocentes` `D`) where ((`L`.`IdDocente` = `D`.`Id`) and (`D`.`Activo` >= 1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxDocInLinEx`
--
DROP TABLE IF EXISTS `vxDocInLinEx`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxDocInLinEx`  AS  select `L`.`IdDocente` AS `IdDocente`,`L`.`IdLinea` AS `IdLinea`,(select `vriunap_absmain`.`tblLineas`.`Nombre` from `vriunap_absmain`.`tblLineas` where (`vriunap_absmain`.`tblLineas`.`Id` = `L`.`IdLinea`)) AS `Linea`,`L`.`Tipo` AS `TipoLin`,`D`.`Tipo` AS `TipoDoc`,`D`.`CategAbrev` AS `CategAbrev`,`D`.`DatosPers` AS `DatosPers`,`D`.`Activo` AS `Activo`,`D`.`IdCarrera` AS `IdCarrera`,`D`.`IdCategoria` AS `IdCategoria` from (`docLineas` `L` join `vriunap_absmain`.`vwDocentes` `D`) where ((`L`.`IdDocente` = `D`.`Id`) and (`D`.`Activo` >= 1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxLineas`
--
DROP TABLE IF EXISTS `vxLineas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxLineas`  AS  select `L`.`Id` AS `Id`,`L`.`Nombre` AS `Nombre`,count(0) AS `Repets`,(select count(0) from `docLineas` where (`docLineas`.`IdLinea` = `L`.`Id`)) AS `TotDoceRegs`,`L`.`IdArea` AS `IdArea`,`L`.`IdSubArea` AS `IdSubArea`,`L`.`IdDiscip` AS `IdDiscip`,`L`.`IdFacultad` AS `IdFacultad`,`L`.`IdCarrera` AS `IdCarrera` from `vriunap_absmain`.`tblLineas` `L` where (`L`.`Estado` = 1) group by `L`.`Nombre` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxMemos`
--
DROP TABLE IF EXISTS `vxMemos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxMemos`  AS  select `M`.`Id` AS `Id`,`M`.`Tipo` AS `Tipo`,`M`.`Ordinal` AS `Ordinal`,`M`.`Anio` AS `Anio`,`M`.`IdTramite` AS `IdTramite`,`M`.`IdCarrera` AS `IdCarrera`,`M`.`Fecha` AS `Fecha`,`T`.`Codigo` AS `Codigo`,`T`.`Estado` AS `Estado` from (`tblMemos` `M` join `tesTramites` `T`) where (`T`.`Id` = `M`.`IdTramite`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxSustens`
--
DROP TABLE IF EXISTS `vxSustens`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxSustens`  AS  select `S`.`Id` AS `Id`,`S`.`Activo` AS `Activo`,`S`.`IdTramite` AS `IdTramite`,`S`.`Codigo` AS `Codigo`,if((now() > `S`.`Fecha`),0,1) AS `Pendiente`,`C`.`Id` AS `IdCarrera`,`C`.`IdFacultad` AS `IdFacultad`,`C`.`Nombre` AS `Carrera`,`S`.`Fecha` AS `Fecha`,`S`.`Lugar` AS `Lugar` from (`tesSustens` `S` join `vriunap_absmain`.`dicCarreras` `C`) where (`C`.`Id` = `S`.`IdCarrera`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxTesTramites`
--
DROP TABLE IF EXISTS `vxTesTramites`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxTesTramites`  AS  select `T`.`Id` AS `Id`,`T`.`Tipo` AS `Tipo`,`T`.`Codigo` AS `Codigo`,`T`.`Anio` AS `Anio`,`T`.`Orden` AS `Orden`,`T`.`IdCarrera` AS `IdCarrera`,`T`.`Estado` AS `Estado`,`T`.`IdTesista1` AS `IdTesista1`,`T`.`IdTesista2` AS `IdTesista2`,`T`.`IdLinea` AS `IdLinea`,`T`.`IdLinAlte` AS `IdLinAlte`,`T`.`IdJurado1` AS `IdJurado1`,`T`.`IdJurado2` AS `IdJurado2`,`T`.`IdJurado3` AS `IdJurado3`,`T`.`IdJurado4` AS `IdJurado4`,`T`.`FechRegProy` AS `FechRegProy`,`T`.`FechActBorr` AS `FechActBorr`,`T`.`_T_` AS `_T_`,`T`.`FechModif` AS `FechModif`,(select `tblTesistas`.`IdEspec` from `tblTesistas` where (`tblTesistas`.`Id` = `T`.`IdTesista1`) limit 1) AS `IdEspec` from `tesTramites` `T` where (`T`.`Estado` > 0) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxZumLoginDoc`
--
DROP TABLE IF EXISTS `vxZumLoginDoc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxZumLoginDoc`  AS  select `L`.`Id` AS `Id`,`L`.`Tipo` AS `Tipo`,`L`.`IdUser` AS `IdUser`,concat(`D`.`Apellidos`,' ',`D`.`Nombres`) AS `DatosPers`,`L`.`Fecha` AS `Fecha`,`L`.`Accion` AS `Accion`,`L`.`OS` AS `OS`,`L`.`Browser` AS `Browser`,`L`.`IP` AS `IP` from (`logLogins` `L` join `vriunap_absmain`.`tblDocentes` `D`) where ((`L`.`Tipo` = 'D') and (`D`.`Id` = `L`.`IdUser`)) order by `L`.`Id` desc ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxZumLoginDocEx`
--
DROP TABLE IF EXISTS `vxZumLoginDocEx`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxZumLoginDocEx`  AS  select `L`.`Tipo` AS `Tipo`,`L`.`IdUser` AS `IdUser`,`L`.`DatosPers` AS `DatosPers`,sum(if((`L`.`Accion` = 'Ingreso'),1,0)) AS `A1`,sum(if((`L`.`Accion` = 'Clave incorrecta'),1,0)) AS `A2`,count(0) AS `Total` from `vxZumLoginDoc` `L` group by `L`.`IdUser` order by count(0) desc ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vxZumLoginTes`
--
DROP TABLE IF EXISTS `vxZumLoginTes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vxZumLoginTes`  AS  select `L`.`Id` AS `Id`,`L`.`Tipo` AS `Tipo`,`L`.`IdUser` AS `IdUser`,concat(`T`.`Apellidos`,' ',`T`.`Nombres`) AS `DatosPers`,`L`.`Fecha` AS `Fecha`,`L`.`Accion` AS `Accion`,`L`.`OS` AS `OS`,`L`.`Browser` AS `Browser`,`L`.`IP` AS `IP` from (`logLogins` `L` join `tblTesistas` `T`) where ((`L`.`Tipo` = 'T') and (`T`.`Id` = `L`.`IdUser`)) order by `L`.`Id` desc ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dicAmpliaciones`
--
ALTER TABLE `dicAmpliaciones`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicEstadTram`
--
ALTER TABLE `dicEstadTram`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `docEstudios`
--
ALTER TABLE `docEstudios`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `docLineas`
--
ALTER TABLE `docLineas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `docParentesco`
--
ALTER TABLE `docParentesco`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `estTramBach`
--
ALTER TABLE `estTramBach`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `logCordinads`
--
ALTER TABLE `logCordinads`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `logCorreos`
--
ALTER TABLE `logCorreos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `logLogins`
--
ALTER TABLE `logLogins`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `logTramites`
--
ALTER TABLE `logTramites`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Repositorio`
--
ALTER TABLE `Repositorio`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblCorrects`
--
ALTER TABLE `tblCorrects`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblManagers`
--
ALTER TABLE `tblManagers`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblMemos`
--
ALTER TABLE `tblMemos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblPreguntas`
--
ALTER TABLE `tblPreguntas`
  ADD PRIMARY KEY (`idpregunta`);

--
-- Indices de la tabla `tblSecres`
--
ALTER TABLE `tblSecres`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblTesistas`
--
ALTER TABLE `tblTesistas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesJuCambios`
--
ALTER TABLE `tesJuCambios`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesProyHabs`
--
ALTER TABLE `tesProyHabs`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesSustenAct`
--
ALTER TABLE `tesSustenAct`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesSustens`
--
ALTER TABLE `tesSustens`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesSustensSolic`
--
ALTER TABLE `tesSustensSolic`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesTramDoc`
--
ALTER TABLE `tesTramDoc`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesTramites`
--
ALTER TABLE `tesTramites`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesTramsBach`
--
ALTER TABLE `tesTramsBach`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesTramsDet`
--
ALTER TABLE `tesTramsDet`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dicAmpliaciones`
--
ALTER TABLE `dicAmpliaciones`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `docEstudios`
--
ALTER TABLE `docEstudios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `docLineas`
--
ALTER TABLE `docLineas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `docParentesco`
--
ALTER TABLE `docParentesco`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `estTramBach`
--
ALTER TABLE `estTramBach`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `logCordinads`
--
ALTER TABLE `logCordinads`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;
--
-- AUTO_INCREMENT de la tabla `logCorreos`
--
ALTER TABLE `logCorreos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;
--
-- AUTO_INCREMENT de la tabla `logLogins`
--
ALTER TABLE `logLogins`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=496;
--
-- AUTO_INCREMENT de la tabla `logTramites`
--
ALTER TABLE `logTramites`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;
--
-- AUTO_INCREMENT de la tabla `Repositorio`
--
ALTER TABLE `Repositorio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblCorrects`
--
ALTER TABLE `tblCorrects`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT de la tabla `tblManagers`
--
ALTER TABLE `tblManagers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tblMemos`
--
ALTER TABLE `tblMemos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `tblPreguntas`
--
ALTER TABLE `tblPreguntas`
  MODIFY `idpregunta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblSecres`
--
ALTER TABLE `tblSecres`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tblTesistas`
--
ALTER TABLE `tblTesistas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `tesJuCambios`
--
ALTER TABLE `tesJuCambios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT de la tabla `tesProyHabs`
--
ALTER TABLE `tesProyHabs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tesSustenAct`
--
ALTER TABLE `tesSustenAct`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tesSustens`
--
ALTER TABLE `tesSustens`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tesSustensSolic`
--
ALTER TABLE `tesSustensSolic`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tesTramDoc`
--
ALTER TABLE `tesTramDoc`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT de la tabla `tesTramites`
--
ALTER TABLE `tesTramites`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `tesTramsBach`
--
ALTER TABLE `tesTramsBach`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tesTramsDet`
--
ALTER TABLE `tesTramsDet`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
