-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-07-2020 a las 23:16:50
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
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `cod_area` int(11) NOT NULL,
  `descripcion_area` varchar(30) NOT NULL,
  `cod_asignatura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesoria_academica`
--

CREATE TABLE `asesoria_academica` (
  `cod_asesoria` int(11) NOT NULL,
  `cod_asignatura` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL,
  `id_dias` int(11) NOT NULL,
  `cod_docente` varchar(15) NOT NULL,
  `cod_carrera` int(11) NOT NULL,
  `cod_seccion` int(11) NOT NULL,
  `cod_edificio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `cod_asignatura` int(11) NOT NULL,
  `des_asignatura` varchar(30) NOT NULL,
  `des_unidad_valorativa` varchar(5) NOT NULL,
  `cant_cupos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura_carrera`
--

CREATE TABLE `asignatura_carrera` (
  `cod_asignatura` int(11) NOT NULL,
  `cod_carrera` int(11) NOT NULL,
  `cod_clase_secundaria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `cod_aula` int(11) NOT NULL,
  `des_aula` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `años`
--

CREATE TABLE `años` (
  `cod_año` int(11) NOT NULL,
  `des_año` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `años_asesoria`
--

CREATE TABLE `años_asesoria` (
  `cod_año` int(11) NOT NULL,
  `cod_asesoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(10, '2020-07-30 02:59:59', 'SEC001', 'Insert User', '{\"mode\":\"INS\",\"modeDesc\":\"\",\"tocken\":\"d2f700f6e9b7e73a5a7c9eb1313005d4\",\"errores\":[],\"haserrores\":false,\"readonly\":false,\"isinsert\":true,\"isRolEdit\":false,\"tipoUsuarios\":[{\"codigo\":\"ADM\",\"valor\":\"Administrador\"},{\"codigo\":\"USR\",\"valor\":\"Usuario\"},{\"codigo\":\"CNS\",\"valor\":\"Consultor\"},{\"codigo\":\"CLT\",\"valor\":\"Cliente\"}],\"estadoUsuarios\":[{\"codigo\":\"PND\",\"valor\":\"Sin Activar\"},{\"codigo\":\"ACT\",\"valor\":\"Activo\"},{\"codigo\":\"SPD\",\"valor\":\"Suspendido\"},{\"codigo\":\"INA\",\"valor\":\"Inactivo\"}],\"usrcod\":0,\"useremail\":\"tono@zavala.com\",\"username\":\"Rolando Zavala\",\"usertipo\":\"ADM\",\"userest\":\"ACT\",\"userpswd\":\"P@ssw0rd\"}', 'INF', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `cod_cargo_docente` int(11) NOT NULL,
  `des_cargo` varchar(50) NOT NULL,
  `cod_docente` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `cod_carrera` int(11) NOT NULL,
  `des_carrera` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase_secundaria`
--

CREATE TABLE `clase_secundaria` (
  `cod_clase_secundaria` int(11) NOT NULL,
  `cod_asignatura` int(11) NOT NULL,
  `boleano` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dias`
--

CREATE TABLE `dias` (
  `id_dias` int(11) NOT NULL,
  `des_dias` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `cod_docente` varchar(15) NOT NULL,
  `primer_nombre` varchar(15) NOT NULL,
  `segundo_nombre` varchar(15) NOT NULL,
  `prime_apelliod` varchar(15) NOT NULL,
  `segundo_apellido` varchar(15) NOT NULL,
  `titulo_docente` varchar(50) NOT NULL,
  `correo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente_especialidad`
--

CREATE TABLE `docente_especialidad` (
  `cod_especialidad` int(11) NOT NULL,
  `cod_docente` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente_perido_asig`
--

CREATE TABLE `docente_perido_asig` (
  `cod_periodos` int(11) NOT NULL,
  `cod_docente` varchar(15) NOT NULL,
  `cod_asignatura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edificio`
--

CREATE TABLE `edificio` (
  `cod_edificio` int(11) NOT NULL,
  `des_edificio` varchar(25) NOT NULL,
  `cod_aula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `cod_especialidad` int(11) NOT NULL,
  `des_especialidad` varchar(50) NOT NULL
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

--
-- Volcado de datos para la tabla `funciones`
--

INSERT INTO `funciones` (`fncod`, `fndsc`, `fnest`, `fntyp`) VALUES
('dashboard', 'Menu Principal de Administración', 'ACT', 'PGR'),
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id_horario` int(11) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_finaliza` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
--

CREATE TABLE `periodos` (
  `cod_periodos` int(11) NOT NULL,
  `des_periodos` varchar(25) NOT NULL
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
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `cod_seccion` int(11) NOT NULL,
  `des_seccion` varchar(5) NOT NULL
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
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usercod`, `useremail`, `username`, `userpswd`, `userfching`, `userpswdest`, `userpswdexp`, `userest`, `useractcod`, `userpswdchg`, `usertipo`) VALUES
(1, 'admin@demo.com', 'Administrador', '43e3e6e07ff514e49ca34f83ebc380d8', '2020-07-30 14:50:52', 'VGT', NULL, 'ACT', '', NULL, 'ADM'),
(2, 'tono@zavala.com', 'Rolando Zavala', 'e6e47ad3492a0eb4721575592e46ea1f', '2020-07-30 14:59:59', 'VGT', NULL, 'ACT', '', NULL, 'ADM');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`cod_area`),
  ADD KEY `FK__Areas__cod_asign__44FF419A` (`cod_asignatura`);

--
-- Indices de la tabla `asesoria_academica`
--
ALTER TABLE `asesoria_academica`
  ADD PRIMARY KEY (`cod_asesoria`),
  ADD KEY `FK__Asesoria___cod_a__45F365D3` (`cod_asignatura`),
  ADD KEY `FK__Asesoria___cod_c__46E78A0C` (`cod_carrera`),
  ADD KEY `FK__Asesoria___cod_d__47DBAE45` (`cod_docente`),
  ADD KEY `FK__Asesoria___cod_e__48CFD27E` (`cod_edificio`),
  ADD KEY `FK__Asesoria___cod_s__49C3F6B7` (`cod_seccion`),
  ADD KEY `FK__Asesoria___id_di__4AB81AF0` (`id_dias`),
  ADD KEY `FK__Asesoria___id_ho__4BAC3F29` (`id_horario`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`cod_asignatura`);

--
-- Indices de la tabla `asignatura_carrera`
--
ALTER TABLE `asignatura_carrera`
  ADD KEY `FK__Asignatur__cod_a__4CA06362` (`cod_asignatura`),
  ADD KEY `FK__Asignatur__cod_c__4D94879B` (`cod_carrera`),
  ADD KEY `FK__Asignatur__cod_c__4E88ABD4` (`cod_clase_secundaria`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`cod_aula`);

--
-- Indices de la tabla `años`
--
ALTER TABLE `años`
  ADD PRIMARY KEY (`cod_año`);

--
-- Indices de la tabla `años_asesoria`
--
ALTER TABLE `años_asesoria`
  ADD KEY `ix_Años_Asesoria_autoinc` (`cod_año`),
  ADD KEY `FK__Años_Ases__cod_a__440B1D61` (`cod_asesoria`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`bitacoracod`);

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`cod_cargo_docente`),
  ADD KEY `FK__Cargos__cod_doce__4F7CD00D` (`cod_docente`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`cod_carrera`);

--
-- Indices de la tabla `clase_secundaria`
--
ALTER TABLE `clase_secundaria`
  ADD PRIMARY KEY (`cod_clase_secundaria`),
  ADD KEY `FK__Clase_Sec__cod_a__5070F446` (`cod_asignatura`);

--
-- Indices de la tabla `dias`
--
ALTER TABLE `dias`
  ADD PRIMARY KEY (`id_dias`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`cod_docente`);

--
-- Indices de la tabla `docente_especialidad`
--
ALTER TABLE `docente_especialidad`
  ADD KEY `ix_Docente_Especialidad_autoinc` (`cod_especialidad`),
  ADD KEY `FK__Docente_E__cod_d__5165187F` (`cod_docente`);

--
-- Indices de la tabla `docente_perido_asig`
--
ALTER TABLE `docente_perido_asig`
  ADD KEY `FK__Docente_P__cod_a__534D60F1` (`cod_asignatura`),
  ADD KEY `FK__Docente_P__cod_d__5441852A` (`cod_docente`),
  ADD KEY `FK__Docente_P__cod_p__5535A963` (`cod_periodos`);

--
-- Indices de la tabla `edificio`
--
ALTER TABLE `edificio`
  ADD PRIMARY KEY (`cod_edificio`),
  ADD KEY `FK__Edificio__cod_au__5629CD9C` (`cod_aula`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`cod_especialidad`);

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
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id_horario`);

--
-- Indices de la tabla `periodos`
--
ALTER TABLE `periodos`
  ADD PRIMARY KEY (`cod_periodos`);

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
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`cod_seccion`);

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
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `cod_area` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asesoria_academica`
--
ALTER TABLE `asesoria_academica`
  MODIFY `cod_asesoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `cod_asignatura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `aulas`
--
ALTER TABLE `aulas`
  MODIFY `cod_aula` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `años`
--
ALTER TABLE `años`
  MODIFY `cod_año` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `años_asesoria`
--
ALTER TABLE `años_asesoria`
  MODIFY `cod_año` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `bitacoracod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `cod_cargo_docente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `cod_carrera` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clase_secundaria`
--
ALTER TABLE `clase_secundaria`
  MODIFY `cod_clase_secundaria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dias`
--
ALTER TABLE `dias`
  MODIFY `id_dias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docente_especialidad`
--
ALTER TABLE `docente_especialidad`
  MODIFY `cod_especialidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `edificio`
--
ALTER TABLE `edificio`
  MODIFY `cod_edificio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `cod_especialidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `periodos`
--
ALTER TABLE `periodos`
  MODIFY `cod_periodos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `cod_seccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usercod` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `FK__Areas__cod_asign__44FF419A` FOREIGN KEY (`cod_asignatura`) REFERENCES `asignatura` (`cod_asignatura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asesoria_academica`
--
ALTER TABLE `asesoria_academica`
  ADD CONSTRAINT `FK__Asesoria___cod_a__45F365D3` FOREIGN KEY (`cod_asignatura`) REFERENCES `asignatura` (`cod_asignatura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Asesoria___cod_c__46E78A0C` FOREIGN KEY (`cod_carrera`) REFERENCES `carreras` (`cod_carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Asesoria___cod_d__47DBAE45` FOREIGN KEY (`cod_docente`) REFERENCES `docentes` (`cod_docente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Asesoria___cod_e__48CFD27E` FOREIGN KEY (`cod_edificio`) REFERENCES `edificio` (`cod_edificio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Asesoria___cod_s__49C3F6B7` FOREIGN KEY (`cod_seccion`) REFERENCES `seccion` (`cod_seccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Asesoria___id_di__4AB81AF0` FOREIGN KEY (`id_dias`) REFERENCES `dias` (`id_dias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Asesoria___id_ho__4BAC3F29` FOREIGN KEY (`id_horario`) REFERENCES `horarios` (`id_horario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asignatura_carrera`
--
ALTER TABLE `asignatura_carrera`
  ADD CONSTRAINT `FK__Asignatur__cod_a__4CA06362` FOREIGN KEY (`cod_asignatura`) REFERENCES `asignatura` (`cod_asignatura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Asignatur__cod_c__4D94879B` FOREIGN KEY (`cod_carrera`) REFERENCES `carreras` (`cod_carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Asignatur__cod_c__4E88ABD4` FOREIGN KEY (`cod_clase_secundaria`) REFERENCES `clase_secundaria` (`cod_clase_secundaria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `años_asesoria`
--
ALTER TABLE `años_asesoria`
  ADD CONSTRAINT `FK__Años_Ases__cod_a__4316F928` FOREIGN KEY (`cod_año`) REFERENCES `años` (`cod_año`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Años_Ases__cod_a__440B1D61` FOREIGN KEY (`cod_asesoria`) REFERENCES `asesoria_academica` (`cod_asesoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD CONSTRAINT `FK__Cargos__cod_doce__4F7CD00D` FOREIGN KEY (`cod_docente`) REFERENCES `docentes` (`cod_docente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `clase_secundaria`
--
ALTER TABLE `clase_secundaria`
  ADD CONSTRAINT `FK__Clase_Sec__cod_a__5070F446` FOREIGN KEY (`cod_asignatura`) REFERENCES `asignatura` (`cod_asignatura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `docente_especialidad`
--
ALTER TABLE `docente_especialidad`
  ADD CONSTRAINT `FK__Docente_E__cod_d__5165187F` FOREIGN KEY (`cod_docente`) REFERENCES `docentes` (`cod_docente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Docente_E__cod_e__52593CB8` FOREIGN KEY (`cod_especialidad`) REFERENCES `especialidad` (`cod_especialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `docente_perido_asig`
--
ALTER TABLE `docente_perido_asig`
  ADD CONSTRAINT `FK__Docente_P__cod_a__534D60F1` FOREIGN KEY (`cod_asignatura`) REFERENCES `asignatura` (`cod_asignatura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Docente_P__cod_d__5441852A` FOREIGN KEY (`cod_docente`) REFERENCES `docentes` (`cod_docente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__Docente_P__cod_p__5535A963` FOREIGN KEY (`cod_periodos`) REFERENCES `periodos` (`cod_periodos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `edificio`
--
ALTER TABLE `edificio`
  ADD CONSTRAINT `FK__Edificio__cod_au__5629CD9C` FOREIGN KEY (`cod_aula`) REFERENCES `aulas` (`cod_aula`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
