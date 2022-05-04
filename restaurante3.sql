-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-12-2021 a las 10:57:37
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante3`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `selectCarta` ()  BEGIN
		SELECT * FROM carta;
	END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectCartas` (IN `_id_carta` INT)  BEGIN
		SELECT * FROM carta WHERE idcarta = _id_carta;
	END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectProducto` (IN `_id_producto` INT)  BEGIN
		SELECT * FROM productos WHERE id_producto = _id_producto;
	END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectProductos` ()  BEGIN
		SELECT * FROM productos;
	END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carta`
--

CREATE TABLE `carta` (
  `idcarta` int(11) NOT NULL,
  `nom_carta` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` float NOT NULL,
  `idcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carta`
--

INSERT INTO `carta` (`idcarta`, `nom_carta`, `descripcion`, `precio`, `idcategoria`) VALUES
(1, 'Choritos a la chalaca', '12 unidades de choros a la chalaca, lleva:\r\nchoros frescos en concha, tomate y cebolla en cuadros, zumo de limón tipo acevichado ', 25, 1),
(2, 'Leche de tigre', '1 copa grande de leche de tigre, lleva:\r\npescado en cuadros, cebolla, chifles, chicharrón de pescado y jugo de leche de tigre', 20, 1),
(3, 'Bisteck a lo pobre', 'Plato personal de bisteck a lo pobre, lleva:\r\n300gr de bisteck a la parrilla, 1 plátano frito, 1 huevo, 1 porción de arroz y ensalada fresca', 30, 2),
(4, 'Chaufa', 'Plato personal de chaufa (carne o pollo), lleva:\r\n500gm de arroz, pollo o carne, tortilla de huevo cortada.', 25, 2),
(5, 'Lomo saltado', 'Plato personal de lomo saltado, lleva:\r\n200gm de lomo salteado en trozos, cebolla y tomate salteados, 1 porción de papas nativas fritas, y 1 porción de arroz. ', 25, 2),
(6, 'Ceviche de pescado', 'Plato personal de ceviche, lleva:\r\npescado fresco en trozos, cebolla, camote, choclo, yuyo, y jugo de leche de tigre.', 35, 3),
(7, 'Chicharrón', 'Plato personal de chicharrón, lleva:\r\npescado fresco marinado en salsa de la casa, porción de yucas fritas, y sarsa criolla.', 35, 3),
(8, 'Arroz con mariscos', 'Plato personal de arroz con mariscos, lleva:\r\nmariscos en salsa madre de la casa, arroz con concentrado de mariscos y salsa madre, sarsa criolla y parmesano rallado.', 30, 3),
(9, 'Jalea mixta', 'Plato personal de jales mixta, lleva:\r\nchicharrón mixto, filete de pescado apanado, tortilla de langostino, 1 porción de yuca, y sarsa criolla. ', 40, 3),
(10, 'Chupe de mariscos', 'Plato personal de chupe de mariscos, lleva:\r\ncaldo de mariscos tipo chupe, cangrejo o camarón, yuca sancochada, 1 huevo y 1 porción de arroz. ', 35, 3),
(11, 'Chicha morada', 'Jarra de 1L de chicha morada natural.', 15, 4),
(12, 'Limonada', 'Jarra de 1L de limonada clásica, frozen o americana.', 15, 4),
(13, 'Jugo de maracuyá ', 'Jarra de 1L de jugo de maracuyá natural clásica o frozen.', 10, 4),
(14, 'Gaseosas 0.5L', 'Gaseosa de 0.5L descartable Inca-kola o Coca-cola.', 4, 4),
(15, 'Cerveza Cusqueña', 'Botella de 650 ML de cerveza Cusqueña.', 12, 4),
(16, 'Cerveza Pilsen', 'Botella de 650 ML de cerveza Pilsen.', 10, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `categoria`) VALUES
(1, 'entradas'),
(2, 'criollos'),
(3, 'marinos '),
(4, 'bebidas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `celular` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre`, `email`, `celular`) VALUES
(1, 'RichardQuintana', 'franhkquintana@gmail.com', 944788482),
(2, 'RaulQuintana', 'franhkquintana@gmail.com', 944788482);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `idcomentario` int(11) NOT NULL,
  `comentario` varchar(200) NOT NULL,
  `idcarta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`idcomentario`, `comentario`, `idcarta`) VALUES
(1, 'excelente plato', 1),
(2, 'delicioso todo', 1),
(3, '10/10', 2),
(4, 'Todo muy fresco', 6),
(5, 'En su punto', 6),
(6, 'Las papas crujientes y el sabor exquisito ', 5),
(7, 'Muy buena zazón', 4),
(8, 'Todos los mariscos muy frecos', 8),
(9, 'El sabor muy bueno', 9),
(10, 'Un buen chupe contundente ', 10),
(11, 'Muy buena la calidad de la carne', 3),
(12, 'Muy rico', 7),
(13, 'Natural, como debe de ser', 11),
(14, 'El punto exacto de todo', 12),
(15, 'El picante adecuado', 1),
(16, 'Muy rico todo', 8),
(17, 'Muy rico todo', 3),
(18, 'Excelente comida y excelente servicio', 1),
(19, 'Excelente comida y excelente servicio', 10),
(20, 'Muy recomendable', 2),
(21, 'Muy recomendable', 8),
(22, 'Muy recomendable', 11),
(23, 'Muy recomendable', 9),
(24, 'El arroz bien frito', 4),
(25, 'Muy buen sabor', 4),
(26, 'Sabor criollo de calidad', 5),
(27, 'Muy buena carne', 5),
(28, 'El pescado fresco y muy buena sazon ', 7),
(29, 'El crocante en su punto', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `img_carta`
--

CREATE TABLE `img_carta` (
  `idimg` int(11) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `idcarta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `img_carta`
--

INSERT INTO `img_carta` (`idimg`, `direccion`, `idcarta`) VALUES
(1, 'img/entradas/choritos.jpg', 1),
(2, 'img/entradas/leche_de_tigre.jpg', 2),
(3, 'img/platoscriollo/bisteck.jpg', 3),
(4, 'img/platoscriollo/chaufa.jpg', 4),
(5, 'img/platoscriollo/lomo2.jpg', 5),
(6, 'img/platosmarino/ceviche.jpg', 6),
(7, 'img/platosmarino/chicharron.jpg', 7),
(8, 'img/platosmarino/chupe2.jpg', 10),
(9, 'img/platosmarino/jalea.jpg', 9),
(10, 'img/platosmarino/mariscos.jpg', 8),
(11, 'img/bebidas/chicha.jpg', 11),
(12, 'img/bebidas/cusquena_2.jpg', 15),
(13, 'img/bebidas/gaseosa_0.5_.jpg', 14),
(14, 'img/bebidas/limonada.jpg', 12),
(15, 'img/bebidas/maracuya.jpg', 13),
(16, 'img/bebidas/pilsen.jpg', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_detalle`
--

CREATE TABLE `pedido_detalle` (
  `id_pedidoDetalle` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `subtotal` float NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `idcliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_encabezado`
--

CREATE TABLE `pedido_encabezado` (
  `id_pedidoEncabezado` int(11) NOT NULL,
  `precio` float NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` float NOT NULL,
  `idcarta` int(11) NOT NULL,
  `id_pedidoDetalle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `img_producto` varchar(255) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `precio` float NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `img_producto`, `id_categoria`, `precio`, `stock`) VALUES
(1, 'Camisa Manga Larga', 'images/home/gallery2.jpg', 2, 39.99, 10),
(2, 'Vestido negro', 'images/home/product3.jpg', 2, 19.99, 20),
(3, 'Sueter azul', 'images/home/product5.jpg', 2, 29.99, 20),
(4, 'Camiseta blanca', 'images/home/product6.jpg', 2, 13.99, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `idreserva` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `cantidad` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`idreserva`, `fecha`, `hora`, `cantidad`, `idusuario`) VALUES
(1, '2021-12-08', '08:21:00', 8, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `idcliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `usuario`, `password`, `estado`, `idcliente`) VALUES
(2, 'Frank24', '123', 'a', 1),
(3, 'Frank24', '123', 'a', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carta`
--
ALTER TABLE `carta`
  ADD PRIMARY KEY (`idcarta`),
  ADD KEY `cfkcat_carta` (`idcategoria`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idcomentario`),
  ADD KEY `cfkcar_com` (`idcarta`);

--
-- Indices de la tabla `img_carta`
--
ALTER TABLE `img_carta`
  ADD PRIMARY KEY (`idimg`),
  ADD KEY `idcarta` (`idcarta`);

--
-- Indices de la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  ADD PRIMARY KEY (`id_pedidoDetalle`),
  ADD KEY `cfkcliente_peDeta` (`idcliente`);

--
-- Indices de la tabla `pedido_encabezado`
--
ALTER TABLE `pedido_encabezado`
  ADD PRIMARY KEY (`id_pedidoEncabezado`),
  ADD KEY `cfkcarta_peEnac` (`idcarta`),
  ADD KEY `cfkpeDeta_peEnac` (`id_pedidoDetalle`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`idreserva`),
  ADD KEY `cfkuser_reserva` (`idusuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `cfkcliente_user` (`idcliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carta`
--
ALTER TABLE `carta`
  MODIFY `idcarta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idcomentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `img_carta`
--
ALTER TABLE `img_carta`
  MODIFY `idimg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  MODIFY `id_pedidoDetalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido_encabezado`
--
ALTER TABLE `pedido_encabezado`
  MODIFY `id_pedidoEncabezado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `idreserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carta`
--
ALTER TABLE `carta`
  ADD CONSTRAINT `cfkcat_carta` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`);

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `cfkcar_com` FOREIGN KEY (`idcarta`) REFERENCES `carta` (`idcarta`);

--
-- Filtros para la tabla `img_carta`
--
ALTER TABLE `img_carta`
  ADD CONSTRAINT `img_carta_ibfk_1` FOREIGN KEY (`idcarta`) REFERENCES `carta` (`idcarta`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  ADD CONSTRAINT `cfkcliente_peDeta` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`);

--
-- Filtros para la tabla `pedido_encabezado`
--
ALTER TABLE `pedido_encabezado`
  ADD CONSTRAINT `cfkcarta_peEnac` FOREIGN KEY (`idcarta`) REFERENCES `carta` (`idcarta`),
  ADD CONSTRAINT `cfkpeDeta_peEnac` FOREIGN KEY (`id_pedidoDetalle`) REFERENCES `pedido_detalle` (`id_pedidoDetalle`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `cfkuser_reserva` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `cfkcliente_user` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
