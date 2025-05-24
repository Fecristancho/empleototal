-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2024 a las 02:14:57
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empleototal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `idcalificaciones` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL,
  `comentario` varchar(400) NOT NULL,
  `fecha` date NOT NULL,
  `oferta_empleo_id_oferta_empleo` int(11) NOT NULL,
  `usuario_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categora` int(11) NOT NULL,
  `nombre_cat` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categora`, `nombre_cat`) VALUES
(13, 'asdsada'),
(14, 'sad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id_empresa` int(11) NOT NULL,
  `nombre_emp` varchar(45) DEFAULT NULL,
  `industria` varchar(500) DEFAULT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  `tamano_emp` varchar(45) DEFAULT NULL,
  `descripcion_emp` varchar(45) DEFAULT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `sitio_web_of` varchar(45) DEFAULT NULL,
  `antecedentes` varchar(500) DEFAULT NULL,
  `mision` varchar(100) DEFAULT NULL,
  `vision` varchar(100) DEFAULT NULL,
  `regionales` varchar(500) DEFAULT NULL,
  `hitos_significativos` varchar(100) DEFAULT NULL,
  `innovaciones_recientes` varchar(100) DEFAULT NULL,
  `beneficios_empleados` varchar(500) DEFAULT NULL,
  `usuario_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id_empresa`, `nombre_emp`, `industria`, `ubicacion`, `tamano_emp`, `descripcion_emp`, `contacto`, `correo`, `sitio_web_of`, `antecedentes`, `mision`, `vision`, `regionales`, `hitos_significativos`, `innovaciones_recientes`, `beneficios_empleados`, `usuario_id_usuario`) VALUES
(13, 'dsad', 'asdas', 'das', '213', '123', '213', '213@dsa', '123', '213', '123', '123', '213', '213', '213', '123', 135),
(14, 'asdasd', 'asd', 'asd', 'asd', 'asd', '123', 'dsad@dsad', 'asd', 'asd', 'asd', 'asd', 'asd', 'sdsad', 'asd', 'asd', 138);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudios`
--

CREATE TABLE `estudios` (
  `idEstudios` int(11) NOT NULL,
  `intitucion` varchar(45) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `hojade_de_vida_id_hojade_de_vida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_laboral`
--

CREATE TABLE `experiencia_laboral` (
  `idexperiencia_laboral` int(11) NOT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `ubicacion_empleo` varchar(45) DEFAULT NULL,
  `descripcion_labor` varchar(45) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `hojade_de_vida_id_hojade_de_vida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hojade_de_vida`
--

CREATE TABLE `hojade_de_vida` (
  `id_hojade_de_vida` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` decimal(10,0) DEFAULT NULL,
  `correo` varchar(1000) DEFAULT NULL,
  `estado_civil` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nacionalidad` varchar(45) DEFAULT NULL,
  `descripcion_sobre_ti` varchar(500) DEFAULT NULL,
  `objetivo_profecional` varchar(500) DEFAULT NULL,
  `idiomas` varchar(45) DEFAULT NULL,
  `referencias` varchar(45) DEFAULT NULL,
  `parentezco` varchar(45) DEFAULT NULL,
  `numero_referencia` varchar(45) DEFAULT NULL,
  `intereses_personales` varchar(500) DEFAULT NULL,
  `disponibilidad_trabajo` varchar(45) DEFAULT NULL,
  `usuario_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `hojade_de_vida`
--

INSERT INTO `hojade_de_vida` (`id_hojade_de_vida`, `nombre`, `apellido`, `direccion`, `telefono`, `correo`, `estado_civil`, `fecha_nacimiento`, `nacionalidad`, `descripcion_sobre_ti`, `objetivo_profecional`, `idiomas`, `referencias`, `parentezco`, `numero_referencia`, `intereses_personales`, `disponibilidad_trabajo`, `usuario_id_usuario`) VALUES
(23, '123', '123', '123', 123, '123@dsa', 'soltero', '0123-03-21', '123', '123123', NULL, '123', '213', '123', '1312', '3123', '213', 134),
(24, '123', '123', '123', 123, '123@asd', 'casado', '2312-12-31', '312', '123', NULL, '123', '123', '123', '123', '123', '123', 136),
(25, 'prueba de que sirve', '123', '123', 213123, 'sadas@sadasd', 'soltero', '0132-03-12', 'asdasd', 'asd', NULL, 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 137);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hojade_de_vida_has_oferta_empleo`
--

CREATE TABLE `hojade_de_vida_has_oferta_empleo` (
  `hojade_de_vida_id_hojade_de_vida` int(11) NOT NULL,
  `oferta_empleo_id_oferta_empleo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id_mensajes` int(11) NOT NULL,
  `id_receptor` int(11) NOT NULL,
  `id_interceptor` int(11) NOT NULL,
  `contenido` varchar(500) DEFAULT NULL,
  `fecha_envio` datetime DEFAULT NULL,
  `visto` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `idnotificaciones` int(11) NOT NULL,
  `contenido` varchar(200) NOT NULL,
  `fecha_envio` date DEFAULT NULL,
  `usuario_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta_empleo`
--

CREATE TABLE `oferta_empleo` (
  `id_oferta_empleo` int(11) NOT NULL,
  `titulo_emp` varchar(45) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `requisitos` varchar(500) DEFAULT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  `salario` double DEFAULT NULL,
  `oferta_empleocol` varchar(250) DEFAULT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(250) NOT NULL,
  `sub_cat_id_sub_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`) VALUES
(1, 'admin'),
(2, 'empresa'),
(3, 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_cat`
--

CREATE TABLE `sub_cat` (
  `id_sub_cat` int(11) NOT NULL,
  `nombre_sub_cat` varchar(45) DEFAULT NULL,
  `categoria_id_categora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `sub_cat`
--

INSERT INTO `sub_cat` (`id_sub_cat`, `nombre_sub_cat`, `categoria_id_categora`) VALUES
(9, 'sdfsdf', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `contrasena` varchar(250) DEFAULT NULL,
  `rol_id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usuario`, `correo`, `contrasena`, `rol_id_rol`) VALUES
(134, 'pepe', 'clifffrincon@gmail.com', '$2y$10$7EyHM8Hpqp6f4uNwZ1Xeo.F1qcfbT2f/9c0e0VfFZD2eDP2l54C5u', 3),
(135, 'pepito', 'sapo@as', '$2y$10$XSS1m9o2SZigEsFgplmNKO6ys1YazBw323yJ7m7PHGK6Q4pB.795q', 2),
(136, 'admin', 'admin@admin', '$2y$10$O9IOI7IL5sZ1SdmQX1INOuu/5kqLJ24..1H1KUWC0XAxHu3PvI7vK', 1),
(137, 'pepe1', 'clifffrincons@gmail.com', '$2y$10$6878LSvoZbEgn8R7PwupUuUcF2mPxdpiVYSq9t78K83QXNZPtoPPy', 3),
(138, 'pepe123', 'clifffrincona@gmail.com', '$2y$10$wvpUlgfZriJ7T4v/JUA1g.XfL9tN6wYkLf/Fe5ajbLGsSTU.asTJ.', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`idcalificaciones`,`oferta_empleo_id_oferta_empleo`,`usuario_id_usuario`),
  ADD KEY `fk_calificaciones_oferta_empleo1_idx` (`oferta_empleo_id_oferta_empleo`),
  ADD KEY `fk_calificaciones_oferta_empleo1` (`oferta_empleo_id_oferta_empleo`),
  ADD KEY `fk_calificaciones_usuario1_idx` (`usuario_id_usuario`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categora`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id_empresa`) USING BTREE,
  ADD KEY `fk_empresa_usuario1_idx` (`usuario_id_usuario`);

--
-- Indices de la tabla `estudios`
--
ALTER TABLE `estudios`
  ADD PRIMARY KEY (`idEstudios`),
  ADD KEY `fk_estudios_hojade_de_vida1_idx` (`hojade_de_vida_id_hojade_de_vida`);

--
-- Indices de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD PRIMARY KEY (`idexperiencia_laboral`),
  ADD KEY `fk_experiencia_laboral_hojade_de_vida1_idx` (`hojade_de_vida_id_hojade_de_vida`);

--
-- Indices de la tabla `hojade_de_vida`
--
ALTER TABLE `hojade_de_vida`
  ADD PRIMARY KEY (`id_hojade_de_vida`,`usuario_id_usuario`),
  ADD KEY `fk_hojade_de_vida_usuario1_idx` (`usuario_id_usuario`);

--
-- Indices de la tabla `hojade_de_vida_has_oferta_empleo`
--
ALTER TABLE `hojade_de_vida_has_oferta_empleo`
  ADD PRIMARY KEY (`hojade_de_vida_id_hojade_de_vida`,`oferta_empleo_id_oferta_empleo`),
  ADD KEY `fk_hojade_de_vida_has_oferta_empleo_oferta_empleo1_idx` (`oferta_empleo_id_oferta_empleo`),
  ADD KEY `fk_hojade_de_vida_has_oferta_empleo_hojade_de_vida1_idx` (`hojade_de_vida_id_hojade_de_vida`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id_mensajes`,`id_receptor`,`id_interceptor`),
  ADD KEY `fk_mensajes_usuario1_idx` (`id_receptor`),
  ADD KEY `fk_mensajes_usuario2_idx` (`id_interceptor`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`idnotificaciones`,`usuario_id_usuario`) USING BTREE,
  ADD KEY `fk_notificaciones_usuario1_idx` (`usuario_id_usuario`);

--
-- Indices de la tabla `oferta_empleo`
--
ALTER TABLE `oferta_empleo`
  ADD PRIMARY KEY (`id_oferta_empleo`,`sub_cat_id_sub_cat`),
  ADD KEY `fk_oferta_empleo_sub_cat1_idx` (`sub_cat_id_sub_cat`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `sub_cat`
--
ALTER TABLE `sub_cat`
  ADD PRIMARY KEY (`id_sub_cat`,`categoria_id_categora`),
  ADD KEY `fk_sub_cat_categoria1_idx` (`categoria_id_categora`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`,`rol_id_rol`),
  ADD UNIQUE KEY `usuario_unique` (`usuario`),
  ADD UNIQUE KEY `correo_unique` (`correo`),
  ADD KEY `fk_usuario_rol1_idx` (`rol_id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `idcalificaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `estudios`
--
ALTER TABLE `estudios`
  MODIFY `idEstudios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  MODIFY `idexperiencia_laboral` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hojade_de_vida`
--
ALTER TABLE `hojade_de_vida`
  MODIFY `id_hojade_de_vida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id_mensajes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `idnotificaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oferta_empleo`
--
ALTER TABLE `oferta_empleo`
  MODIFY `id_oferta_empleo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `sub_cat`
--
ALTER TABLE `sub_cat`
  MODIFY `id_sub_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `fk_calificaciones_oferta_empleo1` FOREIGN KEY (`oferta_empleo_id_oferta_empleo`) REFERENCES `oferta_empleo` (`id_oferta_empleo`),
  ADD CONSTRAINT `fk_calificaciones_usuario1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estudios`
--
ALTER TABLE `estudios`
  ADD CONSTRAINT `fk_estudios_hojade_de_vida1` FOREIGN KEY (`hojade_de_vida_id_hojade_de_vida`) REFERENCES `hojade_de_vida` (`id_hojade_de_vida`);

--
-- Filtros para la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD CONSTRAINT `fk_experiencia_laboral_hojade_de_vida1` FOREIGN KEY (`hojade_de_vida_id_hojade_de_vida`) REFERENCES `hojade_de_vida` (`id_hojade_de_vida`);

--
-- Filtros para la tabla `hojade_de_vida`
--
ALTER TABLE `hojade_de_vida`
  ADD CONSTRAINT `fk_hojade_de_vida_usuario1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `hojade_de_vida_has_oferta_empleo`
--
ALTER TABLE `hojade_de_vida_has_oferta_empleo`
  ADD CONSTRAINT `fk_hojade_de_vida_has_oferta_empleo_hojade_de_vida1` FOREIGN KEY (`hojade_de_vida_id_hojade_de_vida`) REFERENCES `hojade_de_vida` (`id_hojade_de_vida`),
  ADD CONSTRAINT `fk_hojade_de_vida_has_oferta_empleo_oferta_empleo1` FOREIGN KEY (`oferta_empleo_id_oferta_empleo`) REFERENCES `oferta_empleo` (`id_oferta_empleo`);

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `fk_mensajes_usuario1` FOREIGN KEY (`id_receptor`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mensajes_usuario2` FOREIGN KEY (`id_interceptor`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `fk_notificaciones_usuario1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `oferta_empleo`
--
ALTER TABLE `oferta_empleo`
  ADD CONSTRAINT `fk_oferta_empleo_sub_cat1` FOREIGN KEY (`sub_cat_id_sub_cat`) REFERENCES `sub_cat` (`id_sub_cat`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sub_cat`
--
ALTER TABLE `sub_cat`
  ADD CONSTRAINT `fk_sub_cat_categoria1` FOREIGN KEY (`categoria_id_categora`) REFERENCES `categoria` (`id_categora`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_rol1` FOREIGN KEY (`rol_id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
