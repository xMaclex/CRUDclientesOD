-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2023 a las 23:17:55
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `nombre_apellido` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `gmail` varchar(30) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `estado civil` varchar(10) NOT NULL,
  `procedimiento` varchar(30) DEFAULT NULL,
  `Afiliadora_de_Salud` varchar(55) DEFAULT NULL,
  `FechaRegistro` date DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL CHECK (`sexo` in ('masculino','femenino'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `nombre_apellido`, `direccion`, `gmail`, `telefono`, `estado civil`, `procedimiento`, `Afiliadora_de_Salud`, `FechaRegistro`, `sexo`) VALUES
(1, 'ODILETT BALBUENA', 'AV MAXIMO GOMEZ', 'rabandola_human@gmail.com', '803-384-0087', 'soltera', 'ortodoncia', 'afiliadora', '2023-02-22', 'femenino'),
(2, 'esmeralda gutierrez', 'calle rubio', 'esmera65@gmail.com', '8095213879', 'casada', 'extraccion dental', 'afiliadora', '2023-01-20', 'femenino'),
(3, 'pedro florentino', 'calle florcita', 'dd23@icloud.com', '8562344060', 'divorciado', 'blanqueamiento dental', 'afiliadora', '2022-12-13', 'masculino'),
(4, 'efmamjjasond sabina', 'respoaldo 21', 'efmamjjasond@gmail.com', '8098875149', 'viudo', 'tratamiento de canal', 'afiliadora', '2023-02-17', 'masculino'),
(5, 'joaqui pausolini', 'av espana', 'jpausolini@gmail.com', '8297089635', 'divorciado', 'limpieza dental', 'afiliadora', '2022-06-17', 'masculino'),
(6, 'lucas pascual', 'calle juanquin b', 'lpasc@gmail.com', '8498745698', 'viudo', 'tratamiento de canal', 'afiliadora', '2023-04-29', 'masculino'),
(7, 'marcela juarez', 'av. mexico', 'macejez@gmail.com', '8498514532', 'soltera', 'extraccion dental', 'afiliadora', '2023-04-07', 'femenino'),
(8, 'evangeline zaraga', 'av. zoologico', 'evadeleden@outlook.com', '8097426985', 'casada', 'extraccion dental', 'afiliadora', '2023-04-20', 'femenino'),
(9, 'sebastian zapata', 'calle leopordo', 'zapatastian@hotmail.com', '8095479632', 'casado', 'ortodoncia', 'afiliadora', '2023-04-19', 'masculino');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
