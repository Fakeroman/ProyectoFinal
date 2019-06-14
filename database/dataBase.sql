-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2019 a las 18:59:26
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectofinal_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adeudo`
--

CREATE TABLE `adeudo` (
  `IDAdeudo` int(11) NOT NULL,
  `IDDeDetallesDelPedido` int(11) NOT NULL,
  `IDdeDeudor` int(11) NOT NULL,
  `TotalDeuda` int(11) NOT NULL,
  `IDPropietario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallesdelpedido`
--

CREATE TABLE `detallesdelpedido` (
  `IDDeDetallesDelPedido` int(11) NOT NULL,
  `ID del producto` int(11) NOT NULL,
  `IDDePedido` int(11) NOT NULL,
  `CantidadDeProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deudor`
--

CREATE TABLE `deudor` (
  `IDDeDeudor` int(11) NOT NULL,
  `NombreCompleto` text NOT NULL,
  `NumeroDeTelefono` int(10) NOT NULL,
  `Contraseña` varchar(16) NOT NULL,
  `Correo` text NOT NULL,
  `Adeudo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrega`
--

CREATE TABLE `entrega` (
  `IDDeEntrega` int(11) NOT NULL,
  `FechaDeEntrega` date NOT NULL,
  `IDDeProveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrega de detalles del pedido`
--

CREATE TABLE `entrega de detalles del pedido` (
  `IDDeEntrega` int(11) NOT NULL,
  `IDDePedido` int(11) NOT NULL,
  `IDDeDetallesDelPedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `IDDePedido` int(11) NOT NULL,
  `FechaDelPedido` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `IDDeProveedor` int(11) NOT NULL,
  `ID del producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Propietario`
--

CREATE TABLE `Propietario` (
  `IDDePropietario` int(1) NOT NULL,
  `Usuario` text NOT NULL,
  `Contraseña` text NOT NULL,
  `IDDePedido` int(11) NOT NULL,
  `IDFechaDelPedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adeudo`
--
ALTER TABLE `adeudo`
  ADD PRIMARY KEY (`IDAdeudo`);

--
-- Indices de la tabla `detallesdelpedido`
--
ALTER TABLE `detallesdelpedido`
  ADD PRIMARY KEY (`IDDeDetallesDelPedido`);

--
-- Indices de la tabla `deudor`
--
ALTER TABLE `deudor`
  ADD PRIMARY KEY (`IDDeDeudor`);

--
-- Indices de la tabla `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`IDDeEntrega`);

--
-- Indices de la tabla `entrega de detalles del pedido`
--
ALTER TABLE `entrega de detalles del pedido`
  ADD PRIMARY KEY (`IDDeEntrega`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`IDDePedido`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`IDDeProveedor`);

--
-- Indices de la tabla `Propietario`
--
ALTER TABLE `Propietario`
  ADD PRIMARY KEY (`IDDePropietario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adeudo`
--
ALTER TABLE `adeudo`
  MODIFY `IDAdeudo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallesdelpedido`
--
ALTER TABLE `detallesdelpedido`
  MODIFY `IDDeDetallesDelPedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `deudor`
--
ALTER TABLE `deudor`
  MODIFY `IDDeDeudor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `entrega`
--
ALTER TABLE `entrega`
  MODIFY `IDDeEntrega` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `entrega de detalles del pedido`
--
ALTER TABLE `entrega de detalles del pedido`
  MODIFY `IDDeEntrega` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `IDDePedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `IDDeProveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Propietario`
--
ALTER TABLE `Propietario`
  MODIFY `IDDePropietario` int(1) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
