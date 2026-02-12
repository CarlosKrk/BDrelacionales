-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2026 a las 16:22:06
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripción` varchar(500) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `marca`, `descripción`, `cantidad`) VALUES
(1, 'Nintendo switch 2 Internacional - switch 2 Edition', 9599, 'Nintendo', 'La siguiente evolución de la consola Nintendo Switch debido a que es una version internacional puede requerir o incluir adaptadores de corriente para que sea compatible en mexico\r\nUna consola, tres modos de juego: portátil, semiportátil y modo TV\r\nUna vívida pantalla LCD táctil de mayor tamaño (7.9 pulgadas, 20.06 cm) compatible con HDR y hasta 120 fps\r\nUna base que respalda la resolución 4K cuando esté conectada a una televisión compatible (El televisor y el juego deben ser compatibles con la r', 50),
(2, 'PlayStation®5 console (slim)', 11999, 'PlayStation', 'Incluye control inalámbrico DualSense, unidad SSD de 1 TB, unidad de disco, 2 patas de soporte horizontales, cable HDMI, cable de alimentación de CA, cable USB, material impreso, Astro\'s Playroom (juego preinstalado).', 30),
(3, 'Hot Wheels Unleashed - Standard Edition - Playstation 5', 549, 'Deep Silver', 'Clasificación del juego: A Todo Público\r\nHot Wheels: Unleashed es un trepidante videojuego de carreras arcade que adapta a PC, PS5, PS4, Xbox Series X|S y Xbox One del universo de coches de juguete Hot Wheels, incluyendo la posibilidad de pilotar automóviles con su propia personalidad y estilo, diferentes rasgos y niveles de rareza.\r\nEn Hot Wheels: Unleashed esperan carreras para disfrute multijugador en pantalla compartida y vía online, pudiendo competir en pistas ambientadas en lugares de la v', 15),
(4, 'Super Smash Bros. Ultimate - Standard Edition - Nintendo Switch', 848, 'Nintendo', '¡una nueva entrada en la serie Super Smash Bros. para el sistema Nintendo Switch !\r\nNuevos luchadores, como Inkling de la serie Splatoon y Ridley de la serie Metroid, hacen su debut en la serie Super Smash Bros\r\nCombates rápidos, nuevos elementos, nuevos ataques, nuevas opciones defensivas y más mantendrán la batalla en rabia, ya sea que estés en casa o en movimiento\r\nProducto de calidad', 25),
(5, 'Xbox Series X 1TB Consola - Versión Internacional', 12064, 'Xbox', 'La Versión Internacional corresponde a un producto vendido en distintos países. Esta consola no incluye soporte local de la marca pero sí está respaldada por las políticas de devolución de Amazon México.\r\nPresentamos Xbox Series X, la consola Xbox más rápida y potente de la historia. Juega miles de títulos de cuatro generaciones de consolas: todos los juegos se ven y se juegan mejor en Xbox Series X.\r\nExperimenta la velocidad y el rendimiento de la próxima generación con Xbox Velocity Architectu', 40),
(6, 'Minecraft Story Mode - Season 2 Pass Disc (Xbox One)', 2107, 'Maximum Games', 'At the end of Minecraft: Story Mode, Jesse and the Order of the Stone had become the most famous heroes in the world. Now, several years later, Jesse is the leader of Beacontown and discovers the Prismarine Gauntlet, a relic of incredible power. New adventures and friends await in a world bigger than Jesse could have possibly imagined.', 12),
(7, 'Funko Pop! Marvel: Friendly Neighborhood Spider-Man - Spider-Man - Collectable Vinyl Figure - Gift Idea - Official Merchandise - Toys for Kids & Adults - Cartoons Fans', 368, 'Funko', 'IDEAL COLLECTIBLE SIZE - At approximately 3.75 inches (9.5 cm) tall, this vinyl mini figurine complements other collectable merchandise and fits perfectly in your display case or on your desk.\r\nPREMIUM VINYL MATERIAL - Made from durable vinyl, this collectible is built to last and withstand daily wear, ensuring long-lasting enjoyment for fans and collectors alike.\r\nGIFT IDEA FOR FRIENDLY NEIGHBORHOOD SPIDER-MAN FANS - Ideal for holidays, birthdays, or special occasions and as a present this figu', 26),
(8, 'Lexibook Spider-Man - Ordenador portátil Educativo y bilingüe español/inglés - Juguete para niños con 124 Actividades para Aprender, Juegos y música - Azul/Rojo, JC598SPi2', 1170, 'Lexibook', 'Ordenador portátil bilingüe con 124 actividades (62 en cada idioma) ¡para disfrutar de una experiencia divertida e interactiva!\r\nContenido educativo: Español e Inglés, Matemáticas, Lógica, Música, Reloj.\r\nActividades divertidas con diferentes niveles para aprender, probar y mejorar sus propios conocimientos.\r\nTambién incluye una gran cantidad de juegos para divertirse después de aprender.\r\nErgonómico, inspirado en ordenadores portátiles reales.\r\nPrático tamaño para facilitar su agarre.\r\n¡Música ', 21),
(9, 'TECHWOLF Mouse Gamer 3 en 1 (Bluetooth 5.0/USB 2.4Ghz/Cable) - 10,000 dpi Ajustable, Chip PMW3325, RGB Multicolor, 6 Botones Programables, Diseño Ergonómico para PC y Laptops, Windows/Mac (Blanco)', 569, 'TECHWOLF', 'DPI Ajustable hasta 10,000, Con 6 niveles de DPI ajustables (1000/1600/2400/3200/6400/10000), puedes personalizar la sensibilidad del mouse según tus necesidades de juego o trabajo.\r\nIluminación RGB Multicolor, Con 16.8 millones de colores RGB, puedes personalizar los efectos de luz para adaptarlos a tu ambiente de juego o trabajo, creando una atmósfera única.\r\nConexión Multimodo: Bluetooth, USB 2.4G y Tipo-C, Este mouse ofrece tres opciones de conexión para máxima versatilidad: Bluetooth 5.0, U', 14),
(10, 'nubia Smartphone Neo 3 GT 5G Gris 6.7” 120Hz, 50MP+2MP, 256GB+20 GB RAM(8GB + 12GB Dinámica), Batería 6000mAh, Android 15', 4360, 'nubia', 'Cámara 50MP + 2 MP– Captura imágenes impresionantes con su doble cámara y selfies nítidas con la frontal de 16MP.\r\nSistema de Refrigeración VC: Asegura una rápida dispersión del calor y mejora la eficiencia general de la refrigeración para mantener un rendimiento óptimo.\r\nDual Gaming Shoulder Triggers: Disparadores laterales diseñados para una experiencia de juego más inmersiva y precisa.\r\nMotor Lineal en el Eje Z: Experimenta una vibración vívida y retroalimentación háptica precisa para una exp', 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
