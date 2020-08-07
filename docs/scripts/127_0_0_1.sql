-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-08-2020 a las 19:26:37
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agendaphp`
--
CREATE DATABASE IF NOT EXISTS `agendaphp` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `agendaphp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `empresa` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `nombre`, `empresa`, `telefono`) VALUES
(56, 'tono', 'maciza', 'tgr'),
(57, 'heydi', 'maradiaga', 'hnthu'),
(59, 'hola', 'g', 'g'),
(60, 'hola', 'y', 'g'),
(61, 'j', 'hg', 'bkjb');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- Base de datos: `autos`
--
CREATE DATABASE IF NOT EXISTS `autos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `autos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `auto_id` int(11) UNSIGNED NOT NULL,
  `nombre_auto` varchar(50) NOT NULL,
  `marca_auto` varchar(50) NOT NULL,
  `modelo` year(4) NOT NULL,
  `precio` int(10) UNSIGNED NOT NULL,
  `km_auto` int(10) NOT NULL,
  `descripcion_auto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`auto_id`, `nombre_auto`, `marca_auto`, `modelo`, `precio`, `km_auto`, `descripcion_auto`) VALUES
(1, 'Mustang', 'Ford', 2017, 20000, 1, 'Carro pijudismo mi hermano'),
(2, 'Camaro', 'Chevrolet', 2016, 60000, 1, 'Gran Potencia y Motor'),
(3, 'Serie3', 'BMW', 2015, 30000, 10000, 'Gran Auto de lujo'),
(4, 'Clase C', 'Mercedes Benz', 2016, 28000, 5000, 'Tecnología alemana a tu alcance'),
(5, 'Corolla', 'Toyota', 2017, 30000, 1, 'Estrena este gran automovil'),
(6, 'Altima', 'Nissan', 2014, 20000, 30000, 'Gran estado, un dueño'),
(7, 'Beetle', 'VolksWagen', 2016, 25000, 3000, 'Gran automovil muy economico'),
(8, 'A4', 'Audi', 2017, 40000, 10000, 'Gran auto como nuevo'),
(9, 'Figo', 'Ford', 2017, 15000, 1, 'Nuevo y Economico'),
(10, 'Spark', 'Chevrolet', 2015, 10000, 30000, 'Un gran auto a un precio increible'),
(11, 'Aveo', 'Chevrolet', 2017, 20000, 1, 'Automovil nuevo a gran precio'),
(13, '3', 'Mazda', 2017, 20000, 1, 'Automovil nuevo, recién llegado'),
(14, 'CLS', 'Mercedes Benz', 2017, 80000, 1, 'Lujo en todos los niveles'),
(15, 'Serie 5', 'BMW', 2017, 75000, 1, 'Gran auto a un gran precio');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`auto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `auto_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Base de datos: `eti_upnfm`
--
CREATE DATABASE IF NOT EXISTS `eti_upnfm` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `eti_upnfm`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `bitacoracod` int(11) NOT NULL,
  `bitacorafch` datetime DEFAULT NULL,
  `bitprograma` varchar(15) DEFAULT NULL,
  `bitdescripcion` varchar(255) DEFAULT NULL,
  `bitobservacion` mediumtext DEFAULT NULL,
  `bitTipo` char(3) DEFAULT NULL,
  `bitusuario` bigint(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`bitacoracod`, `bitacorafch`, `bitprograma`, `bitdescripcion`, `bitobservacion`, `bitTipo`, `bitusuario`) VALUES
(10, '2020-07-30 02:59:59', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"d2f700f6e9b7e73a5a7c9eb1313005d4\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"tono@zavala.com\",\"username\":\"Rolando Zavala\",\"usertipo\":\"ADM\",\"userest\":\"ACT\",\"userpswd\":\"P@ssw0rd\"}', 'INF', 1),
(11, '2020-07-30 03:39:30', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"733816567a57bb362f22a2dd2a9abc63\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":2,\"useremail\":\"tono@zavala.com\",\"username\":\"Rolando Zavala\",\"usertipo\":\"ADM\",\"userest\":\"ACT\",\"userpswd\":\"\"}', 'INF', 1),
(12, '2020-07-30 03:47:02', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"30659a9eb7d1ef6d9553cee21007d3f0\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":2,\"useremail\":\"tono@zavala.com\",\"username\":\"Rolando Zavala\",\"usertipo\":\"USR\",\"userest\":\"ACT\",\"userpswd\":\"\"}', 'INF', 1),
(13, '2020-07-30 03:47:52', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"4c77dc0a53356920bd399c4621fc6840\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":1,\"useremail\":\"admin@demo.com\",\"username\":\"Administrador\",\"usertipo\":\"ADM\",\"userest\":\"ACT\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 1),
(14, '2020-07-30 04:07:10', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"e1568306de5c7a24f8c4a664c560458e\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"maitefashionhn@gmail.com\",\"username\":\"Teresa Nolasco\",\"usertipo\":\"USR\",\"userest\":\"PND\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 2),
(15, '2020-07-30 04:08:39', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"64cc36160fd42a214acca4ff73cacf09\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":3,\"useremail\":\"maitefashionhn@gmail.com\",\"username\":\"Teresa Nolasco\",\"usertipo\":\"USR\",\"userest\":\"PND\",\"userpswd\":\"\"}', 'INF', 2),
(16, '2020-08-07 08:53:42', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"6a13ee20d069a016233b1ebcfc2bb5d8\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"nestor@gmail.com\",\"username\":\"Nestor Rodriguez\",\"usertipo\":\"ADM\",\"userest\":\"PND\",\"userpswd\":\"P@ssw0rd\"}', 'INF', 2),
(17, '2020-08-07 08:55:35', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"3f2133c234ab0984827e18bc5cd55492\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":4,\"useremail\":\"nestor@gmail.com\",\"username\":\"Nestor Rodriguez\",\"usertipo\":\"USR\",\"userest\":\"PND\",\"userpswd\":\"P@ssw0rd\"}', 'INF', 2),
(18, '2020-08-07 08:56:06', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"f88b5ff3868715ca7cbd7de95766aec9\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":4,\"useremail\":\"nestor@gmail.com\",\"username\":\"Nestor Rodriguez\",\"usertipo\":\"USR\",\"userest\":\"ACT\",\"userpswd\":\"P@ssw0rd\"}', 'INF', 2),
(19, '2020-08-07 09:00:08', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"1d70cffd87b5c3e13a58934c0607f69e\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":4,\"useremail\":\"nestor@gmail.com\",\"username\":\"Nestor Rodriguez\",\"usertipo\":\"USR\",\"userest\":\"ACT\",\"userpswd\":\"P@ssw0rd\"}', 'INF', 2),
(20, '2020-08-07 09:01:38', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"35f4d9facbee8acc8522bf05dcb6e491\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":4,\"useremail\":\"nestor@gmail.com\",\"username\":\"Nestor Rodriguez\",\"usertipo\":\"USR\",\"userest\":\"ACT\",\"userpswd\":\"P@ssw0rd\"}', 'INF', 2),
(21, '2020-08-07 09:09:29', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"7bbb3790e38d294bc5dbc86fea974d0b\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"edward@gmail.com\",\"username\":\"Edward\",\"usertipo\":\"USR\",\"userest\":\"ACT\",\"userpswd\":\"P@ssw0rd\"}', 'INF', 2),
(22, '2020-08-07 09:13:30', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"d0c164b084eed14283b1fd90d191ad36\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":5,\"useremail\":\"edward@gmail.com\",\"username\":\"Edward\",\"usertipo\":\"USR\",\"userest\":\"ACT\",\"userpswd\":\"\"}', 'INF', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_evento`
--

CREATE TABLE `categoria_evento` (
  `id_categoria` tinyint(10) NOT NULL,
  `cat_evento` varchar(50) NOT NULL,
  `icono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria_evento`
--

INSERT INTO `categoria_evento` (`id_categoria`, `cat_evento`, `icono`) VALUES
(1, 'Seminario', 'fa-university'),
(2, 'Conferencias', 'fa-comment'),
(6, 'Talleres', 'fa-code');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `evento_id` tinyint(10) NOT NULL,
  `nombre_evento` varchar(60) NOT NULL,
  `fecha_evento` date NOT NULL,
  `hora_evento` time NOT NULL,
  `id_cat_evento` tinyint(10) NOT NULL,
  `id_inv` tinyint(4) NOT NULL,
  `clave` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`evento_id`, `nombre_evento`, `fecha_evento`, `hora_evento`, `id_cat_evento`, `id_inv`, `clave`) VALUES
(1, 'Arduino básico', '2020-08-08', '16:00:00', 6, 3, 'taller_01'),
(2, 'Responsive Web Design', '2020-08-07', '10:00:00', 6, 1, 'taller_01'),
(3, 'Flexbox', '2020-08-07', '12:00:00', 6, 2, 'taller_02'),
(4, 'HTML5 y CSS3 y JavaScript', '2020-08-07', '14:00:00', 6, 2, 'taller_03'),
(5, 'Drupal', '2020-08-07', '17:00:00', 6, 4, 'taller_04'),
(6, 'WordPress', '2020-08-07', '19:00:00', 6, 5, 'taller_05'),
(7, 'Como ser freelancer', '2020-08-07', '10:00:00', 2, 1, 'conf_01'),
(8, 'Tecnologías del Futuro', '2020-08-07', '17:00:00', 2, 1, 'conf_02'),
(9, 'Seguridad en la Web', '2020-08-07', '19:00:00', 2, 2, 'conf_03'),
(11, 'Responsive Web Design', '2020-08-07', '10:00:00', 6, 1, 'taller_01'),
(12, 'Flexbox', '2020-08-07', '12:00:00', 6, 2, 'taller_02'),
(13, 'HTML5 y CSS3', '2020-08-07', '14:00:00', 6, 3, 'taller_03'),
(14, 'Drupal', '2020-08-07', '17:00:00', 6, 4, 'taller_04'),
(15, 'WordPress', '2020-08-07', '19:00:00', 6, 5, 'taller_05'),
(16, 'Como ser freelancer', '2020-08-07', '10:00:00', 2, 1, 'conf_01'),
(17, 'Tecnologías del Futuro', '2020-08-07', '17:00:00', 2, 1, 'conf_02'),
(18, 'Seguridad en la Web', '2020-08-07', '19:00:00', 2, 2, 'conf_03'),
(19, 'Diseño UI y UX para móviles', '2020-08-07', '10:00:00', 1, 1, 'sem_01'),
(20, 'AngularJS', '2020-08-08', '10:00:00', 6, 1, 'taller_06'),
(21, 'PHP y MySQL', '2020-08-08', '12:00:00', 6, 2, 'taller_07'),
(22, 'JavaScript Avanzado', '2020-08-08', '14:00:00', 6, 3, 'taller_08'),
(23, 'SEO en Google', '2020-08-08', '17:00:00', 6, 4, 'taller_09'),
(24, 'De Photoshop a HTML5 y CSS3', '2020-08-08', '19:00:00', 6, 5, 'taller_10'),
(25, 'PHP Intermedio y Avanzado', '2020-08-08', '21:00:00', 6, 1, 'taller_11'),
(26, 'Como crear una tienda online que venda millones en pocos día', '2020-08-08', '10:00:00', 2, 1, 'conf_04'),
(27, 'Los mejores lugares para encontrar trabajo', '2020-08-08', '17:00:00', 2, 1, 'conf_05'),
(28, 'Pasos para crear un negocio rentable ', '2020-08-08', '19:00:00', 2, 2, 'conf_06'),
(29, 'Aprende a Programar en una mañana', '2020-08-08', '10:00:00', 1, 3, 'sem_02'),
(30, 'Diseño UI y UX para móviles', '2020-08-08', '17:00:00', 1, 5, 'sem_03'),
(31, 'Laravel', '2020-08-09', '10:00:00', 6, 1, 'taller_12'),
(32, 'Crea tu propia API', '2020-08-09', '12:00:00', 6, 2, 'taller_13'),
(33, 'JavaScript y jQuery', '2020-08-09', '14:00:00', 6, 3, 'taller_14'),
(34, 'Creando Plantillas para WordPress', '2020-08-09', '17:00:00', 6, 4, 'taller_15'),
(35, 'Tiendas Virtuales en Magento', '2020-08-09', '19:00:00', 6, 5, 'taller_16'),
(36, 'Como hacer Marketing en línea', '2020-08-09', '10:00:00', 2, 1, 'conf_07'),
(37, '¿Con que lenguaje debo empezar?', '2020-08-09', '17:00:00', 2, 2, 'conf_08'),
(38, 'Frameworks y librerias Open Source', '2020-08-09', '19:00:00', 2, 3, 'conf_09'),
(39, 'Creando una App en Android en una mañana', '2020-08-09', '10:00:00', 1, 4, 'sem_04'),
(40, 'Creando una App en iOS en una tarde', '2020-08-09', '17:00:00', 1, 1, 'sem_05'),
(42, 'Relaciones Interpersonales en el ambito laboral', '2020-08-08', '15:30:00', 1, 14, 'seminario_'),
(43, 'Super tecnologias', '2020-08-08', '05:30:00', 6, 2, 'taller_21'),
(44, 'Angular', '2020-08-07', '13:45:00', 6, 15, 'taller_22'),
(45, 'Seminario de Arduino Avanzado', '2020-08-09', '06:01:00', 1, 16, 'Seminario_');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funciones`
--

CREATE TABLE `funciones` (
  `fncod` varchar(15) NOT NULL,
  `fndsc` varchar(45) DEFAULT NULL,
  `fnest` char(3) DEFAULT NULL,
  `fntyp` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `funciones`
--

INSERT INTO `funciones` (`fncod`, `fndsc`, `fnest`, `fntyp`) VALUES
('dashboard', 'Menu Principal de Administración', 'ACT', 'PGR'),
('programa', 'Función', 'ACT', 'PGR'),
('programas', 'Trabajar con Funciones', 'ACT', 'PGR'),
('rol', 'RolFCFGVVF', 'ACT', 'PGR'),
('roles', 'Trabajar con Roles', 'ACT', 'PGR'),
('user', 'Usuario', 'ACT', 'PGR'),
('users', 'Trabajar con Usuarios', 'ACT', 'PGR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funciones_roles`
--

CREATE TABLE `funciones_roles` (
  `rolescod` varchar(15) NOT NULL,
  `fncod` varchar(15) NOT NULL,
  `fnrolest` char(3) DEFAULT NULL,
  `fnexp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `funciones_roles`
--

INSERT INTO `funciones_roles` (`rolescod`, `fncod`, `fnrolest`, `fnexp`) VALUES
('acceso_alter_us', 'dashboard', 'ACT', NULL),
('master', 'dashboard', 'ACT', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitados`
--

CREATE TABLE `invitados` (
  `invitado_id` tinyint(4) NOT NULL,
  `nombre_invitado` varchar(30) NOT NULL,
  `apellido_invitado` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `url_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `invitados`
--

INSERT INTO `invitados` (`invitado_id`, `nombre_invitado`, `apellido_invitado`, `descripcion`, `url_imagen`) VALUES
(1, 'Rolando', '', 'Ingeniero en sistemas egresado de la UNICAH especializado en Robótica y Desarrollo Web', 'invitado4.jpg'),
(2, 'Ricardo', 'Garcia', 'Ingeniero en sistemas egresado de la UNICAH especializado en el Diseño Gráfico, Diseño Web y la industría Automotriz', 'invitado2.jpg'),
(3, 'Nestor', 'Rodriguez', 'Master en Energias Renovables, egresado de UNITEC, Docente en la UPNFM en la facultad de  Educación Técnica Industrial, especializado en todas las areás de Electronica y Electricidad', 'invitado3.jpg'),
(4, 'Fanny', 'Arriaga', 'Ingeniera en Sistemas egresada de la UNICAH, especializada en la administración de bases datos.', 'invitado4.jpg'),
(5, 'Julito', 'Alvarado', 'Ingeniero en sistemas egresado de la UNICAH, especializado en el desarrollo de apps moviles, redes y famoso conferencista', 'invitado5.jpg'),
(14, 'Marina', 'Zavala', 'Master en Recursos Humanos', 'invitado5.jpg'),
(15, 'Willard', 'Raudales', 'Master en diseño web', 'invitado5.jpg'),
(16, 'Edward', 'Lopez', 'Ingenierioen Electrónica', 'invitado5.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regalos`
--

CREATE TABLE `regalos` (
  `ID_regalo` int(11) NOT NULL,
  `nombre_regalo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `regalos`
--

INSERT INTO `regalos` (`ID_regalo`, `nombre_regalo`) VALUES
(1, 'Pulsera'),
(2, 'Etiquetas'),
(3, 'Plumas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrados`
--

CREATE TABLE `registrados` (
  `ID_Registrado` bigint(20) UNSIGNED NOT NULL,
  `nombre_registrado` varchar(50) NOT NULL,
  `apellido_registrado` varchar(50) NOT NULL,
  `email_registrado` varchar(100) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `pases_articulos` longtext NOT NULL,
  `talleres_registrados` longtext NOT NULL,
  `regalo` int(11) NOT NULL,
  `total_pagado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registrados`
--

INSERT INTO `registrados` (`ID_Registrado`, `nombre_registrado`, `apellido_registrado`, `email_registrado`, `fecha_registro`, `pases_articulos`, `talleres_registrados`, `regalo`, `total_pagado`) VALUES
(6, 'Rolando', 'Antonio', 'estudiante8@unicah.edu', '2020-08-04 21:05:41', '{\"un_dia\":3,\"pase_completo\":2,\"pase_2dias\":3,\"camisas\":8,\"etiquetas\":10}', '{\"eventos\":[\"conf_01\",\"conf_02\",\"conf_03\",\"taller_08\",\"sem_02\",\"sem_03\",\"taller_13\",\"taller_14\"]}', 1, '445'),
(12, 'ricardo', 'garcia', 'ricardo@gmail.com', '2020-08-05 20:40:58', '{\"pase_completo\":1,\"camisas\":2,\"etiquetas\":2}', '{\"eventos\":[\"taller_01\",\"conf_01\",\"sem_01\",\"conf_04\",\"conf_05\",\"conf_06\",\"sem_04\",\"sem_05\"]}', 1, '84'),
(13, 'Juan', 'lopez', 'juanlopez@gmail.com', '2020-08-07 09:27:30', '{\"pase_completo\":1,\"camisas\":3,\"etiquetas\":4}', '{\"eventos\":[\"conf_01\",\"conf_02\",\"conf_03\",\"taller_06\",\"taller_07\",\"taller_08\",\"sem_04\",\"sem_05\"]}', 1, '98');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `rolescod` varchar(15) NOT NULL,
  `rolesdsc` varchar(45) DEFAULT NULL,
  `rolesest` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`rolescod`, `rolesdsc`, `rolesest`) VALUES
('acceso_alter_us', 'upnfm', 'ACT'),
('master', 'Tono Master', 'PND');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_usuarios`
--

CREATE TABLE `roles_usuarios` (
  `usercod` bigint(10) NOT NULL,
  `rolescod` varchar(15) NOT NULL,
  `roleuserest` char(3) DEFAULT NULL,
  `roleuserfch` datetime DEFAULT NULL,
  `roleuserexp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles_usuarios`
--

INSERT INTO `roles_usuarios` (`usercod`, `rolescod`, `roleuserest`, `roleuserfch`, `roleuserexp`) VALUES
(1, 'master', 'ACT', '2020-07-30 15:47:47', NULL),
(2, 'master', 'ACT', '2020-07-30 15:39:02', NULL),
(3, 'master', 'ACT', '2020-07-30 16:08:35', NULL),
(5, 'acceso_alter_us', 'ACT', '2020-08-07 09:13:26', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usercod` bigint(10) NOT NULL,
  `useremail` varchar(80) DEFAULT NULL,
  `username` varchar(80) DEFAULT NULL,
  `userpswd` varchar(128) DEFAULT NULL,
  `userfching` datetime DEFAULT NULL,
  `userpswdest` char(3) DEFAULT NULL,
  `userpswdexp` datetime DEFAULT NULL,
  `userest` char(3) DEFAULT NULL,
  `useractcod` varchar(128) DEFAULT NULL,
  `userpswdchg` varchar(128) DEFAULT NULL,
  `usertipo` char(3) DEFAULT NULL COMMENT 'Tipo de Usuario, Normal, Consultor o Cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usercod`, `useremail`, `username`, `userpswd`, `userfching`, `userpswdest`, `userpswdexp`, `userest`, `useractcod`, `userpswdchg`, `usertipo`) VALUES
(1, 'admin@demo.com', 'Administrador', 'a3ffd3fa0a6c2a0744df986cb083a81c', '2020-07-30 14:50:52', 'VGT', NULL, 'ACT', '', NULL, 'ADM'),
(2, 'tono@zavala.com', 'Rolando Zavala', 'e6e47ad3492a0eb4721575592e46ea1f', '2020-07-30 14:59:59', 'VGT', NULL, 'ACT', '', NULL, 'ADM'),
(3, 'maitefashionhn@gmail.com', 'Teresa Nolasco', '137a967761454b8228fd205fd2a82635', '2020-07-30 16:07:10', 'VGT', NULL, 'PND', '', NULL, 'USR'),
(4, 'nestor@gmail.com', 'Nestor Rodriguez', '161ebd7d45089b3446ee4e0d86dbcf92', '2020-08-07 08:53:42', 'VGT', NULL, 'ACT', '', NULL, 'USR'),
(5, 'edward@gmail.com', 'Edward', 'f2e36d8a12967ea707d61344db696e39', '2020-08-07 09:09:29', 'VGT', NULL, 'ACT', '', NULL, 'USR');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`bitacoracod`);

--
-- Indices de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`evento_id`),
  ADD KEY `id_cat_evento` (`id_cat_evento`),
  ADD KEY `id_inv` (`id_inv`);

--
-- Indices de la tabla `funciones`
--
ALTER TABLE `funciones`
  ADD PRIMARY KEY (`fncod`);

--
-- Indices de la tabla `funciones_roles`
--
ALTER TABLE `funciones_roles`
  ADD PRIMARY KEY (`rolescod`,`fncod`),
  ADD KEY `rol_funcion_key_idx` (`fncod`);

--
-- Indices de la tabla `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`invitado_id`);

--
-- Indices de la tabla `regalos`
--
ALTER TABLE `regalos`
  ADD PRIMARY KEY (`ID_regalo`);

--
-- Indices de la tabla `registrados`
--
ALTER TABLE `registrados`
  ADD PRIMARY KEY (`ID_Registrado`),
  ADD KEY `regalo` (`regalo`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rolescod`);

--
-- Indices de la tabla `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
  ADD PRIMARY KEY (`usercod`,`rolescod`),
  ADD KEY `rol_usuario_key_idx` (`rolescod`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usercod`),
  ADD UNIQUE KEY `useremail_UNIQUE` (`useremail`),
  ADD KEY `usertipo` (`usertipo`,`useremail`,`usercod`,`userest`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `bitacoracod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  MODIFY `id_categoria` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `evento_id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `invitados`
--
ALTER TABLE `invitados`
  MODIFY `invitado_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `regalos`
--
ALTER TABLE `regalos`
  MODIFY `ID_regalo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `registrados`
--
ALTER TABLE `registrados`
  MODIFY `ID_Registrado` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usercod` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`id_cat_evento`) REFERENCES `categoria_evento` (`id_categoria`),
  ADD CONSTRAINT `eventos_ibfk_2` FOREIGN KEY (`id_inv`) REFERENCES `invitados` (`invitado_id`);

--
-- Filtros para la tabla `funciones_roles`
--
ALTER TABLE `funciones_roles`
  ADD CONSTRAINT `funcion_rol_key` FOREIGN KEY (`rolescod`) REFERENCES `roles` (`rolescod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rol_funcion_key` FOREIGN KEY (`fncod`) REFERENCES `funciones` (`fncod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `registrados`
--
ALTER TABLE `registrados`
  ADD CONSTRAINT `registrados_ibfk_1` FOREIGN KEY (`regalo`) REFERENCES `regalos` (`ID_regalo`);

--
-- Filtros para la tabla `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
  ADD CONSTRAINT `rol_usuario_key` FOREIGN KEY (`rolescod`) REFERENCES `roles` (`rolescod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_rol_key` FOREIGN KEY (`usercod`) REFERENCES `usuario` (`usercod`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Base de datos: `examen`
--
CREATE DATABASE IF NOT EXISTS `examen` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `examen`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `games`
--

CREATE TABLE `games` (
  `game_id` bigint(13) UNSIGNED NOT NULL,
  `game_name` varchar(128) DEFAULT NULL,
  `game_type` char(3) DEFAULT NULL,
  `game_brand` varchar(45) DEFAULT NULL,
  `game_console` varchar(45) DEFAULT NULL,
  `game_status` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `games`
--

INSERT INTO `games` (`game_id`, `game_name`, `game_type`, `game_brand`, `game_console`, `game_status`) VALUES
(1, 'Gamecube_macizo', 'el', 'Nintenndo', 'cuadrada', 'bue'),
(2, 'nrldfvdf', 'ggg', 'ggg', 'ggg', 'ggg'),
(3, 'thngty', 'yyy', 'yyyyyy', 'yyyyyyy', 'yyy');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `games`
--
ALTER TABLE `games`
  MODIFY `game_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Base de datos: `nw202002`
--
CREATE DATABASE IF NOT EXISTS `nw202002` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nw202002`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenes`
--

CREATE TABLE `almacenes` (
  `almcod` bigint(18) NOT NULL,
  `almdsc` varchar(75) DEFAULT NULL,
  `almtyp` char(3) DEFAULT NULL,
  `almest` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `almacenes`
--

INSERT INTO `almacenes` (`almcod`, `almdsc`, `almtyp`, `almest`) VALUES
(2, 'loma linda', 'WRH', 'ACT'),
(3, 'almacen super churro', 'WRH', 'ACT'),
(4, 'ventas perronas', 'RTL', 'PLN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenes2`
--

CREATE TABLE `almacenes2` (
  `almcod2` bigint(18) NOT NULL,
  `almdsc2` varchar(75) DEFAULT NULL,
  `almtyp2` char(3) DEFAULT NULL,
  `almest2` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `bitacoracod` int(11) NOT NULL,
  `bitacorafch` datetime DEFAULT NULL,
  `bitprograma` varchar(15) DEFAULT NULL,
  `bitdescripcion` varchar(255) DEFAULT NULL,
  `bitobservacion` mediumtext DEFAULT NULL,
  `bitTipo` char(3) DEFAULT NULL,
  `bitusuario` bigint(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`bitacoracod`, `bitacorafch`, `bitprograma`, `bitdescripcion`, `bitobservacion`, `bitTipo`, `bitusuario`) VALUES
(10, '2020-07-05 07:04:00', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"3ffdebc45a2d596f8ebd5db5a0018dc4\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"hola@hola.com\",\"username\":\"juanito perez\",\"usertipo\":\"ADM\",\"userest\":\"ACT\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 1),
(11, '2020-07-26 01:40:17', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"70a8d735eaeb078fb134ab538eda28f0\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"correo@correo.com\",\"username\":\"Juan Lopez\",\"usertipo\":\"ADM\",\"userest\":\"PND\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 1),
(12, '2020-07-26 01:41:46', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"2536a20dd3bf5f7162bcff2590e1d47a\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"falso@falso.com\",\"username\":\"Magdaleno\",\"usertipo\":\"CLT\",\"userest\":\"ACT\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 3),
(13, '2020-07-26 01:43:54', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"ea5bb10b95271af6a5d834b6c7c4d489\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"usuario@usuario.com\",\"username\":\"yo soy usuario\",\"usertipo\":\"USR\",\"userest\":\"ACT\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 3),
(14, '2020-07-26 01:45:36', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"c116e2625a956dce7482ffe3d8191a41\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"admin@admin.com\",\"username\":\"yo soy el admin\",\"usertipo\":\"ADM\",\"userest\":\"ACT\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 3),
(15, '2020-07-26 01:46:29', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"e092fb22781eee71bae8845c9b32e1eb\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"consultor@consultor.com\",\"username\":\"yo soy el consultor\",\"usertipo\":\"CNS\",\"userest\":\"ACT\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 3),
(16, '2020-07-26 01:47:13', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"e1a3ffded6485208bfda9ba27dfe0a0d\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"cliente@cliente.com\",\"username\":\"yo soy el cliente\",\"usertipo\":\"ADM\",\"userest\":\"PND\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 3),
(17, '2020-07-26 01:48:02', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"f08f3dba1a597e8b9ad0c333cd97a5ef\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":8,\"useremail\":\"cliente@cliente.com\",\"username\":\"yo soy el cliente\",\"usertipo\":\"USR\",\"userest\":\"PND\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 8),
(18, '2020-07-26 01:53:50', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"89fcd4fab6b0e3f2ccb0a95274d477e9\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":8,\"useremail\":\"cliente@cliente.com\",\"username\":\"yo soy el cliente\",\"usertipo\":\"CLT\",\"userest\":\"ACT\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 1),
(19, '2020-07-26 02:01:03', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"315ad5f3e35ad06ba6570a1f05648075\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":1,\"useremail\":\"admin@demo.com\",\"username\":\"Administrador\",\"usertipo\":\"ADM\",\"userest\":\"ACT\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 6),
(20, '2020-07-28 04:54:02', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"3adc987c33201a09f3f5c747e9eb5af4\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":1,\"useremail\":\"admin@demo.com\",\"username\":\"Administrador\",\"usertipo\":\"ADM\",\"userest\":\"ACT\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 6),
(21, '2020-07-28 11:26:45', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"293edb827f4f32a67b51063f13fc5120\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"hola@hola.com\",\"username\":\"HOLS\",\"usertipo\":\"ADM\",\"userest\":\"ACT\",\"userpswd\":\"hjhuhuhuh77777HHHHHH%\"}', 'INF', 6),
(22, '2020-07-29 12:25:29', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"6506842515ec3211c5e41faadb904a44\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"rolando@antonio.com\",\"username\":\"zavala \",\"usertipo\":\"ADM\",\"userest\":\"ACT\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 6),
(23, '2020-07-29 12:29:27', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"3bd63630053bf8193f4bdf84f903610d\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"tono@zavala.com\",\"username\":\"nolasco\",\"usertipo\":\"ADM\",\"userest\":\"ACT\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 6),
(24, '2020-07-29 01:14:44', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"57bef97d7047317322d9e93f92a5161a\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"richardo@selacome.com\",\"username\":\"richardo \",\"usertipo\":\"USR\",\"userest\":\"ACT\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 6),
(25, '2020-07-29 01:49:21', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"15c2468a35e32328dd46afde801ec65d\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"yrgb@hbhjb.com\",\"username\":\"egfvvt\",\"usertipo\":\"ADM\",\"userest\":\"PND\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 6),
(26, '2020-07-29 01:50:02', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"bc6ecbc6accb0baecbc5536346ac5b4d\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"rtg@yhbjhb.com\",\"username\":\"efnvef\",\"usertipo\":\"ADM\",\"userest\":\"PND\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 6),
(27, '2020-07-29 07:36:31', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"c441d39c39ccfbddca7da72e3da3ce3d\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":14,\"useremail\":\"richardo@selacome.com\",\"username\":\"richardo \",\"usertipo\":\"USR\",\"userest\":\"ACT\",\"userpswd\":\"\"}', 'INF', 6),
(28, '2020-07-29 07:40:22', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"a8e5b9b72f8f530f5265bce4482961e8\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":14,\"useremail\":\"richardo@selacome.com\",\"username\":\"richardo \",\"usertipo\":\"USR\",\"userest\":\"ACT\",\"userpswd\":\"\"}', 'INF', 6),
(29, '2020-07-29 11:42:50', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"e39441de1f5861b4bf909647b65f7bea\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":1,\"useremail\":\"admin@demo.com\",\"username\":\"Administrador\",\"usertipo\":\"ADM\",\"userest\":\"ACT\",\"userpswd\":\"\"}', 'INF', 6),
(30, '2020-07-29 11:51:17', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"24b279d4f856cafb63b43081866ca4d2\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"nuevo@nuevo.com\",\"username\":\"el nueveson\",\"usertipo\":\"CLT\",\"userest\":\"ACT\",\"userpswd\":\"CorpDemo%33\"}', 'INF', 6),
(31, '2020-07-30 12:18:52', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"968b4ec768ddb8866875ce76626992cc\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":1,\"useremail\":\"admin@demo.com\",\"username\":\"Administrador\",\"usertipo\":\"ADM\",\"userest\":\"ACT\",\"userpswd\":\"\"}', 'INF', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `catid` int(11) NOT NULL,
  `catdsc` varchar(75) DEFAULT NULL,
  `catest` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`catid`, `catdsc`, `catest`) VALUES
(1, 'Frutas y verduras', 'ACT'),
(2, 'comida rapida', 'ACT'),
(3, 'Hamburguesas de lujo', 'ACT'),
(4, 'Tacos', 'ACT'),
(5, 'Super Tacos', 'ACT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funciones`
--

CREATE TABLE `funciones` (
  `fncod` varchar(15) NOT NULL,
  `fndsc` varchar(45) DEFAULT NULL,
  `fnest` char(3) DEFAULT NULL,
  `fntyp` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `funciones`
--

INSERT INTO `funciones` (`fncod`, `fndsc`, `fnest`, `fntyp`) VALUES
('', '', 'ACT', 'PRG'),
('1', 'ddddddd', 'ACT', 'PGR'),
('admin', 'admin', 'ACT', 'PRG'),
('almacen', 'almacen', 'ACT', 'PRG'),
('almacen2', 'almacen2', 'ACT', 'PRG'),
('almacenes', 'almacenes', 'ACT', 'PRG'),
('almacenes2', 'almacenes2', 'ACT', 'PRG'),
('carrera', 'carrera', 'ACT', 'PRG'),
('categoria', 'categoria', 'ACT', 'PRG'),
('categorias', 'categorias', 'ACT', 'PRG'),
('dashboard', 'Menu Principal de Administración', 'ACT', 'PGR'),
('docentes.php', 'docentes.php', 'ACT', 'PRG'),
('investigaciones', 'investigaciones', 'ACT', 'PRG'),
('nosotros', 'nosotros', 'ACT', 'PRG'),
('notificacion', 'notificacion', 'ACT', 'PRG'),
('principal', 'principal', 'ACT', 'PRG'),
('productos', 'productos', 'ACT', 'PRG'),
('programa', 'Función', 'ACT', 'PGR'),
('programas', 'Trabajar con Funciones', 'ACT', 'PGR'),
('rol', 'Rol', 'ACT', 'PGR'),
('roles', 'Trabajar con Roles', 'ACT', 'PGR'),
('user', 'Usuario', 'ACT', 'PGR'),
('users', 'Trabajar con Usuarios', 'ACT', 'PGR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funciones_roles`
--

CREATE TABLE `funciones_roles` (
  `rolescod` varchar(15) NOT NULL,
  `fncod` varchar(15) NOT NULL,
  `fnrolest` char(3) DEFAULT NULL,
  `fnexp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `funciones_roles`
--

INSERT INTO `funciones_roles` (`rolescod`, `fncod`, `fnrolest`, `fnexp`) VALUES
('4', 'dashboard', 'ACT', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `rolescod` varchar(15) NOT NULL,
  `rolesdsc` varchar(45) DEFAULT NULL,
  `rolesest` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`rolescod`, `rolesdsc`, `rolesest`) VALUES
('1', 'La mera verga', 'PND'),
('2', 'La mera verga', 'PND'),
('4', 'descripcion de codigo 4', 'ACT'),
('rgt', 'rgbyhf', 'ACT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_usuarios`
--

CREATE TABLE `roles_usuarios` (
  `usercod` bigint(10) NOT NULL,
  `rolescod` varchar(15) NOT NULL,
  `roleuserest` char(3) DEFAULT NULL,
  `roleuserfch` datetime DEFAULT NULL,
  `roleuserexp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles_usuarios`
--

INSERT INTO `roles_usuarios` (`usercod`, `rolescod`, `roleuserest`, `roleuserfch`, `roleuserexp`) VALUES
(1, '1', 'ACT', '2020-07-30 01:56:13', NULL),
(1, '2', 'ACT', '2020-07-30 01:56:52', NULL),
(14, '4', 'ACT', '2020-07-29 19:40:13', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usercod` bigint(10) NOT NULL,
  `useremail` varchar(80) DEFAULT NULL,
  `username` varchar(80) DEFAULT NULL,
  `userpswd` varchar(128) DEFAULT NULL,
  `userfching` datetime DEFAULT NULL,
  `userpswdest` char(3) DEFAULT NULL,
  `userpswdexp` datetime DEFAULT NULL,
  `userest` char(3) DEFAULT NULL,
  `useractcod` varchar(128) DEFAULT NULL,
  `userpswdchg` varchar(128) DEFAULT NULL,
  `usertipo` char(3) DEFAULT NULL COMMENT 'Tipo de Usuario, Normal, Consultor o Cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usercod`, `useremail`, `username`, `userpswd`, `userfching`, `userpswdest`, `userpswdexp`, `userest`, `useractcod`, `userpswdchg`, `usertipo`) VALUES
(1, 'admin@demo.com', 'Administrador', 'a3ffd3fa0a6c2a0744df986cb083a81c', '2020-07-03 20:02:14', 'VGT', NULL, 'ACT', '', NULL, 'ADM'),
(5, 'usuario@usuario.com', 'yo soy usuario', 'ab0235a1d26c5406dfb6800600ac4f64', '2020-07-26 01:43:53', 'VGT', NULL, 'ACT', '', NULL, 'USR'),
(6, 'admin@admin.com', 'yo soy el admin', '9b15e45e14088d8af012796c66ffa45b', '2020-07-26 01:45:36', 'VGT', NULL, 'ACT', '', NULL, 'ADM'),
(7, 'consultor@consultor.com', 'yo soy el consultor', 'c568212c0ccd4a96e48dc157b8f52abc', '2020-07-26 01:46:29', 'VGT', NULL, 'ACT', '', NULL, 'CNS'),
(8, 'cliente@cliente.com', 'yo soy el cliente', 'a3ffd3fa0a6c2a0744df986cb083a81c', '2020-07-26 01:47:13', 'VGT', NULL, 'ACT', '', NULL, 'CLT'),
(9, 'hola@hola.com', 'HOLS', '8fb9b7da7d9167808f9473756954c826', '2020-07-28 23:26:45', 'VGT', NULL, 'ACT', '', NULL, 'ADM'),
(10, 'rolando@antonio.com', 'zavala ', '934b37c388bcea802a93c922d7ae38de', '2020-07-29 00:25:29', 'VGT', NULL, 'ACT', '', NULL, 'ADM'),
(13, 'tono@zavala.com', 'nolasco', '54d05df89e0ec635e30fff9f7d449cd6', '2020-07-29 00:29:27', 'VGT', NULL, 'ACT', '', NULL, 'ADM'),
(14, 'richardo@selacome.com', 'richardo ', '27405ba34da75300012b4611727eb56e', '2020-07-29 01:14:44', 'VGT', NULL, 'ACT', '', NULL, 'USR'),
(15, 'yrgb@hbhjb.com', 'egfvvt', 'ce458bba84c5890f392d8e378ecaa5b4', '2020-07-29 01:49:21', 'VGT', NULL, 'PND', '', NULL, 'ADM'),
(16, 'rtg@yhbjhb.com', 'efnvef', 'd7e6a1ab73324dd2cefef0a88d9a7268', '2020-07-29 01:50:02', 'VGT', NULL, 'PND', '', NULL, 'ADM'),
(17, 'nuevo@nuevo.com', 'el nueveson', '8a36b94c2c42ea36e6b2149c06cc558a', '2020-07-29 23:51:16', 'VGT', NULL, 'ACT', '', NULL, 'CLT');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  ADD PRIMARY KEY (`almcod`),
  ADD KEY `IALMTYP` (`almtyp`),
  ADD KEY `IALMEST` (`almest`);

--
-- Indices de la tabla `almacenes2`
--
ALTER TABLE `almacenes2`
  ADD PRIMARY KEY (`almcod2`),
  ADD KEY `IALMTYP2` (`almtyp2`),
  ADD KEY `IALMEST2` (`almest2`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`bitacoracod`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`catid`);

--
-- Indices de la tabla `funciones`
--
ALTER TABLE `funciones`
  ADD PRIMARY KEY (`fncod`);

--
-- Indices de la tabla `funciones_roles`
--
ALTER TABLE `funciones_roles`
  ADD PRIMARY KEY (`rolescod`,`fncod`),
  ADD KEY `rol_funcion_key_idx` (`fncod`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rolescod`);

--
-- Indices de la tabla `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
  ADD PRIMARY KEY (`usercod`,`rolescod`),
  ADD KEY `rol_usuario_key_idx` (`rolescod`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usercod`),
  ADD UNIQUE KEY `useremail_UNIQUE` (`useremail`),
  ADD KEY `usertipo` (`usertipo`,`useremail`,`usercod`,`userest`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  MODIFY `almcod` bigint(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `almacenes2`
--
ALTER TABLE `almacenes2`
  MODIFY `almcod2` bigint(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `bitacoracod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usercod` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `funciones_roles`
--
ALTER TABLE `funciones_roles`
  ADD CONSTRAINT `funcion_rol_key` FOREIGN KEY (`rolescod`) REFERENCES `roles` (`rolescod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rol_funcion_key` FOREIGN KEY (`fncod`) REFERENCES `funciones` (`fncod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
  ADD CONSTRAINT `rol_usuario_key` FOREIGN KEY (`rolescod`) REFERENCES `roles` (`rolescod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_rol_key` FOREIGN KEY (`usercod`) REFERENCES `usuario` (`usercod`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Volcado de datos para la tabla `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'eti_upnfm', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"areas\",\"asesoria_academica\",\"asignatura\",\"asignatura_carrera\",\"aulas\",\"años\",\"años_asesoria\",\"cargos\",\"carreras\",\"clase_secundaria\",\"dias\",\"docentes\",\"docente_especialidad\",\"docente_perido_asig\",\"edificio\",\"especialidad\",\"horarios\",\"periodos\",\"seccion\"],\"table_structure[]\":[\"areas\",\"asesoria_academica\",\"asignatura\",\"asignatura_carrera\",\"aulas\",\"años\",\"años_asesoria\",\"cargos\",\"carreras\",\"clase_secundaria\",\"dias\",\"docentes\",\"docente_especialidad\",\"docente_perido_asig\",\"edificio\",\"especialidad\",\"horarios\",\"periodos\",\"seccion\"],\"table_data[]\":[\"areas\",\"asesoria_academica\",\"asignatura\",\"asignatura_carrera\",\"aulas\",\"años\",\"años_asesoria\",\"cargos\",\"carreras\",\"clase_secundaria\",\"dias\",\"docentes\",\"docente_especialidad\",\"docente_perido_asig\",\"edificio\",\"especialidad\",\"horarios\",\"periodos\",\"seccion\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'database', 'eti_upnfm2', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"areas\",\"asesoria_academica\",\"asignatura\",\"asignatura_carrera\",\"aulas\",\"años\",\"años_asesoria\",\"bitacora\",\"cargos\",\"carreras\",\"clase_secundaria\",\"dias\",\"docentes\",\"docente_especialidad\",\"docente_perido_asig\",\"edificio\",\"especialidad\",\"funciones\",\"funciones_roles\",\"horarios\",\"periodos\",\"roles\",\"roles_usuarios\",\"seccion\",\"usuario\"],\"table_structure[]\":[\"areas\",\"asesoria_academica\",\"asignatura\",\"asignatura_carrera\",\"aulas\",\"años\",\"años_asesoria\",\"bitacora\",\"cargos\",\"carreras\",\"clase_secundaria\",\"dias\",\"docentes\",\"docente_especialidad\",\"docente_perido_asig\",\"edificio\",\"especialidad\",\"funciones\",\"funciones_roles\",\"horarios\",\"periodos\",\"roles\",\"roles_usuarios\",\"seccion\",\"usuario\"],\"table_data[]\":[\"areas\",\"asesoria_academica\",\"asignatura\",\"asignatura_carrera\",\"aulas\",\"años\",\"años_asesoria\",\"bitacora\",\"cargos\",\"carreras\",\"clase_secundaria\",\"dias\",\"docentes\",\"docente_especialidad\",\"docente_perido_asig\",\"edificio\",\"especialidad\",\"funciones\",\"funciones_roles\",\"horarios\",\"periodos\",\"roles\",\"roles_usuarios\",\"seccion\",\"usuario\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(4, 'root', 'database', 'eti_upnfm3', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"bitacora\",\"categoria_evento\",\"eventos\",\"funciones\",\"funciones_roles\",\"invitados\",\"roles\",\"roles_usuarios\",\"usuario\"],\"table_structure[]\":[\"bitacora\",\"categoria_evento\",\"eventos\",\"funciones\",\"funciones_roles\",\"invitados\",\"roles\",\"roles_usuarios\",\"usuario\"],\"table_data[]\":[\"bitacora\",\"categoria_evento\",\"eventos\",\"funciones\",\"funciones_roles\",\"invitados\",\"roles\",\"roles_usuarios\",\"usuario\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(5, 'root', 'server', 'nuevo_upnfm', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"agendaphp\",\"autos\",\"eti_upnfm\",\"examen\",\"nw202002\",\"phpmyadmin\",\"prueba\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"eti_upnfm\",\"table\":\"bitacora\"},{\"db\":\"eti_upnfm\",\"table\":\"usuario\"},{\"db\":\"eti_upnfm\",\"table\":\"registrados\"},{\"db\":\"eti_upnfm\",\"table\":\"regalos\"},{\"db\":\"eti_upnfm\",\"table\":\"eventos\"},{\"db\":\"eti_upnfm\",\"table\":\"categoria_evento\"},{\"db\":\"eti_upnfm\",\"table\":\"invitados\"},{\"db\":\"eti_upnfm\",\"table\":\"seccion\"},{\"db\":\"eti_upnfm\",\"table\":\"periodos\"},{\"db\":\"eti_upnfm\",\"table\":\"horarios\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('eti_upnfm', 'eventos', 'nombre_evento'),
('eti_upnfm', 'registrados', 'nombre_registrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-08-07 17:25:07', '{\"Console\\/Mode\":\"show\",\"lang\":\"es\",\"Console\\/Height\":9.989000000000033,\"NavigationWidth\":191,\"ThemeDefault\":\"pmahomme\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `prueba`
--
CREATE DATABASE IF NOT EXISTS `prueba` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `prueba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `bitacoracod` int(11) NOT NULL,
  `bitacorafch` datetime DEFAULT NULL,
  `bitprograma` varchar(15) DEFAULT NULL,
  `bitdescripcion` varchar(255) DEFAULT NULL,
  `bitobservacion` mediumtext DEFAULT NULL,
  `bitTipo` char(3) DEFAULT NULL,
  `bitusuario` bigint(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funciones`
--

CREATE TABLE `funciones` (
  `fncod` varchar(15) NOT NULL,
  `fndsc` varchar(45) DEFAULT NULL,
  `fnest` char(3) DEFAULT NULL,
  `fntyp` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funciones_roles`
--

CREATE TABLE `funciones_roles` (
  `rolescod` varchar(15) NOT NULL,
  `fncod` varchar(15) NOT NULL,
  `fnrolest` char(3) DEFAULT NULL,
  `fnexp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `rolescod` varchar(15) NOT NULL,
  `rolesdsc` varchar(45) DEFAULT NULL,
  `rolesest` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_usuarios`
--

CREATE TABLE `roles_usuarios` (
  `usercod` bigint(10) NOT NULL,
  `rolescod` varchar(15) NOT NULL,
  `roleuserest` char(3) DEFAULT NULL,
  `roleuserfch` datetime DEFAULT NULL,
  `roleuserexp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usercod` bigint(10) NOT NULL,
  `useremail` varchar(80) DEFAULT NULL,
  `username` varchar(80) DEFAULT NULL,
  `userpswd` varchar(128) DEFAULT NULL,
  `userfching` datetime DEFAULT NULL,
  `userpswdest` char(3) DEFAULT NULL,
  `userpswdexp` datetime DEFAULT NULL,
  `userest` char(3) DEFAULT NULL,
  `useractcod` varchar(128) DEFAULT NULL,
  `userpswdchg` varchar(128) DEFAULT NULL,
  `usertipo` char(3) DEFAULT NULL COMMENT 'Tipo de Usuario, Normal, Consultor o Cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`bitacoracod`);

--
-- Indices de la tabla `funciones`
--
ALTER TABLE `funciones`
  ADD PRIMARY KEY (`fncod`);

--
-- Indices de la tabla `funciones_roles`
--
ALTER TABLE `funciones_roles`
  ADD PRIMARY KEY (`rolescod`,`fncod`),
  ADD KEY `rol_funcion_key_idx` (`fncod`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rolescod`);

--
-- Indices de la tabla `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
  ADD PRIMARY KEY (`usercod`,`rolescod`),
  ADD KEY `rol_usuario_key_idx` (`rolescod`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usercod`),
  ADD UNIQUE KEY `useremail_UNIQUE` (`useremail`),
  ADD KEY `usertipo` (`usertipo`,`useremail`,`usercod`,`userest`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `bitacoracod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usercod` bigint(10) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `funciones_roles`
--
ALTER TABLE `funciones_roles`
  ADD CONSTRAINT `funcion_rol_key` FOREIGN KEY (`rolescod`) REFERENCES `roles` (`rolescod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rol_funcion_key` FOREIGN KEY (`fncod`) REFERENCES `funciones` (`fncod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
  ADD CONSTRAINT `rol_usuario_key` FOREIGN KEY (`rolescod`) REFERENCES `roles` (`rolescod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_rol_key` FOREIGN KEY (`usercod`) REFERENCES `usuario` (`usercod`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
