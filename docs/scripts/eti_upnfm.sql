-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2020 a las 06:23:53
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
-- Base de datos: `eti_upnfm`
--

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
(15, '2020-07-30 04:08:39', 'SEC001', 'Update User', '{\"mode\":\"UPD\",\"modeDesc\":\"\",\"tocken\":\"64cc36160fd42a214acca4ff73cacf09\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":false,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":3,\"useremail\":\"maitefashionhn@gmail.com\",\"username\":\"Teresa Nolasco\",\"usertipo\":\"USR\",\"userest\":\"PND\",\"userpswd\":\"\"}', 'INF', 2);

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
(1, 'Arduino básico', '2020-10-09', '16:00:00', 6, 3, 'taller_01'),
(2, 'Responsive Web Design', '2016-12-09', '10:00:00', 6, 1, 'taller_01'),
(3, 'Flexbox', '2016-12-09', '12:00:00', 6, 2, 'taller_02'),
(4, 'HTML5 y CSS3', '2016-12-09', '14:00:00', 6, 3, 'taller_03'),
(5, 'Drupal', '2016-12-09', '17:00:00', 6, 4, 'taller_04'),
(6, 'WordPress', '2016-12-09', '19:00:00', 6, 5, 'taller_05'),
(7, 'Como ser freelancer', '2016-12-09', '10:00:00', 2, 1, 'conf_01'),
(8, 'Tecnologías del Futuro', '2016-12-09', '17:00:00', 2, 1, 'conf_02'),
(9, 'Seguridad en la Web', '2016-12-09', '19:00:00', 2, 2, 'conf_03'),
(11, 'Responsive Web Design', '2016-12-09', '10:00:00', 6, 1, 'taller_01'),
(12, 'Flexbox', '2016-12-09', '12:00:00', 6, 2, 'taller_02'),
(13, 'HTML5 y CSS3', '2016-12-09', '14:00:00', 6, 3, 'taller_03'),
(14, 'Drupal', '2016-12-09', '17:00:00', 6, 4, 'taller_04'),
(15, 'WordPress', '2016-12-09', '19:00:00', 6, 5, 'taller_05'),
(16, 'Como ser freelancer', '2016-12-09', '10:00:00', 2, 1, 'conf_01'),
(17, 'Tecnologías del Futuro', '2016-12-09', '17:00:00', 2, 1, 'conf_02'),
(18, 'Seguridad en la Web', '2016-12-09', '19:00:00', 2, 2, 'conf_03'),
(19, 'Diseño UI y UX para móviles', '2016-12-09', '10:00:00', 1, 1, 'sem_01'),
(20, 'AngularJS', '2016-12-10', '10:00:00', 6, 1, 'taller_06'),
(21, 'PHP y MySQL', '2016-12-10', '12:00:00', 6, 2, 'taller_07'),
(22, 'JavaScript Avanzado', '2016-12-10', '14:00:00', 6, 3, 'taller_08'),
(23, 'SEO en Google', '2016-12-10', '17:00:00', 6, 4, 'taller_09'),
(24, 'De Photoshop a HTML5 y CSS3', '2016-12-10', '19:00:00', 6, 5, 'taller_10'),
(25, 'PHP Intermedio y Avanzado', '2016-12-10', '21:00:00', 6, 1, 'taller_11'),
(26, 'Como crear una tienda online que venda millones en pocos día', '2016-12-10', '10:00:00', 2, 1, 'conf_04'),
(27, 'Los mejores lugares para encontrar trabajo', '2016-12-10', '17:00:00', 2, 1, 'conf_05'),
(28, 'Pasos para crear un negocio rentable ', '2016-12-10', '19:00:00', 2, 2, 'conf_06'),
(29, 'Aprende a Programar en una mañana', '2016-12-10', '10:00:00', 1, 3, 'sem_02'),
(30, 'Diseño UI y UX para móviles', '2016-12-10', '17:00:00', 1, 5, 'sem_03'),
(31, 'Laravel', '2016-12-11', '10:00:00', 6, 1, 'taller_12'),
(32, 'Crea tu propia API', '2016-12-11', '12:00:00', 6, 2, 'taller_13'),
(33, 'JavaScript y jQuery', '2016-12-11', '14:00:00', 6, 3, 'taller_14'),
(34, 'Creando Plantillas para WordPress', '2016-12-11', '17:00:00', 6, 4, 'taller_15'),
(35, 'Tiendas Virtuales en Magento', '2016-12-11', '19:00:00', 6, 5, 'taller_16'),
(36, 'Como hacer Marketing en línea', '2016-12-11', '10:00:00', 2, 1, 'conf_07'),
(37, '¿Con que lenguaje debo empezar?', '2016-12-11', '17:00:00', 2, 2, 'conf_08'),
(38, 'Frameworks y librerias Open Source', '2016-12-11', '19:00:00', 2, 3, 'conf_09'),
(39, 'Creando una App en Android en una mañana', '2016-12-11', '10:00:00', 1, 4, 'sem_04'),
(40, 'Creando una App en iOS en una tarde', '2016-12-11', '17:00:00', 1, 1, 'sem_05');

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
(1, 'Rolando', 'Zavala', 'Ingeniero en sistemas egresado de la UNICAH especializado en Robótica y Desarrollo Web', 'invitado1.jpg'),
(2, 'Ricardo', 'Garcia', 'Ingeniero en sistemas egresado de la UNICAH especializado en el Diseño Gráfico, Diseño Web y la industría Automotriz', 'invitado2.jpg'),
(3, 'Nestor', 'Rodriguez', 'Master en Energias Renovables, egresado de UNITEC, Docente en la UPNFM en la facultad de  Educación Técnica Industrial, especializado en todas las areás de Electronica y Electricidad', 'invitado3.jpg'),
(4, 'Fanny', 'Arriaga', 'Ingeniera en Sistemas egresada de la UNICAH, especializada en la administración de bases datos.', 'invitado4.jpg'),
(5, 'Julito', 'Alvarado', 'Ingeniero en sistemas egresado de la UNICAH, especializado en el desarrollo de apps moviles, redes y famoso conferencista', 'invitado5.jpg');

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
(3, 'master', 'ACT', '2020-07-30 16:08:35', NULL);

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
(3, 'maitefashionhn@gmail.com', 'Teresa Nolasco', '137a967761454b8228fd205fd2a82635', '2020-07-30 16:07:10', 'VGT', NULL, 'PND', '', NULL, 'USR');

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
  MODIFY `bitacoracod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  MODIFY `id_categoria` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `evento_id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `invitados`
--
ALTER TABLE `invitados`
  MODIFY `invitado_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usercod` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Filtros para la tabla `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
  ADD CONSTRAINT `rol_usuario_key` FOREIGN KEY (`rolescod`) REFERENCES `roles` (`rolescod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_rol_key` FOREIGN KEY (`usercod`) REFERENCES `usuario` (`usercod`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
