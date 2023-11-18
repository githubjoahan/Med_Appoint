-- Creando la base de datos
CREATE DATABASE IF NOT EXISTS `citas_prueba` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `citas_prueba`;

-- Creando la tabla especialidades
CREATE TABLE IF NOT EXISTS `especialidades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `creado_en` timestamp NULL DEFAULT NULL,
  `actualizado_en` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Creando la tabla usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verificado` timestamp NULL DEFAULT NULL,
  `contrasena` varchar(255) NOT NULL,
  `dni` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `rol` varchar(255) DEFAULT NULL,
  `recordar_token` varchar(100) DEFAULT NULL,
  `creado_en` timestamp NULL DEFAULT NULL,
  `actualizado_en` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Creando la tabla citas
CREATE TABLE IF NOT EXISTS `citas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `especialidad_id` int(10) unsigned NOT NULL,
  `medico_id` int(10) unsigned NOT NULL,
  `paciente_id` int(10) unsigned NOT NULL,
  `fecha_cita` date NOT NULL,
  `hora_cita` time NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `creado_en` timestamp NULL DEFAULT NULL,
  `actualizado_en` timestamp NULL DEFAULT NULL,
  `estado` varchar(255) NOT NULL DEFAULT 'Reservada',
  PRIMARY KEY (`id`),
  FOREIGN KEY (`especialidad_id`) REFERENCES `especialidades`(`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`medico_id`) REFERENCES `usuarios`(`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`paciente_id`) REFERENCES `usuarios`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Creando las demás tablas con las claves foráneas correspondientes
CREATE TABLE IF NOT EXISTS `cancelar_cita` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cita_id` int(10) unsigned NOT NULL,
  `justificacion` varchar(255) DEFAULT NULL,
  `cancelado_por_id` int(10) unsigned NOT NULL,
  `creado_en` timestamp NULL DEFAULT NULL,
  `actualizado_en` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`cita_id`) REFERENCES `citas`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `dias_laborales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dia` smallint(5) unsigned NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `inicio_manana` time NOT NULL,
  `fin_manana` time NOT NULL,
  `inicio_tarde` time NOT NULL,
  `fin_tarde` time NOT NULL,
  `usuario_id` int(10) unsigned NOT NULL,
  `creado_en` timestamp NULL DEFAULT NULL,
  `actualizado_en` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`usuario_id`) REFERENCES `usuarios`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `especialidad_usuario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario_id` int(10) unsigned NOT NULL,
  `especialidad_id` int(10) unsigned NOT NULL,
  `creado_en` timestamp NULL DEFAULT NULL,
  `actualizado_en` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`usuario_id`) REFERENCES `usuarios`(`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`especialidad_id`) REFERENCES `especialidades`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `restablecer_contrasena` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `creado_en` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
