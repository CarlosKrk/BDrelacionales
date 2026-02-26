-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-02-2026 a las 16:12:38
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
-- Base de datos: `gesnupifai`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id_artista` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id_artista`, `nombre`) VALUES
(1, 'Munic hb'),
(2, 'Gesnupi'),
(3, 'David Esparza el R12'),
(4, 'El fantasma'),
(5, 'Reginaldo Cucul');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista_canciones`
--

CREATE TABLE `artista_canciones` (
  `id_artista` int(11) NOT NULL,
  `id_cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artista_canciones`
--

INSERT INTO `artista_canciones` (`id_artista`, `id_cancion`) VALUES
(4, 2),
(3, 1),
(2, 6),
(1, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id_canciones` int(11) NOT NULL,
  `nombre_de_la_cancion` varchar(100) NOT NULL,
  `duracion` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id_canciones`, `nombre_de_la_cancion`, `duracion`) VALUES
(1, 'Caldo de Rata', '00:02:46.000000'),
(2, 'Si Yo Fuera Gay', '00:03:18.000000'),
(4, 'Mundial', '00:02:42.000000'),
(5, 'Coral Chorus Lobby Music', '01:13:26.000000'),
(6, 'Fast Rap', '00:01:00.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion_genero`
--

CREATE TABLE `cancion_genero` (
  `id_canciones` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cancion_genero`
--

INSERT INTO `cancion_genero` (`id_canciones`, `id_genero`) VALUES
(6, 3),
(1, 4),
(5, 1),
(2, 5),
(4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id_usuario` int(11) NOT NULL,
  `id_cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id_usuario`, `id_cancion`) VALUES
(1, 6),
(4, 5),
(5, 4),
(2, 2),
(3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id_generos` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id_generos`, `nombre`) VALUES
(1, 'phonk'),
(2, 'reguephonk'),
(3, 'rap'),
(4, 'banda'),
(5, 'pop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresia`
--

CREATE TABLE `membresia` (
  `id_membresia` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `membresia`
--

INSERT INTO `membresia` (`id_membresia`, `nombre`, `precio`) VALUES
(1, 'Bayunu premium mensual', 500),
(2, 'Bayunu premium anual', 6000),
(3, 'Bayunu premium eterno', 50000),
(4, 'Bayunu pobre', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `n_canciones` int(11) NOT NULL,
  `duracion_playlist` time(6) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `nombre`, `n_canciones`, `duracion_playlist`, `id_usuario`) VALUES
(7, 'Ifs', 1141, '07:23:30.000000', 5),
(8, 'Musica perrona', 6769, '99:59:59.000000', 1),
(9, 'Fast rap', 1, '00:01:00.000000', 3),
(10, 'Jinasio Ginamsio Jean Ignacio', 202, '04:05:30.000000', 2),
(11, 'Punchis punchis de los 2000', 70, '03:02:29.000000', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id_playlist` int(11) NOT NULL,
  `id_cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `playlist_canciones`
--

INSERT INTO `playlist_canciones` (`id_playlist`, `id_cancion`) VALUES
(9, 6),
(7, 5),
(10, 2),
(11, 4),
(8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_membresia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `id_membresia`) VALUES
(1, 'Carlos Santiago Iglesias Herrera', 3),
(2, 'La gilbertona', 2),
(3, 'VenoctoBuldak III', 1),
(4, 'Santoir25', 4),
(5, 'el Rayado de Mazatlan', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id_artista`);

--
-- Indices de la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  ADD KEY `id_artista` (`id_artista`),
  ADD KEY `id_cancion` (`id_cancion`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id_canciones`);

--
-- Indices de la tabla `cancion_genero`
--
ALTER TABLE `cancion_genero`
  ADD KEY `id_canciones` (`id_canciones`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_cancion` (`id_cancion`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_generos`);

--
-- Indices de la tabla `membresia`
--
ALTER TABLE `membresia`
  ADD PRIMARY KEY (`id_membresia`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD KEY `id_playlist` (`id_playlist`),
  ADD KEY `id_cancion` (`id_cancion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_membresia` (`id_membresia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id_artista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id_canciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id_generos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `membresia`
--
ALTER TABLE `membresia`
  MODIFY `id_membresia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  ADD CONSTRAINT `artista_canciones_ibfk_1` FOREIGN KEY (`id_artista`) REFERENCES `artistas` (`id_artista`),
  ADD CONSTRAINT `artista_canciones_ibfk_2` FOREIGN KEY (`id_cancion`) REFERENCES `canciones` (`id_canciones`);

--
-- Filtros para la tabla `cancion_genero`
--
ALTER TABLE `cancion_genero`
  ADD CONSTRAINT `cancion_genero_ibfk_1` FOREIGN KEY (`id_canciones`) REFERENCES `canciones` (`id_canciones`),
  ADD CONSTRAINT `cancion_genero_ibfk_2` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id_generos`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`id_cancion`) REFERENCES `canciones` (`id_canciones`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`id_cancion`) REFERENCES `canciones` (`id_canciones`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`id_playlist`) REFERENCES `playlist` (`id_playlist`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_membresia`) REFERENCES `membresia` (`id_membresia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
