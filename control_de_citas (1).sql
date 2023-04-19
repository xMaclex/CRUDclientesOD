-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-04-2023 a las 21:54:13
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
-- Estructura de tabla para la tabla `control_de_citas`
--

CREATE TABLE `control_de_citas` (
  `id` int(11) NOT NULL,
  `nombre_apellido` varchar(255) DEFAULT NULL,
  `fecha_de_cita` date DEFAULT NULL,
  `diagnostico` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `control_de_citas`
--

INSERT INTO `control_de_citas` (`id`, `nombre_apellido`, `fecha_de_cita`, `diagnostico`) VALUES
(1, 'Nombre Apellido1', '2023-05-01', '1- Apiñamiento severo en las arcadas superior e inferior.\r\n2- Mordida cruzada anterior.\r\n3- Sobremordida profunda.'),
(2, NULL, '2023-05-03', '1- Caries extensa en el tercer molar inferior derecho.\r\n2- Maloclusión debido al apiñamiento causado por el tercer molar.'),
(3, NULL, '2023-05-05', '1- Decoloraciones y manchas en los incisivos centrales superiores que afectan la apariencia estética de la sonrisa de Juan.\r\n2- Ausencia de caries y enfermedades periodontales.'),
(6, NULL, '2023-05-08', '1- Caries profunda en el diente molar superior derecho de Ana que ha llegado a la pulpa.\r\n2- Infección pulpar y lesión periapical asociada.\r\n3- Dolor persistente, sensibilidad y movilidad del diente afectado.'),
(7, NULL, '2023-05-09', '1- Acumulación de placa y sarro en los dientes de Juan, especialmente en las áreas interproximales y cerca de las encías.\r\n2- Gingivitis moderada con signos de inflamación, enrojecimiento y sangrado de las encías.\r\n3- Falta de higiene oral adecuada y falt'),
(8, NULL, '2023-05-11', '1- Caries profunda en el diente posterior derecho (muela) de Ana, que ha alcanzado la pulpa dental.\r\n2- Infección pulpar o necrosis pulpar probable en el diente afectado.\r\n3- Cambio de color del diente debido a la necrosis pulpar y posible infección.'),
(9, NULL, '2023-05-12', '1- Fallo del tratamiento conservador (endodoncia) en el diente afectado.');

--
-- Disparadores `control_de_citas`
--
DELIMITER $$
CREATE TRIGGER `tr_actualizar_citas` BEFORE INSERT ON `control_de_citas` FOR EACH ROW BEGIN
  DECLARE id_contacto INT;
  SELECT id INTO id_contacto FROM contactos WHERE nombre_apellido = NEW.nombre_apellido;
  SET NEW.id = id_contacto;
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `control_de_citas`
--
ALTER TABLE `control_de_citas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `control_de_citas`
--
ALTER TABLE `control_de_citas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `control_de_citas`
--
ALTER TABLE `control_de_citas`
  ADD CONSTRAINT `control_de_citas_ibfk_1` FOREIGN KEY (`id`) REFERENCES `contactos` (`id`),
  ADD CONSTRAINT `control_de_citas_ibfk_2` FOREIGN KEY (`id`) REFERENCES `contactos` (`id`),
  ADD CONSTRAINT `control_de_citas_ibfk_3` FOREIGN KEY (`id`) REFERENCES `contactos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
