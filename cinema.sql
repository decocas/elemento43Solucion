-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 18-10-2018 a las 14:07:41
-- Versión del servidor: 5.0.45
-- Versión de PHP: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `cinema`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `calificacion`
-- 

CREATE TABLE `calificacion` (
  `id_p` varchar(20) NOT NULL,
  `cantidad` float NOT NULL,
  `id_c` varchar(20) NOT NULL,
  PRIMARY KEY  (`id_p`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `calificacion`
-- 

INSERT INTO `calificacion` VALUES ('1', 8, '1');
INSERT INTO `calificacion` VALUES ('2', 10, '1');
INSERT INTO `calificacion` VALUES ('3', 10, '1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `cliente`
-- 

CREATE TABLE `cliente` (
  `id` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `edad` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `clave` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `cliente`
-- 

INSERT INTO `cliente` VALUES ('1', 'david', 'castro', '15', 'elmanco@yahoo.com', '123456');
INSERT INTO `cliente` VALUES ('4', 'jose', 'hudson', '50', 'jose@correo.com', '123456');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `pelicula`
-- 

CREATE TABLE `pelicula` (
  `nombre` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `id` varchar(20) NOT NULL,
  `id_t` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `pelicula`
-- 

INSERT INTO `pelicula` VALUES ('scream', 'terror', '1', '1');
INSERT INTO `pelicula` VALUES ('titanic', 'romantica', '2', '2');
INSERT INTO `pelicula` VALUES ('avatar', 'ficcion', '3', '3');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `teatro`
-- 

CREATE TABLE `teatro` (
  `nombre` varchar(20) NOT NULL,
  `direccion` varchar(20) NOT NULL,
  `id` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `teatro`
-- 

INSERT INTO `teatro` VALUES ('la plazuela', 'cll 50 #45-16', '1');
INSERT INTO `teatro` VALUES ('la castellana', 'av pedro de heredia', '2');
INSERT INTO `teatro` VALUES ('caribe plaza', 'av del mercado', '3');
