-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-05-2026 a las 22:46:47
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
-- Base de datos: `videojuegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombre`, `descripcion`) VALUES
(1, 'RPG', 'género de videojuegos donde los jugadores asumen el papel de personajes en un mundo ficticio, tomando decisiones que afectan la historia.'),
(2, 'sandbox', 'entorno virtual aislado y seguro que permite ejecutar programas, probar software o analizar archivos sospechosos sin riesgo de dañar el sistema operativo principal o la red'),
(3, 'Novela visual', 'juego donde puedes tener citas de forma virtual con personaje predeterminado'),
(4, 'simulacion', 'juego para imitar cosas sobre actividades'),
(5, 'terror psicologico', 'juego donde te da terror no por sustos si no que por suspenso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataforma`
--

CREATE TABLE `plataforma` (
  `id_plataforma` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `fabricante` varchar(80) NOT NULL,
  `año_lanzamiento` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `plataforma`
--

INSERT INTO `plataforma` (`id_plataforma`, `nombre`, `fabricante`, `año_lanzamiento`) VALUES
(1, 'Playstation 4', 'Sony', '2013'),
(2, 'Nintendo Switch 2', 'Nintendo', '2025'),
(3, 'Steam Deck', 'Valve', '2022'),
(4, 'Epic Games Store', 'Epic Games', '2018');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuego`
--

CREATE TABLE `videojuego` (
  `id_juego` int(11) NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `desarrolladora` varchar(100) NOT NULL,
  `año_lanzamiento` year(4) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `videojuego`
--

INSERT INTO `videojuego` (`id_juego`, `titulo`, `desarrolladora`, `año_lanzamiento`, `precio`, `id_genero`) VALUES
(1, 'Doki Doki Literature Club', 'Team Salvato', '2023', 10.00, 5),
(2, 'Minecraft', 'Mojang Studios', '2009', 100.00, 2),
(3, 'Danganronpa (misterio escolar)', 'Spike Chunsoft', '2010', 51.00, 3),
(4, 'Deltarune', 'Toby Fox', '2014', 21.00, 1),
(5, 'Stardew Valley', 'Eric Barone', '2016', 78.00, 4),
(6, 'Garry\'s Mod', 'Facepunch Studios', '2006', 62.00, 2),
(7, 'overcooked', ' Ghost Town Games', '2022', 26.00, 4),
(8, 'Silent Hill 2', 'Team Silent', '2001', 15.00, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuego_plataforma`
--

CREATE TABLE `videojuego_plataforma` (
  `id_juego` int(11) NOT NULL,
  `id_plataforma` int(11) NOT NULL,
  `fecha_disponible` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `videojuego_plataforma`
--

INSERT INTO `videojuego_plataforma` (`id_juego`, `id_plataforma`, `fecha_disponible`) VALUES
(1, 4, '2026-10-16'),
(2, 1, '2026-11-02'),
(2, 2, '2026-05-11'),
(3, 3, '2027-01-02'),
(4, 1, '2026-06-20'),
(4, 2, '2026-08-19'),
(5, 3, '2027-07-16'),
(6, 3, '2026-07-05'),
(7, 4, '2028-08-20'),
(8, 3, '2026-08-18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`id_plataforma`);

--
-- Indices de la tabla `videojuego`
--
ALTER TABLE `videojuego`
  ADD PRIMARY KEY (`id_juego`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `videojuego_plataforma`
--
ALTER TABLE `videojuego_plataforma`
  ADD PRIMARY KEY (`id_juego`,`id_plataforma`),
  ADD KEY `id_plataforma` (`id_plataforma`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `id_plataforma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `videojuego`
--
ALTER TABLE `videojuego`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `videojuego`
--
ALTER TABLE `videojuego`
  ADD CONSTRAINT `videojuego_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`);

--
-- Filtros para la tabla `videojuego_plataforma`
--
ALTER TABLE `videojuego_plataforma`
  ADD CONSTRAINT `videojuego_plataforma_ibfk_1` FOREIGN KEY (`id_juego`) REFERENCES `videojuego` (`id_juego`),
  ADD CONSTRAINT `videojuego_plataforma_ibfk_2` FOREIGN KEY (`id_plataforma`) REFERENCES `plataforma` (`id_plataforma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
