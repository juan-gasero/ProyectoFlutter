-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-04-2025 a las 03:14:20
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `recetario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `Primarykey` int(11) NOT NULL,
  `Receta` varchar(1000) NOT NULL,
  `Numero` int(100) NOT NULL,
  `Categoria` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriasrecetas`
--

CREATE TABLE `categoriasrecetas` (
  `id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `receta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `PrimaryKey` int(11) NOT NULL,
  `Nombre` varchar(500) NOT NULL,
  `Cantidad` int(100) NOT NULL,
  `Unidaddemedida` varchar(100) NOT NULL,
  `Receta` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listafavoritos`
--

CREATE TABLE `listafavoritos` (
  `Primarykey` int(11) NOT NULL,
  `receta_id` int(11) NOT NULL,
  `Usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasos`
--

CREATE TABLE `pasos` (
  `PrimaryKey` int(11) NOT NULL,
  `Numerodepasos` int(100) NOT NULL,
  `Descripcion` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta`
--

CREATE TABLE `receta` (
  `PrimaryKey` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(1000) NOT NULL,
  `Tiempodepreparacion` varchar(200) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Dificultad` varchar(100) NOT NULL,
  `Alergias` varchar(100) NOT NULL,
  `Usuario_id` int(11) NOT NULL,
  `Tiempodecreacion` date NOT NULL,
  `paso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetaingredientes`
--

CREATE TABLE `recetaingredientes` (
  `id` int(11) NOT NULL,
  `receta_id` int(11) NOT NULL,
  `ingrediente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `PrimaryKey` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(250) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Edad` date NOT NULL,
  `Contrasena` varchar(50) NOT NULL,
  `Imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`Primarykey`);

--
-- Indices de la tabla `categoriasrecetas`
--
ALTER TABLE `categoriasrecetas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `receta_id` (`receta_id`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`PrimaryKey`);

--
-- Indices de la tabla `listafavoritos`
--
ALTER TABLE `listafavoritos`
  ADD PRIMARY KEY (`Primarykey`),
  ADD KEY `Usuario_id` (`Usuario_id`),
  ADD KEY `receta_id` (`receta_id`);

--
-- Indices de la tabla `pasos`
--
ALTER TABLE `pasos`
  ADD PRIMARY KEY (`PrimaryKey`);

--
-- Indices de la tabla `receta`
--
ALTER TABLE `receta`
  ADD PRIMARY KEY (`PrimaryKey`),
  ADD KEY `Usuario_id` (`Usuario_id`),
  ADD KEY `paso_id` (`paso_id`);

--
-- Indices de la tabla `recetaingredientes`
--
ALTER TABLE `recetaingredientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receta_id` (`receta_id`),
  ADD KEY `ingrediente_id` (`ingrediente_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`PrimaryKey`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `Primarykey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoriasrecetas`
--
ALTER TABLE `categoriasrecetas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `PrimaryKey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `listafavoritos`
--
ALTER TABLE `listafavoritos`
  MODIFY `Primarykey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pasos`
--
ALTER TABLE `pasos`
  MODIFY `PrimaryKey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `receta`
--
ALTER TABLE `receta`
  MODIFY `PrimaryKey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recetaingredientes`
--
ALTER TABLE `recetaingredientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `PrimaryKey` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categoriasrecetas`
--
ALTER TABLE `categoriasrecetas`
  ADD CONSTRAINT `categoriasrecetas_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`Primarykey`),
  ADD CONSTRAINT `categoriasrecetas_ibfk_2` FOREIGN KEY (`receta_id`) REFERENCES `receta` (`PrimaryKey`);

--
-- Filtros para la tabla `listafavoritos`
--
ALTER TABLE `listafavoritos`
  ADD CONSTRAINT `listafavoritos_ibfk_1` FOREIGN KEY (`receta_id`) REFERENCES `receta` (`PrimaryKey`),
  ADD CONSTRAINT `listafavoritos_ibfk_2` FOREIGN KEY (`Usuario_id`) REFERENCES `usuario` (`PrimaryKey`);

--
-- Filtros para la tabla `receta`
--
ALTER TABLE `receta`
  ADD CONSTRAINT `receta_ibfk_1` FOREIGN KEY (`Usuario_id`) REFERENCES `usuario` (`PrimaryKey`),
  ADD CONSTRAINT `receta_ibfk_2` FOREIGN KEY (`paso_id`) REFERENCES `pasos` (`PrimaryKey`);

--
-- Filtros para la tabla `recetaingredientes`
--
ALTER TABLE `recetaingredientes`
  ADD CONSTRAINT `recetaingredientes_ibfk_1` FOREIGN KEY (`ingrediente_id`) REFERENCES `ingredientes` (`PrimaryKey`),
  ADD CONSTRAINT `recetaingredientes_ibfk_2` FOREIGN KEY (`receta_id`) REFERENCES `receta` (`PrimaryKey`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
