-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-06-2025 a las 01:42:31
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sesion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta_cafete`
--

CREATE TABLE `encuesta_cafete` (
  `p1` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `p2` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `p3` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `p4` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `p5` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `p6` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `p7` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `p8` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `p9` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `p10` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `encuesta_cafete`
--

INSERT INTO `encuesta_cafete` (`p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `p10`) VALUES
('Semanalmente', 'Exelente', 'Te', 'Sí', 'Sí', 'Sí', 'Sí', 'Sí', 'Sí', 'Sí');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(18) COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `password`) VALUES
('Jair', 123),
('Monica', 123);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
