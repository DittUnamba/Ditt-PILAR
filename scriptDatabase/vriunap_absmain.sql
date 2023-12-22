-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-12-2023 a las 16:43:16
-- Versión del servidor: 5.7.42-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vriunap_absmain`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicCarreras`
--

CREATE TABLE `dicCarreras` (
  `Id` int(11) NOT NULL,
  `IdFacultad` int(11) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Titulo` varchar(90) CHARACTER SET utf8 NOT NULL,
  `RutaArchivo` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicCarreras`
--

INSERT INTO `dicCarreras` (`Id`, `IdFacultad`, `Nombre`, `Titulo`, `RutaArchivo`) VALUES
(1, 1, 'Ingeniera Informática y Sistemas', 'Ingeniero Informático y Sistemas', NULL),
(2, 1, 'Ingeniería Civil', 'Ingeniero civil', NULL),
(3, 1, 'Ingeniería de Minas', 'Ingeniero de Minas', NULL),
(4, 1, 'Ingeniería Agroindustrial', 'Ingeniero Agroindustrial', NULL),
(9, 2, 'Adminstración', 'Licenciado en Administración', NULL),
(6, 3, 'Educación Inicial Intercultural Bilingüe: Primera y Segunda Infancia ', 'Licenciado en Educación Inicial Intercultural Bilingüe Primera y Segunda Infancia.', NULL),
(8, 4, 'Medicina Veterinaria y Zootécnia', 'Médico Veterinario y Zootecnista', NULL),
(5, 1, 'Ingeniería Agroecológica y Desarrollo Rural', 'Ingeniero Agroecólogo Rural', NULL),
(7, 3, 'Ciencia Política y Gobernabilidad', 'Licenciado en Ciencia Política y Gobernabilidad', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicCategorias`
--

CREATE TABLE `dicCategorias` (
  `Id` int(11) NOT NULL,
  `Tipo` varchar(1) NOT NULL,
  `Nombre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Abrev` varchar(15) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicCategorias`
--

INSERT INTO `dicCategorias` (`Id`, `Tipo`, `Nombre`, `Abrev`) VALUES
(1, 'N', 'DOCENTE PRINCIPAL D.E.', 'PRINC.D.E'),
(2, 'N', 'DOCENTE PRINCIPAL T.C.', 'PRINC.T.C'),
(3, 'N', 'DOCENTE PRINCIPAL T.P.', 'PRINC.T.P'),
(4, 'N', 'DOCENTE ASOCIADO D.E.', 'ASOC.D.E.'),
(5, 'N', 'DOCENTE ASOCIADO T.C.', 'ASOC.T.C.'),
(6, 'N', 'DOCENTE ASOCIADO T.P.', 'ASOC.T.P.'),
(7, 'N', 'DOCENTE AUXILIAR D.E.', 'AUX.D.E.'),
(8, 'N', 'DOCENTE AUXILIAR T.C.', 'AUX.T.C.'),
(9, 'N', 'DOCENTE AUXILIAR T.P.', 'AUX.T.P.'),
(10, 'N', 'DOCENTE J.P.D.E.', 'J.P.D.E.'),
(11, 'N', 'DOCENTE J.P.T.C.', 'J.P.T.C.'),
(12, 'N', 'DOCENTE J.P.T.P.', 'J.P.T.P.'),
(13, 'C', 'CONTRATADO ASOCIADO T.C.', 'ASOC.T.C.'),
(14, 'C', 'CONTRATADO ASOCIADO T.P.', 'ASOC.T.P.'),
(15, 'C', 'CONTRATADO AUXILIAR T.C.', 'AUX.T.C.'),
(16, 'C', 'CONTRATADO AUXILIAR T.P.', 'AUX.T.P.'),
(17, 'C', 'CONTRATADO J.P.T.C.', 'J.P.T.C.'),
(18, 'C', 'CONTRATADO J.P.T.P.', 'J.P.T.P.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicDocIndex`
--

CREATE TABLE `dicDocIndex` (
  `Id` int(11) NOT NULL,
  `IdDocente` int(11) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `Dina` varchar(200) NOT NULL,
  `Regina` varchar(100) NOT NULL,
  `Orcid` varchar(100) NOT NULL,
  `Scopus` varchar(100) NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicEspecialis`
--

CREATE TABLE `dicEspecialis` (
  `Id` int(11) NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `Cod` varchar(7) CHARACTER SET utf8 NOT NULL,
  `Nombre` varchar(75) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicEspecialis`
--

INSERT INTO `dicEspecialis` (`Id`, `IdCarrera`, `Cod`, `Nombre`) VALUES
(1, 1, '12', 'Ingenierìa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicEstadosDoc`
--

CREATE TABLE `dicEstadosDoc` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicEstadosDoc`
--

INSERT INTO `dicEstadosDoc` (`Id`, `Nombre`) VALUES
(0, 'Sin Contrato (Ingrese Justificación)'),
(1, 'CESE Docente (Ingrese Resolución)'),
(2, 'Sancionado (Ingrese Resolución)'),
(3, 'Licencia/Sabatico (Ingrese Resolución)'),
(4, 'Autoridad Universitaria (Ingrese Resoluc'),
(5, 'Dirección-Decanato(Resolución)'),
(6, 'Habilitado'),
(7, 'Colegio Porfesional (Ingrese Fecha)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicFacultades`
--

CREATE TABLE `dicFacultades` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Abrev` varchar(20) CHARACTER SET utf8 NOT NULL,
  `IdArea` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicFacultades`
--

INSERT INTO `dicFacultades` (`Id`, `Nombre`, `Abrev`, `IdArea`) VALUES
(1, 'Ingenieria', 'ING', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicSunedu`
--

CREATE TABLE `dicSunedu` (
  `Id` int(11) NOT NULL,
  `IdDocente` int(11) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `Fecha` varchar(14) NOT NULL,
  `Tipo` int(2) NOT NULL,
  `Grado` varchar(150) NOT NULL,
  `Proceden` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicSunedu`
--

INSERT INTO `dicSunedu` (`Id`, `IdDocente`, `DNI`, `Fecha`, `Tipo`, `Grado`, `Proceden`) VALUES
(1, 1, '29413634', '17/06/2002', 2, 'MAGISTER SCIENTIAE  TECNOLOGIA DE ALIMENTOS ', 'UNIVERSIDAD NACIONAL AGRARIA LA MOLINA\n* PERU'),
(2, 1, '29413634', '12/07/1996', 4, 'INGENIERO AGROINDUSTRIAL ', 'UNIVERSIDAD NACIONAL DEL ALTIPLANO\n* PERU'),
(3, 1, '29413634', '-', 2, 'GRADO DE MAESTRÍA EN HIGIENE DE ANIMALES Y ALIMENTOS <I>TIPO: RECONOCIMIENTO</I>', 'OBIHIRO UNIVERSITY OF AGRICULTURE AND VETERINARY MEDICINE\n* JAPÓN'),
(4, 109, '01319870', '', 2, 'GRADO ACADÉMICO DE MAGÍSTER EN PRODUCCIÓN ANIMAL', 'PONTIFICIA UNIVERSIDAD CATOLICA DE CHILE\r\n* PERU');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicSuneOgt`
--

CREATE TABLE `dicSuneOgt` (
  `Id` int(11) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `IdSune` int(11) NOT NULL,
  `Tipo` varchar(6) NOT NULL,
  `Grado` varchar(100) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Univ` varchar(100) NOT NULL,
  `Pais` varchar(20) NOT NULL,
  `FechObte` varchar(12) NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicUbigeos`
--

CREATE TABLE `dicUbigeos` (
  `Id` int(11) NOT NULL,
  `Ubigeo` varchar(10) NOT NULL,
  `U1` varchar(2) NOT NULL,
  `U2` varchar(2) NOT NULL,
  `U3` varchar(2) NOT NULL,
  `Depa` varchar(75) NOT NULL,
  `Prov` varchar(75) NOT NULL,
  `Dist` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicUbigeos`
--

INSERT INTO `dicUbigeos` (`Id`, `Ubigeo`, `U1`, `U2`, `U3`, `Depa`, `Prov`, `Dist`) VALUES
(1, '200101', '20', '01', '01', 'PUNO', 'PUNO', 'PUNO'),
(2, '200102', '20', '01', '02', 'PUNO', 'PUNO', 'ACORA'),
(3, '200103', '20', '01', '03', 'PUNO', 'PUNO', 'ATUNCOLLA'),
(4, '200104', '20', '01', '04', 'PUNO', 'PUNO', 'CAPACHICA'),
(5, '200105', '20', '01', '05', 'PUNO', 'PUNO', 'COATA'),
(6, '200106', '20', '01', '06', 'PUNO', 'PUNO', 'CHUCUITO'),
(7, '200107', '20', '01', '07', 'PUNO', 'PUNO', 'HUATA'),
(8, '200108', '20', '01', '08', 'PUNO', 'PUNO', 'MAÑAZO'),
(9, '200109', '20', '01', '09', 'PUNO', 'PUNO', 'PAUCARCOLLA'),
(10, '200110', '20', '01', '10', 'PUNO', 'PUNO', 'PICHACANI'),
(11, '200111', '20', '01', '11', 'PUNO', 'PUNO', 'SAN ANTONIO'),
(12, '200112', '20', '01', '12', 'PUNO', 'PUNO', 'TIQUILLACA'),
(13, '200113', '20', '01', '13', 'PUNO', 'PUNO', 'VILQUE'),
(14, '200114', '20', '01', '14', 'PUNO', 'PUNO', 'PLATERIA'),
(15, '200115', '20', '01', '15', 'PUNO', 'PUNO', 'AMANTANI'),
(16, '200201', '20', '02', '01', 'PUNO', 'AZANGARO', 'AZANGARO'),
(17, '200202', '20', '02', '02', 'PUNO', 'AZANGARO', 'ACHAYA'),
(18, '200203', '20', '02', '03', 'PUNO', 'AZANGARO', 'ARAPA'),
(19, '200204', '20', '02', '04', 'PUNO', 'AZANGARO', 'ASILLO'),
(20, '200205', '20', '02', '05', 'PUNO', 'AZANGARO', 'CAMINACA'),
(21, '200206', '20', '02', '06', 'PUNO', 'AZANGARO', 'CHUPA'),
(22, '200207', '20', '02', '07', 'PUNO', 'AZANGARO', 'JOSE DOMINGO CHOQUEHUANCA'),
(23, '200208', '20', '02', '08', 'PUNO', 'AZANGARO', 'MUÑANI'),
(24, '200210', '20', '02', '10', 'PUNO', 'AZANGARO', 'POTONI'),
(25, '200212', '20', '02', '12', 'PUNO', 'AZANGARO', 'SAMAN'),
(26, '200213', '20', '02', '13', 'PUNO', 'AZANGARO', 'SAN ANTON'),
(27, '200214', '20', '02', '14', 'PUNO', 'AZANGARO', 'SAN JOSE'),
(28, '200215', '20', '02', '15', 'PUNO', 'AZANGARO', 'SAN JUAN DE SALINAS'),
(29, '200216', '20', '02', '16', 'PUNO', 'AZANGARO', 'SANTIAGO DE PUPUJA'),
(30, '200217', '20', '02', '17', 'PUNO', 'AZANGARO', 'TIRAPATA'),
(31, '200301', '20', '03', '01', 'PUNO', 'CARABAYA', 'MACUSANI'),
(32, '200302', '20', '03', '02', 'PUNO', 'CARABAYA', 'AJOYANI'),
(33, '200303', '20', '03', '03', 'PUNO', 'CARABAYA', 'AYAPATA'),
(34, '200304', '20', '03', '04', 'PUNO', 'CARABAYA', 'COASA'),
(35, '200305', '20', '03', '05', 'PUNO', 'CARABAYA', 'CORANI'),
(36, '200306', '20', '03', '06', 'PUNO', 'CARABAYA', 'CRUCERO'),
(37, '200307', '20', '03', '07', 'PUNO', 'CARABAYA', 'ITUATA'),
(38, '200308', '20', '03', '08', 'PUNO', 'CARABAYA', 'OLLACHEA'),
(39, '200309', '20', '03', '09', 'PUNO', 'CARABAYA', 'SAN GABAN'),
(40, '200310', '20', '03', '10', 'PUNO', 'CARABAYA', 'USICAYOS'),
(41, '200401', '20', '04', '01', 'PUNO', 'CHUCUITO', 'JULI'),
(42, '200402', '20', '04', '02', 'PUNO', 'CHUCUITO', 'DESAGUADERO'),
(43, '200403', '20', '04', '03', 'PUNO', 'CHUCUITO', 'HUACULLANI'),
(44, '200406', '20', '04', '06', 'PUNO', 'CHUCUITO', 'PISACOMA'),
(45, '200407', '20', '04', '07', 'PUNO', 'CHUCUITO', 'POMATA'),
(46, '200410', '20', '04', '10', 'PUNO', 'CHUCUITO', 'ZEPITA'),
(47, '200412', '20', '04', '12', 'PUNO', 'CHUCUITO', 'KELLUYO'),
(48, '200501', '20', '05', '01', 'PUNO', 'HUANCANE', 'HUANCANE'),
(49, '200502', '20', '05', '02', 'PUNO', 'HUANCANE', 'COJATA'),
(50, '200504', '20', '05', '04', 'PUNO', 'HUANCANE', 'INCHUPALLA'),
(51, '200506', '20', '05', '06', 'PUNO', 'HUANCANE', 'PUSI'),
(52, '200507', '20', '05', '07', 'PUNO', 'HUANCANE', 'ROSASPATA'),
(53, '200508', '20', '05', '08', 'PUNO', 'HUANCANE', 'TARACO'),
(54, '200509', '20', '05', '09', 'PUNO', 'HUANCANE', 'VILQUE CHICO'),
(55, '200511', '20', '05', '11', 'PUNO', 'HUANCANE', 'HUATASANI'),
(56, '200601', '20', '06', '01', 'PUNO', 'LAMPA', 'LAMPA'),
(57, '200602', '20', '06', '02', 'PUNO', 'LAMPA', 'CABANILLA'),
(58, '200603', '20', '06', '03', 'PUNO', 'LAMPA', 'CALAPUJA'),
(59, '200604', '20', '06', '04', 'PUNO', 'LAMPA', 'NICASIO'),
(60, '200605', '20', '06', '05', 'PUNO', 'LAMPA', 'OCUVIRI'),
(61, '200606', '20', '06', '06', 'PUNO', 'LAMPA', 'PALCA'),
(62, '200607', '20', '06', '07', 'PUNO', 'LAMPA', 'PARATIA'),
(63, '200608', '20', '06', '08', 'PUNO', 'LAMPA', 'PUCARA'),
(64, '200609', '20', '06', '09', 'PUNO', 'LAMPA', 'SANTA LUCIA'),
(65, '200610', '20', '06', '10', 'PUNO', 'LAMPA', 'VILAVILA'),
(66, '200701', '20', '07', '01', 'PUNO', 'MELGAR', 'AYAVIRI'),
(67, '200702', '20', '07', '02', 'PUNO', 'MELGAR', 'ANTAUTA'),
(68, '200703', '20', '07', '03', 'PUNO', 'MELGAR', 'CUPI'),
(69, '200704', '20', '07', '04', 'PUNO', 'MELGAR', 'LLALLI'),
(70, '200705', '20', '07', '05', 'PUNO', 'MELGAR', 'MACARI'),
(71, '200706', '20', '07', '06', 'PUNO', 'MELGAR', 'NUÑOA'),
(72, '200707', '20', '07', '07', 'PUNO', 'MELGAR', 'ORURILLO'),
(73, '200708', '20', '07', '08', 'PUNO', 'MELGAR', 'SANTA ROSA'),
(74, '200709', '20', '07', '09', 'PUNO', 'MELGAR', 'UMACHIRI'),
(75, '200801', '20', '08', '01', 'PUNO', 'SANDIA', 'SANDIA'),
(76, '200803', '20', '08', '03', 'PUNO', 'SANDIA', 'CUYOCUYO'),
(77, '200804', '20', '08', '04', 'PUNO', 'SANDIA', 'LIMBANI'),
(78, '200805', '20', '08', '05', 'PUNO', 'SANDIA', 'PHARA'),
(79, '200806', '20', '08', '06', 'PUNO', 'SANDIA', 'PATAMBUCO'),
(80, '200807', '20', '08', '07', 'PUNO', 'SANDIA', 'QUIACA'),
(81, '200808', '20', '08', '08', 'PUNO', 'SANDIA', 'SAN JUAN DEL ORO'),
(82, '200810', '20', '08', '10', 'PUNO', 'SANDIA', 'YANAHUAYA'),
(83, '200811', '20', '08', '11', 'PUNO', 'SANDIA', 'ALTO INAMBARI'),
(84, '200812', '20', '08', '12', 'PUNO', 'SANDIA', 'SAN PEDRO DE PUTINA PUNCO'),
(85, '200901', '20', '09', '01', 'PUNO', 'SAN ROMAN', 'JULIACA'),
(86, '200902', '20', '09', '02', 'PUNO', 'SAN ROMAN', 'CABANA'),
(87, '200903', '20', '09', '03', 'PUNO', 'SAN ROMAN', 'CABANILLAS'),
(88, '200904', '20', '09', '04', 'PUNO', 'SAN ROMAN', 'CARACOTO'),
(89, '201001', '20', '10', '01', 'PUNO', 'YUNGUYO', 'YUNGUYO'),
(90, '201002', '20', '10', '02', 'PUNO', 'YUNGUYO', 'UNICACHI'),
(91, '201003', '20', '10', '03', 'PUNO', 'YUNGUYO', 'ANAPIA'),
(92, '201004', '20', '10', '04', 'PUNO', 'YUNGUYO', 'COPANI'),
(93, '201005', '20', '10', '05', 'PUNO', 'YUNGUYO', 'CUTURAPI'),
(94, '201006', '20', '10', '06', 'PUNO', 'YUNGUYO', 'OLLARAYA'),
(95, '201007', '20', '10', '07', 'PUNO', 'YUNGUYO', 'TINICACHI'),
(96, '201101', '20', '11', '01', 'PUNO', 'SAN ANTONIO DE PUTINA', 'PUTINA'),
(97, '201102', '20', '11', '02', 'PUNO', 'SAN ANTONIO DE PUTINA', 'PEDRO VILCA APAZA'),
(98, '201103', '20', '11', '03', 'PUNO', 'SAN ANTONIO DE PUTINA', 'QUILCAPUNCU'),
(99, '201104', '20', '11', '04', 'PUNO', 'SAN ANTONIO DE PUTINA', 'ANANEA'),
(100, '201105', '20', '11', '05', 'PUNO', 'SAN ANTONIO DE PUTINA', 'SINA'),
(101, '201201', '20', '12', '01', 'PUNO', 'EL COLLAO', 'ILAVE'),
(102, '201202', '20', '12', '02', 'PUNO', 'EL COLLAO', 'PILCUYO'),
(103, '201203', '20', '12', '03', 'PUNO', 'EL COLLAO', 'SANTA ROSA'),
(104, '201204', '20', '12', '04', 'PUNO', 'EL COLLAO', 'CAPASO'),
(105, '201205', '20', '12', '05', 'PUNO', 'EL COLLAO', 'CONDURIRI'),
(106, '201301', '20', '13', '01', 'PUNO', 'MOHO', 'MOHO'),
(107, '201302', '20', '13', '02', 'PUNO', 'MOHO', 'CONIMA'),
(108, '201303', '20', '13', '03', 'PUNO', 'MOHO', 'TILALI'),
(109, '201304', '20', '13', '04', 'PUNO', 'MOHO', 'HUAYRAPATA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicUniversidades`
--

CREATE TABLE `dicUniversidades` (
  `Id` int(11) NOT NULL,
  `CRI` varchar(20) NOT NULL,
  `Nombre` varchar(70) NOT NULL,
  `Gestion` varchar(20) NOT NULL,
  `Situacion` varchar(30) NOT NULL,
  `Región` varchar(30) NOT NULL,
  `Direccion` varchar(70) NOT NULL,
  `Telefono` varchar(25) NOT NULL,
  `Web` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicUniversidades`
--

INSERT INTO `dicUniversidades` (`Id`, `CRI`, `Nombre`, `Gestion`, `Situacion`, `Región`, `Direccion`, `Telefono`, `Web`) VALUES
(1, 'LIMA', 'UNIVERSIDAD NACIONAL MAYOR DE SAN MARCOS', 'Pública', 'Institucionalizada', 'Lima', 'Av. Venezuela s/n, cdra. 34. Lima', '01?6197000', 'www.unmsm.edu.pe'),
(2, '', 'UNIVERSIDAD NACIONAL DE INGENIERÍA', 'Pública', 'Institucionalizada', 'Lima', 'Av. Túpac Amaru N° 210, Rímac. Lima', '01?4811035 / 01?3813825', 'www.uni.edu.pe'),
(3, '', 'UNIVERSIDAD NACIONAL AGRARIA LA MOLINA', 'Pública', 'Institucionalizada', 'Lima', 'Av. La Molina s/n, La Molina. Lima', '01?6147111 / 01?3495648', 'www.lamolina.edu.pe'),
(4, '', 'UNIVERSIDAD NACIONAL FEDERICO VILLARREAL', 'Pública', 'Institucionalizada', 'Lima', 'Calle Carlos Gonzales N° 285, San Miguel. Lima', '748?0888', 'www.unfv.edu.pe'),
(5, '', 'UNIVERSIDAD NACIONAL DEL CALLAO', 'Pública', 'Institucionalizada', 'Lima', 'Av. Sáenz Peña N° 1060. Callao', '01?4296607', 'www.unac.edu.pe'),
(6, '', 'UNIVERSIDAD NACIONAL DE EDUCACIÓN ENRIQUE GUZMÁN Y VALLE', 'Pública', 'Institucionalizada', 'Lima', 'Av. Enrique Guzmán y Valle s/n, La Cantuta, Chosica. Lima', '01?3133700', 'www.une.edu.pe'),
(7, '', 'UNIVERSIDAD NACIONAL JOSÉ FAUSTINO SÁNCHEZ CARRIÓN', 'Pública', 'Institucionalizada', 'Lima', 'Av. Mercedes Indacochea s/n. Huacho', '01?232 6097 / 01?2322918', 'www.unjfsc.edu.pe'),
(8, '', 'PONTIFICIA UNIVERSIDAD CATÓLICA DEL PERÚ', 'Privada', 'Institucionalizada', 'Lima', 'Av. Universitaria N° 1801, San Miguel. Lima', '01?6262000', 'www.pucp.edu.pe'),
(9, '', 'UNIVERSIDAD PERUANA CAYETANO HEREDIA', 'Privada', 'Institucionalizada', 'Lima', 'Av. Honorio Delgado N° 430, Urb. Ingeniería, San Martín de Porres. Lim', '01?4824045 / 01?4821130', 'www.upch.edu.pe'),
(10, '', 'UNIVERSIDAD DEL PACÍFICO', 'Privada', 'Institucionalizada', 'Lima', 'Av. Salaverry N° 2020, Jesús María. Lima', '01?2190100', 'www.up.edu.pe'),
(11, '', 'UNIVERSIDAD DE LIMA', 'Privada', 'Institucionalizada', 'Lima', 'Av. Javier Prado Este s/n, cdra. 46, Monterrico, Surco. Lima', '01?4351689 / 01?4376767', 'www.ulima.edu.pe'),
(12, '', 'UNIVERSIDAD DE SAN MARTÍN DE PORRES', 'Privada', 'Institucionalizada', 'Lima', 'Jr. Calandrias N° 151/291, Santa Anita. Lima', '01?4780498 / 01?3620064', 'www.usmp.edu.pe'),
(13, '', 'UNIVERSIDAD FEMENINA DEL SAGRADO CORAZÓN', 'Privada', 'Institucionalizada', 'LIma', 'Av. Los Frutales N° 954, Urb. Santa Magdalena Sofía, La Molina. Lima', '01?4341885 / 01?4364641', 'www.unife.edu.pe'),
(14, '', 'UNIVERSIDAD INCA GARCILASO DE LA VEGA', 'Privada', 'Institucionalizada', 'Lima', 'Av. Arequipa N° 1841, Lince. Lima', '01?4724916 / 01?4711421', 'www.uigv.edu.pe'),
(15, '', 'UNIVERSIDAD RICARDO PALMA', 'Privada', 'Institucionalizada', 'Lima', 'Av. Benavides N° 5440, Urb. Las Gardenias, Surco. Lima', '01?7080000 / 01?7080309', 'www.urp.edu.pe'),
(16, '', 'UNIVERSIDAD PERUANA UNIÓN', 'Privada', 'Institucionalizada', 'Lima', 'Carretera Central km 19, Ñaña. Lima', '01?6186300', 'www.upeu.edu.pe'),
(17, '', 'UNIVERSIDAD MARCELINO CHAMPAGNAT', 'Privada', 'Institucionalizada', 'Lima', 'Av. Mariscal Castilla N° 1270, Surco. Lima', '01?4490449', 'www.umch.edu.pe'),
(18, '', 'UNIVERSIDAD PERUANA DE CIENCIAS APLICADAS', 'Privada', 'Institucionalizada', 'Lima', 'Av. Prolongación Primavera N° 2390, Monterrico, Surco. Lima', '01?3133333', 'www.upc.edu.pe'),
(19, '', 'UNIVERSIDAD SAN IGNACIO DE LOYOLA', 'Privada', 'Institucionalizada', 'Lima', 'Av. La Fontana N° 550, La Molina. Lima', '01?3171000', 'www.usil.edu.pe'),
(20, '', 'UNIVERSIDAD ALAS PERUANAS', 'Privada', 'Institucionalizada', 'Lima', 'Jr. Cayetano Heredia N° 1138, Jesús María. Lima', '01?2652992 / 01?2660195', 'www.uap.edu.pe'),
(21, '', 'UNIVERSIDAD NORBERT WIENER', 'Privada', 'Institucionalizada', 'Lima', 'Jr. Larrabure y Unanue N° 110 Urb, Santa Beatriz, Lince. Lima', '01?7065100', 'www.uwiener.edu.pe'),
(22, '', 'ASOCIACIÓN UNIVERSIDAD PRIVADA SAN JUAN BAUTISTA', 'Privada', 'Institucionalizada', 'Lima', 'Av. José Antonio Lavalle s/n, ex Hacienda Villa, Chorrillos. Lima', '01?2142505 / 01?2142500', 'www.upsjb.edu.pe'),
(23, '', 'UNIVERSIDAD TECNOLÓGICA DEL PERÚ', 'Privada', 'Institucionalizada', 'Lima', 'Av. Petit Thouars cruce con Av. 28 de Julio. Lima', '01?3159614 / 01?3159600', 'www.utp.edu.pe'),
(24, '', 'UNIVERSIDAD CATÓLICA SEDES SAPIENTIAE', 'Privada', 'Institucionalizada', 'Lima', 'Esq. Constelaciones y Sol de Oro s/n, Urbanización Sol de Oro, Los Oli', '01?5330008', 'www.ucss.edu.pe'),
(25, '', 'UNIVERSIDAD CIENTÍFICA DEL SUR', 'Privada', 'Institucionalizada', 'Lima', 'Calle Cantuarias N° 385, Miraflores. Lima', '01?6106400', 'www.ucsur.edu.pe'),
(26, '', 'UNIVERSIDAD PERUANA DE CIENCIA E INFORMÁTICA', 'Privada', 'Institucionalizada', 'Lima', 'Jr. Talara N° 752, Jesús María. Lima', '330?7087', 'www.upci.edu.pe'),
(27, '', 'UNIVERSIDAD ANTONIO RUIZ DE MONTOYA', 'Privada', 'Institucionalizada', 'Lima', 'Av. Paso de los Andes 970, Pueblo Libre. Lima', '01?7195990', 'www.uarm.edu.pe'),
(28, '', 'UNIVERSIDAD ESAN', 'Privada', 'Institucionalizada', 'Lima', 'Alonso de Molina N° 1652, Monterrico Chico, Surco. Lima', '01?3177200', 'www.esan.edu.pe'),
(29, '', 'UNIVERSIDAD LAS AMÉRICAS', 'Privada', 'Institucionalizada', 'Lima', 'Av. Garcilaso de la Vega N° 1880. Lima', '01?4171415 / 01?4171422', 'www.ulasamericas.edu.pe'),
(30, '', 'UNIVERSIDAD PRIVADA TELESUP', 'Privada', 'Institucionalizada', 'Lima', 'Av. 28 de Julio N° 1056. Lima', '01?4331510', 'www.utelesup.com'),
(31, '', 'FACULTAD DE TEOLOGÍA PONTIFICIA Y CIVIL DE LIMA', 'Privada', 'Institucionalizada', 'Lima', 'Jirón Carlos Bondy N° 700, Pueblo Libre. Lima', '01?4610013', 'www.ftpcl.edu.pe'),
(32, '', 'UNIVERSIDAD NACIONAL TECNOLÓGICA DEL CONO SUR DE LIMA', 'Pública', 'A. Func. Provisional', 'Lima', 'Campus Universitario. Av. Bolivar s/n, Sector N° 3, Grupo N° 1 ,Mz. “A', '01?719 5693 / 01?7195694', 'www.untecs.edu.pe'),
(33, '', 'UNIVERSIDAD NACIONAL DE CAÑETE', 'Pública', 'A. Func. Provisional', 'Lima', 'Jr. Mariscal Castilla N° 162, Urb. Las Casuarinas, Distrito de San Vic', '01?3399373', 'www.undc.edu.pe'),
(34, '', 'UNIVERSIDAD NACIONAL DE BARRANCA', 'Pública', 'A. Func. Provisional', 'Lima', 'Av. Toribio de Luzuriaga, cdra. 3 s/n, Urb. La Florida. Barranca', '01?2355815', 'www.unab.edu.pe'),
(35, '', 'UNIVERSIDAD PRIVADA SERGIO BERNALES', 'Privada', 'A. Func. Provisional', 'Lima', 'Urb. Los Libertadores s/n, San Vicente de Cañete. Cañete', '01?5811374 / 01?5811438', 'www.upsb.edu.pe'),
(36, '', 'UNIVERSIDAD PERUANA SIMÓN BOLÍVAR', 'Privada', 'A. Func. Provisional', 'Lima', 'Calle Colombia N° 137, Pueblo Libre. Lima', '01?4230188 / 01?4232068', 'www.usb.edu.pe'),
(37, '', 'UNIVERSIDAD DE CIENCIAS Y HUMANIDADES', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Universitaria N° 5175, Urb. Molitalia, Los Olivos. Lima', '01?5280948', 'www.uch.edu.pe'),
(38, '', 'UNIVERSIDAD PERUANA DE INTEGRACIÓN GLOBAL', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Circunvalación N° 653, Monterrico, Surco. Lima', '01?2750500', 'www.upig.edu.pe'),
(39, '', 'UNIVERSIDAD AUTÓNOMA DEL PERÚ', 'Privada', 'A. Func. Provisional', 'LIma', 'Panamericana Sur km 16.3, Villa El Salvador. Lima', '01?7153335', 'www.autonoma.edu.pe'),
(40, '', 'UNIVERSIDAD PRIVADA ARZOBISPO LOAYZA', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Arequipa N°979, Sta. Beatriz, Lince. Lima', '01?4338746', 'www.ual.edu.pe'),
(41, '', 'UNIVERSIDAD LE CORDON BLEU', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Vasco Núñez de Balboa N° 530, Miraflores. Lima', '01?6178300', 'www.cordonbleuperu.edu.pe'),
(42, '', 'UNIVERSIDAD JAIME BAUSATE Y MEZA', 'Privada', 'A. Func. Provisional', 'Lima', 'Jr. Río de Janeiro N° 600, Jesús María. Lima', '01?3193500', 'www.bausate.edu.pe'),
(43, '', 'UNIVERSIDAD DE CIENCIAS Y ARTES DE AMÉRICA LATINA', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Primavera N° 970, Urb. Chacarilla, Surco. Lima', '01?6222222', 'www.ucal.edu.pe'),
(44, '', 'UNIVERSIDAD PERUANA DE ARTE ORVAL', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Primavera N° 207, Urb. Chacarilla del Estanque, San Borja. Lima', '01?7192318', 'www.orval.edu.pe'),
(45, '', 'UNIVERSIDAD PERUANA DE INVESTIGACIÓN Y NEGOCIOS', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Salaverry N° 1810, Jesus María. Lima', '01?2655351 / 01?2654826', 'www.upein.edu.pe'),
(46, '', 'UNIVERSIDAD SAN ANDRÉS', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Industrial N° 3701, San Martín de Porres. Lima', '01?5224702 / 01?5216505', 'www.usan.edu.pe'),
(47, '', 'UNIVERSIDAD INTERAMERICANA PARA EL DESARROLLO', 'Privada', 'A. Func. Provisional', 'LIma', 'Av. Bolivia N°624, Breña. Lima', '01?4285274 / 01?7197799', 'www.unid.edu.pe'),
(48, '', 'UNIVERSIDAD JUAN PABLO II', 'Privada', 'A. Func. Provisional', 'Lima', 'Calle Domingo Martínez N° 1255, Surquillo. Lima', '01?4456555 / 01?4456111', 'www.ujpii.edu.pe'),
(49, '', 'UNIVERSIDAD DE INGENIERÍA Y TECNOLOGÍA', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Prolongación San Martín N° 207, Barranco. Lima', '01?3731000', 'www.utec.edu.pe'),
(50, '', 'UNIVERSIDAD MARÍA AUXILIADORA', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Canto Bello N° 431, San Juan de Lurigancho. Lima', '01?3891212', 'www.umaperu.edu.pe'),
(51, '', 'UNIVERSIDAD SANTO DOMINGO DE GUZMÁN', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Miguel Grau, Mz. CD, Lote 4?7, Jicamarca, San Juan de Lurigancho. ', '01?7374587', 'No registra'),
(52, '', 'UNIVERSIDAD MARÍTIMA DEL PERÚ', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Sáenz Peña N°111. Callao', '01?4296697', 'www.ump.edu.pe'),
(53, '', 'UNIVERSIDAD PRIVADA SISE', 'Privada', 'A. Func. Provisional', 'Lima', 'Calle Cantuarias N° 385, Miraflores. Lima', '01?6347474', 'www.universidadsise.edu.pe'),
(54, '', 'UNIVERSIDAD PRIVADA PERUANO ALEMANA', 'Privada', 'A. Func. Provisional', 'Lima', 'Av. Uruguay N° 514. Lima', '01?4115888', 'www.ipal.edu.pe'),
(55, 'NORTE', 'UNIVERSIDAD NACIONAL SANTIAGO ANTÚNEZ DE MAYOLO', 'Pública', 'Institucionalizada', 'Áncash', 'Av. Centenario N° 200, Independencia. Huaraz', '043?421393 / 043?421452', 'www.unasam.edu.pe'),
(56, '', 'UNIVERSIDAD NACIONAL DEL SANTA', 'Pública', 'Institucionalizada', 'Áncash', 'Av. Pacífico N° 508, Buenos Aires, Nuevo Chimbote', '043?310445', 'www.uns.edu.pe'),
(57, '', 'UNIVERSIDAD CATÓLICA LOS ÁNGELES DE CHIMBOTE', 'Privada', 'Institucionalizada', 'Áncash', 'Francisco Bolognesi N° 835. Chimbote', '043?343444', 'www.uladech.edu.pe'),
(58, '', 'UNIVERSIDAD SAN PEDRO', 'Privada', 'Institucionalizada', 'Áncash', 'Laderas del Norte Mz. “H” lote 11. Chimbote', '043?341078 / 043?345899', 'www.usanpedro.edu.pe'),
(59, '', 'UNIVERSIDAD NACIONAL DE CAJAMARCA', 'Pública', 'Institucionalizada', 'Cajamarca', 'Av. Atahualpa N° 1005, Carretera Baños del Inca. Cajamarca', '076?362796 / 076?362559', 'www.unc.edu.pe'),
(60, '', 'UNIVERSIDAD PRIVADA ANTONIO GUILLERMO URRELO', 'Privada', 'Institucionalizada', 'Cajamarca', 'Jirón José Sabogal N° 913. Cajamarca', '01?076365819', 'www.upagu.edu.pe'),
(61, '', 'UNIVERSIDAD NACIONAL DE JAÉN', 'Pública', 'A. Func. Provisional', 'Cajamarca', 'Calle Mariscal Castilla N° 115. Jaén', '076?432429', 'www.unj.edu.pe'),
(62, '', 'UNIVERSIDAD NACIONAL AUTÓNOMA DE CHOTA', 'Pública', 'A. Func. Provisional', 'Cajamarca', 'Jr. Gregorio Malca N° 875. Chota', '076?351144', 'www.unach.edu.pe'),
(63, '', 'UNIVERSIDAD NACIONAL DE TRUJILLO', 'Pública', 'Institucionalizada', 'La Libertad', 'Diego de Almagro N° 344. Trujillo', '044?205513 / 044?232528', 'www.unitru.edu.pe'),
(64, '', 'UNIVERSIDAD PRIVADA ANTENOR ORREGO', 'Privada', 'Institucionalizada', 'La Libertad', 'Av. América del Sur N° 3145, Urb. Monserrate. Trujillo', '044?604444', 'www.upao.edu.pe'),
(65, '', 'UNIVERSIDAD CÉSAR VALLEJO', 'Privada', 'Institucionalizada', 'La Libertad', 'Av. Larco cdra. 17. Trujillo', '044?485000', 'www.ucv.edu.pe'),
(66, '', 'UNIVERSIDAD PRIVADA DEL NORTE', 'Privada', 'Institucionalizada', 'La Libertad', 'Av. El Ejército N° 920. Trujillo', '044?606222', 'www.upnorte.edu.pe'),
(67, '', 'UNIVERSIDAD CATÓLICA DE TRUJILLO BENEDICTO XVI', 'Privada', 'Institucionalizada', 'La Libertad', 'Carretera Panamericana Norte km 555, Moche. Trujillo', '044?607430', 'www.uct.edu.pe'),
(68, '', 'UNIVERSIDAD PRIVADA DE TRUJILLO', 'Privada', 'A. Func. Provisional', 'La Libertad', 'Carretera Industrial km 4, Semi Rústica El Bosque. Trujillo', '044?211557', 'www.uptrujillo.edu.pe'),
(69, '', 'UNIVERSIDAD PRIVADA LEONARDO DA VINCI', 'Privada', 'A. Func. Provisional', 'La Libertad', 'Av. España N° 2715, Urb. El Recreo. Trujillo', '044-260026 / 044-230003', 'www.upd.edu.pe'),
(70, '', 'UNIVERSIDAD NACIONAL PEDRO RUIZ GALLO', 'Pública', 'Institucionalizada', 'Lambayeque', 'Ciudad Universitaria Juan XXIII N° 391. Lambayeque', '074?283146', 'www.unprg.edu.pe'),
(71, '', 'UNIVERSIDAD PARTICULAR DE CHICLAYO', 'Privada', 'Institucionalizada', 'Lambayeque', 'Av. Salaverry N° 232?B. Chiclayo', '074?265370 / 074?265889', 'www.udch.edu.pe'),
(72, '', 'UNIVERSIDAD CATÓLICA SANTO TORIBIO DE MOGROVEJO', 'Privada', 'Institucionalizada', 'Lambayeque', 'Av. Panamericana Norte N° 855. Chiclayo', '074?606200', 'www.usat.edu.pe'),
(73, '', 'UNIVERSIDAD SEÑOR DE SIPÁN', 'Privada', 'Institucionalizada', 'Lambayeque', 'Campus Universitario, km 5, Carretera Pimentel. Lambayeque', '074?203861 / 074?481610', 'www.uss.edu.pe'),
(74, '', 'UNIVERSIDAD PRIVADA JUAN MEJÍA BACA', 'Privada', 'A. Func. Provisional', 'Lambayeque', 'Av. Quiñones N° 640, Urb. San Martín. Chiclayo', '074?225763', 'www.umb.edu.pe'),
(75, '', 'UNIVERSIDAD DE LAMBAYEQUE', 'Privada', 'A. Func. Provisional', 'Lambayeque', 'Calle Tacna N° 065. Chiclayo', '074?208836', 'www.udl.edu.pe'),
(76, '', 'UNIVERSIDAD NACIONAL DE PIURA', 'Pública', 'Institucionalizada', 'Piura', 'Campus Universitario, Urb. Miraflores s/n. Piura', '073?343349', 'www.unp.edu.pe'),
(77, '', 'UNIVERSIDAD DE PIURA', 'Privada', 'Institucionalizada', 'Piura', 'Av. Ramón Mugica N° 131, Urb. San Eduardo. Piura', '073?284515 / 073?284500', 'www.udep.edu.pe'),
(78, '', 'UNIVERSIDAD NACIONAL DE FRONTERA', 'Pública', 'A. Func. Provisional', 'Piura', 'Urb. Villa Perúl Canadá s/n Campus, Sullana. Piura', '073?631206', 'www.unfs.edu.pe'),
(79, '', 'UNIVERSIDAD NACIONAL DE TUMBES', 'Pública', 'Institucionalizada', 'Tumbes', 'Av. Universitaria s/n, C. U., Pampa Grande. Tumbes', '072?786189', 'www.untumbes.edu.pe'),
(80, 'SUR', 'UNIVERSIDAD NACIONAL MICAELA BASTIDAS DE APURÍMAC', 'Pública', 'Institucionalizada', 'Apurímac', 'Av. Arenas N° 121. Abancay', '083?322577', 'www.unamba.edu.pe'),
(81, '', 'UNIVERSIDAD TECNOLÓGICA DE LOS ANDES', 'Privada', 'Institucionalizada', 'Apurímac', 'Av. Perú N° 700. Abancay', '083?321559 / 083?321559', 'www.utea.edu.pe'),
(82, '', 'UNIVERSIDAD NACIONAL JOSÉ MARÍA ARGUEDAS', 'Pública', 'A. Func. Provisional', 'Apurímac', 'Jr. Constitución N° 409, 3er piso, Plaza de Armas. Andahuaylas', '083?422176', 'www.unajma.edu.pe'),
(83, '', 'UNIVERSIDAD NACIONAL DE SAN AGUSTÍN', 'Pública', 'Institucionalizada', 'Arequipa', 'Calle Santa Catalina N° 117. Arequipa', '054?237808', 'www.unsa.edu.pe'),
(84, '', 'UNIVERSIDAD CATÓLICA DE SANTA MARÍA', 'Privada', 'Institucionalizada', 'Arequipa', 'Samuel Velarde N° 320, Umacollo. Arequipa', '054?251112 / 054?251210', 'www.ucsm.edu.pe'),
(85, '', 'UNIVERSIDAD CATÓLICA SAN PABLO', 'Privada', 'Institucionalizada', 'Arequipa', 'Campus Campiña Paisajista s/n, Quinta Vivanco, San Lázaro. Arequipa', '054?605630', 'www.ucsp.edu.pe'),
(86, '', 'UNIVERSIDAD CIENCIAS DE LA SALUD', 'Privada', 'A. Func. Provisional', 'Arequipa', 'Calle San Camilo N° 510, Cercado. Arequipa', '054?232086', 'www.ucs.edu.pe'),
(87, '', 'UNIVERSIDAD AUTÓNOMA SAN FRANCISCO', 'Privada', 'A. Func. Provisional', 'Arequipa', 'Calle Consuelo N° 313 Cercado. Arequipa', '054?225918 / 054?226901', 'www.uasf.edu.pe'),
(88, '', 'UNIVERSIDAD LA SALLE', 'Privada', 'A. Func. Provisional', 'Arequipa', 'Av. Alfonso Ugarte s/n, Cercado. Arequipa', '054?607555 / 054?627554', 'www.ulasalle.edu.pe'),
(89, '', 'UNIVERSIDAD PRIVADA AUTÓNOMA DEL SUR', 'Privada', 'A. Func. Provisional', 'Arequipa', 'Sebastián Barranca N° 208, Urb. Sta. Isabel Cercado. Arequipa', '054?226115', 'www.upads.edu.pe'),
(90, '', 'UNIVERSIDAD NACIONAL DE SAN CRISTÓBAL DE HUAMANGA', 'Pública', 'Institucionalizada', 'Ayacucho', 'Portal Independencia N° 57. Ayacuhco', '066?313434 / 066?312230', 'www.unsch.edu.pe'),
(91, '', 'UNIVERSIDAD DE AYACUCHO FEDERICO FROEBEL', 'Privada', 'A. Func. Provisional', 'Ayacucho', 'Av. Miguel Mariscal Llerena y Av. 26 de Enero. Ayacucho', '064?219604', 'www.udaff.edu.pe'),
(92, '', 'UNIVERSIDAD NACIONAL DE SAN ANTONIO ABAD DEL CUSCO', 'Pública', 'Institucionalizada', 'Cusco', 'Calle Tigre N° 127. Cusco', '084?238156 / 084?224181', 'www.unsaac.edu.pe'),
(93, '', 'UNIVERSIDAD ANDINA DEL CUSCO', 'Privada', 'Institucionalizada', 'Cusco', 'Urb. Ingeniería A?5, Larapa Grande, Distrito de San Gerónimo. Cusco', '084?273885 / 084?270874', 'www.uandina.edu.pe'),
(94, '', 'UNIVERSIDAD PERUANA AUSTRAL DEL CUSCO', 'Privada', 'A. Func. Provisional', 'Cusco', 'Av. La Cultura N° 1907, Magisterio I Etapa. Cusco', '074?208836', 'www.uaustral.edu.pe'),
(95, '', 'UNIVERSIDAD PRIVADA LÍDER PERUANA', 'Privada', 'A. Func. Provisional', 'Cusco', 'Jirón Quillabamba N° 110, Santa Ana, La Convención, Quillabamba. Cusco', '084?281326', 'www.universidadliderperuana.com'),
(96, '', 'UNIVERSIDAD GLOBAL DEL CUSCO', 'Privada', 'A. Func. Provisional', 'Cusco', 'Av. Manantiales N° 164. Cusco', '084?240905', 'www.uglobalcusco.edu.pe'),
(97, '', 'UNIVERSIDAD JOSÉ CARLOS MARIÁTEGUI', 'Privada', 'Institucionalizada', 'Moquegua', 'Calle Ayacucho N° 393, Cercado. Moquegua', '053?461535 / 053?461110', 'www.ujcm.edu.pe'),
(98, '', 'UNIVERSIDAD NACIONAL DE MOQUEGUA', 'Pública', 'A. Func. Provisional', 'Moquegua', 'Prolongación Calle Áncash s/n. Moquegua', '053?463559', 'www.unam.edu.pe'),
(99, '', 'UNIVERSIDAD NACIONAL DEL ALTIPLANO', 'Pública', 'Institucionalizada', 'Puno', 'Av. El Ejército N° 329. Puno', '051?352206 / 051?368590', 'www.unap.edu.pe'),
(100, '', 'UNIVERSIDAD ANDINA NÉSTOR CÁCERES VELÁSQUEZ', 'Privada', 'Institucionalizada', 'Puno', 'Ed. El Campín 3er piso, Pasaje de la Cultura, Plaza de Armas. Juliaca', '051?321142 / 051?322213', 'www.uancv.edu.pe'),
(101, '', 'UNIVERSIDAD NACIONAL DE JULIACA', 'Pública', 'A. Func. Provisional', 'Puno', 'Av. Nueva Zelandia s/n, Urb. La Capilla. Juliaca', '051?323200 / 051?328722', 'www.unaj.edu.pe'),
(102, '', 'UNIVERSIDAD PRIVADA SAN CARLOS', 'Privada', 'A. Func. Provisional', 'Puno', 'Jr. Conde de Lemos N° 128. Puno', '051?352884', 'www.upsc.edu.pe'),
(103, '', 'UNIVERSIDAD NACIONAL JORGE BASADRE GROHMANN', 'Pública', 'Institucionalizada', 'Tacna', 'Ciudad Universitaria, Av. Miraflores s/n. Tacna', '052?583000', 'www.unjbg.edu.pe'),
(104, '', 'UNIVERSIDAD PRIVADA DE TACNA', 'Privada', 'Institucionalizada', 'Tacna', 'Av. Bolognesi N° 1177. Tacna', '052?427212', 'www.upt.edu.pe'),
(105, '', 'UNIVERSIDAD LATINOAMERICANA CIMA', 'Privada', 'A. Func. Provisional', 'Tacna', 'Av. Gregorio Albarracín N° 500. Tacna', '052?412257', 'www.ulc.edu.pe'),
(106, 'CENTRO', 'UNIVERSIDAD NACIONAL DE HUANCAVELICA', 'Pública', 'Institucionalizada', 'Huancavelica', 'Ciudad Universitaria de Paturpampa. Huancavelica', '067?451551 / 943072222/', 'www.unh.edu.pe'),
(107, '', 'UNIVERSIDAD PARA EL DESARROLLO ANDINO', 'Privada', 'A. Func. Provisional', 'Huancavelica', 'Av. Ricardo Fernández N° 103, Pueblo Nuevo, Lircay. Huancavelica', '067?458193', 'www.udea.edu.pe'),
(108, '', 'UNIVERSIDAD NACIONAL HERMILIO VALDIZÁN', 'Pública', 'Institucionalizada', 'Huánuco', 'Av. Universitaria N° 601, Cayhuayna. Huánuco', '062?591064 / 062?591060', 'www.unheval.edu.pe'),
(109, '', 'UNIVERSIDAD DE HUÁNUCO', 'Privada', 'Institucionalizada', 'Huánuco', 'Jirón Hermilio Valdizán N° 871. Huánuco', '062?513154 / 062?519173', 'www.udh.edu.pe'),
(110, '', 'UNIVERSIDAD NACIONAL SAN LUIS GONZAGA DE ICA', 'Pública', 'Institucionalizada', 'Ica', 'Prolongación Ayabaca cdra. 9, Urb. San José. Ica', '056?228406', 'www.unica.edu.pe'),
(111, '', 'UNIVERSIDAD PRIVADA DE ICA', 'Privada', 'A. Func. Provisional', 'Ica', 'Av. Túpac Amaru N° 336. Ica', '056?218369', 'www.upica.edu.pe'),
(112, '', 'UNIVERSIDAD PRIVADA ADA A. BYRON', 'Privada', 'A. Func. Provisional', 'Ica', 'Av. Abelardo Alva Maúrtua N° 489, Chincha Alta. Chincha', '056?262439', 'www.upab.edu.pe'),
(113, '', 'UNIVERSIDAD NACIONAL DEL CENTRO DEL PERÚ', 'Pública', 'Institucionalizada', 'Junín', 'Av. Mariscal Ramón Castilla km 5, N° 3809, El Tambo. Huancayo', '064?481078 / 064?481076', 'www.uncp.edu.pe'),
(114, '', 'UNIVERSIDAD PERUANA LOS ANDES', 'Privada', 'Institucionalizada', 'Junín', 'Av. Giraldes N° 230. Huancayo', '064?224479 / 064?217373', 'www.upla.edu.pe'),
(115, '', 'UNIVERSIDAD CONTINENTAL', 'Privada', 'Institucionalizada', 'Junín', 'Av. San Carlos N° 1980. Huancayo', '064?481430', 'www.continental.edu.pe'),
(116, '', 'UNIVERSIDAD PERUANA DEL CENTRO', 'Privada', 'A. Func. Provisional', 'Junín', 'Jirón Moquegua N° 474. Huancayo', '064?202005', 'www.upecen.edu.pe'),
(117, '', 'UNIVERSIDAD PRIVADA DE HUANCAYO FRANKLIN ROOSEVELT', 'Privada', 'A. Func. Provisional', 'Junín', 'Av. Giráldez N° 542. Huancayo', '064?219604', 'www.ufr.edu.pe'),
(118, '', 'UNIVERSIDAD SANTO TOMÁS DE AQUINO DE CIENCIA E INTEGRACIÓN', 'Privada', 'A. Func. Provisional', 'Junín', 'Av. Huancavelica N° 462. Huancayo', '064?227050', 'http://www.ust.edu.pe/'),
(119, '', 'UNIVERSIDAD NACIONAL DANIEL ALCIDES CARRIÓN', 'Pública', 'Institucionalizada', 'Pasco', 'Edificio Estatal N° 4, San Juan Pampa, Apartado 77. Cerro de Pasco', '063?422197 / 063?421350', 'www.undac.edu.pe'),
(120, 'AMAZÓNICO', 'UNIVERSIDAD NACIONAL TORIBIO RODRÍGUEZ DE MENDOZA DE AMAZONAS', 'Pública', 'Institucionalizada', 'Amazonas', 'Ciudad Universitaria, Barrio Higos Urco, El Franco. Chachapoyas', '041?477694', 'www.untrm.edu.pe'),
(121, '', 'UNIVERSIDAD DE LA AMAZONIA MARIO PELÁEZ BAZÁN', 'Privada', 'A. Func. Provisional', 'Amazonas', 'Jr. Santa Rosa N° 47. Bagua Grande', '041?475111', 'www.upb.edu.pe'),
(122, '', 'UNIVERSIDAD NACIONAL DE LA AMAZONIA PERUANA', 'Pública', 'Institucionalizada', 'Loreto', 'Jr. Sargento Lores N° 385, Urb. Cercado. Iquitos', '051?965995495 / 065?23218', 'www.unapiquitos.edu.pe'),
(123, '', 'UNIVERSIDAD CIENTÍFICA DEL PERÚ', 'Privada', 'Institucionalizada', 'Loreto', 'Av. Abelardo Quiñones N° 2500, San Juan. Iquitos', '065?261088 / 065?262086', 'www.ucp.edu.pe'),
(124, '', 'UNIVERSIDAD PERUANA DEL ORIENTE', 'Privada', 'A. Func. Provisional', 'Loreto', 'Av. Abelardo Quiñones N° 2575, San Juan Bautista, Maynas. Loreto', '065?261104', 'www.upo.edu.pe'),
(125, '', 'UNIVERSIDAD PRIVADA DE LA SELVA PERUANA', 'Privada', 'A. Func. Provisional', 'Loreto', 'Calle San Martín N° 230. Iquitos', '065?241590', 'www.upsep.edu.pe'),
(126, '', 'UNIVERSIDAD NACIONAL AMAZÓNICA DE MADRE DE DIOS', 'Pública', 'Institucionalizada', 'Madre de Dios', 'Av. 2 de Mayo N° 960. Puerto Maldonado', '082?573186 / 978 8400698', 'www.unamad.edu.pe'),
(127, '', 'UNIVERSIDAD NACIONAL AGRARIA DE LA SELVA', 'Pública', 'Institucionalizada', 'San Martín', 'Av. Universitaria km 1.5. Tingo María', '062?562702 / 062?561986', 'www.unas.edu.pe'),
(128, '', 'UNIVERSIDAD NACIONAL DE SAN MARTÍN', 'Pública', 'Institucionalizada', 'San Martín', 'Jirón Maynas N° 177. Tarapoto', '042?524253', 'www.unsm.edu.pe'),
(129, '', 'UNIVERSIDAD NACIONAL DE UCAYALI', 'Pública', 'Institucionalizada', 'Ucayali', 'Carretera Federico Basadre s/n, km 6. Pucalpa', '061?592236', 'www.unu.edu.pe'),
(130, '', 'UNIVERSIDAD NACIONAL INTERCULTURAL DE LA AMAZONIA', 'Pública', 'A. Func. Provisional', 'Ucayali', 'Carretera San José km 0.5, ex ILV. Yarinacocha', '061?596301 / 061?596912', 'www.unia.edu.pe'),
(131, '', 'UNIVERSIDAD PRIVADA DE PUCALLPA', 'Privada', 'A. Func. Provisional', 'Ucayali', 'Coronel Portillo Nº 782. Pucallpa', '061?570670', 'www.uppucallpa.org');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dic_LineasVRI`
--

CREATE TABLE `dic_LineasVRI` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(800) NOT NULL,
  `Estado` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dic_LineasVRI`
--

INSERT INTO `dic_LineasVRI` (`Id`, `Nombre`, `Estado`) VALUES
(1, 'ADMINISTRACIÓN Y MARKETING', 1),
(2, 'ALIMENTACIÓN Y NUTRICIÓN HUMANA', 1),
(3, 'ARQUITECTURA Y URBANISMO', 1),
(4, 'ARTE Y MÚSICA', 1),
(5, 'AUDITORÍA, COSTOS Y FINANZAS', 1),
(6, 'CIENCIA Y PRODUCCIÓN ANIMAL', 1),
(7, 'CIENCIAS DE LA SALUD ', 1),
(8, 'CIENCIAS DEL DEPORTE Y EDUCACIÓN FÍSICA', 1),
(9, 'DERECHO', 1),
(10, 'ECONOMÍA Y DESARROLLO', 1),
(11, 'EDUCACIÓN Y DINÁMICA EDUCATIVA', 1),
(12, 'ESTADÍSTICA E INVESTIGACIÓN', 1),
(13, 'FÍSICA Y MATEMÁTICA', 1),
(14, 'GEOLOGÍA, MINAS Y METALURGIA', 1),
(15, 'GESTIÓN Y RESPONSABILIDAD SOCIAL', 1),
(16, 'INFRAESTRUCTURA Y CONSTRUCCIONES', 1),
(17, 'INGENIERÍA DE PROCESOS', 1),
(18, 'MANEJO AGRONÓMICO DE CULTIVOS', 1),
(19, 'MECÁNICA - ELÉCTRICA', 1),
(20, 'RECURSOS NATURALES Y MEDIO AMBIENTE', 1),
(21, 'SALUD PÚBLICA', 1),
(22, 'SISTEMAS DE INFORMACIÓN GEOGRÁFICA', 1),
(23, 'SISTEMAS, COMPUTACIÓN E INFORMÁTICA', 1),
(24, 'SOCIEDAD, CULTURA Y COMUNICACIÓN', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocdeAreas`
--

CREATE TABLE `ocdeAreas` (
  `Id` int(1) NOT NULL,
  `Nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ocdeAreas`
--

INSERT INTO `ocdeAreas` (`Id`, `Nombre`) VALUES
(1, 'CIENCIAS AGRÍCOLAS'),
(2, 'CIENCIAS MÉDICAS Y DE LA SALUD'),
(3, 'CIENCIAS NATURALES'),
(4, 'CIENCIAS SOCIALES'),
(5, 'HUMANIDADES'),
(6, 'INGENIERÍA Y TECNOLOGÍA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocdeDisciplinas`
--

CREATE TABLE `ocdeDisciplinas` (
  `Id` int(3) NOT NULL,
  `Nombre` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IdArea` int(2) NOT NULL,
  `IdSubArea` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ocdeDisciplinas`
--

INSERT INTO `ocdeDisciplinas` (`Id`, `Nombre`, `IdArea`, `IdSubArea`) VALUES
(1, 'AGRICULTURA', 1, 1),
(2, 'FORESTAL', 1, 1),
(3, 'PESCA', 1, 1),
(4, 'CIENCIAS DEL SUELO', 1, 1),
(5, 'HORTICULTURA Y VITICULTURA', 1, 1),
(6, 'AGRONOMÍA', 1, 1),
(7, 'PROTECCIÓN Y NUTRICIÓN DE LAS PLANTAS', 1, 1),
(8, 'CIENCIAS ANIMALES Y LECHERÍA', 1, 2),
(9, 'CRÍAS Y MASCOTAS', 1, 2),
(10, 'CIENCIAS VETERINARIAS', 1, 3),
(11, 'BIOTECNOLOGÍA AGRÍCOLA Y DE ALIMENTOS ', 1, 4),
(12, 'TECNOLOGÍA MG (SEMBRADÍOS Y GANADO), CLONAMIENTO DE GANADO, SELECCIÓN ASISTIDA, DIGNÓSTICO (CON CHIPS ADN, BIOSENSORES) ', 1, 4),
(13, 'ÉTICA RELACIONADA A BIOTECNOLOGÍA AGRÍCOLA', 1, 4),
(14, 'OTRAS CIENCIAS AGRÍCOLAS', 1, 5),
(15, 'ANATOMÍA Y MORFOLOGÍA', 2, 6),
(16, 'GENÉTICA HUMANA', 2, 6),
(17, 'INMUNOLOGÍA', 2, 6),
(18, 'NEUROCIENCIAS', 2, 6),
(19, 'FARMACOLOGÍA Y FARMACIA', 2, 6),
(20, 'MEDICINA QUÍMICA', 2, 6),
(21, 'TOXICOLOGÍA', 2, 6),
(22, 'FISIOLOGÍA (INCLUYE CITOLOGÍA)', 2, 6),
(23, 'PATOLOGÍA', 2, 6),
(24, 'ANDROLOGÍA', 2, 7),
(25, 'OBSTETRICIA Y GINECOLOGÍA', 2, 7),
(26, 'PEDIATRÍA', 2, 7),
(27, 'CARDIOVASCULAR', 2, 7),
(28, 'VASCULAR PERIFÉRICO', 2, 7),
(29, 'HEMATOLOGÍA', 2, 7),
(30, 'RESPIRATORIA', 2, 7),
(31, 'CUIDADO CRÍTICO Y DE EMERGENCIA', 2, 7),
(32, 'ANESTESIOLOGÍA', 2, 7),
(33, 'ORTOPÉDICA', 2, 7),
(34, 'CIRUGÍA', 2, 7),
(35, 'RADIOLOGÍA, MEDICINA NUCLEAR Y DE IMÁGENES', 2, 7),
(36, 'TRANSPLANTES', 2, 7),
(37, 'ODONTOLOGÍA, CIRUGÍA ORAL Y MEDICINA ORAL', 2, 7),
(38, 'DERMATOLOGÍA Y ENFERMEDADES VENÉREAS', 2, 7),
(39, 'ALERGIAS', 2, 7),
(40, 'REUMATOLOGÍA', 2, 7),
(41, 'ENDOCRINOLOGÍA Y METABOLISMO (INCLUYE DIABETES Y TRANSTORNOS HORMONALES)', 2, 7),
(42, 'GASTROENTEROLOGÍA Y HEPATOLOGÍA', 2, 7),
(43, 'UROLOGÍA Y NEFROLOGÍA', 2, 7),
(44, 'ONCOLOGÍA', 2, 7),
(45, 'OFTALMOLOGÍA', 2, 7),
(46, 'OTORRINONARINGOLOGÍA', 2, 7),
(47, 'PSIQUIATRÍA', 2, 7),
(48, 'NEUROLOGÍA CLÍNICA', 2, 7),
(49, 'GERIATRÍA', 2, 7),
(50, 'MEDICINA GENERAL E INTERNA', 2, 7),
(51, 'OTRO TEMAS DE MEDICINA CLÍNICA', 2, 7),
(52, 'MEDICINA COMPLEMENTARIA (SISTEMAS ALTERNATIVOS)', 2, 7),
(53, 'CIENCIAS DEL CUIDADO DE LA SALUD Y SERVICIOS (ADMINISTRACIÓN DE HOSPITALES, FINANCIAMIENTO)', 2, 8),
(54, 'POLÍTICAS DE SALUD Y SERVICIOS', 2, 8),
(55, 'ENFERMERÍA', 2, 8),
(56, 'NUTRICIÓN Y DIETAS', 2, 8),
(57, 'SALUD PÚBLICA', 2, 8),
(58, 'MEDICINA TROPICAL', 2, 8),
(59, 'PARASITOLOGÍA', 2, 8),
(60, 'ENFERMEDADES INFECCIOSAS', 2, 8),
(61, 'EPIDEMIOLOGÍA', 2, 8),
(62, 'SALUD OCUPACIONAL', 2, 8),
(63, 'CIENCIAS DEL DEPORTE', 2, 8),
(64, 'CIENCIAS SOCIO BIOMÉDICAS (PLANIFICACIÓN FAMILIAR, SALUD SEXUAL, EFECTOS POLÍTICOS Y SOCIALES DE LA INVESTIGACIÓN BIOMÉDICA)', 2, 8),
(65, 'ÉTICA', 2, 8),
(66, 'ABUSO DE SUBSTANCIAS', 2, 8),
(67, 'BIOTECNOLOGÍA RELACIONADA CON LA SALUD', 2, 9),
(68, 'TECNOLOGÍAS PARA LA MANIPULACIÓN DE CÉLULAS, TEJIDOS, ÓRGANOS O EL ORGANISMO (REPRODUCCIÓN ASISTIDA)', 2, 9),
(69, 'TECNOLOGÍA PARA LA IDENTIFICACIÓN Y FUNCIONAMIENTO DEL ADN, PROTEÍNAS Y ENCIMAS Y COMO INFLUENCIAN LA ENFERMEDAD', 2, 9),
(70, 'BIOMATERIALES (RELACIONADOS CON IMPLANTES, DISPOSITIVOS, SENSORES)', 2, 9),
(71, 'ÉTICA RELACIONADA CON LA BIOMEDICINA', 2, 9),
(72, ' FORÉNSICAS', 2, 10),
(73, 'OTRAS CIENCIAS MÉDICAS', 2, 10),
(74, 'FONOAUDIOLOGÍA', 2, 10),
(75, 'MATEMÁTICAS PURAS', 3, 11),
(76, 'MATEMÁTICAS APLICADAS', 3, 11),
(77, 'ESTADÍSTICAS Y PROBABILIDADES (INVESTIGACIÓN EN METODOLOGÍAS)', 3, 11),
(78, 'CIENCIAS DE LA COMPUTACIÓN', 3, 12),
(79, 'CIENCIAS DE LA INFORMACIÓN Y BIOINFORMÁTICA', 3, 12),
(80, 'FÍSICA ATÓMICA, MOLECULAR Y QUÍMICA', 3, 13),
(81, 'FÍSICA DE LA MATERIA', 3, 13),
(82, 'FÍSICA DE PARTÍCULAS Y CAMPOS', 3, 13),
(83, 'FÍSICA NUCLEAR', 3, 13),
(84, 'FÍSICA DE PLASMAS Y FLUÍDOS', 3, 13),
(85, 'ÓPTICA', 3, 13),
(86, 'ACÚSTICA', 3, 13),
(87, 'ASTRONOMÍA', 3, 13),
(88, 'QUÍMICA ORGÁNICA', 3, 14),
(89, 'QUÍMICA INORGÁNICA Y NUCLEAR', 3, 14),
(90, 'QUÍMICA FÍSICA', 3, 14),
(91, 'CIENCIAS DE LOS POLÍMEROS', 3, 14),
(92, 'ELECTROQUÍMICA', 3, 14),
(93, 'QUÍMICA DE LOS COLOIDES', 3, 14),
(94, 'QUÍMICA ANALÍTICA', 3, 14),
(95, 'GEOCIENCIAS (MULTIDISCIPLINARIO)', 3, 15),
(96, 'MINERALOGÍA', 3, 15),
(97, 'PALEONTOLOGÍA', 3, 15),
(98, 'GEOQUÍMICA Y GEOFÍSICA', 3, 15),
(99, 'GEOGRAFÍA FÍSICA', 3, 15),
(100, 'GEOLOGÍA', 3, 15),
(101, 'VULCANOLOGÍA', 3, 15),
(102, 'CIENCIAS DEL MEDIO AMBIENTE', 3, 15),
(103, 'METEOROLOGÍA Y CIENCIAS ATMOSFÉRICAS', 3, 15),
(104, 'INVESTIGACIÓN DEL CLIMA', 3, 15),
(105, 'OCEANOGRAFÍA, HIDROLOGÍA Y RECURSOS DEL AGUA', 3, 15),
(106, 'BIOLOGÍA CELULAR Y MICROBIOLOGÍA', 3, 16),
(107, 'VIROLOGÍA', 3, 16),
(108, 'BIOQUÍMICA Y BIOLOGÍA MOLECULAR', 3, 16),
(109, 'MÉTODOS DE INVESTIGACIÓN EN BIOQUÍMICA', 3, 16),
(110, 'MICOLOGÍA', 3, 16),
(111, 'BIOFÍSICA', 3, 16),
(112, 'GENÉTICA Y HERENCIA', 3, 16),
(113, 'BIOLOGÍA REPRODUCTIVA', 3, 16),
(114, 'BIOLOGÍA DEL DESARROLLO', 3, 16),
(115, 'BOTÁNICA Y CIENCIAS DE LAS PLANTAS', 3, 16),
(116, 'ZOOLOGÍA, ORNITOLOGÍA, ENTOMOLOGÍA, CIENCIAS BIOLÓGICAS DEL COMPORTAMIENTO', 3, 16),
(117, 'BIOLOGÍA MARINA Y DEL AGUA', 3, 16),
(118, 'ECOLOGÍA', 3, 16),
(119, 'CONSERVACIÓN DE LA BIODIVERSIDAD', 3, 16),
(120, 'BIOLOGÍA (TEÓRICA, MATEMÁTICA, CRIOBIOLOGÍA, EVOLUTIVA)', 3, 16),
(121, 'OTRAS BIOLOGÍAS', 3, 16),
(122, ' OTRAS CIENCIAS NATURALES', 3, 17),
(123, 'EDUCACIÓN GENERAL (INCLUYE CAPACITACIÓN, PEDAGOGÍA)', 4, 18),
(124, 'EDUCACIÓN ESPECIAL (PARA ESTUDIANTES DOTADOS Y AQUELLOS CON DIFICULTADES DE APRENDIZAJE)', 4, 18),
(125, 'CIENCIAS POLÍTICAS', 4, 19),
(126, 'ADMINISTRACIÓN PÚBLICA', 4, 19),
(127, 'TEORÍA ORGANIZACIONAL', 4, 19),
(128, 'DERECHO', 4, 20),
(129, 'PENAL', 4, 20),
(130, 'ECONOMÍA', 4, 21),
(131, 'ECONOMETRÍA', 4, 21),
(132, 'RELACIONES INDUSTRIALES', 4, 21),
(133, 'NEGOCIOS Y MANAGEMENT', 4, 21),
(134, 'CIENCIAS AMBIENTALES (ASPECTOS SOCIALES)', 4, 22),
(135, 'GEOGRAFÍA ECONÓMICA Y CULTURAL', 4, 22),
(136, 'ESTUDIOS URBANOS (PLANIFICACIÓN Y DESARROLLO)', 4, 22),
(137, 'PLANIFICACIÓN DEL TRANSPORTE Y ASPECTOS SOCIALES DEL TRANSPORTE', 4, 22),
(138, 'CIENCIAS SOCIALES, INTERDISCIPLINARIA', 4, 23),
(139, 'OTRAS CIENCIAS SOCIALES', 4, 23),
(140, 'PERIODISMO', 4, 24),
(141, 'CIENCIAS DE LA INFORMACIÓN (ASPECTOS SOCIALES)', 4, 24),
(142, 'BIBLIOTECOLOGÍA', 4, 24),
(143, 'MEDIOS Y COMUNICACIÓN SOCIAL', 4, 24),
(144, 'PSICOLOGÍA (INCLUYE RELACIONES HOMBRE-MÁQUINA)', 4, 25),
(145, 'PSICOLOGÍA (INCLUYE TERAPIAS DE APRENDIZAJE, HABLA, VISUAL Y OTRAS DISCAPACIDADES FÍSICAS Y MENTALES)', 4, 25),
(146, 'SOCIOLOGIA', 4, 26),
(147, 'DEMOGRAFÍA', 4, 26),
(148, 'ANTROPOLOGÍA', 4, 26),
(149, 'ETNOLOGÍA', 4, 26),
(150, 'TEMAS ESPECIALES (ESTUDIO DE GÉNERO, TEMAS SOCIALES, ESTUDIOS DE LA FAMILIA, TRABAJO SOCIAL)', 4, 26),
(151, 'ARTE', 5, 27),
(152, 'HISTORIA DEL ARTE', 5, 27),
(153, 'DISEÑO ARQUITECTÓNICO', 5, 27),
(154, 'ARTES DE LA REPRESENTACIÓN (MUSICOLOGÍA, CIENCIAS DEL TEATRO, DRAMATURGIA)', 5, 27),
(155, 'ESTUDIOS DEL FOLCLOR', 5, 27),
(156, 'ESTUDIOS DE CINE, RADIO Y TELEVISIÓN', 5, 27),
(157, 'ARQUITECTURA Y URBANISMO', 5, 27),
(158, 'DISEÑO INDUSTRIAL Y OTROS DISEÑOS', 5, 27),
(159, 'HISTORIA', 5, 28),
(160, 'ARQUEOLOGÍA', 5, 28),
(161, 'ESTUDIOS GENERALES DEL LENGUAJE', 5, 29),
(162, 'IDIOMAS ESPECÍFICOS', 5, 29),
(163, 'ESTUDIOS LITERARIOS', 5, 29),
(164, 'TEORÍA LITERARIA', 5, 29),
(165, 'LITERATURA ESPECÍFICA', 5, 29),
(166, 'LINGÜÍSTICA', 5, 29),
(167, 'HISTORIA DE LA CIENCIA Y TECNOLOGÍA', 5, 30),
(168, 'OTRAS HISTORIAS ESPECIALIZADAS', 5, 30),
(169, 'OTRAS HUMANIDADES', 5, 31),
(170, 'FILOSOFÍA', 5, 31),
(171, 'TEOLOGÍA', 5, 31),
(172, 'INGENIERÍA CIVIL ', 6, 32),
(173, 'INGENIERÍA ARQUITECTÓNICA ', 6, 32),
(174, 'INGENIERÍA DE LA CONSTRUCCIÓN ', 6, 32),
(175, 'INGENIERÍA ESTRUCTURAL Y MUNICIPAL ', 6, 32),
(176, 'INGENIERÍA DEL TRANSPORTE', 6, 32),
(177, 'INGENIERÍA ELÉCTRICA Y ELECTRÓNICA ', 6, 33),
(178, 'ROBÓTICA Y CONTROL AUTOMÁTICO ', 6, 33),
(179, 'AUTOMATIZACIÓN Y SISTEMAS DE CONTROL ', 6, 33),
(180, 'INGENIERÍA DE SISTEMAS Y COMUNICACIONES ', 6, 33),
(181, 'TELECOMUNICACIONES ', 6, 33),
(182, 'HARDWARE Y ARQUITECTURA DE COMPUTADORES', 6, 33),
(183, 'INGENIERÍA MECÁNICA ', 6, 34),
(184, 'MECÁNICA APLICADA ', 6, 34),
(185, 'TERMODINÁMICA ', 6, 34),
(186, 'INGENIERÍA AEROESPACIAL ', 6, 34),
(187, 'INGENIERÍA NUCLEAR ', 6, 34),
(188, 'INGENIERÍA DEL AUDIO', 6, 34),
(189, 'INGENIERÍA QUÍMICA (PLANTAS Y PRODUCTOS) ', 6, 35),
(190, 'INGENIERÍA DE PROCESOS', 6, 35),
(191, 'INGENIERÍA MECÁNICA ', 6, 36),
(192, 'CERÁMICOS ', 6, 36),
(193, 'RECUBRIMIENTOS Y PELÍCULAS ', 6, 36),
(194, 'COMPUESTOS (LAMINADOS, PLÁSTICOS REFORZADOS, FIBRAS SINTÉTICAS Y NATURALES, ETC.) ', 6, 36),
(195, 'PAPEL Y MADERA ', 6, 36),
(196, 'TEXTILES', 6, 36),
(197, 'INGENIERÍA MÉDICA ', 6, 37),
(198, 'TECNOLOGÍA MÉDICA DE LABORATORIO (ANÁLISIS DE MUESTRAS, TECNOLOGÍAS PARA EL DIAGNÓSTICO)', 6, 37),
(199, 'INGENIERÍA AMBIENTAL Y GEOLÓGICA E', 6, 38),
(200, 'GEOTÉCNICAS ', 6, 38),
(201, 'INGENIERÍA DEL PETRÓLEO (COMBUSTIBLES, ACEITES), ENERGÍA Y COMBUSTIBLES ', 6, 38),
(202, 'SENSORES REMOTOS ', 6, 38),
(203, 'MINERÍA Y PROCESAMIENTO DE MINERALES ', 6, 38),
(204, 'INGENIERÍA MARINA, NAVES ', 6, 38),
(205, 'INGENIERÍA OCEANOGRÁFICA', 6, 38),
(206, 'BIOTECNOLOGÍA MEDIOAMBIENTAL ', 6, 39),
(207, 'BIOREMEDIACIÓN, BIOTECNOLOGÍA PARA EL DIAGNÓSTICO (CHIPS ADN Y BIOSENSORES) EN MANEJO AMBIENTAL ', 6, 39),
(208, 'ÉTICA RELACIONADA CON BIOTECNOLOGÍA MEDIOAMBIENTAL', 6, 39),
(209, 'BIOTECNOLOGÍA INDUSTRIAL', 6, 40),
(210, 'TECNOLOGÍAS DE BIOPROCESAMIENTO, BIOCATÁLISIS, FERMENTACIÓN', 6, 40),
(211, 'BIOPRODUCTOS (PRODUCTOS QUE SE MANUFACTURAN USANDO BIOTECNOLOGÍA), BIOMATERIALES, BIOPLÁSTICOS, BIOCOMBUSTIBLES, MATERIALES NUEVOS BIODERIVADOS, QUÍMICOS FINOS BIODERIVADOS', 6, 40),
(212, 'NANOMATERIALES (PRODUCCIÓN Y PROPIEDADES)', 6, 41),
(213, 'NANOPROCESOS (APLICACIONES A NANOESCALA)', 6, 41),
(214, 'ALIMENTOS Y BEBIDAS', 6, 42),
(215, 'OTRAS INGENIERÍAS Y TECNOLOGÍAS', 6, 42),
(216, 'INGENIERÍA DE PRODUCCIÓN', 6, 42),
(217, 'INGENIERÍA INDUSTRIAL', 6, 42);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocdeSubAreas`
--

CREATE TABLE `ocdeSubAreas` (
  `Id` int(2) NOT NULL,
  `Nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `IdArea` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ocdeSubAreas`
--

INSERT INTO `ocdeSubAreas` (`Id`, `Nombre`, `IdArea`) VALUES
(1, 'AGRICULTURA, SILVICULTURA Y PESCA', 1),
(2, 'CIENCIAS ANIMALES Y LECHERÍA', 1),
(3, 'CIENCIAS VETERINARIAS', 1),
(4, 'BIOTECNOLOGÍA AGRÍCOLA', 1),
(5, 'OTRAS CIENCIAS AGRÍCOLAS', 1),
(6, 'MEDICINA BÁSICA', 2),
(7, 'MEDICINA CLÍNICA', 2),
(8, 'CIENCIAS DE LA SALUD', 2),
(9, 'BIOTECNOLOGÍA EN SALUD', 2),
(10, 'OTRAS CIENCIAS MÉDICAS', 2),
(11, 'MATEMÁTICAS', 3),
(12, 'COMPUTACIÓN Y CIENCIAS DE LA INFORMACIÓN  ', 3),
(13, 'CIENCIAS FÍSICAS', 3),
(14, 'CIENCIAS QUÍMICAS', 3),
(15, 'CIENCIAS DE LA TIERRA Y MEDIOAMBIENTALES', 3),
(16, 'CIENCIAS BIOLÓGICAS', 3),
(17, 'OTRAS CIENCIAS NATURALES', 3),
(18, 'CIENCIAS DE LA EDUCACIÓN', 4),
(19, 'CIENCIAS POLÍTICAS', 4),
(20, 'DERECHO', 4),
(21, 'ECONOMÍA Y NEGOCIOS', 4),
(22, 'GEOGRAFÍA SOCIAL Y ECONÓMICA', 4),
(23, 'OTRAS CIENCIAS SOCIALES', 4),
(24, 'PERIODISMO Y COMUNICACIONES', 4),
(25, 'PSICOLOGÍA ', 4),
(26, 'SOCIOLOGÍA', 4),
(27, 'ARTE ', 5),
(28, 'HISTORIA Y ARQUEOLOGÍA  ', 5),
(29, 'IDIOMAS Y LITERATURA', 5),
(30, 'OTRAS HISTORIAS', 5),
(31, 'OTRAS HUMANIDADES', 5),
(32, 'INGENIERÍA CIVIL', 6),
(33, 'INGENIERÍA ELÉCTRICA, ELECTRÓNICA E INFORMÁTICA  ', 6),
(34, 'INGENIERÍA MECÁNICA', 6),
(35, 'INGENIERÍA QUÍMICA', 6),
(36, 'INGENIERÍA DE LOS MATERIALES', 6),
(37, 'INGENIERÍA MÉDICA', 6),
(38, 'INGENIERÍA AMBIENTAL', 6),
(39, 'BIOTECNOLOGÍA MEDIOAMBIENTAL', 6),
(40, 'BIOTECNOLOGÍA INDUSTRIAL', 6),
(41, 'NANOTECNOLOGÍA', 6),
(42, 'OTRAS INGENIERÍAS Y TECNOLOGÍAS', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblDocentes`
--

CREATE TABLE `tblDocentes` (
  `Id` int(11) NOT NULL,
  `Activo` int(11) NOT NULL,
  `DNI` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Sexo` varchar(2) NOT NULL,
  `Codigo` varchar(12) CHARACTER SET utf8 NOT NULL,
  `IdCategoria` int(11) NOT NULL,
  `IdFacultad` int(11) NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `Apellidos` varchar(75) CHARACTER SET utf8 NOT NULL,
  `Nombres` varchar(75) CHARACTER SET utf8 NOT NULL,
  `FechaCon` date NOT NULL,
  `ResolCon` varchar(30) NOT NULL,
  `FechaIn` date NOT NULL,
  `FechaAsc` date NOT NULL,
  `ResolAsc` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Resolucion` varchar(75) CHARACTER SET utf8 NOT NULL,
  `FechaNac` date NOT NULL,
  `Direccion` varchar(50) NOT NULL DEFAULT '*',
  `NroCelular` varchar(12) CHARACTER SET utf8 NOT NULL,
  `Regina` tinyint(4) NOT NULL DEFAULT '0',
  `Correo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Clave` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblDocentes`
--

INSERT INTO `tblDocentes` (`Id`, `Activo`, `DNI`, `Sexo`, `Codigo`, `IdCategoria`, `IdFacultad`, `IdCarrera`, `Apellidos`, `Nombres`, `FechaCon`, `ResolCon`, `FechaIn`, `FechaAsc`, `ResolAsc`, `Resolucion`, `FechaNac`, `Direccion`, `NroCelular`, `Regina`, `Correo`, `Clave`) VALUES
(1, 6, '29413634', 'M', '29413634', 1, 1, 1, 'Cari Incahuanaco', 'Francisco ', '2023-08-16', 'res-1233', '2023-08-09', '2023-08-17', 'res-1233', 'res-1234', '2023-08-04', '*', '9823355667', 0, 'gsegundo@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(2, 6, '11111111', 'M', '123', 1, 1, 1, 'Naida Luque Ochoa', 'Evelyn ', '2000-08-17', 'ded', '2000-08-18', '2003-08-29', 'as', 'as', '2023-08-05', '*', '999999999', 0, 'tovacen242@weirby.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(3, 6, '11121111', 'M', '12', 1, 1, 1, 'Ordoñez Ramos', 'Erech ', '2000-08-17', 'ded', '2000-08-18', '2003-08-29', 'as', 'as', '2023-08-05', '*', '999999999', 0, 'neyotef796@unbiex.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(4, 6, '31121111', 'M', '12', 1, 1, 1, 'Peralta Ascue', 'Marleny ', '2000-08-17', 'ded', '2000-08-18', '2003-08-29', 'as', 'as', '2023-08-05', '*', '999999999', 0, 'cafyalorza@gufum.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(5, 5, '29413634', 'M', '29413634', 1, 1, 1, 'Pareja Cabrera', 'Julio Cesar ', '2023-08-16', 'res-1233', '2023-08-09', '2023-08-17', 'res-1233', 'res-1234', '2023-08-04', '*', '9823355667', 0, 'biltecorko@gufum.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(6, 5, '29413630', 'M', '29413634', 1, 1, 3, 'Ortega Cortez', 'Beda', '2023-08-16', 'res-1233', '2023-08-09', '2023-08-17', 'res-1233', 'res-1234', '2023-08-04', '*', '9823355667', 0, 'transferenciatecnologica@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(7, 6, '11111118', 'M', '12', 1, 1, 3, 'Mattos Ojeda', 'Rodolfo Andres ', '2000-08-17', 'ded', '2000-08-18', '2003-08-29', 'as', 'as', '2023-08-05', '*', '999999999', 0, 'rojas.nel07@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(8, 6, '11111116', 'M', '12', 1, 1, 3, 'Huacani Calsin', 'Walquer ', '2000-08-17', 'ded', '2000-08-18', '2003-08-29', 'as', 'as', '2023-08-05', '*', '999999999', 0, 'sadithsegundogonzales@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(9, 6, '11111119', 'M', '12', 1, 1, 3, 'Merma Aroni', 'Jose Luis ', '2000-08-17', 'ded', '2000-08-18', '2003-08-29', 'as', 'as', '2023-08-05', '*', '999999999', 0, 'nacionz811@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(10, 4, '4444444', 'M', '456', 1, 1, 3, 'DMinas1', 'DMinas1', '2023-08-16', 'res-1233', '2023-08-09', '2023-08-17', 'res-1233', 'res-1234', '2023-08-04', '*', '9823355667', 0, 'sadika123ss@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(11, 6, '44444449', 'M', '457', 1, 1, 3, 'DMINAS2', 'DMINAS2', '2023-08-16', 'res-1233', '2023-08-09', '2023-08-17', 'res-1233', 'res-1234', '2023-08-04', '*', '9823355667', 0, 'gsegundo@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(12, 0, '44444448', 'M', '458', 1, 1, 3, 'DMinas3', 'DMinas3', '2023-08-16', 'res-1233', '2023-08-09', '2023-08-17', 'res-1233', 'res-1234', '2023-08-04', '*', '9823355667', 0, 'gsegundo@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(13, 6, '44444447', 'M', '4569', 1, 1, 3, 'DMinas4', 'DMinas4', '2023-08-16', 'res-1233', '2023-08-09', '2023-08-17', 'res-1233', 'res-1234', '2023-08-04', '*', '9823355667', 0, 'gsegundo@unamba.edu.pe', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(14, 6, '12345678', 'M', '00001', 1, 1, 1, 'SILLO SILLO', 'ROGELIO', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'rogelio@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(15, 6, '23456789', 'M', '00004', 1, 1, 1, 'SARMIENTO CASAVILCA', 'VICTOR HUGO', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'victor@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(16, 6, '34567812', 'M', '00003', 1, 1, 1, 'MUÑOZ CACERES', 'ALEX ERNESTO', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'alex@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(17, 6, '45678123', 'M', '00005', 1, 1, 1, 'CASTRO PEREZ', 'GLADYS MARILU', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'gladys@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(18, 6, '56781234', 'M', '00006', 1, 1, 1, 'CCOPA FLORES', 'RUTH MERY', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'ruth@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(19, 6, '67812345', 'M', '00007', 1, 1, 1, 'HUAYHUA MAMANI', 'HILDA MARIBEL', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'hilda@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(20, 6, '78123456', 'M', '00008', 1, 1, 1, 'TORRES CHIPANA', 'AMALIA', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'amalia@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(21, 6, '81234567', 'M', '00009', 1, 1, 1, 'CUENTAS CARRERA', 'CESAR EDUARDO', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'cesar@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(22, 0, '10000000', 'M', '00010', 1, 1, 1, 'CABRERA NAVARRETE', 'BELEN', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'belen@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(23, 6, '10000001', 'M', '00011', 1, 1, 1, 'COACALLA CASTILLO', 'CARLOS ENRIQUE', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'carlos@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(24, 6, '10000002', 'M', '00012', 1, 1, 1, 'HUAYAPA HUAYNACHO', 'MAURO', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'mauro@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(25, 6, '10000003', 'M', '00013', 1, 1, 1, 'PINTO PAGAZA', 'DANIEL AMILCAR', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'daniel@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(26, 6, '10000004', 'M', '00014', 1, 1, 1, 'SOTO PAREJA', 'MAXIMO', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'maximo@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(27, 6, '10000005', 'M', '00015', 1, 1, 1, 'LIMA BENDEZU', 'MARIA PATRICIA', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'maria@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(28, 6, '10000006', 'M', '00016', 1, 1, 1, 'NOLASCO CARBAJAL', 'ELIO', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'elio@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(29, 6, '10000007', 'M', '00017', 1, 1, 1, 'CARNERO CARNERO', 'LEONCIO TEOFILO', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'leoncio@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6'),
(30, 6, '10000008', 'M', '00018', 1, 1, 1, 'CARRASCO KOLQUE', 'HILARIO', '2000-08-17', 'RES-1000', '2000-08-18', '2003-08-29', 'RES-2000', 'RES-3000', '1990-08-05', 'av.abancay', '983757625', 0, 'hilario@gmail.com', '*C246EB180CF8C13296BB0D29D627982B5ECBECC6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblFormatos`
--

CREATE TABLE `tblFormatos` (
  `Id` int(11) NOT NULL,
  `IdCarrera` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Estado` int(11) NOT NULL,
  `Archivo` varchar(50) NOT NULL,
  `Fecha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblLineas`
--

CREATE TABLE `tblLineas` (
  `Id` int(5) NOT NULL,
  `Estado` int(11) NOT NULL,
  `Nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `IdArea` int(1) DEFAULT NULL,
  `IdSubArea` int(2) DEFAULT NULL,
  `IdDiscip` int(3) DEFAULT NULL,
  `id_usuario` int(2) NOT NULL,
  `IdFacultad` int(2) NOT NULL,
  `IdCarrera` int(2) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tblLineas`
--

INSERT INTO `tblLineas` (`Id`, `Estado`, `Nombre`, `IdArea`, `IdSubArea`, `IdDiscip`, `id_usuario`, `IdFacultad`, `IdCarrera`, `fecha`) VALUES
(1, 1, 'Ingeniería Informática,Industria y Sociedad', 6, 33, 180, 1, 1, 1, '2023-10-26 01:23:05'),
(2, 2, 'Ingeniería de Software e Innovación Tecnológica', 6, 33, 180, 1, 1, 1, '2023-10-26 01:23:51'),
(3, 1, 'Minería y Procesamiento de Minerales', 6, 38, 203, 1, 1, 3, '2023-10-26 01:26:12'),
(4, 1, 'Geología, geotecnia y Medio Ambiente', 6, 38, 200, 1, 1, 3, '2023-10-26 01:26:24'),
(5, 1, 'Ingeniería de la Construcción', 6, 32, 174, 1, 1, 2, '2023-10-26 01:28:51'),
(6, 1, 'Ingeniería de Materiales', 6, 42, 215, 1, 1, 2, '2023-10-26 01:29:06'),
(7, 1, 'Caracterización, Desarrollo de Procesos e Innovación en la Agroindustria', 6, 42, 215, 1, 1, 4, '2023-10-26 01:31:04'),
(8, 1, 'Agua, Agricultura, Silvicultura y Pecuaria Sostenible', 1, 1, 1, 1, 1, 5, '2023-10-26 01:31:11'),
(9, 1, 'Biotecnología, Fitomejoramiento y Conservación de la Biodiversidad', 1, 4, 11, 1, 1, 5, '2023-10-26 01:32:17'),
(10, 1, 'Educación Inicial, desarrollo infantil y Gestión Pedagógica', 4, 18, 123, 1, 3, 6, '2023-10-26 01:34:00'),
(11, 1, 'Interculturalidad y Cosmovisión Andina', 4, 23, 139, 1, 3, 6, '2023-10-26 01:34:48'),
(12, 1, 'Ciencias Veterinarias', 1, 3, 10, 1, 4, 8, '2023-10-26 01:34:56'),
(13, 1, 'Sistema Política y Gobernabilidad', 4, 19, 125, 1, 3, 7, '2023-10-26 01:35:43'),
(14, 1, 'Teoría Política y Gobernabilidad', 4, 19, 125, 1, 3, 7, '2023-10-26 01:35:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblLogDocentes`
--

CREATE TABLE `tblLogDocentes` (
  `Id` int(11) NOT NULL,
  `IdDocente` int(11) NOT NULL,
  `EstadoAnt` int(4) NOT NULL,
  `EstadoNvo` int(4) NOT NULL,
  `Detalle` text NOT NULL,
  `Documento` varchar(50) NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblLogDocentes`
--

INSERT INTO `tblLogDocentes` (`Id`, `IdDocente`, `EstadoAnt`, `EstadoNvo`, `Detalle`, `Documento`, `Fecha`) VALUES
(4459, 1, 6, 6, 'ya se ha habilitado', 'R-wee', '2023-08-08 13:40:49'),
(4460, 12, 0, 0, '', '', '2023-08-11 13:49:47'),
(4461, 22, 0, 0, '', '', '2023-12-04 14:54:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unamba_docentes`
--

CREATE TABLE `unamba_docentes` (
  `Id` int(11) NOT NULL,
  `SEMESTRE` varchar(6) DEFAULT NULL,
  `DNI` varchar(10) DEFAULT NULL,
  `APPATERNO` varchar(14) DEFAULT NULL,
  `APMATERNO` varchar(18) DEFAULT NULL,
  `NOMBRES` varchar(26) DEFAULT NULL,
  `SEXO` int(1) DEFAULT NULL,
  `IdEP` int(11) NOT NULL,
  `CODIGO` varchar(6) DEFAULT NULL,
  `EP` varchar(68) DEFAULT NULL,
  `CICLO` int(2) DEFAULT NULL,
  `DIRECC` varchar(40) DEFAULT NULL,
  `TELEF` varchar(9) DEFAULT NULL,
  `CORREO` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unamba_docentes`
--

INSERT INTO `unamba_docentes` (`Id`, `SEMESTRE`, `DNI`, `APPATERNO`, `APMATERNO`, `NOMBRES`, `SEXO`, `IdEP`, `CODIGO`, `EP`, `CICLO`, `DIRECC`, `TELEF`, `CORREO`) VALUES
(1, '2023-2', '72637493', 'CHAVEZ', 'FLORES', 'MIRIAM ARELI', 2, 1, '192019', 'ADMINISTRACIÓN', 8, '', '937421719', '192019@unamba.edu.pe\r'),
(2, '2023-2', '47490383', 'CHIPA', 'TEJADA', 'SAMIRA', 2, 1, '192020', 'ADMINISTRACIÓN', 10, '', '998761093', '192020@unamba.edu.pe\r'),
(3, '2023-2', '71288282', 'CHIPAYO', 'BLANCO', 'DANY', 1, 1, '192021', 'ADMINISTRACIÓN', 9, '', '967465505', '192021@unamba.edu.pe\r'),
(4, '2023-2', '62220229', 'CHIRINOS', 'BRAVO', 'MILAGROS', 2, 1, '192022', 'ADMINISTRACIÓN', 9, '', '965402856', '192022@unamba.edu.pe\r'),
(5, '2023-2', '75274939', 'CORDOVA', ' GUEVARA', 'BRYAN AUGUSTO', 1, 1, '192023', 'ADMINISTRACIÓN', 8, '', '956365742', '192023@unamba.edu.pe\r'),
(6, '2023-2', '76250333', 'DAMIAN', 'SARMIENTO', 'JOSUE ANDRES', 1, 1, '192024', 'ADMINISTRACIÓN', 8, '', '953773558', '192024@unamba.edu.pe\r'),
(7, '2023-2', '76872490', 'ESCALANTE', 'BAÑARES', 'ALEJANDRA', 2, 1, '192025', 'ADMINISTRACIÓN', 8, '', '973554436', '192025@unamba.edu.pe\r'),
(8, '2023-2', '75765364', 'GARFIAS', 'TAMBRAICO', 'ALEXIA LAURA', 2, 1, '192026', 'ADMINISTRACIÓN', 9, '', '944706809', '192026@unamba.edu.pe\r'),
(9, '2023-2', '73964982', 'HUAMANI', 'SANCHEZ', 'FRANCOIS', 1, 1, '192027', 'ADMINISTRACIÓN', 8, '', '944711665', '192027@unamba.edu.pe\r'),
(10, '2023-2', '76047309', 'MERMA', 'CERECEDA', 'MELIZA', 2, 1, '192030', 'ADMINISTRACIÓN', 8, '', '982223072', '192030@unamba.edu.pe\r'),
(11, '2023-2', '76077435', 'MONZON', 'CCOLCCA', 'SANDRA JANETH', 2, 1, '192032', 'ADMINISTRACIÓN', 9, '', '957146735', '192032@unamba.edu.pe\r'),
(12, '2023-2', '70384171', 'PAREJA', 'PINTO', 'HERNAN', 1, 1, '192035', 'ADMINISTRACIÓN', 9, '', '930609313', '192035@unamba.edu.pe\r'),
(13, '2023-2', '75939066', 'PECEROS', 'MELENDEZ', 'KAREN LILIANA', 2, 1, '192036', 'ADMINISTRACIÓN', 9, '', '962300691', '192036@unamba.edu.pe\r'),
(14, '2023-2', '75746876', 'PEÑA', 'SOEL', 'LISBETH', 2, 1, '192037', 'ADMINISTRACIÓN', 8, '', '927152571', '192037@unamba.edu.pe\r'),
(15, '2023-2', '70761017', 'PORTILLA', 'VALENZUELA', 'JOSE LUIS', 1, 1, '192038', 'ADMINISTRACIÓN', 8, '', '994380141', '192038@unamba.edu.pe\r'),
(16, '2023-2', '71491058', 'PUMA', 'ROBLES', 'JORGE LUIS', 1, 1, '192039', 'ADMINISTRACIÓN', 9, '', '929173415', '192039@unamba.edu.pe\r'),
(17, '2023-2', '73588384', 'QUICAÑA', 'HUACCHARAQUI', 'RUTH ZARAY', 2, 1, '192040', 'ADMINISTRACIÓN', 9, '', '930126294', '192040@unamba.edu.pe\r'),
(18, '2023-2', '70425334', 'QUISPE', 'DAMIAN', 'JHONATAN', 1, 1, '192041', 'ADMINISTRACIÓN', 9, '', '975886368', '192041@unamba.edu.pe\r'),
(19, '2023-2', '73652897', 'QUISPE', 'PORTILLA', 'MAZINHO', 1, 1, '192043', 'ADMINISTRACIÓN', 9, '', '952759141', '192043@unamba.edu.pe\r'),
(20, '2023-2', '71827815', 'QUISPITUPA', 'HUAMANI', 'JUAN', 1, 1, '192045', 'ADMINISTRACIÓN', 9, '', '959935583', '192045@unamba.edu.pe\r'),
(21, '2023-2', '72265135', 'RAMOS', 'REYNAGA', 'RAQUEL REYDA', 2, 1, '192047', 'ADMINISTRACIÓN', 8, '', '940624316', '192047@unamba.edu.pe\r'),
(22, '2023-2', '75746887', 'RIVEROS', 'VERA', 'MASIEL', 2, 1, '192048', 'ADMINISTRACIÓN', 9, '', '963080830', '192048@unamba.edu.pe\r'),
(23, '2023-2', '75347704', 'SALDIVAR', 'ORTIZ', 'SHABELY', 2, 1, '192049', 'ADMINISTRACIÓN', 10, '', '914643984', '192049@unamba.edu.pe\r'),
(24, '2023-2', '78006824', 'SERRANO', 'OBLITAS', 'GERMAN', 1, 1, '192051', 'ADMINISTRACIÓN', 8, '', '980932780', '192051@unamba.edu.pe\r'),
(25, '2023-2', '76335784', 'TAIPE', 'CONDORI', 'EMILY JANICE', 2, 1, '192052', 'ADMINISTRACIÓN', 8, '', '986472301', '192052@unamba.edu.pe\r'),
(26, '2023-2', '72796724', 'TAPIA', 'CHAVEZ', 'GIANPIERRE NICOLAS', 1, 1, '192053', 'ADMINISTRACIÓN', 8, '', '927584039', '192053@unamba.edu.pe\r'),
(27, '2023-2', '70759760', 'TAYPE', 'CRUZ', 'REYNALDINO', 1, 1, '192054', 'ADMINISTRACIÓN', 8, '', '997778670', '192054@unamba.edu.pe\r'),
(28, '2023-2', '75988537', 'TINGO', 'SALAS', 'RUTH ELIZABET', 2, 1, '192055', 'ADMINISTRACIÓN', 9, '', '936377173', '192055@unamba.edu.pe\r'),
(29, '2023-2', '73073709', 'VIDAL', 'RODAS', 'DEYSI XIOMARA', 2, 1, '192059', 'ADMINISTRACIÓN', 9, '', '987911342', '192059@unamba.edu.pe\r'),
(30, '2023-2', '72466825', 'CHICCHE', 'PUJADAS', 'IDALIZ', 2, 1, '182019', 'ADMINISTRACIÓN', 10, '', '945916443', '182019@unamba.edu.pe\r'),
(31, '2023-2', '74645733', 'CHICLLA', 'KARI', 'DENILSON', 1, 1, '182020', 'ADMINISTRACIÓN', 8, '', '986508441', '182020@unamba.edu.pe\r'),
(32, '2023-2', '75272295', 'CHIRINOS', 'PALOMINO', 'JHORDAN SMIT', 1, 1, '182024', 'ADMINISTRACIÓN', 10, '', '940725732', '182024@unamba.edu.pe\r'),
(33, '2023-2', '71737924', 'FERRO', 'ARTIAGA', 'LORHY ANDREA', 2, 1, '182029', 'ADMINISTRACIÓN', 9, '', '958304723', '182029@unamba.edu.pe\r'),
(34, '2023-2', '73500894', 'FLORES', 'AGUILAR', 'YONATAN NILTON', 1, 1, '182030', 'ADMINISTRACIÓN', 10, '', '925852559', '182030@unamba.edu.pe\r'),
(35, '2023-2', '77150801', 'GUTIERREZ', 'VILLCAS', 'MARCO ANTONIO', 1, 1, '182031', 'ADMINISTRACIÓN', 10, '', '902317764', '182031@unamba.edu.pe\r'),
(36, '2023-2', '77047992', 'HUACHACA', 'CUSCO', 'HEELYIG', 1, 1, '182032', 'ADMINISTRACIÓN', 8, '', '946349095', '182032@unamba.edu.pe\r'),
(37, '2023-2', '76724287', 'HURTADO', 'SARAVIA', 'LENA MURIEL', 2, 1, '182039', 'ADMINISTRACIÓN', 10, '', '929226219', '182039@unamba.edu.pe\r'),
(38, '2023-2', '74764278', 'IBARRA', 'CHOCCATA', 'JUAN MARCO', 1, 1, '182040', 'ADMINISTRACIÓN', 10, '', '927150520', '182040@unamba.edu.pe\r'),
(39, '2023-2', '71809648', 'PACHECO', 'MONZON', 'YOBERSON', 1, 1, '182045', 'ADMINISTRACIÓN', 10, '', '973508185', '182045@unamba.edu.pe\r'),
(40, '2023-2', '71308161', 'PINARES', 'BAUTISTA', 'RAUL', 1, 1, '182048', 'ADMINISTRACIÓN', 8, '', '958769551', '182048@unamba.edu.pe\r'),
(41, '2023-2', '72431638', 'PINTO', 'VELASQUEZ', 'NAYELY ZARAI', 2, 1, '182049', 'ADMINISTRACIÓN', 10, '', '910040193', '182049@unamba.edu.pe\r'),
(42, '2023-2', '70784347', 'QUISPE', 'RAFAELE', 'MERLY', 2, 1, '182051', 'ADMINISTRACIÓN', 9, '', '910189146', '182051@unamba.edu.pe\r'),
(43, '2023-2', '76656294', 'RIVAS', 'HUAMAN', 'PRISHILA ANAIS', 2, 1, '182052', 'ADMINISTRACIÓN', 10, '', '974685663', '182052@unamba.edu.pe\r'),
(44, '2023-2', '74751016', 'SIERRA', 'VELAZQUE', 'JUDITH', 2, 1, '182056', 'ADMINISTRACIÓN', 8, '', '917236740', '182056@unamba.edu.pe\r'),
(45, '2023-2', '70763339', 'SOTO', 'SANCHEZ', 'FIDEL', 1, 1, '182057', 'ADMINISTRACIÓN', 10, '', '963319002', '182057@unamba.edu.pe\r'),
(46, '2023-2', '73204486', 'ALFARO', 'MEJIA', 'MAYLI', 2, 1, '231002', 'ADMINISTRACIÓN', 8, 'Asoc. Sol Brillante Mz. D Lt. 10 Abancay', '930777499', '231002@unamba.edu.pe\r'),
(47, '2023-2', '76187120', 'APAZA', 'CCOLQQUE', 'CARLOS DANIEL', 1, 1, '191004', 'ADMINISTRACIÓN', 10, '', '974732627', '191004@unamba.edu.pe\r'),
(48, '2023-2', '77242912', 'AYMARA', 'ZAMORA', 'RENE RAQUEL', 2, 1, '191006', 'ADMINISTRACIÓN', 9, '', '900414326', '191006@unamba.edu.pe\r'),
(49, '2023-2', '73219778', 'BARRIENTOS', 'QUISPE', 'LAURA GABRIELA', 2, 1, '191007', 'ADMINISTRACIÓN', 8, '', '991709085', '191007@unamba.edu.pe\r'),
(50, '2023-2', '74167272', 'BRAVO', 'HUAMANHORCCO', 'TULA', 2, 1, '191009', 'ADMINISTRACIÓN', 8, '', '989979579', '191009@unamba.edu.pe\r'),
(51, '2023-2', '60304096', 'CABRERA', 'SUTURI', 'BRISA ELENA', 2, 1, '191011', 'ADMINISTRACIÓN', 10, '', '918574882', '191011@unamba.edu.pe\r'),
(52, '2023-2', '74998706', 'CANALES', 'SOLIS', 'JUAN ARTURO', 1, 1, '191012', 'ADMINISTRACIÓN', 10, '', '914567104', '191012@unamba.edu.pe\r'),
(53, '2023-2', '76654640', 'CARBAJAL', 'HERRERA', 'JHON RICARDO', 1, 1, '191013', 'ADMINISTRACIÓN', 9, '', '931145501', '191013@unamba.edu.pe\r'),
(54, '2023-2', '76389271', 'CARRASCO', 'ALTAMIRANO', 'ELI MISAEL', 1, 1, '191014', 'ADMINISTRACIÓN', 10, '', '925878846', '191014@unamba.edu.pe\r'),
(55, '2023-2', '75858706', 'CCASANI', 'SORIA', 'JOEL RAFAEL', 1, 1, '191015', 'ADMINISTRACIÓN', 10, '', '929534870', '191015@unamba.edu.pe\r'),
(56, '2023-2', '71229629', 'CENTENO', 'BARRIENTOS', 'EFRAIN JHEDY', 1, 1, '191017', 'ADMINISTRACIÓN', 10, '', '940330216', '191017@unamba.edu.pe\r'),
(57, '2023-2', '72745161', 'CHANI', 'PUJADAS', 'BRYAN FELIPE', 1, 1, '191018', 'ADMINISTRACIÓN', 10, '', '937761499', '191018@unamba.edu.pe\r'),
(58, '2023-2', '61687138', 'CONDORI', 'MOREANO', 'CARMEN VICTORIA', 2, 1, '191019', 'ADMINISTRACIÓN', 8, '', '901524193', '191019@unamba.edu.pe\r'),
(59, '2023-2', '75701616', 'CRUZ', 'LOPEZ', 'RUTH SHARMELYN', 2, 1, '191021', 'ADMINISTRACIÓN', 10, '', '930228187', '191021@unamba.edu.pe\r'),
(60, '2023-2', '71294296', 'ESTRADA', 'PACCO', 'YOVANA', 2, 1, '191023', 'ADMINISTRACIÓN', 10, '', '991698492', '191023@unamba.edu.pe\r'),
(61, '2023-2', '73459064', 'GUTIERREZ', 'SILVERA', 'DAREN WILLIAN', 1, 1, '191024', 'ADMINISTRACIÓN', 10, '', '934841756', '191024@unamba.edu.pe\r'),
(62, '2023-2', '73785224', 'HILARIO', 'MARCA', 'MARX LENIN', 1, 1, '191025', 'ADMINISTRACIÓN', 10, '', '900415918', '191025@unamba.edu.pe\r'),
(63, '2023-2', '75746850', 'HUAMAN', 'TICONA', 'DELSY PILAR', 2, 1, '191027', 'ADMINISTRACIÓN', 10, '', '910378336', '191027@unamba.edu.pe\r'),
(64, '2023-2', '76759813', 'HUANACO', 'BECERRA', 'NOELIA SHARA', 2, 1, '191028', 'ADMINISTRACIÓN', 10, '', '993051641', '191028@unamba.edu.pe\r'),
(65, '2023-2', '76670824', 'HUARANCCA', 'CAHUANCAMA', 'YENIFER', 2, 1, '191029', 'ADMINISTRACIÓN', 10, '', '983887515', '191029@unamba.edu.pe\r'),
(66, '2023-2', '75613220', 'HURTADO', 'MEJIA', 'BRAYAN', 1, 1, '191030', 'ADMINISTRACIÓN', 8, '', '924438443', '191030@unamba.edu.pe\r'),
(67, '2023-2', '75792730', 'LEIVA', 'CRIALES', 'ROCIO', 2, 1, '191032', 'ADMINISTRACIÓN', 10, '', '953200043', '191032@unamba.edu.pe\r'),
(68, '2023-2', '73604030', 'MOLINA', 'MUÑOZ', 'ROSA GISELA', 2, 1, '191035', 'ADMINISTRACIÓN', 10, '', '973059207', '191035@unamba.edu.pe\r'),
(69, '2023-2', '72386839', 'MOREANO', 'PANIURA', 'CINTYA ISABEL', 2, 1, '191036', 'ADMINISTRACIÓN', 9, '', '992824137', '191036@unamba.edu.pe\r'),
(70, '2023-2', '74208959', 'PANEBRA', 'PIZARRO', 'DELACRUZ', 1, 1, '191041', 'ADMINISTRACIÓN', 10, '', '918570626', '191041@unamba.edu.pe\r'),
(71, '2023-2', '77021422', 'QUISPE', 'MIRAYA', 'IVANA', 2, 1, '191045', 'ADMINISTRACIÓN', 8, '', '916053998', '191045@unamba.edu.pe\r'),
(72, '2023-2', '79136699', 'RIOS', 'LEON', 'MEDALID', 2, 1, '191049', 'ADMINISTRACIÓN', 10, '', '999435734', '191049@unamba.edu.pe\r'),
(73, '2023-2', '76565429', 'ROJAS', 'BECERRA', 'YENIFER LUCERO', 2, 1, '191050', 'ADMINISTRACIÓN', 9, '', '958746254', '191050@unamba.edu.pe\r'),
(74, '2023-2', '74463798', 'ROMAN', 'QUISPE', 'LILIANA', 2, 1, '191051', 'ADMINISTRACIÓN', 10, '', '963266231', '191051@unamba.edu.pe\r'),
(75, '2023-2', '71032325', 'ROQUE', 'QUISPE', 'BRENDA HELEN', 2, 1, '191052', 'ADMINISTRACIÓN', 9, '', '956888037', '191052@unamba.edu.pe\r'),
(76, '2023-2', '75917788', 'VALDEZ', 'VILCAS', 'GLADY SHAYDA', 2, 1, '191056', 'ADMINISTRACIÓN', 10, '', '973740506', '191056@unamba.edu.pe\r'),
(77, '2023-2', '72834903', 'VALVERDE', 'CARRASCO', 'MARIA FRANCISCA', 2, 1, '191057', 'ADMINISTRACIÓN', 10, '', '928521401', '191057@unamba.edu.pe\r'),
(78, '2023-2', '76909126', 'VELASQUEZ', 'GONZALES', 'MISHELL LAURA', 2, 1, '191060', 'ADMINISTRACIÓN', 10, '', '974518858', '191060@unamba.edu.pe\r'),
(79, '2023-2', '73444853', 'ZAMORA', 'MUNARES', 'LUIS MIGUEL', 1, 1, '191061', 'ADMINISTRACIÓN', 10, '', '916374494', '191061@unamba.edu.pe\r'),
(80, '2023-2', '76292002', 'ZANABRIA', 'VERA', 'MELITZA', 2, 1, '191062', 'ADMINISTRACIÓN', 8, '', '917666343', '191062@unamba.edu.pe\r'),
(81, '2023-2', '61747661', 'ZEGARRA', 'CASABLANCA', 'HENRY', 1, 1, '191063', 'ADMINISTRACIÓN', 8, '', '916635502', '191063@unamba.edu.pe\r'),
(82, '2023-2', '76073707', 'ALATA', 'CONTRERAS', 'ESTEFANY', 2, 1, '192001', 'ADMINISTRACIÓN', 9, '', '917981157', '192001@unamba.edu.pe\r'),
(83, '2023-2', '75101108', 'ALVAREZ', 'CHIPANA', 'EUSI BONI', 1, 1, '192002', 'ADMINISTRACIÓN', 8, '', '944020828', '192002@unamba.edu.pe\r'),
(84, '2023-2', '74499818', 'ARENAZA', 'CCACCYA', 'WENDY', 2, 1, '192004', 'ADMINISTRACIÓN', 9, '', '938274294', '192004@unamba.edu.pe\r'),
(85, '2023-2', '76195242', 'ARQQUE', 'PIZARRO', 'CINTHIA ALEXANDRA', 2, 1, '192005', 'ADMINISTRACIÓN', 8, '', '949121413', '192005@unamba.edu.pe\r'),
(86, '2023-2', '76292093', 'AVENDAÑO', 'QUINTANA', 'MILI MILUSKA', 2, 1, '192006', 'ADMINISTRACIÓN', 8, '', '921209342', '192006@unamba.edu.pe\r'),
(87, '2023-2', '72264160', 'BARRIENTOS', 'ORTIZ', 'KAREN KAROL', 2, 1, '192007', 'ADMINISTRACIÓN', 10, '', '900280402', '192007@unamba.edu.pe\r'),
(88, '2023-2', '73664205', 'BRICEÑO', 'SALAS', 'ESTEFANY INDIRA', 2, 1, '192009', 'ADMINISTRACIÓN', 9, '', '928029541', '192009@unamba.edu.pe\r'),
(89, '2023-2', '71526117', 'CALLALLI', 'BEDOYA', 'NICOLE MELINA', 2, 1, '192011', 'ADMINISTRACIÓN', 8, '', '941450601', '192011@unamba.edu.pe\r'),
(90, '2023-2', '71805841', 'CAMACHO', 'BATALLANOS', 'MARIA', 2, 1, '192013', 'ADMINISTRACIÓN', 9, '', '973685458', '192013@unamba.edu.pe\r'),
(91, '2023-2', '71333963', 'CASTAÑEDA', 'CASTAÑEDA', 'SANDRA MIRELLA', 2, 1, '192015', 'ADMINISTRACIÓN', 8, '', '929713339', '192015@unamba.edu.pe\r'),
(92, '2023-2', '75627247', 'CASTRO', 'HUARANCCA', 'YASBETH AMELY', 2, 1, '192016', 'ADMINISTRACIÓN', 9, '', '977991527', '192016@unamba.edu.pe\r'),
(93, '2023-2', '72092762', 'CAYTUIRO', 'BAUTISTA', 'MARILUZ', 2, 1, '192017', 'ADMINISTRACIÓN', 9, '', '919167254', '192017@unamba.edu.pe\r'),
(94, '2023-2', '73990976', 'ATAHUA', 'HUILLCAÑAHUI', 'ANABEL HANYELA', 2, 1, '201001', 'ADMINISTRACIÓN', 8, '', '928112129', '201001@unamba.edu.pe\r'),
(95, '2023-2', '71082230', 'CERDA', 'ARARANJA', 'INDIRA ', 2, 1, '201002', 'ADMINISTRACIÓN', 8, '', '994644750', '201002@unamba.edu.pe\r'),
(96, '2023-2', '74748196', 'DIAZ', 'LAYME', 'PAMELA', 2, 1, '201005', 'ADMINISTRACIÓN', 8, '', '958588022', '201005@unamba.edu.pe\r'),
(97, '2023-2', '73662515', 'PAGAZA', 'TAIPE', 'RUTH ', 2, 1, '201009', 'ADMINISTRACIÓN', 8, '', '955785828', '201009@unamba.edu.pe\r'),
(98, '2023-2', '73801316', 'QUISPE', 'AUCAILLA', 'JOHN JOSUE ', 1, 1, '201010', 'ADMINISTRACIÓN', 9, '', '943476464', '201010@unamba.edu.pe\r'),
(99, '2023-2', '75334935', 'RIVERA', 'GUTIERREZ', 'ANEL ANAHI ', 2, 1, '201013', 'ADMINISTRACIÓN', 8, '', '957157387', '201013@unamba.edu.pe\r'),
(100, '2023-2', '77383366', 'VELASQUE', 'CARRASCO', 'KARIM YULIBETH ', 2, 1, '201017', 'ADMINISTRACIÓN', 8, '', '929507857', '201017@unamba.edu.pe\r'),
(101, '2023-2', '75698271', 'ACHAICA', 'SOTO', 'DANY CRISTHIAN', 1, 1, '201157', 'ADMINISTRACIÓN', 8, '', '939884363', '201157@unamba.edu.pe\r'),
(102, '2023-2', '76236202', 'GUIZADO', 'VEGA', 'NOEMI', 2, 1, '201158', 'ADMINISTRACIÓN', 8, '', '963715701', '201158@unamba.edu.pe\r'),
(103, '2023-2', '74651588', 'MIRANDA', 'CRUZ', 'GIOVANNI LUTER', 1, 1, '201161', 'ADMINISTRACIÓN', 8, '', '978505790', '201161@unamba.edu.pe\r'),
(104, '2023-2', '45894519', 'CARDENAS', 'CASTRO', 'JULIA NATALI', 2, 1, '061104', 'ADMINISTRACIÓN', 10, '', '993884091', '061104@unamba.edu.pe\r'),
(105, '2023-2', '73577727', 'BUITRON', 'BARRETO', 'DIANA ELIZABETH', 2, 1, '101007', 'ADMINISTRACIÓN', 10, '', '974669714', '101007@unamba.edu.pe\r'),
(106, '2023-2', '70831354', 'WARTHON', 'AGUIRRE', 'JANNELLY SHARYD', 2, 1, '101049', 'ADMINISTRACIÓN', 10, '', '957341967', '101049@unamba.edu.pe\r'),
(107, '2023-2', '43496041', 'FERRO', 'CHUMPISUCA', 'BIVIANA', 2, 1, '112019', 'ADMINISTRACIÓN', 10, '', '962479190', '112019@unamba.edu.pe\r'),
(108, '2023-2', '70843403', 'GUTIERREZ', 'MIRANDA', 'YENIFER', 2, 1, '131027', 'ADMINISTRACIÓN', 10, '', '931713897', '131027@unamba.edu.pe\r'),
(109, '2023-2', '48183840', 'VILLAFUERTE', 'HUANACO', 'FRANCISCO', 1, 1, '131047', 'ADMINISTRACIÓN', 10, '', '929961813', '131047@unamba.edu.pe\r'),
(110, '2023-2', '73129024', 'MORALES', 'BAZAN', 'IRVIN ROYER', 1, 1, '132020', 'ADMINISTRACIÓN', 9, '', '961235845', '132020@unamba.edu.pe\r'),
(111, '2023-2', '70780501', 'ATIQUIPA', 'MENA', 'JOSE CARLOS', 1, 1, '141007', 'ADMINISTRACIÓN', 10, '', '910945541', '141007@unamba.edu.pe\r'),
(112, '2023-2', '47260410', 'DAVALOS', 'JARA', 'CATALINA', 2, 1, '141019', 'ADMINISTRACIÓN', 8, '', '962930730', '141019@unamba.edu.pe\r'),
(113, '2023-2', '48103667', 'ALFARO', 'TORRES', 'FREDY QUEINER', 1, 1, '152001', 'ADMINISTRACIÓN', 10, '', '991530249', '152001@unamba.edu.pe\r'),
(114, '2023-2', '47120993', 'DURAND', 'PORRAS', 'VIDRIDIANA', 2, 1, '152017', 'ADMINISTRACIÓN', 9, '', '983039131', '152017@unamba.edu.pe\r'),
(115, '2023-2', '73488768', 'GOMEZ', 'TAIPE', 'NICOLAS', 1, 1, '152019', 'ADMINISTRACIÓN', 10, '', '993709091', '152019@unamba.edu.pe\r'),
(116, '2023-2', '76479587', 'HUAYLLAS', 'MONTESINOS', 'BRYAN MIGUEL', 1, 1, '161026', 'ADMINISTRACIÓN', 9, '', '947825688', '161026@unamba.edu.pe\r'),
(117, '2023-2', '76228054', 'SINCE', 'VILLEGAS', 'JOSE FAUSTINO', 1, 1, '161044', 'ADMINISTRACIÓN', 10, '', '914474479', '161044@unamba.edu.pe\r'),
(118, '2023-2', '71533355', 'ACUÑA', 'HUASHUA', 'SANTIAGO PRUDENCIO', 1, 1, '162001', 'ADMINISTRACIÓN', 8, '', '978474878', '162001@unamba.edu.pe\r'),
(119, '2023-2', '71383902', 'CENTENO', 'HUILLCAHUA', 'LIDA', 2, 1, '162011', 'ADMINISTRACIÓN', 9, '', '942067657', '162011@unamba.edu.pe\r'),
(120, '2023-2', '71109568', 'CORDOVA', 'MEZA', 'ISAAC', 1, 1, '162013', 'ADMINISTRACIÓN', 10, '', '983128677', '162013@unamba.edu.pe\r'),
(121, '2023-2', '76657826', 'DAMIAN', 'BENITES', 'DANIEL', 1, 1, '162014', 'ADMINISTRACIÓN', 10, '', '937359272', '162014@unamba.edu.pe\r'),
(122, '2023-2', '76761222', 'GUILLEN', 'GUEVARA', 'MERCEDES', 2, 1, '162021', 'ADMINISTRACIÓN', 9, '', '935889554', '162021@unamba.edu.pe\r'),
(123, '2023-2', '74778177', 'HUAMANI', 'CACERES', 'JOE', 1, 1, '162024', 'ADMINISTRACIÓN', 10, '', '994861598', '162024@unamba.edu.pe\r'),
(124, '2023-2', '76872227', 'HUARACA', 'HUARCAYA', 'YHAM GIMER', 1, 1, '162025', 'ADMINISTRACIÓN', 8, '', '915241190', '162025@unamba.edu.pe\r'),
(125, '2023-2', '76048376', 'LAURA', 'SANTI', 'ESMERALDA', 2, 1, '162031', 'ADMINISTRACIÓN', 10, '', '925387440', '162031@unamba.edu.pe\r'),
(126, '2023-2', '48815463', 'SEGOVIA', 'ZELA', 'AMERICO', 1, 1, '162048', 'ADMINISTRACIÓN', 9, '', '945289377', '162048@unamba.edu.pe\r'),
(127, '2023-2', '75613182', 'AYMARA', 'GONZALEZ', 'ANA GABRIELA', 2, 1, '171005', 'ADMINISTRACIÓN', 10, '', '929302099', '171005@unamba.edu.pe\r'),
(128, '2023-2', '76273392', 'CABRERA', 'TICONA', 'FLORENCIO', 1, 1, '171006', 'ADMINISTRACIÓN', 9, '', '920209872', '171006@unamba.edu.pe\r'),
(129, '2023-2', '61222458', 'GUILLEN', 'GUEVARA', 'FLOR MARGOTH', 2, 1, '171020', 'ADMINISTRACIÓN', 9, '', '918572700', '171020@unamba.edu.pe\r'),
(130, '2023-2', '74276986', 'HUAMANI', 'SUEL', 'RIQUELME', 1, 1, '171025', 'ADMINISTRACIÓN', 10, '', '964672613', '171025@unamba.edu.pe\r'),
(131, '2023-2', '71657088', 'PUMA', 'CAYLLAHUA', 'JUAN', 1, 1, '171035', 'ADMINISTRACIÓN', 10, '', '950378273', '171035@unamba.edu.pe\r'),
(132, '2023-2', '75939473', 'QUINTANA', 'HUAYAPA', 'LUIS FERNANDO', 1, 1, '171037', 'ADMINISTRACIÓN', 9, '', '931164696', '171037@unamba.edu.pe\r'),
(133, '2023-2', '74579996', 'ALVITES', 'GUIZADO', 'JHON BENJAMIN', 1, 1, '172002', 'ADMINISTRACIÓN', 9, '', '935627798', '172002@unamba.edu.pe\r'),
(134, '2023-2', '75275266', 'AYERVE', 'CHIRINOS', 'MAY FLORA', 2, 1, '172009', 'ADMINISTRACIÓN', 10, '', '900091433', '172009@unamba.edu.pe\r'),
(135, '2023-2', '75336275', 'HUARACA', 'LLACHUA', 'JHAN RONALDO', 1, 1, '172020', 'ADMINISTRACIÓN', 9, '', '981566330', '172020@unamba.edu.pe\r'),
(136, '2023-2', '76673686', 'HUARANCCA', 'CAHUANCAMA', 'ESTEFANY LUCERO', 2, 1, '172021', 'ADMINISTRACIÓN', 10, '', '959728184', '172021@unamba.edu.pe\r'),
(137, '2023-2', '76659410', 'RAMOS', 'VALDERRAMA', 'ROEL', 1, 1, '172041', 'ADMINISTRACIÓN', 8, '', '950311835', '172041@unamba.edu.pe\r'),
(138, '2023-2', '74086280', 'SANCHEZ', 'PUMA', 'ALDO ANDRES', 1, 1, '172044', 'ADMINISTRACIÓN', 9, '', '935815605', '172044@unamba.edu.pe\r'),
(139, '2023-2', '73425614', 'SORAS', 'PICHIHUA', 'YESENIA MARIBEL', 2, 1, '172045', 'ADMINISTRACIÓN', 9, '', '916353590', '172045@unamba.edu.pe\r'),
(140, '2023-2', '76329167', 'BATALLANOS', 'SORIA', 'SHANERY LIZETH', 2, 1, '181008', 'ADMINISTRACIÓN', 10, '', '900416034', '181008@unamba.edu.pe\r'),
(141, '2023-2', '75828471', 'GARCIA', 'GONZALES', 'EDITH ROXANA', 2, 1, '181026', 'ADMINISTRACIÓN', 8, '', '928417339', '181026@unamba.edu.pe\r'),
(142, '2023-2', '72169946', 'HUAMANI', 'VILLCAS', 'MISAEL ANTONY', 1, 1, '181028', 'ADMINISTRACIÓN', 9, '', '955866461', '181028@unamba.edu.pe\r'),
(143, '2023-2', '72938032', 'LEON', 'CABALLERO', 'KEYLA', 2, 1, '181033', 'ADMINISTRACIÓN', 10, '', '931024835', '181033@unamba.edu.pe\r'),
(144, '2023-2', '73664159', 'LUNA', 'SIERRA', 'SANDRA', 2, 1, '181037', 'ADMINISTRACIÓN', 8, '', '915222381', '181037@unamba.edu.pe\r'),
(145, '2023-2', '71297337', 'MONZON', 'FERRO', 'KATY', 2, 1, '181042', 'ADMINISTRACIÓN', 9, '', '910652651', '181042@unamba.edu.pe\r'),
(146, '2023-2', '71739134', 'PANEBRA', 'CONDORHUACHO', 'ANDERSON', 1, 1, '181045', 'ADMINISTRACIÓN', 10, '', '921048134', '181045@unamba.edu.pe\r'),
(147, '2023-2', '76090338', 'SANCHEZ', 'CCASANI', 'KELLY ANAIZ', 2, 1, '181054', 'ADMINISTRACIÓN', 8, '', '931110889', '181054@unamba.edu.pe\r'),
(148, '2023-2', '60347614', 'VELILLE', 'LAYME', 'ANA BELY', 2, 1, '181595', 'ADMINISTRACIÓN', 10, '', '929516776', '181595@unamba.edu.pe\r'),
(149, '2023-2', '70438173', 'ANAMPA', 'YALLI', 'SHADIA', 2, 1, '182003', 'ADMINISTRACIÓN', 10, '', '932524434', '182003@unamba.edu.pe\r'),
(150, '2023-2', '73321802', 'ANCCO', 'CHANCAHUAÑA', 'JHONATAN', 1, 1, '182004', 'ADMINISTRACIÓN', 10, '', '969527285', '182004@unamba.edu.pe\r'),
(151, '2023-2', '71530706', 'ARCE', ' CAMACHO', 'ELIAN YITHVY', 1, 1, '182005', 'ADMINISTRACIÓN', 10, '', '988686318', '182005@unamba.edu.pe\r'),
(152, '2023-2', '73463311', 'ARCIBIA', 'ARIAS', 'JHON KEVIN', 1, 1, '182006', 'ADMINISTRACIÓN', 10, '', '925892700', '182006@unamba.edu.pe\r'),
(153, '2023-2', '74552469', 'BENITO', 'PUMAPILLO', 'LUCIO', 1, 1, '182009', 'ADMINISTRACIÓN', 10, '', '999314821', '182009@unamba.edu.pe\r'),
(154, '2023-2', '74752934', 'BORDA', 'ESPINOZA', 'RONALD', 1, 1, '182010', 'ADMINISTRACIÓN', 10, '', '901556013', '182010@unamba.edu.pe\r'),
(155, '2023-2', '77678196', 'CARBAJAL', 'HERRERA', 'YURY', 1, 1, '182012', 'ADMINISTRACIÓN', 9, '', '928394046', '182012@unamba.edu.pe\r'),
(156, '2023-2', '73704192', 'CERVANTES', 'MENDOZA', 'MERIBETH SHARMELY', 2, 1, '182015', 'ADMINISTRACIÓN', 9, '', '956767232', '182015@unamba.edu.pe\r'),
(157, '2023-2', '74076101', 'CHAVEZ', 'CAMARGO', 'ROGERS IVAN', 1, 1, '182018', 'ADMINISTRACIÓN', 9, '', '925088588', '182018@unamba.edu.pe\r'),
(158, '2023-2', '75417189', 'SEGOVIA', 'PANIURA', 'JIMENA GRISELDA', 2, 0, '191113', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '972979676', '191113@unamba.edu.pe\r'),
(159, '2023-2', '71800974', 'TEVES', 'VARGAS', 'CLENY', 2, 0, '191116', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '935424183', '191116@unamba.edu.pe\r'),
(160, '2023-2', '79950566', 'CRUZ', 'CHIPANE', 'YOLIDA', 2, 0, '192072', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '952958689', '192072@unamba.edu.pe\r'),
(161, '2023-2', '75474097', 'GUTIERREZ', 'SERRANO', 'SAIDA KARIN', 2, 0, '192078', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '994442908', '192078@unamba.edu.pe\r'),
(162, '2023-2', '71781825', 'JURO', 'ZAVALA', 'ALDY', 2, 0, '192082', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '930193960', '192082@unamba.edu.pe\r'),
(163, '2023-2', '71780466', 'PEÑA', 'HUALLPA', 'CARMEN ROSA', 2, 0, '192093', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '919166145', '192093@unamba.edu.pe\r'),
(164, '2023-2', '76726099', 'RIVERA', 'CONTRERAS', 'ILIANA PATRICIA', 2, 0, '192099', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '922168276', '192099@unamba.edu.pe\r'),
(165, '2023-2', '70762472', 'ROJAS', 'GOMEZ', 'ROSIO', 2, 0, '192101', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '925705947', '192101@unamba.edu.pe\r'),
(166, '2023-2', '73383232', 'AZURIN', 'HUMAN', 'MAYERLIN ROSARIO', 2, 0, '201021', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '965896244', '201021@unamba.edu.pe\r'),
(167, '2023-2', '43694757', 'MONTESINOS', 'CHACCARA', 'JULIO', 1, 0, '071142', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '957143923', '071142@unamba.edu.pe\r'),
(168, '2023-2', '45352078', 'VALDERRAMA', 'ZANABRIA', 'ALEX CRISTIAN', 1, 0, '072229', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '931114913', '072229@unamba.edu.pe\r'),
(169, '2023-2', '43430110', 'SANCHEZ', 'VALDERRAMA', 'LUIS ALBERTO', 1, 0, '081207', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '967274911', '081207@unamba.edu.pe\r'),
(170, '2023-2', '70778476', 'LLACCHUA', 'MOLINA', 'LUISA', 2, 0, '102078', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '963918258', '102078@unamba.edu.pe\r'),
(171, '2023-2', '70764877', 'MACCAPA', 'CHANCA', 'XIOMARA', 2, 0, '102079', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '994525213', '102079@unamba.edu.pe\r'),
(172, '2023-2', '71474578', 'VERA', 'GUTIERREZ', 'JUAN CARLOS', 1, 0, '112087', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '983656872', '112087@unamba.edu.pe\r'),
(173, '2023-2', '71043528', 'FERRO', 'AGUILAR', 'VIKY', 2, 0, '121067', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '930822815', '121067@unamba.edu.pe\r'),
(174, '2023-2', '60016182', 'PUMACAYO', 'CUELLAR', 'JOHN KENNEDY', 1, 0, '132042', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '973133064', '132042@unamba.edu.pe\r'),
(175, '2023-2', '73972910', 'JURO', 'GARCIA', 'JOSEHP EMILL', 1, 0, '151073', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '953743825', '151073@unamba.edu.pe\r'),
(176, '2023-2', '72374698', 'JUAREZ', 'ROMAN', 'SOZIMO', 1, 0, '152064', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '925119901', '152064@unamba.edu.pe\r'),
(177, '2023-2', '72511116', 'BARRETO', 'PRADO', 'MARIA DEL CARMEN', 2, 0, '161052', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '901997756', '161052@unamba.edu.pe\r'),
(178, '2023-2', '77292177', 'ROMAN', 'CHAUCCA', 'FRANKLIN', 1, 0, '161076', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '997044688', '161076@unamba.edu.pe\r'),
(179, '2023-2', '73946672', 'SOEL', 'VARGAS', 'FRANKLIN', 1, 0, '161080', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '917205758', '161080@unamba.edu.pe\r'),
(180, '2023-2', '71619541', 'CASAVERDE', 'CUELLAR', 'DEYBERT ENRIQUE', 1, 0, '162066', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '915037838', '162066@unamba.edu.pe\r'),
(181, '2023-2', '71739128', 'CHOQUE', 'GOMEZ', 'ROYER', 1, 0, '162070', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '917652471', '162070@unamba.edu.pe\r'),
(182, '2023-2', '76038777', 'SALCEDO', 'QUINTANA', 'MARI MAR', 2, 0, '162081', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '929008274', '162081@unamba.edu.pe\r'),
(183, '2023-2', '70780299', 'JAUREGUI', 'NUÑEZ', 'ELIAS', 1, 0, '171069', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '915148460', '171069@unamba.edu.pe\r'),
(184, '2023-2', '74141151', 'LOPEZ', 'MOSQUEIRA', 'LUIS ANYHELO', 1, 0, '171072', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '920491274', '171072@unamba.edu.pe\r'),
(185, '2023-2', '70772182', 'PAMPAÑAUPA', 'MOREL', 'SANDRA', 2, 0, '171076', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '950728933', '171076@unamba.edu.pe\r'),
(186, '2023-2', '77072418', 'QUISPITUPA', 'RAMOS', 'IDALIA', 2, 0, '171080', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '940656173', '171080@unamba.edu.pe\r'),
(187, '2023-2', '77048562', 'CRUZ', 'ESCALANTE', 'LIZBETH', 2, 0, '191080', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '973507424', '191080@unamba.edu.pe\r'),
(188, '2023-2', '61747680', 'MOLINA', 'LLACHUA', 'JOSE SIMON', 1, 0, '201271', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '910277495', '201271@unamba.edu.pe\r'),
(189, '2023-2', '77480427', 'FELIX', 'LLACCTA', 'ANDREA LUDY', 2, 0, '181085', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '925871351', '181085@unamba.edu.pe\r'),
(190, '2023-2', '76731472', 'ROMERO', 'SILVESTRE', 'SHARON', 2, 0, '182103', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '913168254', '182103@unamba.edu.pe\r'),
(191, '2023-2', '73440523', 'ALVIS', 'TOMATEO', 'NANCY', 2, 0, '181067', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '978898917', '181067@unamba.edu.pe\r'),
(192, '2023-2', '74402781', 'ROJAS', 'SOTO', 'ROY MIGUEL ALEJANDRO', 1, 0, '182102', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '979673036', '182102@unamba.edu.pe\r'),
(193, '2023-2', '74871552', 'ALAMO', 'PEÑA', 'EDITH ESTEFANY', 2, 0, '191065', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '921297889', '191065@unamba.edu.pe\r'),
(194, '2023-2', '76181106', 'CARRASCO', 'ICARAYME', 'JOSE ANTONIO', 1, 0, '181078', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '931190591', '181078@unamba.edu.pe\r'),
(195, '2023-2', '77682088', 'CHOCCATA', 'RAMOS', 'CARMEN', 2, 0, '182075', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '929948840', '182075@unamba.edu.pe\r'),
(196, '2023-2', '73301117', 'ALLCA', 'SALAS', 'SHIRLY CORAIMA', 2, 0, '172051', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '921995316', '172051@unamba.edu.pe\r'),
(197, '2023-2', '73446384', 'BRICEÑO', 'EZPINOZA', 'MILISSA', 2, 0, '172055', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '925703374', '172055@unamba.edu.pe\r'),
(198, '2023-2', '47851167', 'CHICLLA', 'SIERRA', 'NOE', 1, 0, '172061', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '950333996', '172061@unamba.edu.pe\r'),
(199, '2023-2', '76725607', 'QUISPE', 'MARTINEZ', 'ALICIA', 2, 0, '172078', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '930902065', '172078@unamba.edu.pe\r'),
(200, '2023-2', '73512569', 'SORAS', 'NINA', 'JANETH', 2, 0, '172087', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '928240040', '172087@unamba.edu.pe\r'),
(201, '2023-2', '70082815', 'ALVAREZ', 'JOSEC', 'MILTON', 1, 0, '181065', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '994441206', '181065@unamba.edu.pe\r'),
(202, '2023-2', '73609405', 'BORDA', 'VARGAS', 'SIDANE STALYN', 1, 0, '181073', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '927905944', '181073@unamba.edu.pe\r'),
(203, '2023-2', '71803075', 'CARHUAS', 'MONZON', 'YULIA STEFHANY', 2, 0, '181077', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '923189039', '181077@unamba.edu.pe\r'),
(204, '2023-2', '70752383', 'CASTRO', 'VELASQUE', 'ROSMERI', 2, 0, '181080', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '987211067', '181080@unamba.edu.pe\r'),
(205, '2023-2', '78721162', 'GUEVARA', 'CARBAJAL', 'ERNESTO', 1, 0, '181089', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '950692844', '181089@unamba.edu.pe\r'),
(206, '2023-2', '75169132', 'HUAMANI', 'VALENZUELA', 'ANALY', 2, 0, '181091', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '986177494', '181091@unamba.edu.pe\r'),
(207, '2023-2', '76213879', 'HUAMANÑAHUI', 'GONZALES', 'NOEMI', 2, 0, '181092', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '964878817', '181092@unamba.edu.pe\r'),
(208, '2023-2', '74833847', 'LINASCA', 'VALDERREMA', 'WILLY DIEGO', 1, 0, '181094', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '965767015', '181094@unamba.edu.pe\r'),
(209, '2023-2', '61673449', 'MEJIA', 'HURTADO', 'RUTH RODE', 2, 0, '181095', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '917023494', '181095@unamba.edu.pe\r'),
(210, '2023-2', '77385201', 'ORTEGA', 'TELLO', 'JHON JOEL', 1, 0, '181100', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '954045841', '181100@unamba.edu.pe\r'),
(211, '2023-2', '71713454', 'QUISPE', 'CALLA', 'ANABEL', 2, 0, '181108', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '929878964', '181108@unamba.edu.pe\r'),
(212, '2023-2', '77017903', 'VARGAS', 'HILARES', 'EVA LUCIA', 2, 0, '181122', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '912809144', '181122@unamba.edu.pe\r'),
(213, '2023-2', '71935406', 'VEGA', 'ORTIZ', 'MARIA AURELIA', 2, 0, '181123', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '934043250', '181123@unamba.edu.pe\r'),
(214, '2023-2', '76511506', 'BLAS', 'CHACON', 'DINO', 1, 0, '182065', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '935367985', '182065@unamba.edu.pe\r'),
(215, '2023-2', '76329040', 'CARRASCO', 'ALTAMIRANO', 'CRISBER', 1, 0, '182068', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '916338334', '182068@unamba.edu.pe\r'),
(216, '2023-2', '73754815', 'CASTILLO', 'TOTOCAYO', 'JHESMIN KATHERIN', 1, 0, '182071', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '913561943', '182071@unamba.edu.pe\r'),
(217, '2023-2', '76509246', 'GONZALES', 'PANIURA', 'ZORAIDA', 2, 0, '182082', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '974110731', '182082@unamba.edu.pe\r'),
(218, '2023-2', '70430738', 'HUAMANI', 'QUISPE', 'LUIS ALFREDO', 1, 0, '182087', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '981729607', '182087@unamba.edu.pe\r'),
(219, '2023-2', '72938041', 'HUARI', 'ARROYO', 'SHERMI DIANA CCOYLLOR', 2, 0, '182090', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '901545991', '182090@unamba.edu.pe\r'),
(220, '2023-2', '76502802', 'MENEJES', 'RAMIREZ', 'MARCO ANTONIO', 1, 0, '182095', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '973144251', '182095@unamba.edu.pe\r'),
(221, '2023-2', '75746864', 'SERRANO', 'TOMAYLLA', 'MELVIN JORGE', 1, 0, '182109', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '958223886', '182109@unamba.edu.pe\r'),
(222, '2023-2', '81047154', 'SUMARRIVA', 'UTANI', 'LUJHEFSCY MYLU', 2, 0, '182112', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '919002853', '182112@unamba.edu.pe\r'),
(223, '2023-2', '75729162', 'VALENZUELA', 'CAYTUIRO', 'EVELYNE NANCY', 2, 0, '182117', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '913385929', '182117@unamba.edu.pe\r'),
(224, '2023-2', '76297917', 'AMAO', 'FLORES', 'RICKY MICHAEL', 1, 0, '191066', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '900435257', '191066@unamba.edu.pe\r'),
(225, '2023-2', '61294739', 'CAJAHUARINGA', 'CUEVA', 'ALISON VICTORIA', 2, 0, '191071', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '972558356', '191071@unamba.edu.pe\r'),
(226, '2023-2', '71749260', 'CCAÑAHUA', 'CAMARGO', 'MILAGROS', 2, 0, '191075', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '918849978', '191075@unamba.edu.pe\r'),
(227, '2023-2', '77022603', 'CONTRERAS', 'PANIURA', 'YULIANI', 2, 0, '191079', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '935715525', '191079@unamba.edu.pe\r'),
(228, '2023-2', '71412019', 'HUILLCAHUA', 'SIERRA', 'DORCA BETZABET', 2, 0, '191092', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '935029278', '191092@unamba.edu.pe\r'),
(229, '2023-2', '61580814', 'LLACHUA', 'CASABLANCA', 'GIANELLA JAHAIRA', 2, 0, '191097', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '987377380', '191097@unamba.edu.pe\r'),
(230, '2023-2', '74383209', 'BELTRAN', 'RUIZ', 'JUAN CAYO', 1, 0, '191130', 'INGENIERÍA DE MINAS', 9, '', '933576183', '191130@unamba.edu.pe\r'),
(231, '2023-2', '72882449', 'CARRASCO', 'SAUÑE', 'ELVIS', 1, 0, '191137', 'INGENIERÍA DE MINAS', 8, '', '987067795', '191137@unamba.edu.pe\r'),
(232, '2023-2', '70383312', 'CHACON', 'BEJAR', 'DIEGO', 1, 0, '191140', 'INGENIERÍA DE MINAS', 8, '', '932553635', '191140@unamba.edu.pe\r'),
(233, '2023-2', '73650888', 'CHAUCCA', 'ROMAN', 'ROMEL REYNALDO', 1, 0, '191142', 'INGENIERÍA DE MINAS', 10, '', '920304234', '191142@unamba.edu.pe\r'),
(234, '2023-2', '71741313', 'CUNO', 'CASA', 'ALI ANSELMO', 1, 0, '191147', 'INGENIERÍA DE MINAS', 9, '', '984768232', '191147@unamba.edu.pe\r'),
(235, '2023-2', '77682104', 'HUACHACA', 'GABANCHO', 'LUIS FERNANDO', 1, 0, '191153', 'INGENIERÍA DE MINAS', 9, '', '921464855', '191153@unamba.edu.pe\r'),
(236, '2023-2', '70306312', 'HUAMAN', 'AROHUILLCA', 'NESTOR ANTONIO', 1, 0, '191154', 'INGENIERÍA DE MINAS', 9, '', '950141649', '191154@unamba.edu.pe\r'),
(237, '2023-2', '73383241', 'HUAMAN', 'CCORAHUA', 'ALEXANDER DARIO', 1, 0, '191155', 'INGENIERÍA DE MINAS', 10, '', '942395767', '191155@unamba.edu.pe\r'),
(238, '2023-2', '74042998', 'PUMAPILLO', 'PARCCO', 'EFRAIN', 1, 0, '191170', 'INGENIERÍA DE MINAS', 9, '', '929161526', '191170@unamba.edu.pe\r'),
(239, '2023-2', '70781823', 'ROBLES', 'CARDENAS', 'OSCAR YONATAN', 1, 0, '191173', 'INGENIERÍA DE MINAS', 8, '', '931569976', '191173@unamba.edu.pe\r'),
(240, '2023-2', '71491051', 'ROJAS', 'VENTURA', 'JHONATAN RAPHAEL', 1, 0, '191174', 'INGENIERÍA DE MINAS', 9, '', '950741002', '191174@unamba.edu.pe\r'),
(241, '2023-2', '77466209', 'SOTO', 'LETONA', 'FELISARDO', 1, 0, '191177', 'INGENIERÍA DE MINAS', 8, '', '945195186', '191177@unamba.edu.pe\r'),
(242, '2023-2', '77017950', 'TIAHUALLPA', 'ANGELINO', 'ALEX VALERIO', 1, 0, '191181', 'INGENIERÍA DE MINAS', 9, '', '921211921', '191181@unamba.edu.pe\r'),
(243, '2023-2', '74042240', 'AQUINO', 'AYMARA', 'BRHANDON', 1, 0, '192117', 'INGENIERÍA DE MINAS', 8, '', '930473116', '192117@unamba.edu.pe\r'),
(244, '2023-2', '76959727', 'CCALA', 'CHOQUE', 'MARGOT', 2, 0, '192125', 'INGENIERÍA DE MINAS', 9, '', '927464043', '192125@unamba.edu.pe\r'),
(245, '2023-2', '73854472', 'CUELLAR', 'CARDENAS', 'LIZZETH', 2, 0, '192132', 'INGENIERÍA DE MINAS', 8, '', '956239914', '192132@unamba.edu.pe\r'),
(246, '2023-2', '71611136', 'MOSCOSO', 'LOPEZ', 'FANNY', 2, 0, '192151', 'INGENIERÍA DE MINAS', 8, '', '916628688', '192151@unamba.edu.pe\r'),
(247, '2023-2', '75224815', 'QUISPITUPA', 'RIVAS', 'YELTSIN JOSUE', 1, 0, '192159', 'INGENIERÍA DE MINAS', 8, '', '929336697', '192159@unamba.edu.pe\r'),
(248, '2023-2', '71387469', 'RAYME', 'JARA', 'RHOEL ELISEO', 1, 0, '192160', 'INGENIERÍA DE MINAS', 8, '', '955872943', '192160@unamba.edu.pe\r'),
(249, '2023-2', '74463780', 'SULLO', 'HUAMANGA', 'EDITH', 2, 0, '192168', 'INGENIERÍA DE MINAS', 8, '', '930668838', '192168@unamba.edu.pe\r'),
(250, '2023-2', '72198063', 'CORIHUAMANI', 'LIMASCCA', 'SAIR', 1, 0, '201211', 'INGENIERÍA DE MINAS', 8, '', '929296320', '201211@unamba.edu.pe\r'),
(251, '2023-2', '45648868', 'PALOMINO', 'GIL', 'ABEL', 1, 0, '091155', 'INGENIERÍA DE MINAS', 10, '', '916733653', '091155@unamba.edu.pe\r'),
(252, '2023-2', '73219803', 'ROMAN', 'CHAUCCA', 'FRITS EULER', 1, 0, '121130', 'INGENIERÍA DE MINAS', 10, '', '950707396', '121130@unamba.edu.pe\r'),
(253, '2023-2', '73704164', 'CARRASCO', 'SIERRA', 'DANNY', 1, 0, '151123', 'INGENIERÍA DE MINAS', 10, '', '983917039', '151123@unamba.edu.pe\r'),
(254, '2023-2', '74233338', 'COSIO', 'PALOMINO', 'ERICK DAIVIS', 1, 0, '152091', 'INGENIERÍA DE MINAS', 9, '', '916381600', '152091@unamba.edu.pe\r'),
(255, '2023-2', '48067380', 'OCSA', 'CHALLCO', 'RENATO', 1, 0, '152101', 'INGENIERÍA DE MINAS', 10, '', '964100389', '152101@unamba.edu.pe\r'),
(256, '2023-2', '71782192', 'FERREL', 'TAPIA', 'HANDY DENISS', 1, 0, '161096', 'INGENIERÍA DE MINAS', 8, '', '925640547', '161096@unamba.edu.pe\r'),
(257, '2023-2', '73757006', 'JARA', 'COLLANTES', 'ALEX JORGE', 1, 0, '161103', 'INGENIERÍA DE MINAS', 8, '', '946753027', '161103@unamba.edu.pe\r'),
(258, '2023-2', '76523534', 'SANCHEZ', 'PUMACAYO', 'JEHAN BRANCO', 1, 0, '162119', 'INGENIERÍA DE MINAS', 9, '', '965106460', '162119@unamba.edu.pe\r'),
(259, '2023-2', '75230167', 'VERA', 'HUAMANI', 'JESUS MANUEL', 1, 0, '162128', 'INGENIERÍA DE MINAS', 10, '', '910987234', '162128@unamba.edu.pe\r'),
(260, '2023-2', '71298811', 'ACHAICA', 'AGUILAR', 'SAUL', 1, 0, '171084', 'INGENIERÍA DE MINAS', 10, '', '921212959', '171084@unamba.edu.pe\r'),
(261, '2023-2', '73224968', 'CABRERA', 'ALVARACIN', 'AGUSTIN', 1, 0, '171093', 'INGENIERÍA DE MINAS', 10, '', '931708006', '171093@unamba.edu.pe\r'),
(262, '2023-2', '74353734', 'GUILLEN', 'UMERES', 'YUDIÑO', 1, 0, '171104', 'INGENIERÍA DE MINAS', 9, '', '973694170', '171104@unamba.edu.pe\r'),
(263, '2023-2', '73587703', 'HUAMANGA', 'SANDOVAL', 'CRISTIAN', 1, 0, '171106', 'INGENIERÍA DE MINAS', 8, '', '926435502', '171106@unamba.edu.pe\r'),
(264, '2023-2', '77081133', 'HUAMANI', 'SERRANO', 'DAVID', 1, 0, '171107', 'INGENIERÍA DE MINAS', 8, '', '928942037', '171107@unamba.edu.pe\r'),
(265, '2023-2', '74085106', 'VELASQUEZ', 'ALVITES', 'LEIDY SHARMELY', 2, 0, '171126', 'INGENIERÍA DE MINAS', 10, '', '925331614', '171126@unamba.edu.pe\r'),
(266, '2023-2', '75592166', 'MARTINEZ', 'RAMOS', 'EDGAR EDUARDO', 1, 0, '172110', 'INGENIERÍA DE MINAS', 10, '', '950068859', '172110@unamba.edu.pe\r'),
(267, '2023-2', '77033324', 'ALBACALLE', 'BELLOTA', 'ITALA', 2, 0, '181125', 'INGENIERÍA DE MINAS', 10, '', '948320537', '181125@unamba.edu.pe\r'),
(268, '2023-2', '73659522', 'BARRIOS', 'SUBELETE', 'AURELIANO', 1, 0, '181133', 'INGENIERÍA DE MINAS', 9, '', '938970756', '181133@unamba.edu.pe\r'),
(269, '2023-2', '77214012', 'CHECCLLO', 'AYMARA', 'URIEL ORESTES', 1, 0, '181137', 'INGENIERÍA DE MINAS', 9, '', '900078128', '181137@unamba.edu.pe\r'),
(270, '2023-2', '60324385', 'CHUYMA', 'HUAMANI', 'JOEL', 1, 0, '181140', 'INGENIERÍA DE MINAS', 10, '', '982585950', '181140@unamba.edu.pe\r'),
(271, '2023-2', '72866139', 'GARCIA', 'CONDE', 'GERENI DUSTIN', 1, 0, '181146', 'INGENIERÍA DE MINAS', 8, '', '925906694', '181146@unamba.edu.pe\r'),
(272, '2023-2', '73387948', 'HILARES', 'GERI', 'WILBER', 1, 0, '181150', 'INGENIERÍA DE MINAS', 10, '', '952707345', '181150@unamba.edu.pe\r'),
(273, '2023-2', '76027603', 'MALLMA', 'ATIQUIPA', 'LUIS DAVID', 1, 0, '181157', 'INGENIERÍA DE MINAS', 8, '', '916037701', '181157@unamba.edu.pe\r'),
(274, '2023-2', '71530690', 'MARQUEZ ', 'GUTIERREZ', 'LINCOLN', 1, 0, '181159', 'INGENIERÍA DE MINAS', 8, '', '921120041', '181159@unamba.edu.pe\r'),
(275, '2023-2', '73361735', 'MARQUEZ', 'HUAMAN', 'LUIS ANGEL', 1, 0, '181160', 'INGENIERÍA DE MINAS', 10, '', '932360538', '181160@unamba.edu.pe\r'),
(276, '2023-2', '70745646', 'PIZARRO', 'SANCHEZ', 'JOSE', 1, 0, '181169', 'INGENIERÍA DE MINAS', 10, '', '925903812', '181169@unamba.edu.pe\r'),
(277, '2023-2', '75656658', 'PUMA', 'MENDOZA', 'WILLIAM ERICK', 1, 0, '181171', 'INGENIERÍA DE MINAS', 9, '', '964160363', '181171@unamba.edu.pe\r'),
(278, '2023-2', '78718434', 'QUISPE', 'PANIURA', 'MIGUEL ANGEL', 1, 0, '181173', 'INGENIERÍA DE MINAS', 9, '', '962174224', '181173@unamba.edu.pe\r'),
(279, '2023-2', '72647134', 'TAPIA', 'ROMAN', 'FRANK PERCY', 1, 0, '181180', 'INGENIERÍA DE MINAS', 8, '', '992251803', '181180@unamba.edu.pe\r'),
(280, '2023-2', '60018798', 'VEGA', 'SEQUEIROS', 'JEAN MARIO', 1, 0, '181186', 'INGENIERÍA DE MINAS', 10, '', '927844233', '181186@unamba.edu.pe\r'),
(281, '2023-2', '74537488', 'BORDA', 'MOZO', 'FLOR MILAGROS', 2, 0, '182128', 'INGENIERÍA DE MINAS', 10, '', '925107189', '182128@unamba.edu.pe\r'),
(282, '2023-2', '72238658', 'BRICEÑO', 'LLAMOZA', 'KENT REYNER', 1, 0, '182130', 'INGENIERÍA DE MINAS', 8, '', '921211208', '182130@unamba.edu.pe\r'),
(283, '2023-2', '72085977', 'CHOQUE', 'DAVILA', 'MIGUEL ANGEL', 1, 0, '182137', 'INGENIERÍA DE MINAS', 8, '', '957389288', '182137@unamba.edu.pe\r'),
(284, '2023-2', '71730852', 'HUILLCAPANIURA', 'CCOSCCO', 'EDU ANTONY', 1, 0, '182148', 'INGENIERÍA DE MINAS', 9, '', '921301964', '182148@unamba.edu.pe\r'),
(285, '2023-2', '63362530', 'LLICAHUA', 'CASTAÑEDA', 'NICOLAS', 1, 0, '182151', 'INGENIERÍA DE MINAS', 9, '', '955663474', '182151@unamba.edu.pe\r'),
(286, '2023-2', '75520678', 'LOPEZ', 'SOTO', 'HUGO JUNIOR', 1, 0, '182153', 'INGENIERÍA DE MINAS', 10, '', '951083641', '182153@unamba.edu.pe\r'),
(287, '2023-2', '75239821', 'LUIS', 'ROCA', 'FILOMENO NILTON', 1, 0, '182154', 'INGENIERÍA DE MINAS', 10, '', '953579506', '182154@unamba.edu.pe\r'),
(288, '2023-2', '70803720', 'MOYNA', 'SOTO', 'ROSBEL', 1, 0, '182161', 'INGENIERÍA DE MINAS', 10, '', '932097049', '182161@unamba.edu.pe\r'),
(289, '2023-2', '71651866', 'PAREJA', 'PAIRA', 'DIANA', 2, 0, '182163', 'INGENIERÍA DE MINAS', 9, '', '930176095', '182163@unamba.edu.pe\r'),
(290, '2023-2', '74134106', 'AYQUIPA', 'ARBIETO', 'WILMER RAFAEL', 1, 0, '201033', 'INGENIERÍA DE MINAS', 8, '', '995833672', '201033@unamba.edu.pe\r'),
(291, '2023-2', '74964258', 'SOTOMAYOR', 'VELASQUEZ', 'PERCY EDUARDO', 1, 0, '192167', 'INGENIERÍA DE MINAS', 8, '', '927284327', '192167@unamba.edu.pe\r'),
(292, '2023-2', '75872372', 'KCACHA', 'RAFAELE', 'RIKE MANUEL', 1, 0, '182149', 'INGENIERÍA DE MINAS', 8, '', '926591306', '182149@unamba.edu.pe\r'),
(293, '2023-2', '71745650', 'QUISPE', 'NINA', 'MAURO', 1, 0, '181172', 'INGENIERÍA DE MINAS', 8, '', '932284753', '181172@unamba.edu.pe\r'),
(294, '2023-2', '74578741', 'ALLCCA', 'OSCCO', 'NEHEMIAS ALFREDO', 1, 0, '191124', 'INGENIERÍA DE MINAS', 8, '', '942862903', '191124@unamba.edu.pe\r'),
(295, '2023-2', '76667237', 'CRUZ', 'CAYLLAHUA', 'SHANDE WALTHER', 1, 0, '192131', 'INGENIERÍA DE MINAS', 8, '', '998522152', '192131@unamba.edu.pe\r'),
(296, '2023-2', '73385945', 'HUAMANGA', 'SULLO', 'JOSE LUIS ', 1, 0, '162104', 'INGENIERÍA DE MINAS', 8, '', '916038583', '162104@unamba.edu.pe\r'),
(297, '2023-2', '40051611', 'HANCCO', 'HALIRE', 'DAVID', 1, 0, '122124', 'INGENIERÍA DE MINAS', 9, '', '984174596', '122124@unamba.edu.pe\r'),
(298, '2023-2', '74277030', 'CCOLLCCA', 'HERBAS', 'EDISON', 1, 0, '191138', 'INGENIERÍA DE MINAS', 9, '', '957750886', '191138@unamba.edu.pe\r'),
(299, '2023-2', '60531293', 'HUARACA', 'AGUILAR', 'JEAN FRANCK', 1, 0, '182147', 'INGENIERÍA DE MINAS', 9, '', '921896429', '182147@unamba.edu.pe\r'),
(300, '2023-2', '72169998', 'BENAVENTE', 'MINA', 'FELMI', 1, 0, '172092', 'INGENIERÍA DE MINAS', 9, '', '953519554', '172092@unamba.edu.pe\r'),
(301, '2023-2', '74465984', 'FLORES', 'PORTILLA', 'CARLA DIARY', 2, 0, '191151', 'INGENIERÍA DE MINAS', 9, '', '942471762', '191151@unamba.edu.pe\r'),
(302, '2023-2', '76611627', 'CONTRERAS', 'BUSTINZA', 'JOSE LUIS', 1, 0, '181143', 'INGENIERÍA DE MINAS', 9, '', '966523635', '181143@unamba.edu.pe\r'),
(303, '2023-2', '72850213', 'ROBLES', 'ALVARADO', 'MAX ANDRES', 1, 0, '141133', 'INGENIERÍA DE MINAS', 10, '', '951249581', '141133@unamba.edu.pe\r'),
(304, '2023-2', '73142291', 'VILLAVICENCIO', 'COAQUIRA', 'MARIO HOUSWAN', 1, 0, '162129', 'INGENIERÍA DE MINAS', 10, '', '929350177', '162129@unamba.edu.pe\r'),
(305, '2023-2', '60115014', 'BRAVO', 'QUISPE', 'MIGUEL ANGEL', 1, 0, '182129', 'INGENIERÍA DE MINAS', 10, '', '931187059', '182129@unamba.edu.pe\r'),
(306, '2023-2', '72848536', 'LIMA', 'ARONI', 'ROSINALDO SAMUEL', 1, 0, '181156', 'INGENIERÍA DE MINAS', 10, '', '938964924', '181156@unamba.edu.pe\r'),
(307, '2023-2', '78198483', 'AVALOS', 'DURAN', 'LUZ CLARITA', 2, 0, '191127', 'INGENIERÍA DE MINAS', 10, '', '931153749', '191127@unamba.edu.pe\r'),
(308, '2023-2', '72153200', 'SINCE', 'ARONI', 'GABY', 2, 0, '182176', 'INGENIERÍA DE MINAS', 10, '', '961133668', '182176@unamba.edu.pe\r'),
(309, '2023-2', '75938267', 'TICONA', 'GUIZADO', 'JEAN ADERLY', 1, 0, '181181', 'INGENIERÍA DE MINAS', 10, '', '921047052', '181181@unamba.edu.pe\r'),
(310, '2023-2', '70784337', 'POCCO', 'VILLAVICENCIO', 'WILFREDO', 1, 0, '152103', 'INGENIERÍA DE MINAS', 10, '', '913484524', '152103@unamba.edu.pe\r'),
(311, '2023-2', '72907439', 'CANALES', 'ALVIZURI', 'DANIEL JESUS', 1, 0, '182132', 'INGENIERÍA DE MINAS', 10, '', '956030403', '182132@unamba.edu.pe\r'),
(312, '2023-2', '73474362', 'ALVIS', 'TOMATEO', 'ANA ESTHER', 2, 0, '191125', 'INGENIERÍA DE MINAS', 8, '', '979319255', '191125@unamba.edu.pe\r'),
(313, '2023-2', '70516820', 'ARCOS', 'HUILLCA', 'JHON SMITH', 1, 0, '191126', 'INGENIERÍA DE MINAS', 8, '', '950707143', '191126@unamba.edu.pe\r'),
(314, '2023-2', '75627242', 'ARONE', 'ANGELES', 'JHEYSON JHAIR ', 1, 0, '201054', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '983805438', '201054@unamba.edu.pe\r'),
(315, '2023-2', '76667165', 'CARLIN', 'CONDORI', 'BILLY SEBASTIAN ', 1, 0, '201057', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '946030193', '201057@unamba.edu.pe\r'),
(316, '2023-2', '73639719', 'SOTO', 'HUAMANHORCCO', 'ED NATIVIDO', 1, 0, '201068', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '931279039', '201068@unamba.edu.pe\r'),
(317, '2023-2', '76028633', 'ESCALANTE', 'BENITES', 'JHON AUGUSTO', 1, 0, '201224', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '929343385', '201224@unamba.edu.pe\r'),
(318, '2023-2', '70930383', 'ÑAHUINLLA', 'VELASQUEZ', 'EMERSON', 1, 0, '101131', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '983780014', '101131@unamba.edu.pe\r'),
(319, '2023-2', '70762466', 'GOMEZ', 'CHIPANI', 'ALFREDO', 1, 0, '121163', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '959644760', '121163@unamba.edu.pe\r'),
(320, '2023-2', '73633869', 'ROJAS', 'CARRASCO', 'NILTON', 1, 0, '121178', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '985146700', '121178@unamba.edu.pe\r'),
(321, '2023-2', '47302718', 'SERRANO', 'PEREZ', 'ELI', 1, 0, '121183', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '941194553', '121183@unamba.edu.pe\r'),
(322, '2023-2', '70971644', 'CARRASCO', 'GUIZADO', 'OSCAR', 1, 0, '122155', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '921965942', '122155@unamba.edu.pe\r'),
(323, '2023-2', '75279540', 'PORTILLO', 'GUEVARA', 'ALVARO', 1, 0, '152145', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '972876407', '152145@unamba.edu.pe\r'),
(324, '2023-2', '73441702', 'VALENZUELA', 'REYNAGA', 'DANTE', 1, 0, '152159', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '991935963', '152159@unamba.edu.pe\r'),
(325, '2023-2', '71772911', 'ARONE', 'BARAZORDA', 'FRITZ JOHAN', 1, 0, '161130', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '941215482', '161130@unamba.edu.pe\r'),
(326, '2023-2', '70440683', 'CHOQUEHUALLPA', 'HURTADO', 'OSCAR ALCIDES', 1, 0, '161139', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '965335422', '161139@unamba.edu.pe\r'),
(327, '2023-2', '71735032', 'HUAMAN', 'AMPUERO', 'JOSELYN', 2, 0, '161146', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '928936882', '161146@unamba.edu.pe\r'),
(328, '2023-2', '73859340', 'PANIURA', 'GONZALES', 'EDY JHON', 1, 0, '161159', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '953680120', '161159@unamba.edu.pe\r'),
(329, '2023-2', '74418072', 'BUSTINZA', 'MENDOZA', 'JONATHAN', 1, 0, '162134', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '916483201', '162134@unamba.edu.pe\r'),
(330, '2023-2', '48395410', 'CHAQQUERE', 'REA', 'JOSE', 1, 0, '162140', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '968946598', '162140@unamba.edu.pe\r'),
(331, '2023-2', '71798973', 'CHIPA', 'CARDENAS', 'ALEXANDHER', 1, 0, '162141', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '927852607', '162141@unamba.edu.pe\r'),
(332, '2023-2', '75914563', 'HUASHUAYO', 'MIRANDA', 'ELIAS', 1, 0, '162158', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '926322896', '162158@unamba.edu.pe\r'),
(333, '2023-2', '76361603', 'OSCCO', 'CCUIRO', 'SMIT', 1, 0, '162163', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '914143908', '162163@unamba.edu.pe\r'),
(334, '2023-2', '74312900', 'VALVERDE', 'RAMIREZ', 'JUAN CARLOS', 1, 0, '162179', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '915231431', '162179@unamba.edu.pe\r'),
(335, '2023-2', '73531077', 'CASTAÑEDA', 'PARI', 'KAREN SHEILA', 2, 0, '171137', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '964145679', '171137@unamba.edu.pe\r'),
(336, '2023-2', '73741315', 'CHACON', 'MESCCO', 'SAANDRA', 2, 0, '171140', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '970276219', '171140@unamba.edu.pe\r'),
(337, '2023-2', '71918860', 'HUAMAN', 'PIPA', 'GREGORI STEVEN ALDO', 1, 0, '171152', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '938533995', '171152@unamba.edu.pe\r'),
(338, '2023-2', '70775130', 'JIMENEZ', 'ARONE', 'ALDINN KEENNEHT', 1, 0, '171156', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '935698266', '171156@unamba.edu.pe\r');
INSERT INTO `unamba_docentes` (`Id`, `SEMESTRE`, `DNI`, `APPATERNO`, `APMATERNO`, `NOMBRES`, `SEXO`, `IdEP`, `CODIGO`, `EP`, `CICLO`, `DIRECC`, `TELEF`, `CORREO`) VALUES
(339, '2023-2', '77821532', 'MEZA', 'TANTALLA', 'YENNIFER', 2, 0, '171159', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '968101205', '171159@unamba.edu.pe\r'),
(340, '2023-2', '77695871', 'PAREJA', 'ARREDONDO', 'FLOR CINTIA', 2, 0, '171167', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '921455402', '171167@unamba.edu.pe\r'),
(341, '2023-2', '71798288', 'SANCHEZ', 'ESPINOZA', 'ROSMERY', 2, 0, '171175', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '900597199', '171175@unamba.edu.pe\r'),
(342, '2023-2', '76090321', 'ATAHUA', 'VILLEGAS', 'SUKER', 1, 0, '172130', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '999505779', '172130@unamba.edu.pe\r'),
(343, '2023-2', '73650911', 'LEO', 'HUAMANI', 'LUIS FERNANDO', 1, 0, '172154', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '987298068', '172154@unamba.edu.pe\r'),
(344, '2023-2', '71082237', 'SANCHEZ', 'CONTRERAS', 'EMERSON', 1, 0, '172168', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '992191047', '172168@unamba.edu.pe\r'),
(345, '2023-2', '73316975', 'CONDORI', 'CONDORI', 'JOSE', 1, 0, '181203', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '983276404', '181203@unamba.edu.pe\r'),
(346, '2023-2', '76744916', 'GOIZUETA', 'CASTAÑEDA', 'JOSE LUIS', 1, 0, '181209', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '901034923', '181209@unamba.edu.pe\r'),
(347, '2023-2', '76031997', 'HUARACA', 'NUÑEZ', 'JHOEL ALAN', 1, 0, '181212', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '952012595', '181212@unamba.edu.pe\r'),
(348, '2023-2', '72392177', 'MELÉNDEZ', 'VILCAS', 'PAUL JAINOR', 1, 0, '181219', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '989191916', '181219@unamba.edu.pe\r'),
(349, '2023-2', '76006888', 'MEZA', 'BAUTISTA', 'ANTHONY', 1, 0, '181221', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '927386272', '181221@unamba.edu.pe\r'),
(350, '2023-2', '71805816', 'VALCARCEL', 'SIERRA', 'RUTH', 2, 0, '181246', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '931157493', '181246@unamba.edu.pe\r'),
(351, '2023-2', '76237215', 'ALVITES', 'LEON', 'MELITZA GRACIELA', 2, 0, '182184', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '940061480', '182184@unamba.edu.pe\r'),
(352, '2023-2', '74395026', 'CARPIO', 'FELIX', 'ARON UBALDO', 1, 0, '182192', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '983958321', '182192@unamba.edu.pe\r'),
(353, '2023-2', '77344588', 'CHECCAÑA', 'ALEJANDRO', 'LUCHO CARLOS', 1, 0, '182196', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '962248104', '182196@unamba.edu.pe\r'),
(354, '2023-2', '73537764', 'CONDORI', 'NINA', 'YESICA', 2, 0, '182200', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '931879821', '182200@unamba.edu.pe\r'),
(355, '2023-2', '76180906', 'ESPINOZA', 'RODAS', 'LEYTER ARTURO', 1, 0, '182205', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '951396100', '182205@unamba.edu.pe\r'),
(356, '2023-2', '75698283', 'MUÑOZ', 'MIRANDA', 'JAIRO', 1, 0, '182213', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '994455284', '182213@unamba.edu.pe\r'),
(357, '2023-2', '74777709', 'SALAZAR', 'ASCUE', 'NEISA KARYN', 2, 0, '182229', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '918713177', '182229@unamba.edu.pe\r'),
(358, '2023-2', '72080836', 'SANCHEZ', 'VALVERDE', 'LUIS ALBERTO', 1, 0, '182231', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '926199554', '182231@unamba.edu.pe\r'),
(359, '2023-2', '73147233', 'TICONA', 'ORTIZ', 'JHEFERSSON CLETO', 1, 0, '182237', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '965703173', '182237@unamba.edu.pe\r'),
(360, '2023-2', '76658188', 'OLIVERA', 'SIERRA', 'DAVID', 1, 0, '182216', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '921288100', '182216@unamba.edu.pe\r'),
(361, '2023-2', '73713781', 'ARONE', 'HUANACO', 'ANDRES', 1, 0, '201055', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '951131448', '201055@unamba.edu.pe\r'),
(362, '2023-2', '75628884', 'PALOMINO', 'CHIRINOS', 'ANDERSON', 1, 0, '192217', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '914527458', '192217@unamba.edu.pe\r'),
(363, '2023-2', '71373244', 'CALDERON', 'CHIPA', 'DARCY', 1, 0, '201221', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '943747583', '201221@unamba.edu.pe\r'),
(364, '2023-2', '77703937', 'TAPIA', 'SUELDO', 'NINO', 1, 0, '162177', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '931278995', '162177@unamba.edu.pe\r'),
(365, '2023-2', '74053679', 'CANSAYA', 'HUAMAN', 'LUIS BELTRAN', 1, 0, '182190', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '935791512', '182190@unamba.edu.pe\r'),
(366, '2023-2', '60690771', 'LETONA', 'PORRAS', 'ARTURO', 1, 0, '192205', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '929160412', '192205@unamba.edu.pe\r'),
(367, '2023-2', '48682316', 'RIVERO', 'ESPINOZA', 'DIEGO KENNY', 1, 0, '112162', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '929161022', '112162@unamba.edu.pe\r'),
(368, '2023-2', '76269132', 'MENA', 'MOREANO', 'CRISTOFER ELIAS', 1, 0, '191220', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '924685317', '191220@unamba.edu.pe\r'),
(369, '2023-2', '70247790', 'YBARGUEN', 'FERNANDEZ', 'YEREMI CONNIE', 2, 0, '191245', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '915186036', '191245@unamba.edu.pe\r'),
(370, '2023-2', '72420004', 'LEON', 'MELENDEZ', 'DANUSKA JUANA', 2, 0, '192204', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '982889984', '192204@unamba.edu.pe\r'),
(371, '2023-2', '61580841', 'QUIROZ', 'CERON', 'LAURA ASTRID', 2, 0, '182223', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '930527863', '182223@unamba.edu.pe\r'),
(372, '2023-2', '71632611', 'MOREANO', 'FALCON', 'ZEILU MASSIEL', 2, 0, '191223', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '962137768', '191223@unamba.edu.pe\r'),
(373, '2023-2', '72695314', 'QUINTANA', 'CERON', 'JESUS ALBERTO', 1, 0, '191230', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '957225305', '191230@unamba.edu.pe\r'),
(374, '2023-2', '75422755', 'ROMERO', 'RAMOS', 'JHON FRANKLIN', 1, 0, '181238', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '967922800', '181238@unamba.edu.pe\r'),
(375, '2023-2', '60014426', 'CARRASCO', 'TAIPE', 'JAIME IVAN', 1, 0, '182193', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '927613580', '182193@unamba.edu.pe\r'),
(376, '2023-2', '75347703', 'CERVANTES', 'CCASA', 'ALFREDO', 1, 0, '172138', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '925657285', '172138@unamba.edu.pe\r'),
(377, '2023-2', '70780488', 'LEONA', 'AMPUERO', 'LUIS LUCIO', 1, 0, '171157', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '928397318', '171157@unamba.edu.pe\r'),
(378, '2023-2', '77383369', 'LEON', 'CRUZ', 'JHON MARK', 1, 0, '181216', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '934994343', '181216@unamba.edu.pe\r'),
(379, '2023-2', '75821032', 'ACHULLI', 'YUCRA', 'VICTOR', 1, 0, '162130', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '972410897', '162130@unamba.edu.pe\r'),
(380, '2023-2', '47215922', 'SALAZAR', 'CAHUANA', 'MARCIAL', 1, 0, '121179', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '935730370', '121179@unamba.edu.pe\r'),
(381, '2023-2', '72435654', 'VERA', 'TAYPE', 'JORGE LUIS', 1, 0, '161174', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '935725019', '161174@unamba.edu.pe\r'),
(382, '2023-2', '74451355', 'VELARDE', 'SAAVEDRA', 'LUIS ALEX', 1, 0, '161172', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '910461090', '161172@unamba.edu.pe\r'),
(383, '2023-2', '71840332', 'OCHOA', 'CHIRINOS', 'EDDY', 1, 0, '162162', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '985319022', '162162@unamba.edu.pe\r'),
(384, '2023-2', '76663592', 'AGUILAR', 'VALENZUELA', 'GUILLERMO RENATO', 1, 0, '191186', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '935080994', '191186@unamba.edu.pe\r'),
(385, '2023-2', '71543554', 'CHOCCARE', 'HUANCA', 'MARIA MERCEDES', 2, 0, '191198', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '918545162', '191198@unamba.edu.pe\r'),
(386, '2023-2', '72023289', 'COAQUIRA', 'BACA', 'EDNY', 1, 0, '191200', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '946264683', '191200@unamba.edu.pe\r'),
(387, '2023-2', '76621735', 'DELGADO', 'LADERA', 'BRYAN JIM', 1, 0, '191206', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '919166429', '191206@unamba.edu.pe\r'),
(388, '2023-2', '60015284', 'HUAMANI', 'AIQUIPA', 'JACK EDWIN', 1, 0, '191211', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '900415113', '191211@unamba.edu.pe\r'),
(389, '2023-2', '76188710', 'HURTADO', 'DELGADO', 'BRYAN', 1, 0, '191215', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '945522424', '191215@unamba.edu.pe\r'),
(390, '2023-2', '75917761', 'MOLINA', 'PORTILLA', 'OSCAR LORENZO', 1, 0, '191222', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '918803648', '191222@unamba.edu.pe\r'),
(391, '2023-2', '71958460', 'ÑAHUI', 'VARGAS', 'LUIS EDISON', 1, 0, '191224', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '935026813', '191224@unamba.edu.pe\r'),
(392, '2023-2', '75904811', 'OSCCO', 'GUILLEN', 'MARYCIELO XIOMARA', 2, 0, '191226', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '925289098', '191226@unamba.edu.pe\r'),
(393, '2023-2', '73658684', 'PFUÑO', 'ALCCAHUAMANI', 'LUIS ALBERTO', 1, 0, '191229', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '954131451', '191229@unamba.edu.pe\r'),
(394, '2023-2', '76668813', 'ROSALES', 'TINTAYA', 'GEORGE STYFF', 1, 0, '191234', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '963649273', '191234@unamba.edu.pe\r'),
(395, '2023-2', '70664218', 'VILLARROEL', 'FRANCO', 'LUISA NAHIELY', 2, 0, '191243', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '982574085', '191243@unamba.edu.pe\r'),
(396, '2023-2', '71809608', 'CASTILLO', 'AGUILAR', 'JHON CLAUDIO', 1, 0, '192185', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '929473619', '192185@unamba.edu.pe\r'),
(397, '2023-2', '73650899', 'CUELLAR', 'JUAREZ', 'LUZ NERIDA', 2, 0, '192194', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '930546911', '192194@unamba.edu.pe\r'),
(398, '2023-2', '72101018', 'CUYO', 'CANAHUIRE', 'JACK RAFAEL', 1, 0, '192195', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '920185987', '192195@unamba.edu.pe\r'),
(399, '2023-2', '71462018', 'ESPINOZA', 'SAYAGO', 'RODRIGO', 1, 0, '192196', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '957180338', '192196@unamba.edu.pe\r'),
(400, '2023-2', '77383373', 'MORIANO', 'SAUÑE', 'ANDERSON', 1, 0, '192211', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '900615531', '192211@unamba.edu.pe\r'),
(401, '2023-2', '76040735', 'PRADA', 'HUAMANI', 'RUTH KARINA', 2, 0, '192220', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '913848795', '192220@unamba.edu.pe\r'),
(402, '2023-2', '75672722', 'QUISPE', 'COSTILLA', 'BRAYAN HERVIN', 1, 0, '192221', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '957574255', '192221@unamba.edu.pe\r'),
(403, '2023-2', '75322689', 'RETAMOZO', 'SAAVEDRA', 'LUIS FERNANDO', 1, 0, '192224', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '978752371', '192224@unamba.edu.pe\r'),
(404, '2023-2', '73689123', 'SARMIENTO', 'SARMIENTO', 'NAISA MILAGROS', 2, 0, '192227', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '914379661', '192227@unamba.edu.pe\r'),
(405, '2023-2', '76240711', 'ARREDONDO', 'ROQUE', 'YASBETH SAYDA', 2, 0, '152115', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '957017089', '152115@unamba.edu.pe\r'),
(406, '2023-2', '44925722', 'JIMENEZ', 'HUASHUAYO', 'JOSE CARLOS', 1, 0, '062128', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '968800682', '062128@unamba.edu.pe\r'),
(407, '2023-2', '44690863', 'SAENZ', 'ENCISO', 'PERCY', 1, 0, '191299', 'MEDICINA VETERINARIA Y ZOOTECNIA', 8, '', '973523481', '191299@unamba.edu.pe\r'),
(408, '2023-2', '46775821', 'MONZON', 'MUÑOZ', 'MIGUEL ANGEL', 1, 0, '121219', 'MEDICINA VETERINARIA Y ZOOTECNIA', 9, '', '925387913', '121219@unamba.edu.pe\r'),
(409, '2023-2', '48103651', 'LOPEZ', 'RAMOS', 'CLAUDIO', 1, 0, '122211', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '917960565', '122211@unamba.edu.pe\r'),
(410, '2023-2', '70776713', 'RAMIREZ', 'MENA', 'ELISEO', 1, 0, '122222', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '917637051', '122222@unamba.edu.pe\r'),
(411, '2023-2', '71898012', 'CASTRO', 'FELIX', 'YORKA YOMARY', 2, 0, '142196', 'MEDICINA VETERINARIA Y ZOOTECNIA', 8, '', '969777751', '142196@unamba.edu.pe\r'),
(412, '2023-2', '72412494', 'RAMIREZ', 'HUANCACURY', 'YERSON MANUEL', 1, 0, '151196', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '931061251', '151196@unamba.edu.pe\r'),
(413, '2023-2', '48660480', 'PINTO', 'MEDINA', 'LUIS DANIEL', 1, 0, '162189', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '963708195', '162189@unamba.edu.pe\r'),
(414, '2023-2', '72793414', 'AMEZQUITA', 'AÑANCA', 'STALIN SALVATORE J', 1, 0, '171179', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '933675611', '171179@unamba.edu.pe\r'),
(415, '2023-2', '72893334', 'CAHUANA', 'CARDENAS', 'MARIA CRISTINA', 2, 0, '171182', 'MEDICINA VETERINARIA Y ZOOTECNIA', 8, '', '925853202', '171182@unamba.edu.pe\r'),
(416, '2023-2', '70378969', 'FERNANDEZ', 'MANTARI', 'REY JAROLD', 1, 0, '172185', 'MEDICINA VETERINARIA Y ZOOTECNIA', 9, '', '982503007', '172185@unamba.edu.pe\r'),
(417, '2023-2', '72696574', 'FLOREZ', 'PEDRAZA', 'HENRY', 1, 0, '172186', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '973463443', '172186@unamba.edu.pe\r'),
(418, '2023-2', '48514646', 'HURTADO', 'GUTIERREZ', 'MARGOTH', 2, 0, '172188', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '967093844', '172188@unamba.edu.pe\r'),
(419, '2023-2', '70234589', 'BARRIENTOS', 'CONDORI', 'EUDOCIA ALEJANDRINA', 2, 0, '181255', 'MEDICINA VETERINARIA Y ZOOTECNIA', 9, '', '990416731', '181255@unamba.edu.pe\r'),
(420, '2023-2', '73427160', 'FERRO', 'AYQUIPA', 'PAULA ESTEFANI', 2, 0, '181274', 'MEDICINA VETERINARIA Y ZOOTECNIA', 8, '', '972535407', '181274@unamba.edu.pe\r'),
(421, '2023-2', '78970030', 'HILARIO', 'HERENCIA', 'JUAN PABLO', 1, 0, '181283', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '949169050', '181283@unamba.edu.pe\r'),
(422, '2023-2', '46260371', 'QUISPE', 'MENDOZA', 'VICTORIA NANCY', 2, 0, '181295', 'MEDICINA VETERINARIA Y ZOOTECNIA', 8, '', '972439633', '181295@unamba.edu.pe\r'),
(423, '2023-2', '76821025', 'CARTAGENA', 'GONZALES', 'JOHANA KATERIN', 2, 0, '182249', 'MEDICINA VETERINARIA Y ZOOTECNIA', 9, '', '984462720', '182249@unamba.edu.pe\r'),
(424, '2023-2', '73387154', 'SULLO', 'ALEGRIA', 'ANALI', 2, 0, '182282', 'MEDICINA VETERINARIA Y ZOOTECNIA', 8, '', '925873415', '182282@unamba.edu.pe\r'),
(425, '2023-2', '61751294', 'ALFARO', 'HUAMANI', 'MELUSCA MARILUZ', 2, 0, '151188', 'MEDICINA VETERINARIA Y ZOOTECNIA', 9, '', '956102668', '151188@unamba.edu.pe\r'),
(426, '2023-2', '62249213', 'CHAVEZ', 'CAYLLAHUA', 'MARIA ELENA', 2, 0, '181264', 'MEDICINA VETERINARIA Y ZOOTECNIA', 9, '', '944786346', '181264@unamba.edu.pe\r'),
(427, '2023-2', '44907264', 'GUTIERREZ', 'MENDOZA', 'VICTOR', 1, 0, '061159', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '324665', '061159@unamba.edu.pe\r'),
(428, '2023-2', '77474681', 'CUENCA', 'BAYONA', 'PERSA ALEXANDRA', 2, 0, '191259', 'MEDICINA VETERINARIA Y ZOOTECNIA', 9, '', '997878641', '191259@unamba.edu.pe\r'),
(429, '2023-2', '44747143', 'CASTAÑEDA', 'MONZON', 'DILMER', 1, 0, '101201', 'MEDICINA VETERINARIA Y ZOOTECNIA', 9, '', '942460880', '101201@unamba.edu.pe\r'),
(430, '2023-2', '73310306', 'ALEJO', 'LIMA', 'YUTDER', 1, 0, '191480', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 9, '', '958707683', '191480@unamba.edu.pe\r'),
(431, '2023-2', '71929656', 'PABLO', 'CHALCO', 'JULIAN', 1, 0, '151395', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '968496548', '151395@unamba.edu.pe\r'),
(432, '2023-2', '48476317', 'CURI', 'FLORES', 'MOISES ALBERTO', 1, 0, '191486', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 9, '', '900412818', '191486@unamba.edu.pe\r'),
(433, '2023-2', '72236879', 'LEON', 'CONDORI', 'RENE', 1, 0, '191491', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 9, '', '972480154', '191491@unamba.edu.pe\r'),
(434, '2023-2', '74439929', 'SOTA', 'MENDOZA', 'JENNY', 2, 0, '191498', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 9, '', '961363544', '191498@unamba.edu.pe\r'),
(435, '2023-2', '47470240', 'SULLCA', 'SANCHEZ', 'CIRO', 1, 0, '182476', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '962824287', '182476@unamba.edu.pe\r'),
(436, '2023-2', '71800992', 'AVENDAÑO', 'GONZALES', 'SINKLER JHON', 1, 0, '181660', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '984245755', '181660@unamba.edu.pe\r'),
(437, '2023-2', '74075276', 'COSTILLA', 'TAIPE', 'BISMAR HAFFNER', 1, 0, '181662', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 8, '', '901650742', '181662@unamba.edu.pe\r'),
(438, '2023-2', '73650592', 'CUELLAR', 'LEON', 'ARNOLD', 1, 0, '181663', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 9, '', '910440651', '181663@unamba.edu.pe\r'),
(439, '2023-2', '71805302', 'IZQUIERDO', 'MOLINA', 'ALFREDO', 1, 0, '181668', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 9, '', '930915307', '181668@unamba.edu.pe\r'),
(440, '2023-2', '74221939', 'PALOMINO', 'GUZMAN', 'EDISON', 1, 0, '181671', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '991822243', '181671@unamba.edu.pe\r'),
(441, '2023-2', '74459297', 'RAYME', 'SANTOS', 'JAIR CRISTHIAN', 1, 0, '181673', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 8, '', '900440248', '181673@unamba.edu.pe\r'),
(442, '2023-2', '73659468', 'TUERO', 'PANUAGUA', 'LIZ MARLENY', 2, 0, '181676', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 8, '', '948254725', '181676@unamba.edu.pe\r'),
(443, '2023-2', '73604015', 'VARGAS', 'PEÑA', 'REYNA', 2, 0, '181677', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '901465251', '181677@unamba.edu.pe\r'),
(444, '2023-2', '48087500', 'YAGUNO', 'GONZALES', 'FANY', 2, 0, '181678', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 8, '', '974457750', '181678@unamba.edu.pe\r'),
(445, '2023-2', '71745624', 'CARBAJAL', 'CONTRERAS', 'Ronald', 1, 0, '172324', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 8, '', '929951568', '172324@unamba.edu.pe\r'),
(446, '2023-2', '74579817', 'ANDRADE', 'HUAMANI', 'JAIME TIMOTEO', 1, 0, '181659', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '984756073', '181659@unamba.edu.pe\r'),
(447, '2023-2', '74317610', 'ESTRADA', 'MORALES', 'FRANKLIN', 1, 0, '161348', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '958784670', '161348@unamba.edu.pe\r'),
(448, '2023-2', '74579818', 'ANDRADE', 'HUAMANI', 'WILFREDO', 1, 0, '162315', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '967736677', '162315@unamba.edu.pe\r'),
(449, '2023-2', '48148840', 'POCCORI', 'ARONE', 'GIOCONDA', 2, 0, '162320', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '940440053', '162320@unamba.edu.pe\r'),
(450, '2023-2', '73807785', 'GALLEGOS', 'BLAS', 'Ruth Marina', 2, 0, '172326', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 9, '', '900 434 4', '172326@unamba.edu.pe\r'),
(451, '2023-2', '44272102', 'LUNA', 'HUANACO', 'RURU', 1, 0, '072277', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '952151019', '072277@unamba.edu.pe\r'),
(452, '2023-2', '71794532', 'CHIRINOS', 'LLICAHUA', 'EUGENIO ', 1, 0, '151386', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '916370531', '151386@unamba.edu.pe\r'),
(453, '2023-2', '71774628', 'HUALLPA', 'ARTEAGA', 'MARIA DEL PILAR', 2, 0, '151387', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '931691709', '151387@unamba.edu.pe\r'),
(454, '2023-2', '72282403', 'CURI', 'FLORES', 'CESAR', 1, 0, '191485', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 8, '', '931099033', '191485@unamba.edu.pe\r'),
(455, '2023-2', '61747653', 'ANAMARIA', 'ESPINOZA', 'ROSMERY ', 2, 0, '201083', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '974258250', '201083@unamba.edu.pe\r'),
(456, '2023-2', '73385973', 'ANDAGUA', 'GOMEZ', 'RAYDA', 2, 0, '201084', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '933146833', '201084@unamba.edu.pe\r'),
(457, '2023-2', '76277247', 'CHIRINOS', 'BARRIOS', 'MARY CRUZ', 2, 0, '201085', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '964249090', '201085@unamba.edu.pe\r'),
(458, '2023-2', '73587955', 'GONZALES', 'QUINTANILLA', 'RUTH MELISSA', 2, 0, '201091', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '969205630', '201091@unamba.edu.pe\r'),
(459, '2023-2', '75217380', 'MARTINEZ', 'HUAMANI', 'FIORELA', 2, 0, '201093', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '935219897', '201093@unamba.edu.pe\r'),
(460, '2023-2', '71742846', 'MENDOZA', 'BUSTINZA', 'MARGARET ', 2, 0, '201094', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '973155063', '201094@unamba.edu.pe\r'),
(461, '2023-2', '72242235', 'SANCHEZ', 'JIBAJA', 'NARVI REGINA', 2, 0, '181351', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '921305961', '181351@unamba.edu.pe\r'),
(462, '2023-2', '71383916', 'SOTO', 'JARA', 'RUTH KARINA', 2, 0, '181353', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '986732321', '181353@unamba.edu.pe\r'),
(463, '2023-2', '71563034', 'TAIPE', 'MOREANO', 'YULISA JUSTINA', 2, 0, '181354', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '984479510', '181354@unamba.edu.pe\r'),
(464, '2023-2', '46281963', 'VALVERDE', 'CABALLERO', 'MIRIAM', 2, 0, '181361', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '925554947', '181361@unamba.edu.pe\r'),
(465, '2023-2', '47053640', 'VARGAS', 'MEDINA', 'SILVIA', 2, 0, '181362', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '973936971', '181362@unamba.edu.pe\r'),
(466, '2023-2', '77242900', 'CHUMBE', 'SARMIENTO', 'NICOL', 2, 0, '192285', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '929049880', '192285@unamba.edu.pe\r'),
(467, '2023-2', '73379045', 'NAVEDA', 'BUSTINZA', 'VERONICA', 2, 0, '201184', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '928377172', '201184@unamba.edu.pe\r'),
(468, '2023-2', '74658032', 'VARGAS', 'HUAYLLA', 'DANIELA', 2, 0, '192321', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '925741663', '192321@unamba.edu.pe\r'),
(469, '2023-2', '71440462', 'HUAMANI', 'TOMAYLLA', 'NATALY', 2, 0, '192299', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '901547049', '192299@unamba.edu.pe\r'),
(470, '2023-2', '73996740', 'CASTAÑEDA', 'HUAMANÑAHUI', 'DIANA DE LA FLOR', 2, 0, '192282', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '958762281', '192282@unamba.edu.pe\r'),
(471, '2023-2', '47458837', 'MENOR', 'DIAZ', 'BETTY', 2, 0, '201308', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '931077940', '201308@unamba.edu.pe\r'),
(472, '2023-2', '74537523', 'QUISPE', 'CCORAHUA', 'SULEMA', 2, 0, '192315', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '931346598', '192315@unamba.edu.pe\r'),
(473, '2023-2', '71805838', 'BORDA', 'CRUZ', 'FRANCY ADELY', 2, 0, '192273', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '965485241', '192273@unamba.edu.pe\r'),
(474, '2023-2', '74751047', 'VEGA', 'CACERES', 'MIRIAN', 2, 0, '192322', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '978241554', '192322@unamba.edu.pe\r'),
(475, '2023-2', '71550641', 'OSCCO', 'PINTO', 'THANIA MELISSA', 2, 0, '192309', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '965264226', '192309@unamba.edu.pe\r'),
(476, '2023-2', '71657336', 'BRAVO', 'MARIN', 'MAYRA MELLISSA', 2, 0, '191316', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '935450772', '191316@unamba.edu.pe\r'),
(477, '2023-2', '61580847', 'COLLAHUA', 'CORONADO', 'LUSBEL ARACELI', 2, 0, '191327', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '930228289', '191327@unamba.edu.pe\r'),
(478, '2023-2', '73884735', 'VERA', 'TAYPE', 'LIZ DIANA', 2, 0, '191366', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '900433489', '191366@unamba.edu.pe\r'),
(479, '2023-2', '42483114', 'ACHAHUI', 'HUAMANÑAHUI', 'EDWIN OMAR', 1, 0, '162196', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '925991019', '162196@unamba.edu.pe\r'),
(480, '2023-2', '72083758', 'AYMACHOQUE', 'CARRASCO', 'ANALI IRIS', 2, 0, '162199', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '954733150', '162199@unamba.edu.pe\r'),
(481, '2023-2', '71310803', 'GUEVARA', 'CARBAJAL', 'ALICIA', 2, 0, '162206', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '916736034', '162206@unamba.edu.pe\r'),
(482, '2023-2', '73208108', 'SEGOVIA', 'MAMANI', 'KORINA MILAGROS', 2, 0, '162224', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '', '162224@unamba.edu.pe\r'),
(483, '2023-2', '74087658', 'CHALCO', 'VILLEGAS', 'JOHN ANTONY', 1, 0, '171219', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '900421652', '171219@unamba.edu.pe\r'),
(484, '2023-2', '48504567', 'ESCALANTE', 'SERRANO', 'LIZ SHEYLA', 2, 0, '171227', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '941586919', '171227@unamba.edu.pe\r'),
(485, '2023-2', '73532382', 'CCOICCA', 'TELLO', 'YULY', 2, 0, '172202', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '901876665', '172202@unamba.edu.pe\r'),
(486, '2023-2', '74717136', 'RESABAL', 'TAIPECCAHUANA', 'YESSICA', 2, 0, '172226', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '978692447', '172226@unamba.edu.pe\r'),
(487, '2023-2', '46876786', 'SORAS', 'QUISPE', 'KATHLEEN', 2, 0, '172229', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '967186823', '172229@unamba.edu.pe\r'),
(488, '2023-2', '77100749', 'TAPIA', 'MOREANO', 'ANALI', 2, 0, '172233', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '918219307', '172233@unamba.edu.pe\r'),
(489, '2023-2', '75689971', 'SUBELETE', 'MIRANDA', 'RUT KATYA', 2, 0, '201099', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '937636792', '201099@unamba.edu.pe\r'),
(490, '2023-2', '74615675', 'TORRES', 'GUIZADO', 'BERTHA ', 2, 0, '201100', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '948211171', '201100@unamba.edu.pe\r'),
(491, '2023-2', '72464016', 'TORVISCO', 'CONTRERAS', 'LUZ MILAGROS', 2, 0, '201101', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '930682417', '201101@unamba.edu.pe\r'),
(492, '2023-2', '73664241', 'VELASQUE', 'TAPIA', 'MERLY SANTUSA ', 2, 0, '201102', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '928408873', '201102@unamba.edu.pe\r'),
(493, '2023-2', '71290908', 'ARREDONDO', 'OJEDA', 'LIZ YADIRA', 2, 0, '201176', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '910447368', '201176@unamba.edu.pe\r'),
(494, '2023-2', '74158645', 'CONTRERAS', 'SANCHEZ', 'DIANINA', 2, 0, '201180', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '938172921', '201180@unamba.edu.pe\r'),
(495, '2023-2', '73666190', 'HURTADO', 'SORIA', 'ESTEFANI VICTORIA', 2, 0, '201182', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '964894573', '201182@unamba.edu.pe\r'),
(496, '2023-2', '77219434', 'MALDONADO', 'HUARHUA', 'WENDY DENNIS', 2, 0, '201321', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '936112897', '201321@unamba.edu.pe\r'),
(497, '2023-2', '70930043', 'CAYLLAHUA', 'SALAZAR', 'NIDIA', 2, 0, '121242', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '946621065', '121242@unamba.edu.pe\r'),
(498, '2023-2', '73765519', 'MAYHUIRE', 'SUAREZ', 'CLAUDIA BASILIA', 2, 0, '122262', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '910168324', '122262@unamba.edu.pe\r'),
(499, '2023-2', '77822811', 'APAZA', 'ROJAS', 'SARY PAMELA', 2, 0, '142224', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '918887512', '142224@unamba.edu.pe\r'),
(500, '2023-2', '78006023', 'LAPA', 'HUAMAN', 'DAMARIS LINDA', 2, 0, '151205', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '941651931', '151205@unamba.edu.pe\r'),
(501, '2023-2', '70778859', 'BRAVO', 'NAVIO', 'YANETH', 2, 0, '192274', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '994835528', '192274@unamba.edu.pe\r'),
(502, '2023-2', '71289520', 'CACERES', 'CCARHUASLLA', 'FIORELA', 2, 0, '192275', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '953870678', '192275@unamba.edu.pe\r'),
(503, '2023-2', '76090313', 'CACERES', 'HUAMAN', 'MIRIAM MILAGROS', 2, 0, '192276', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '928925839', '192276@unamba.edu.pe\r'),
(504, '2023-2', '71538652', 'CALDERON', 'DAVALOS', 'ROSSY', 2, 0, '192277', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '913088875', '192277@unamba.edu.pe\r'),
(505, '2023-2', '72412458', 'CARRASCO', 'PICHIHUA', 'ARACELI', 2, 0, '192281', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '937644230', '192281@unamba.edu.pe\r'),
(506, '2023-2', '77035314', 'CASTILLO', 'HUAMANÑAHUI', 'MILAGROS', 2, 0, '192283', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '991866830', '192283@unamba.edu.pe\r'),
(507, '2023-2', '61780538', 'CISNEROS', 'TUIRO', 'GABRIELA', 2, 0, '192287', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '920647535', '192287@unamba.edu.pe\r'),
(508, '2023-2', '71560349', 'ESCOBEDO', 'MIRANDA', 'NEYKA KATIUSKA', 2, 0, '192288', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '992169900', '192288@unamba.edu.pe\r'),
(509, '2023-2', '63347248', 'ESPINOZA', 'CHUMPISUCA', 'ANAIS KAROL', 2, 0, '192289', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '997535846', '192289@unamba.edu.pe\r'),
(510, '2023-2', '71310574', 'ESTRADA', 'TAIPE', 'NOEMI ROSA', 2, 0, '192290', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '913284981', '192290@unamba.edu.pe\r'),
(511, '2023-2', '77017910', 'GOMEZ', 'CONDORPUSA', 'RITA', 2, 0, '192291', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '961245864', '192291@unamba.edu.pe\r'),
(512, '2023-2', '62201820', 'HILARES', 'CABALLERO', 'JHENY VANESSA', 2, 0, '192294', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '942707603', '192294@unamba.edu.pe\r'),
(513, '2023-2', '71288467', 'HUACHACA', 'OVALLE', 'TANIA', 2, 0, '192295', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '929963755', '192295@unamba.edu.pe\r'),
(514, '2023-2', '71390828', 'LOAYZA', 'VELAZQUE', 'DORIS NELIDA', 2, 0, '192302', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '989415777', '192302@unamba.edu.pe\r'),
(515, '2023-2', '71423964', 'LOPEZ', 'TOMAYLLA', 'GERONIMA GUADALUPE', 2, 0, '192304', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '931341581', '192304@unamba.edu.pe\r'),
(516, '2023-2', '75924666', 'OJEDA', 'GOMEZ', 'NOEMI FIORELLA', 2, 0, '192307', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '931708753', '192307@unamba.edu.pe\r'),
(517, '2023-2', '76280926', 'OJEDA', 'MANGA', 'INGRIT ROSSANA', 2, 0, '192308', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '928646218', '192308@unamba.edu.pe\r'),
(518, '2023-2', '74451333', 'PALOMINO', 'ROMAN', 'NATALIA', 2, 0, '192311', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '961488793', '192311@unamba.edu.pe\r'),
(519, '2023-2', '63349012', 'PANIURA', 'GAYOSO', 'OTILIA ESPERANZA', 2, 0, '192312', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '973238510', '192312@unamba.edu.pe\r'),
(520, '2023-2', '73385937', 'ROJAS', 'BUENDIA', 'YULIZA MAGDALENA', 2, 0, '192316', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '921216223', '192316@unamba.edu.pe\r'),
(521, '2023-2', '73754524', 'ROJAS', 'TORRES', 'KELY YASMINA', 2, 0, '192317', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '957601935', '192317@unamba.edu.pe\r'),
(522, '2023-2', '71809583', 'SOLIS', 'FERRO', 'FLOR DE MARIA', 2, 0, '192319', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '929903615', '192319@unamba.edu.pe\r'),
(523, '2023-2', '76802139', 'TAIPE', 'ECCOÑA', 'ROSA ANDREA', 2, 0, '192320', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '989977284', '192320@unamba.edu.pe\r'),
(524, '2023-2', '72434456', 'ALCARRAZ', 'NUÑEZ', 'MIRIAN JUANA', 2, 0, '201082', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '921915868', '201082@unamba.edu.pe\r'),
(525, '2023-2', '70974040', 'ACHO', 'CHACÑA', 'ROCIO', 2, 0, '192263', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '900984353', '192263@unamba.edu.pe\r'),
(526, '2023-2', '76154849', 'ACHULLI', 'BARRETO', 'VANESSA', 2, 0, '192264', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '916227383', '192264@unamba.edu.pe\r'),
(527, '2023-2', '71383776', 'AGUILAR', 'AYMARA', 'YUMIRA', 2, 0, '192265', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '956304760', '192265@unamba.edu.pe\r'),
(528, '2023-2', '74290931', 'ARONE', 'HURTADO', 'IRMA SHAKIRA', 2, 0, '192268', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '927826316', '192268@unamba.edu.pe\r'),
(529, '2023-2', '47578916', 'AYALA', 'CHIPANA', 'ANA MARIA', 2, 0, '192269', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '92761267', '192269@unamba.edu.pe\r'),
(530, '2023-2', '71334016', 'BARAZORDA', 'CHICLLA', 'CLARISA', 2, 0, '192270', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '900076535', '192270@unamba.edu.pe\r'),
(531, '2023-2', '70790392', 'PEÑA', 'LUNA', 'ROS MERY', 2, 0, '191357', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '900077874', '191357@unamba.edu.pe\r'),
(532, '2023-2', '76858099', 'QUISPE', 'ANCCO', 'LUCERO LEONOR', 2, 0, '191358', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '997335408', '191358@unamba.edu.pe\r'),
(533, '2023-2', '74552459', 'RAMOS', 'HUAMANI', 'KHELMA', 2, 0, '191360', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '953843260', '191360@unamba.edu.pe\r'),
(534, '2023-2', '75853057', 'SAAVEDRA', 'HUAYTALLA', 'NAIR MILUSKA', 2, 0, '191361', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '940625994', '191361@unamba.edu.pe\r'),
(535, '2023-2', '71654705', 'VALDIVIA', 'LOPEZ', 'JESICA', 2, 0, '191364', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '931325874', '191364@unamba.edu.pe\r'),
(536, '2023-2', '75873541', 'VENTURA', 'SANCHEZ', 'YANETH DINA', 2, 0, '191365', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '901135966', '191365@unamba.edu.pe\r'),
(537, '2023-2', '72235278', 'VILLAFUERTE', 'QUIROZ', 'SHANERY', 2, 0, '191367', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '971668090', '191367@unamba.edu.pe\r'),
(538, '2023-2', '72153150', 'ALIAGA', 'TOLA', 'GIANELLA LISBETH', 2, 0, '191308', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '969037994', '191308@unamba.edu.pe\r'),
(539, '2023-2', '70440981', 'BALLON', 'JURO', 'AAROM VICTOR', 1, 0, '191310', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '935463324', '191310@unamba.edu.pe\r'),
(540, '2023-2', '76434214', 'BARRIENTOS', 'TALAVERANO', 'LIZBET', 2, 0, '191311', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '949599600', '191311@unamba.edu.pe\r'),
(541, '2023-2', '71938634', 'BARRIOS', 'MAMANI', 'JOEL', 1, 0, '191313', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '931691033', '191313@unamba.edu.pe\r'),
(542, '2023-2', '71798281', 'BLANCO', 'MERINO', 'DIANA', 2, 0, '191314', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '918539613', '191314@unamba.edu.pe\r'),
(543, '2023-2', '76027590', 'BRAVO', 'CONTRERAS', 'MIRYAM LILY', 2, 0, '191315', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '931692623', '191315@unamba.edu.pe\r'),
(544, '2023-2', '77171087', 'CACERES', 'HUAMANI', 'LISBETH', 2, 0, '191317', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '944353755', '191317@unamba.edu.pe\r'),
(545, '2023-2', '71801737', 'CARBAJAL', 'DURAND', 'MARIBEL', 2, 0, '191318', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '929530440', '191318@unamba.edu.pe\r'),
(546, '2023-2', '76048361', 'CASTAÑEDA', 'PACHECO', 'RUTH DIANA', 2, 0, '191321', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '926075414', '191321@unamba.edu.pe\r'),
(547, '2023-2', '76809712', 'CCORAHUA', 'AMBIA', 'NAYELY ANGELA', 2, 0, '191322', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '929169890', '191322@unamba.edu.pe\r'),
(548, '2023-2', '77676241', 'CCORAHUA', 'VALDERRAMA', 'DIANA ROXANA RUBI', 2, 0, '191323', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '935456020', '191323@unamba.edu.pe\r'),
(549, '2023-2', '75235291', 'CHILE', 'LUNA', 'ELIZA', 2, 0, '191325', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '974198295', '191325@unamba.edu.pe\r'),
(550, '2023-2', '75628878', 'CHIPANA', 'ROMERO', 'LUZ CENAYDA', 2, 0, '191326', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '931277166', '191326@unamba.edu.pe\r'),
(551, '2023-2', '73755572', 'CONTRERAS', 'ACHULLI', 'SUSI SOLEDAD', 2, 0, '191328', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '914466788', '191328@unamba.edu.pe\r'),
(552, '2023-2', '75270551', 'ESCALANTE', 'COSIO', 'SENDY', 2, 0, '191334', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '969786566', '191334@unamba.edu.pe\r'),
(553, '2023-2', '72167365', 'GARCIA', 'ARREDONDO', 'YENY', 2, 0, '191336', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '921214470', '191336@unamba.edu.pe\r'),
(554, '2023-2', '71290736', 'GARCIA', 'ROBLES', 'DEYRA YOSHELY', 2, 0, '191337', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '956753533', '191337@unamba.edu.pe\r'),
(555, '2023-2', '71932942', 'GUTIERREZ', 'CHARA', 'MILAGRITOS SHANDEE', 2, 0, '191340', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '992783207', '191340@unamba.edu.pe\r'),
(556, '2023-2', '75957426', 'HUAMAN', 'BLANCO', 'FLOR DE LIZ', 2, 0, '191341', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '992383407', '191341@unamba.edu.pe\r'),
(557, '2023-2', '73143761', 'LEON', 'MONZON', 'GABRIELA', 2, 0, '191344', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '953077533', '191344@unamba.edu.pe\r'),
(558, '2023-2', '76201021', 'LOAYZA', 'BARRETO', 'YENNIFER', 2, 0, '191346', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '965469285', '191346@unamba.edu.pe\r'),
(559, '2023-2', '76167036', 'LOPEZ', 'CHICLLASTO', 'SILVIA MARGARITA', 2, 0, '191348', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '913428828', '191348@unamba.edu.pe\r'),
(560, '2023-2', '74594924', 'MIRANDA', 'OYOLA', 'LULIANA', 2, 0, '191350', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '960982568', '191350@unamba.edu.pe\r'),
(561, '2023-2', '71440043', 'MORENO', 'GALLO', 'ANA ISABEL', 2, 0, '191353', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '974 212 5', '191353@unamba.edu.pe\r'),
(562, '2023-2', '70080686', 'OCAÑA', 'BENITES', 'LIHZ MARISELA', 2, 0, '191354', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '935434397', '191354@unamba.edu.pe\r'),
(563, '2023-2', '71809590', 'PALOMINO', 'PILLCO', 'VANESSA', 2, 0, '191356', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '925772674', '191356@unamba.edu.pe\r'),
(564, '2023-2', '74581405', 'ARONE', 'QUISPE', 'EVELYN', 2, 0, '182291', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '900410327', '182291@unamba.edu.pe\r'),
(565, '2023-2', '74628922', 'CARRASCO', 'QUIJHUA', 'ANA ROSA', 2, 0, '182297', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '925838330', '182297@unamba.edu.pe\r'),
(566, '2023-2', '75613345', 'CENTENO', 'KARI', 'JOSELYN', 2, 0, '182302', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '997586069', '182302@unamba.edu.pe\r'),
(567, '2023-2', '77094277', 'CURIHUAMANI', 'MALLQUI', 'ESPERANZA CRUSPIDA', 2, 0, '182308', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '951183838', '182308@unamba.edu.pe\r'),
(568, '2023-2', '71039767', 'GUIZADO', 'PEREZ', 'ROSARIO', 2, 0, '182312', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '952126159', '182312@unamba.edu.pe\r'),
(569, '2023-2', '76335780', 'GUTIERREZ', 'SOTO', 'RUTH MARIA', 2, 0, '182313', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '925870598', '182313@unamba.edu.pe\r'),
(570, '2023-2', '48857518', 'HUAMANHORCCO', 'HUAMANORCCO', 'MARI YANINA', 2, 0, '182320', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '992479905', '182320@unamba.edu.pe\r'),
(571, '2023-2', '71840285', 'HUAMANI', 'HUAMANI', 'MARITZA', 2, 0, '182322', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '984799391', '182322@unamba.edu.pe\r'),
(572, '2023-2', '73754756', 'MUÑOZ', 'CCONISLLA', 'FIORELLA', 2, 0, '182326', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '934393001', '182326@unamba.edu.pe\r'),
(573, '2023-2', '71809633', 'QUINTANA', 'ZEVALLOS', 'LIZ BENIGNA', 2, 0, '182334', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '917980072', '182334@unamba.edu.pe\r'),
(574, '2023-2', '70803682', 'QUISPE', 'CERVANTES', 'ARLET', 1, 0, '182335', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '900569057', '182335@unamba.edu.pe\r'),
(575, '2023-2', '76255449', 'QUISPE', 'HUILLCA', 'MILAGROS', 2, 0, '182336', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '930475841', '182336@unamba.edu.pe\r'),
(576, '2023-2', '76274130', 'RIOS', 'ÑAHUI', 'DELFINA', 2, 0, '182338', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '930694718', '182338@unamba.edu.pe\r'),
(577, '2023-2', '73653796', 'ROMAN', 'ROMAN', 'LISET YESICA', 2, 0, '182339', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '918207166', '182339@unamba.edu.pe\r'),
(578, '2023-2', '72763258', 'SARAISE', 'SALAS', 'NELSON', 1, 0, '182341', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '916247192', '182341@unamba.edu.pe\r'),
(579, '2023-2', '70777531', 'TORVISCO', 'CONTRERAS', 'THALIA', 2, 0, '182343', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '993746956', '182343@unamba.edu.pe\r'),
(580, '2023-2', '71294229', 'AEDO', 'OJEDA', 'MARILUZ', 2, 0, '181307', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '936843465', '181307@unamba.edu.pe\r'),
(581, '2023-2', '74658033', 'ALLCCA', 'ALVINO', 'CYNTHIA BRISETH', 1, 0, '181309', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '944127060', '181309@unamba.edu.pe\r'),
(582, '2023-2', '73995155', 'AYBAR', 'ALLCCA', 'MARIA ISABEL', 2, 0, '181312', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '915935844', '181312@unamba.edu.pe\r'),
(583, '2023-2', '72964777', 'CAHUANA', 'CARDENAS', 'VALERIA', 2, 0, '181316', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '976268562', '181316@unamba.edu.pe\r'),
(584, '2023-2', '73048901', 'CHICLLA', 'MARTINEZ', 'ANA LUZ', 2, 0, '181320', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '997565414', '181320@unamba.edu.pe\r'),
(585, '2023-2', '70821971', 'CONTRERAS', 'URFANO', 'ANA CLAUDIA', 2, 0, '181323', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '980497819', '181323@unamba.edu.pe\r'),
(586, '2023-2', '71840297', 'CRUZ', 'ESCOBAL', 'ALDAIR', 1, 0, '181325', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '955090772', '181325@unamba.edu.pe\r'),
(587, '2023-2', '73274775', 'RAMOS', 'SIHUINCHA', 'MIRIAM', 2, 0, '181344', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '931220536', '181344@unamba.edu.pe\r'),
(588, '2023-2', '72962198', 'RIVERA', 'BARRIENTOS', 'KATHIA', 2, 0, '181347', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '900597215', '181347@unamba.edu.pe\r'),
(589, '2023-2', '71550747', 'ANCALLA', 'SIVINCHA', 'NILBER ANTONIO', 1, 0, '191369', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '916209285', '191369@unamba.edu.pe\r'),
(590, '2023-2', '74445913', 'ARTEAGA', 'BARAZORDA', 'MARITZA', 2, 0, '191370', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '963787101', '191370@unamba.edu.pe\r'),
(591, '2023-2', '73486625', 'BLAS', 'CRUZ', 'ARACELY KASSANDRA', 2, 0, '191373', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '929274485', '191373@unamba.edu.pe\r'),
(592, '2023-2', '75174145', 'BRAVO', 'VALDERRAMA', 'CRISTHIAN GEORGES', 1, 0, '191374', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '997348537', '191374@unamba.edu.pe\r'),
(593, '2023-2', '75660915', 'CALSIN', 'PALOMINO', 'SARAI', 2, 0, '191375', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '921215983', '191375@unamba.edu.pe\r'),
(594, '2023-2', '73650748', 'CARDENAS', 'HUAMAN', 'ANNIE YEP', 2, 0, '191376', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '979937660', '191376@unamba.edu.pe\r'),
(595, '2023-2', '71805811', 'CARRION', ' PALOMINO', 'ANALY', 2, 0, '191377', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '949737136', '191377@unamba.edu.pe\r'),
(596, '2023-2', '75683240', 'CCASANI', 'PINARES', 'ALEX', 1, 0, '191379', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '961838822', '191379@unamba.edu.pe\r'),
(597, '2023-2', '75582070', 'CUELLAR', 'DE LA CRUZ', 'MARIA CRISTINA', 2, 0, '191385', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '970646173', '191385@unamba.edu.pe\r'),
(598, '2023-2', '74942903', 'CUSCO', 'BALDEON', 'JHENIFFER', 2, 0, '191386', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '935217786', '191386@unamba.edu.pe\r'),
(599, '2023-2', '74421828', 'ECCOÑA', 'CASTRO', 'KEVIN', 1, 0, '191387', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '991255262', '191387@unamba.edu.pe\r'),
(600, '2023-2', '75874566', 'ESPINOZA', 'QUISPE', 'MARIFE DAYANA', 2, 0, '191388', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '956247271', '191388@unamba.edu.pe\r'),
(601, '2023-2', '74415429', 'ESPINOZA', 'UTANI', 'RUTH MERY', 2, 0, '191389', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '997816161', '191389@unamba.edu.pe\r'),
(602, '2023-2', '77291288', 'GARAY', 'ROMAN', 'FLOR DE  MARIA', 2, 0, '191390', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '984107543', '191390@unamba.edu.pe\r'),
(603, '2023-2', '70384155', 'HUAMANÑAHUI', 'BARAZORDA', 'MILAGROS NELLY', 2, 0, '191393', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '967234984', '191393@unamba.edu.pe\r'),
(604, '2023-2', '71794507', 'HUARANCCA', 'RAMIREZ', 'MELANY', 2, 0, '191395', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '991863515', '191395@unamba.edu.pe\r'),
(605, '2023-2', '77327414', 'LAURA', 'CHALCO', 'NAYELY', 2, 0, '191397', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '931144523', '191397@unamba.edu.pe\r'),
(606, '2023-2', '71654732', 'LOPEZ', 'ASTO', 'ROSABEL', 2, 0, '191398', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '900436016', '191398@unamba.edu.pe\r'),
(607, '2023-2', '73756101', 'LOZANO', 'PANAIFO', 'PITER LUIGUI', 1, 0, '191399', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '921148387', '191399@unamba.edu.pe\r'),
(608, '2023-2', '70440713', 'MERINO', 'RIVERA', 'LUIS RICARDO', 1, 0, '191404', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '965184629', '191404@unamba.edu.pe\r'),
(609, '2023-2', '46901855', 'MIRANDA', 'TEVES DE FERNANDEZ', 'LIZBET', 2, 0, '191405', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '946754222', '191405@unamba.edu.pe\r'),
(610, '2023-2', '75323724', 'MONZA', 'CCENTE', 'WILLIAM ENRIQUE', 1, 0, '191406', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '913989312', '191406@unamba.edu.pe\r'),
(611, '2023-2', '74445948', 'MONZON', 'MENDOZA', 'KATERINE SHOMARA', 2, 0, '191407', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '940893971', '191407@unamba.edu.pe\r'),
(612, '2023-2', '75598665', 'NAVEDA', 'BACILIO', 'WILFREDO', 1, 0, '191409', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '929934076', '191409@unamba.edu.pe\r'),
(613, '2023-2', '76062614', 'OLIVERA', 'CAHUANA', 'JULIO CESAR', 1, 0, '191410', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '992123655', '191410@unamba.edu.pe\r'),
(614, '2023-2', '71334964', 'OSCCO', 'PEÑA', 'EVELYN', 2, 0, '191412', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '931438804', '191412@unamba.edu.pe\r'),
(615, '2023-2', '74474794', 'PANCHI', 'PABLO', 'ESTEFANY', 2, 0, '191413', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '966939794', '191413@unamba.edu.pe\r'),
(616, '2023-2', '48142515', 'QUISPE', 'CARDENAS', 'YOVANA', 2, 0, '191418', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '928907810', '191418@unamba.edu.pe\r');
INSERT INTO `unamba_docentes` (`Id`, `SEMESTRE`, `DNI`, `APPATERNO`, `APMATERNO`, `NOMBRES`, `SEXO`, `IdEP`, `CODIGO`, `EP`, `CICLO`, `DIRECC`, `TELEF`, `CORREO`) VALUES
(617, '2023-2', '74691099', 'TELLO', 'CHIRINOS', 'FLOR MAGALY', 2, 0, '191424', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '972350832', '191424@unamba.edu.pe\r'),
(618, '2023-2', '74722778', 'VALVERDE', 'SANCHEZ', 'BRITNEY VICTORIA DEL PILAR', 2, 0, '191427', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '963406073', '191427@unamba.edu.pe\r'),
(619, '2023-2', '77157005', 'ZULUAGA', 'REYNAGA', 'BRETMER DAET', 1, 0, '191429', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '948603974', '191429@unamba.edu.pe\r'),
(620, '2023-2', '76306979', 'CARRASCO', 'SALAZAR', 'HENRRY', 1, 0, '182358', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '949126467', '182358@unamba.edu.pe\r'),
(621, '2023-2', '46647622', 'CASTILLA', 'CACERES', 'LUIS ALBERTO', 1, 0, '182360', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '954326217', '182360@unamba.edu.pe\r'),
(622, '2023-2', '75792728', 'CONTRERAS', 'MENA', 'GUILLERMO ANDRES', 1, 0, '182368', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '927155517', '182368@unamba.edu.pe\r'),
(623, '2023-2', '76656306', 'CUSI', 'AGUILAR', 'MARIA LUISA', 2, 0, '182371', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '931337872', '182371@unamba.edu.pe\r'),
(624, '2023-2', '61569864', 'CUSI', 'MONTUFAR', 'MAIRA YAKELIN', 2, 0, '182372', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '910454522', '182372@unamba.edu.pe\r'),
(625, '2023-2', '73459065', 'GUTIERREZ', 'SILVERA', 'BETSY', 2, 0, '182376', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '958215221', '182376@unamba.edu.pe\r'),
(626, '2023-2', '62081172', 'HUACHACA', 'QUISPE', 'NORMA', 2, 0, '182377', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '954247556', '182377@unamba.edu.pe\r'),
(627, '2023-2', '71741311', 'LLACTA', 'HUAMANI', 'YUBER', 1, 0, '182384', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '941899036', '182384@unamba.edu.pe\r'),
(628, '2023-2', '75792732', 'PIMENTEL', 'QUISPE', 'FRANCO', 1, 0, '182390', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '928380058', '182390@unamba.edu.pe\r'),
(629, '2023-2', '76838961', 'RAMOS', 'CASAVERDE', 'REYNA MARITZA', 2, 0, '182396', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '925337781', '182396@unamba.edu.pe\r'),
(630, '2023-2', '76266358', 'ROJAS', 'HUANACCHIRI', 'WENDY', 2, 0, '182399', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '953317494', '182399@unamba.edu.pe\r'),
(631, '2023-2', '70789376', 'ACUÑA', 'HERENCIA', 'GERTRUDES', 2, 0, '182350', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '940152832', '182350@unamba.edu.pe\r'),
(632, '2023-2', '74911274', 'CAPARO', 'AVALOS', 'ROZY NATHALY', 2, 0, '182356', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '953792079', '182356@unamba.edu.pe\r'),
(633, '2023-2', '75174195', 'ACHULLI', 'VERA', 'JHON STEVE', 1, 0, '181367', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '961028973', '181367@unamba.edu.pe\r'),
(634, '2023-2', '75660897', 'ESPINOZA', 'UTANI', 'DEBORA', 2, 0, '181386', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '900436085', '181386@unamba.edu.pe\r'),
(635, '2023-2', '73604017', 'TORRES', 'VALENZUELA', 'FLOR DIANA', 2, 0, '181421', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '947701019', '181421@unamba.edu.pe\r'),
(636, '2023-2', '71960336', 'ZAPATA', 'CHALQUE', 'GONZALO', 1, 0, '181425', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '916735557', '181425@unamba.edu.pe\r'),
(637, '2023-2', '74279840', 'MARIÑO', 'SERRANO', 'NAYSHA MELANI', 2, 0, '162252', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '919 034 3', '162252@unamba.edu.pe\r'),
(638, '2023-2', '74587268', 'RIVAS', 'CASTAÑEDA', 'JUDITH', 2, 0, '162262', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '929163128', '162262@unamba.edu.pe\r'),
(639, '2023-2', '77017908', 'BUSTINZA', 'MONTES', 'JESUS', 1, 0, '171263', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '918541229', '171263@unamba.edu.pe\r'),
(640, '2023-2', '75093253', 'VILLAFUERTE', 'AEDO', 'EDITH SANDRA', 2, 0, '171296', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '973078217', '171296@unamba.edu.pe\r'),
(641, '2023-2', '76081122', 'BATALLANOS', 'SORIA', 'SHARON PAMELA', 2, 0, '172246', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '974403857', '172246@unamba.edu.pe\r'),
(642, '2023-2', '46490485', 'GUTIERREZ', 'PALOMINO', 'ALEX', 1, 0, '172255', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '992086047', '172255@unamba.edu.pe\r'),
(643, '2023-2', '75498186', 'BORDA', 'CEPEDES', 'FLOR DE MARIA', 2, 0, '201103', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '957324208', '201103@unamba.edu.pe\r'),
(644, '2023-2', '71654687', 'ESPINOZA', 'MAIHUIRE', 'LISBETH', 2, 0, '201105', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '901508819', '201105@unamba.edu.pe\r'),
(645, '2023-2', '75710898', 'MENA', 'AGUIRRE', 'MELANY', 2, 0, '201108', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '978851188', '201108@unamba.edu.pe\r'),
(646, '2023-2', '73662039', 'QUISPE', 'HURTADO', 'ANA LISEY', 2, 0, '201111', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '921243736', '201111@unamba.edu.pe\r'),
(647, '2023-2', '75746862', 'SERRANO', 'BACA', 'FLUKER', 1, 0, '201112', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '912866032', '201112@unamba.edu.pe\r'),
(648, '2023-2', '77018043', 'SOLORZANO', 'GUTIERREZ', 'MARGOT', 2, 0, '201113', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '918118521', '201113@unamba.edu.pe\r'),
(649, '2023-2', '76129080', 'TAPIA', 'CAHUANA', 'GHERSON', 1, 0, '201114', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '983949988', '201114@unamba.edu.pe\r'),
(650, '2023-2', '75917792', 'ABUHADBA', 'ACHO', 'GENESIS DULNAYA', 2, 0, '201166', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '931077845', '201166@unamba.edu.pe\r'),
(651, '2023-2', '76834441', 'CARHUAS', 'ACUÑA', 'YUBITSA JUANA', 2, 0, '201168', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '983801154', '201168@unamba.edu.pe\r'),
(652, '2023-2', '75866871', 'CCAHUANA', 'CONDORI', 'SHANDEE IRINEO', 2, 0, '201169', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '951287057', '201169@unamba.edu.pe\r'),
(653, '2023-2', '75931361', 'CHUMBES', 'HUANACO', 'MARIBEL', 2, 0, '201170', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '931034668', '201170@unamba.edu.pe\r'),
(654, '2023-2', '74461057', 'RIOJA', 'QUISPE', 'ISABEL DE LA O', 2, 0, '201174', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '910111541', '201174@unamba.edu.pe\r'),
(655, '2023-2', '71297354', 'SILVA', 'FERRO', 'VICENTE', 1, 0, '201175', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '', '201175@unamba.edu.pe\r'),
(656, '2023-2', '76527326', 'GONZALES', 'LAIME', 'MARILE CLAUDIA', 2, 0, '201325', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '987653267', '201325@unamba.edu.pe\r'),
(657, '2023-2', '73099880', 'AGUIRRE', 'ALLCCA', 'ADANY', 1, 0, '112247', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '986330349', '112247@unamba.edu.pe\r'),
(658, '2023-2', '70765708', 'GOMEZ', 'GOMEZ', 'ANDRES CRISTIAN', 1, 0, '112265', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '956875439', '112265@unamba.edu.pe\r'),
(659, '2023-2', '77417425', 'BEDIA', 'CAIPANI', 'AIRTON ROMAIN', 1, 0, '131187', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '946791454', '131187@unamba.edu.pe\r'),
(660, '2023-2', '71909945', 'AVALOS', 'CONTRERAS', 'ALEX JOE', 1, 0, '141271', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '973653531', '141271@unamba.edu.pe\r'),
(661, '2023-2', '76657827', 'GARFIAS', 'CHICLLA', 'YURICA YUCELI', 2, 0, '151251', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '910939376', '151251@unamba.edu.pe\r'),
(662, '2023-2', '75961501', 'LAURA', 'SANTI', 'DENIS ', 1, 0, '151269', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '935792622', '151269@unamba.edu.pe\r'),
(663, '2023-2', '76274122', 'QUIO', 'MAQUERA', 'ARON ANTHONY', 1, 0, '151281', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '983311270', '151281@unamba.edu.pe\r'),
(664, '2023-2', '75821023', 'CENTENO', 'KARI', 'BLADIMIR', 1, 0, '152194', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '950368144', '152194@unamba.edu.pe\r'),
(665, '2023-2', '73235399', 'AUQUIPUMA', 'CCORAHUA', 'YURIKA', 2, 0, '192327', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '964895644', '192327@unamba.edu.pe\r'),
(666, '2023-2', '73772977', 'CAMARGO', 'NARVAEZ', 'CRISTIAN', 1, 0, '192331', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '912197977', '192331@unamba.edu.pe\r'),
(667, '2023-2', '74445254', 'CARHUAMACA', 'PIMENTEL', 'SHARMELY ANSHELA', 2, 0, '192332', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '943780482', '192332@unamba.edu.pe\r'),
(668, '2023-2', '70551912', 'CURO', 'ONTON', 'FLOR MILAGROS', 2, 0, '192335', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '949635878', '192335@unamba.edu.pe\r'),
(669, '2023-2', '71383922', 'JARA', 'VARGAS', 'VANESSA', 2, 0, '192342', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '951121604', '192342@unamba.edu.pe\r'),
(670, '2023-2', '74050739', 'LLOCLLA', 'BERMUDEZ', 'MAYKOL YORDAN', 1, 0, '192344', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '925904383', '192344@unamba.edu.pe\r'),
(671, '2023-2', '77177588', 'MALLQUI', 'VEGA', 'ERICK JHERSON', 1, 0, '192345', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '923428859', '192345@unamba.edu.pe\r'),
(672, '2023-2', '48955465', 'MEDINA', 'TAIPE', 'JEYDY SHANIRA', 2, 0, '192347', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '914941069', '192347@unamba.edu.pe\r'),
(673, '2023-2', '80851707', 'ORTIZ', 'CARRION', 'ERLITH EULOGIA', 2, 0, '192350', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '974372053', '192350@unamba.edu.pe\r'),
(674, '2023-2', '47567473', 'QUISPE', 'PANEBRA', 'MARITZA', 2, 0, '192354', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '901003372', '192354@unamba.edu.pe\r'),
(675, '2023-2', '74926486', 'RIVAS', 'ZANABRIA', 'RUTH NOEMI', 2, 0, '192356', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '992809553', '192356@unamba.edu.pe\r'),
(676, '2023-2', '77296813', 'SAAVEDRA', 'CARRION', 'BRIGUITH', 2, 0, '192359', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '980711869', '192359@unamba.edu.pe\r'),
(677, '2023-2', '77911943', 'SALAS', 'HUAMANI', 'MARIA FLORA', 2, 0, '192360', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '987330758', '192360@unamba.edu.pe\r'),
(678, '2023-2', '75018276', 'VELASQUEZ', 'VARGAS', 'MARIA EMILIA', 2, 0, '192371', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '931201037', '192371@unamba.edu.pe\r'),
(679, '2023-2', '77214563', 'CASTILLA', 'PINARES', 'GABRIEL', 1, 0, '191504', 'INGENIERÍA DE MINAS (COTABAMBAS)', 10, '', '900091040', '191504@unamba.edu.pe\r'),
(680, '2023-2', '74630546', 'MALDONADO', 'AYQUIPA', 'FRANKLIN', 1, 0, '152224', 'INGENIERÍA DE MINAS (COTABAMBAS)', 10, '', '917953210', '152224@unamba.edu.pe\r'),
(681, '2023-2', '77139120', 'CUCHO', 'CCARI', 'LUIS FERNANDO', 1, 0, '191511', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '929655210', '191511@unamba.edu.pe\r'),
(682, '2023-2', '71077871', 'MAMANI', 'YARICE', 'YOVANI FREDY', 1, 0, '191530', 'INGENIERÍA DE MINAS (COTABAMBAS)', 9, '', '949279088', '191530@unamba.edu.pe\r'),
(683, '2023-2', '71764247', 'QUISPE', 'TARAPAQUI', 'JOSE LUIS', 1, 0, '191531', 'INGENIERÍA DE MINAS (COTABAMBAS)', 9, '', '913380082', '191531@unamba.edu.pe\r'),
(684, '2023-2', '73766524', 'ARONI', 'FLORES', 'JHOSEP JUNIOR', 1, 0, '191501', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '973043641', '191501@unamba.edu.pe\r'),
(685, '2023-2', '74544546', 'ARONI', 'CHECYA', 'JOVINO', 1, 0, '182480', 'INGENIERÍA DE MINAS (COTABAMBAS)', 9, '', '957178716', '182480@unamba.edu.pe\r'),
(686, '2023-2', '73785929', 'HUARAC', 'LIMA', 'JHAN CARLOS', 1, 0, '182486', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '932526316', '182486@unamba.edu.pe\r'),
(687, '2023-2', '71211402', 'QUISPE', 'FARFAN', 'JHON DARCY', 1, 0, '182494', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '958381620', '182494@unamba.edu.pe\r'),
(688, '2023-2', '74621949', 'MALLCO', 'CRUZ', 'ALBERTO FREDY', 1, 0, '181508', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '900077812', '181508@unamba.edu.pe\r'),
(689, '2023-2', '60315824', 'MENDOZA', 'SOTA', 'SAYDA LUISA', 2, 0, '181511', 'INGENIERÍA DE MINAS (COTABAMBAS)', 9, '', '993946916', '181511@unamba.edu.pe\r'),
(690, '2023-2', '71201588', 'QUISPE', 'GALLEGOS', 'MIGUEL ANGEL', 1, 0, '181519', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '900911030', '181519@unamba.edu.pe\r'),
(691, '2023-2', '72389419', 'TAIPE', 'HURTADO', 'VERYOSKA', 2, 0, '181527', 'INGENIERÍA DE MINAS (COTABAMBAS)', 10, '', '927293481', '181527@unamba.edu.pe\r'),
(692, '2023-2', '71194351', 'TAIPE', 'PEÑA', 'AYBEN', 1, 0, '181528', 'INGENIERÍA DE MINAS (COTABAMBAS)', 10, '', '964273851', '181528@unamba.edu.pe\r'),
(693, '2023-2', '76420002', 'ZAMORA', 'SONDO', 'YOHAN', 1, 0, '181535', 'INGENIERÍA DE MINAS (COTABAMBAS)', 9, '', '993720545', '181535@unamba.edu.pe\r'),
(694, '2023-2', '73800143', 'BLAS', 'CHIPAYO', 'FRAN CRISTIAN', 1, 0, '191503', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '972848059', '191503@unamba.edu.pe\r'),
(695, '2023-2', '74482245', 'CHIPA', 'JAQUIS', 'ERICK NILDON', 1, 0, '181494', 'INGENIERÍA DE MINAS (COTABAMBAS)', 9, '', '948215496', '181494@unamba.edu.pe\r'),
(696, '2023-2', '46508556', 'QUISPE', 'VERA', 'YOSEDY', 2, 0, '172367', 'INGENIERÍA DE MINAS (COTABAMBAS)', 10, '', '931834256', '172367@unamba.edu.pe\r'),
(697, '2023-2', '76058449', 'DAVILA', 'OVIEDO', ' RONY', 1, 0, '161281', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '930919583', '161281@unamba.edu.pe\r'),
(698, '2023-2', '74615888', 'MELENDEZ', 'AQUIMA', 'LEYCHAVEN', 1, 0, '171369', 'INGENIERÍA DE MINAS (COTABAMBAS)', 10, '', '901671570', '171369@unamba.edu.pe\r'),
(699, '2023-2', '74431323', 'SULLCAHUAMAN', 'FLORES', 'BLADIMIR IDIR', 1, 0, '171375', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '916634910', '171375@unamba.edu.pe\r'),
(700, '2023-2', '74430097', 'ZAMORA', 'QUISPE', 'ROGER', 1, 0, '171379', 'INGENIERÍA DE MINAS (COTABAMBAS)', 10, '', '915380432', '171379@unamba.edu.pe\r'),
(701, '2023-2', '77215253', 'TORRES', 'NINA', 'SERAFIN ', 1, 0, '201155', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '964136061', '201155@unamba.edu.pe\r'),
(702, '2023-2', '41971429', 'ARANGO', 'MARIACA', 'Fritz Jesus', 1, 0, '142303', 'INGENIERÍA DE MINAS (COTABAMBAS)', 9, '', '982406477', '142303@unamba.edu.pe\r'),
(703, '2023-2', '76019801', 'CCONISLLA', 'HUAMANI', 'RONALDO', 1, 0, '151363', 'INGENIERÍA DE MINAS (COTABAMBAS)', 10, '', '953864931', '151363@unamba.edu.pe\r'),
(704, '2023-2', '73639310', 'ARREDONDO', 'ESTRADA', 'FREDY', 1, 0, '151365', 'INGENIERÍA DE MINAS (COTABAMBAS)', 9, '', '930871603', '151365@unamba.edu.pe\r'),
(705, '2023-2', '74622274', 'CONZA', 'PACHECO', 'MAICOL JAINOR', 1, 0, '191510', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '925734153', '191510@unamba.edu.pe\r'),
(706, '2023-2', '72150031', 'FUENTES', 'ARREDONDO', 'PILAR', 2, 0, '192455', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '944065827', '192455@unamba.edu.pe\r'),
(707, '2023-2', '74579026', 'GONZALES', 'QUISPE', 'CRISTIAN', 1, 0, '192458', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '963415333', '192458@unamba.edu.pe\r'),
(708, '2023-2', '48054380', 'LIMA', 'HUILLCA', 'JUAN CARLOS', 1, 0, '192468', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '992437896', '192468@unamba.edu.pe\r'),
(709, '2023-2', '71548567', 'MAMANI', 'HUILLCA', 'YANET', 2, 0, '192471', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '928353516', '192471@unamba.edu.pe\r'),
(710, '2023-2', '43806567', 'MERMA', 'CARDENAS', 'FERDINAN', 1, 0, '192473', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '982690411', '192473@unamba.edu.pe\r'),
(711, '2023-2', '74991476', 'PANIURA', 'YAGUILLO', 'ROMULO', 1, 0, '192479', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '931779598', '192479@unamba.edu.pe\r'),
(712, '2023-2', '71290766', 'RAMOS', 'DURAN', 'RAUL SAMUEL', 1, 0, '192480', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '956797988', '192480@unamba.edu.pe\r'),
(713, '2023-2', '77288375', 'SALAS', 'HUAMANI', 'NESTOR', 1, 0, '192482', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '914959136', '192482@unamba.edu.pe\r'),
(714, '2023-2', '72309137', 'ARCOS', 'HUILLCA', 'JOSE', 1, 0, '191543', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '946711991', '191543@unamba.edu.pe\r'),
(715, '2023-2', '76419982', 'ARISAPANA', 'CONDORI', 'BERNABE LUCHO', 1, 0, '191544', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '931358019', '191544@unamba.edu.pe\r'),
(716, '2023-2', '75934964', 'ARRAMBIDE', 'MENDOZA', 'JAIME', 1, 0, '191545', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '987708748', '191545@unamba.edu.pe\r'),
(717, '2023-2', '60520474', 'ARREDONDO', 'CHUMBES', 'NILDA', 2, 0, '191546', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '900449986', '191546@unamba.edu.pe\r'),
(718, '2023-2', '72625557', 'CAYLLAHUA', 'OLMEDO', 'FRED TONY', 1, 0, '191550', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '928655158', '191550@unamba.edu.pe\r'),
(719, '2023-2', '77682926', 'CERECEDA', 'ESCOBEDO', 'GISELA', 2, 0, '191551', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '963749792', '191551@unamba.edu.pe\r'),
(720, '2023-2', '72165512', 'CHAHUAYLLO', 'CONDORI', 'LIBIA', 1, 0, '191552', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '973535245', '191552@unamba.edu.pe\r'),
(721, '2023-2', '71654738', 'CHECCLLO', 'VALENZUELA', 'SITNAE', 2, 0, '191553', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '935315060', '191553@unamba.edu.pe\r'),
(722, '2023-2', '74580805', 'CHUMBES', 'QUISPE', 'JORGE GERARDO', 1, 0, '191554', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '914257241', '191554@unamba.edu.pe\r'),
(723, '2023-2', '76502638', 'CONDORI', 'LIMA', 'RUTH KARINA', 2, 0, '191555', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '901057399', '191555@unamba.edu.pe\r'),
(724, '2023-2', '74361285', 'ESPINOZA', 'DIAZ', 'FANY', 2, 0, '191560', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '941230617', '191560@unamba.edu.pe\r'),
(725, '2023-2', '75902280', 'HUACHO', 'LAYME', 'EDITH', 2, 0, '191563', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '980701130', '191563@unamba.edu.pe\r'),
(726, '2023-2', '77084158', 'HUANCARA', 'GUILLEN', 'NALY EDITH', 2, 0, '191566', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '982155748', '191566@unamba.edu.pe\r'),
(727, '2023-2', '72276248', 'HUILLCA', 'QUISPE', 'NAYDA SINTHIA', 2, 0, '191568', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '969394330', '191568@unamba.edu.pe\r'),
(728, '2023-2', '70815635', 'QUISPE', 'FLORES', 'OSCAR ALEXANDER', 1, 0, '191576', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '916830002', '191576@unamba.edu.pe\r'),
(729, '2023-2', '75871564', 'UGARTE', 'PERLACIO', 'KARINA', 2, 0, '191583', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '932382819', '191583@unamba.edu.pe\r'),
(730, '2023-2', '74483494', 'YANQQUE', 'CCAHUANA', 'YULY', 2, 0, '191588', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '928827308', '191588@unamba.edu.pe\r'),
(731, '2023-2', '74448367', 'YUCRA', 'LOZANO', 'YOVANA', 2, 0, '191589', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '901259521', '191589@unamba.edu.pe\r'),
(732, '2023-2', '74483692', 'ZAMORA', 'QUISPE', 'ROSA', 2, 0, '191590', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '931552633', '191590@unamba.edu.pe\r'),
(733, '2023-2', '72155967', 'ANCCO', 'CHUMBEZ', 'YENY MILAGROS', 2, 0, '182498', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '921336604', '182498@unamba.edu.pe\r'),
(734, '2023-2', '76462191', 'CONDORI', 'SIPAUCCAR', 'NANCY LUCILA', 2, 0, '182511', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '935082138', '182511@unamba.edu.pe\r'),
(735, '2023-2', '74440245', 'HUAÑAHUI', 'JURO', 'SOLEDAD ERIKA', 2, 0, '182520', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '956338615', '182520@unamba.edu.pe\r'),
(736, '2023-2', '74431334', 'HUAYHUA', 'OVIEDO', 'JANET JAIDA', 2, 0, '182521', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '948919400', '182521@unamba.edu.pe\r'),
(737, '2023-2', '74583210', 'HUILLCA', 'LIMA', 'UBALDINA', 2, 0, '182522', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '914297687', '182522@unamba.edu.pe\r'),
(738, '2023-2', '72232805', 'OSORIO', 'MOLINA', 'LISBETH MARY YESELA', 2, 0, '182527', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '969349512', '182527@unamba.edu.pe\r'),
(739, '2023-2', '73705955', 'PUMA', ' LLAMOCCA', 'MAURO', 1, 0, '182528', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '940801143', '182528@unamba.edu.pe\r'),
(740, '2023-2', '62530245', 'PUMA', 'CHICLLASTO', 'MARLENY', 2, 0, '182529', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '984405255', '182529@unamba.edu.pe\r'),
(741, '2023-2', '74991534', 'PUMA', 'INOSTROZA', 'MAYCOL', 1, 0, '182530', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '917193871', '182530@unamba.edu.pe\r'),
(742, '2023-2', '73711070', 'TARAPAQUI', 'CHAHUAYLLO', 'DAMIAN', 1, 0, '182536', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '958280770', '182536@unamba.edu.pe\r'),
(743, '2023-2', '77435981', 'APASA', 'HUAMANI', 'LUZ MARINA', 2, 0, '181540', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '943774409', '181540@unamba.edu.pe\r'),
(744, '2023-2', '76790325', 'ARAMBURU', 'BERRIO', 'RITA ISABEL', 2, 0, '181541', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '991192545', '181541@unamba.edu.pe\r'),
(745, '2023-2', '74448353', 'ARREDONDO', 'ESTRADA', 'ROSA ROSMERY', 2, 0, '181545', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '927023799', '181545@unamba.edu.pe\r'),
(746, '2023-2', '77218661', 'CCOSCCO', 'HUAMANZANA', 'ALEX', 1, 0, '181552', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '944721637', '181552@unamba.edu.pe\r'),
(747, '2023-2', '75941265', 'CONDORI', 'PUMA', 'ALEXANDER', 1, 0, '181557', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '917011621', '181557@unamba.edu.pe\r'),
(748, '2023-2', '75282991', 'FERRO', 'HUAMAN', 'SAIDA MERCEDES', 2, 0, '181558', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '973528080', '181558@unamba.edu.pe\r'),
(749, '2023-2', '75000877', 'FLORES', 'LUCAS', 'ERMELINDA', 2, 0, '181559', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '900419269', '181559@unamba.edu.pe\r'),
(750, '2023-2', '76778288', 'GONZALES', 'PEÑA', 'SALY NOELIA', 2, 0, '181561', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '946970638', '181561@unamba.edu.pe\r'),
(751, '2023-2', '73737069', 'HUAMANI', 'CCOPA', 'NANCY', 2, 0, '181565', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '959182373', '181565@unamba.edu.pe\r'),
(752, '2023-2', '73742373', 'LETONA', 'AMARO', 'ENRIQUE', 1, 0, '181567', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '928769584', '181567@unamba.edu.pe\r'),
(753, '2023-2', '77043853', 'LIMA', 'HUILLCA', 'MARIA ELENA', 2, 0, '181568', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '917232835', '181568@unamba.edu.pe\r'),
(754, '2023-2', '77215288', 'QUISPE', 'PALMA', 'FLAVIO CESAR', 1, 0, '181579', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '973329765', '181579@unamba.edu.pe\r'),
(755, '2023-2', '73856265', 'SALAS', 'LUQUE', 'WILMER PABLO', 1, 0, '181583', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '971967336', '181583@unamba.edu.pe\r'),
(756, '2023-2', '74757062', 'SALCEDO', 'MOLINA', 'NATALIA GLADYS', 2, 0, '181584', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '944060735', '181584@unamba.edu.pe\r'),
(757, '2023-2', '73757146', 'SOLIS', 'BALTAZAR', 'RONY ISMAEL', 1, 0, '181585', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '914548325', '181585@unamba.edu.pe\r'),
(758, '2023-2', '76445020', 'TARAPAQUI', 'CHAHUAYLLO', 'LOURDES ALEJANDRINA', 2, 0, '181591', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '926240858', '181591@unamba.edu.pe\r'),
(759, '2023-2', '72232880', 'GUZMAN', 'GONZALES', 'ALEJANDRA', 1, 0, '172338', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '952308671', '172338@unamba.edu.pe\r'),
(760, '2023-2', '72249051', 'CARRASCO', 'TACO', 'BENJAMIN', 1, 0, '172342', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '931504368', '172342@unamba.edu.pe\r'),
(761, '2023-2', '72143626', 'SULLCAHUAMAN', 'ARISTA', 'DIANA VANESSA', 2, 0, '172344', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '925871264', '172344@unamba.edu.pe\r'),
(762, '2023-2', '71568777', 'QQUENTA', 'SOTO', 'WALTER', 1, 0, '172350', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '930796495', '172350@unamba.edu.pe\r'),
(763, '2023-2', '77814322', 'HUAMANI', 'POSACLLA', ' EDGAR', 1, 0, '161297', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '959308230', '161297@unamba.edu.pe\r'),
(764, '2023-2', '71244937', 'MAMANI', 'TORRES', ' LIZ ELISA', 2, 0, '161304', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '931929665', '161304@unamba.edu.pe\r'),
(765, '2023-2', '74583006', 'MALDONADO', 'GUILLERMO', 'JOSE LUIS', 1, 0, '162334', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '973209784', '162334@unamba.edu.pe\r'),
(766, '2023-2', '73313583', 'CABRERA', 'BOLIVAR', 'ISAURO', 1, 0, '171384', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '935159334', '171384@unamba.edu.pe\r'),
(767, '2023-2', '75232903', 'MOLINA', 'ARAUJO', 'RUTH MERY', 2, 0, '171403', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '925014219', '171403@unamba.edu.pe\r'),
(768, '2023-2', '74426781', 'LIMAYPUMA', 'SILVA', 'CINTHIA YANETH', 2, 0, '172331', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '932003162', '172331@unamba.edu.pe\r'),
(769, '2023-2', '73773343', 'CCAMA', 'ZENTENO', 'JHAMIL FERNANDO', 1, 0, '201333', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '900284423', '201333@unamba.edu.pe\r'),
(770, '2023-2', '73313618', 'ROQUE', 'ESCALANTE', 'EBERT', 1, 0, '122412', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '927965490', '122412@unamba.edu.pe\r'),
(771, '2023-2', '72167424', 'SILVA', 'OLMEDO', 'ANALY MONICA', 2, 0, '151408', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '921180379', '151408@unamba.edu.pe\r'),
(772, '2023-2', '74896379', 'CHAVES', 'BATALLANOS', 'ALDO RUBEN', 1, 0, '151428', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '974729930', '151428@unamba.edu.pe\r'),
(773, '2023-2', '74884206', 'ARCOS', 'QUISPE', 'NELLY MARGOT', 2, 0, '151429', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '989939326', '151429@unamba.edu.pe\r'),
(774, '2023-2', '77540243', 'APAZA', 'CCAHUANA', 'DANIELA', 2, 0, '152227', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '929921551', '152227@unamba.edu.pe\r'),
(775, '2023-2', '70815483', 'ARREDONDO', 'ALFARO', 'HAYDEE', 2, 0, '192441', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '946677581', '192441@unamba.edu.pe\r'),
(776, '2023-2', '44029710', 'CCAMA', 'ZENTENO', 'CHRISTIAN RENE', 1, 0, '192445', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '957048414', '192445@unamba.edu.pe\r'),
(777, '2023-2', '48029611', 'CHUMBES', 'SILVA', 'SAUL RODRIGO', 1, 0, '192450', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '951312708', '192450@unamba.edu.pe\r'),
(778, '2023-2', '76280927', 'OJEDA', 'MANGA', 'FRANK BRYAN', 1, 0, '192404', 'INGENIERIA CIVIL ', 8, '', '929175075', '192404@unamba.edu.pe\r'),
(779, '2023-2', '72279118', 'QUISPE', 'JURO', 'CLEVERTSON ALCIDES', 1, 0, '192408', 'INGENIERIA CIVIL ', 9, '', '993418362', '192408@unamba.edu.pe\r'),
(780, '2023-2', '60117565', 'SILVA', 'SALAS', 'JHOSET AMERICO', 1, 0, '192417', 'INGENIERIA CIVIL ', 8, '', '913114328', '192417@unamba.edu.pe\r'),
(781, '2023-2', '76007823', 'ARONI', 'BORDA', 'EVELYN KATHERINE', 2, 0, '192493', 'INGENIERIA CIVIL ', 8, '', '931336692', '192493@unamba.edu.pe\r'),
(782, '2023-2', '72165554', 'ARRAMBIDE', 'VILCA', 'JOSE LUIS', 1, 0, '192494', 'INGENIERIA CIVIL ', 8, '', '914936200', '192494@unamba.edu.pe\r'),
(783, '2023-2', '72412701', 'CONDORI', 'SANTOS', 'JULIO CESAR', 1, 0, '192507', 'INGENIERIA CIVIL ', 8, '', '982354630', '192507@unamba.edu.pe\r'),
(784, '2023-2', '74126482', 'PORTILLA', 'HUALLPA', 'MANUEL FLORENCIO', 1, 0, '192527', 'INGENIERIA CIVIL ', 8, '', '916813208', '192527@unamba.edu.pe\r'),
(785, '2023-2', '75628908', 'VARGAS', 'FERREL', 'DEYVIS NEPTALI', 1, 0, '191476', 'INGENIERIA CIVIL ', 9, '', '929947386', '191476@unamba.edu.pe\r'),
(786, '2023-2', '73016195', 'VILCA', 'NARVAEZ', 'RONALD', 1, 0, '162345', 'INGENIERIA CIVIL ', 9, '', '900601289', '162345@unamba.edu.pe\r'),
(787, '2023-2', '48426876', 'ABRIGO', 'GONZALES', 'SOLEDAD', 2, 0, '152239', 'INGENIERIA CIVIL ', 9, '', '935279602', '152239@unamba.edu.pe\r'),
(788, '2023-2', '73614986', 'GONZALES', 'QUISPE', 'YAMELIN STEFANY', 2, 0, '191447', 'INGENIERIA CIVIL ', 9, '', '987810589', '191447@unamba.edu.pe\r'),
(789, '2023-2', '73683847', 'CONDORI', 'SEGOVIA', 'ADEL', 1, 0, '191437', 'INGENIERIA CIVIL ', 9, '', '900443468', '191437@unamba.edu.pe\r'),
(790, '2023-2', '77078535', 'ESTRADA', 'CONTRERAS', 'VICTOR RAMON', 1, 0, '172291', 'INGENIERIA CIVIL ', 9, '', '936653652', '172291@unamba.edu.pe\r'),
(791, '2023-2', '70379117', 'DELGADO', 'ACHATA', 'MAXIMO', 1, 0, '142372', 'INGENIERIA CIVIL ', 10, '', '946286436', '142372@unamba.edu.pe\r'),
(792, '2023-2', '48765665', 'LUCAS', 'PUMA', 'DE LA CRUZ', 1, 0, '152287', 'INGENIERIA CIVIL ', 10, '', '963406679', '152287@unamba.edu.pe\r'),
(793, '2023-2', '77905991', 'CCOLQUE', 'HILARIO', 'KATERIN ROSALBA', 2, 0, '162336', 'INGENIERIA CIVIL ', 10, '', '993271334', '162336@unamba.edu.pe\r'),
(794, '2023-2', '71288358', 'HUAMANI', 'ACHAICA', 'ELISEO', 1, 0, '172298', 'INGENIERIA CIVIL ', 10, '', '900076417', '172298@unamba.edu.pe\r'),
(795, '2023-2', '71772909', 'CASERES', 'ARIAS', 'MAYRA  LUCINA', 2, 0, '182415', 'INGENIERIA CIVIL ', 10, '', '917955643', '182415@unamba.edu.pe\r'),
(796, '2023-2', '74527554', 'ECCOÑA', 'CAHUANA', 'IGNACIO AMILCAR', 1, 0, '191442', 'INGENIERIA CIVIL ', 10, '', '944269886', '191442@unamba.edu.pe\r'),
(797, '2023-2', '74431320', 'HUAYHUA', 'BARCENA', 'REYSU', 2, 0, '171434', 'INGENIERIA CIVIL ', 10, '', '972460912', '171434@unamba.edu.pe\r'),
(798, '2023-2', '48532033', 'AUKGAPURI', 'HUITOCCOLLO', 'ARMANDO', 1, 0, '181602', 'INGENIERIA CIVIL ', 10, '', '900904640', '181602@unamba.edu.pe\r'),
(799, '2023-2', '74470665', 'MENDOZA', 'BUSTINZA', 'ANDRE', 1, 0, '191454', 'INGENIERIA CIVIL ', 10, '', '913870809', '191454@unamba.edu.pe\r'),
(800, '2023-2', '47677869', 'CONDORI', 'NINA', 'BINICIO', 1, 0, '121419', 'INGENIERIA CIVIL ', 10, '', '935562326', '121419@unamba.edu.pe\r'),
(801, '2023-2', '71609811', 'NAVARRO', 'CARDENAS', 'WILFREDO', 1, 0, '182448', 'INGENIERIA CIVIL ', 10, '', '981578835', '182448@unamba.edu.pe\r'),
(802, '2023-2', '76654225', 'TEVES', 'FERREL', 'NATALY XIOMARA', 2, 0, '181478', 'INGENIERIA CIVIL ', 10, '', '900076893', '181478@unamba.edu.pe\r'),
(803, '2023-2', '73067274', 'ALVARADO', 'ZARATE', 'ALBERT ALEXANDRO', 1, 0, '181428', 'INGENIERIA CIVIL ', 10, '', '924602373', '181428@unamba.edu.pe\r'),
(804, '2023-2', '71289444', 'AVALOS', 'CASILLA', 'ISAIAS', 1, 0, '181430', 'INGENIERIA CIVIL ', 10, '', '984412202', '181430@unamba.edu.pe\r'),
(805, '2023-2', '72466506', 'CRESPO', 'FERNANDEZ', 'ROGER ANTONY', 1, 0, '181441', 'INGENIERIA CIVIL ', 10, '', '928398074', '181441@unamba.edu.pe\r'),
(806, '2023-2', '48910165', 'CRUZ', 'CHIPANI', 'EDISON', 1, 0, '181442', 'INGENIERIA CIVIL ', 10, '', '973825466', '181442@unamba.edu.pe\r'),
(807, '2023-2', '72148621', 'GONZALES', 'CONDORI', 'MIKE MEIER', 1, 0, '181447', 'INGENIERIA CIVIL ', 10, '', '980984604', '181447@unamba.edu.pe\r'),
(808, '2023-2', '74361265', 'GUILLEN', 'GUILLEN', 'EDGAR', 1, 0, '181448', 'INGENIERIA CIVIL ', 8, '', '948567160', '181448@unamba.edu.pe\r'),
(809, '2023-2', '70383325', 'HUAMANRIMACHI', 'HUAMAN', 'NICOL MELANY', 2, 0, '181453', 'INGENIERIA CIVIL ', 10, '', '954110168', '181453@unamba.edu.pe\r'),
(810, '2023-2', '71866602', 'HUAYTARA', 'HUILLCA', 'KEVIN GEOVANY', 1, 0, '181454', 'INGENIERIA CIVIL ', 10, '', '928429126', '181454@unamba.edu.pe\r'),
(811, '2023-2', '71734976', 'LLACTAHUAMANI', 'CHUMBE', 'MAYHUA', 2, 0, '181458', 'INGENIERIA CIVIL ', 9, '', '923290073', '181458@unamba.edu.pe\r'),
(812, '2023-2', '73068537', 'PORTUGAL', 'AIQUIPA', 'JOSE LUIS', 1, 0, '181464', 'INGENIERIA CIVIL ', 10, '', '928381099', '181464@unamba.edu.pe\r'),
(813, '2023-2', '74439136', 'TUIRO', 'SAAVEDRA', 'NIVIO', 1, 0, '152261', 'INGENIERIA CIVIL ', 10, '', '992157191', '152261@unamba.edu.pe\r'),
(814, '2023-2', '72020265', 'JORDAN', 'GABANCHO', 'JHOJANS EDWARDO', 1, 0, '152285', 'INGENIERIA CIVIL ', 10, '', '961476316', '152285@unamba.edu.pe\r'),
(815, '2023-2', '72148666', 'ALVAREZ', 'HANAMPA', 'WILFREDO', 1, 0, '161312', 'INGENIERIA CIVIL ', 9, '', '968357292', '161312@unamba.edu.pe\r'),
(816, '2023-2', '73313582', 'BOLIVAR', 'ARANGURI', ' FERNANDO TADEO', 1, 0, '161315', 'INGENIERIA CIVIL ', 9, '', '930527702', '161315@unamba.edu.pe\r'),
(817, '2023-2', '74322725', 'CAILLAHUA', 'ALVIS', 'ROMARIO', 1, 0, '161316', 'INGENIERIA CIVIL ', 8, '', '910089830', '161316@unamba.edu.pe\r'),
(818, '2023-2', '74621793', 'CHUMBES', 'AGUILAR', ' WILSON AMILCAR', 1, 0, '161321', 'INGENIERIA CIVIL ', 8, '', '916532241', '161321@unamba.edu.pe\r'),
(819, '2023-2', '70764841', 'CRUZ', 'AGUIRRE', 'SHAVERLY YOHANA', 2, 0, '161324', 'INGENIERIA CIVIL ', 8, '', '973654671', '161324@unamba.edu.pe\r'),
(820, '2023-2', '72675661', 'INCA', 'PALOMINO', 'FRANCISCO', 1, 0, '162299', 'INGENIERIA CIVIL ', 10, '', '921795837', '162299@unamba.edu.pe\r'),
(821, '2023-2', '70197647', 'QUISPE', 'SORAS', 'ROMARIO JUAN', 1, 0, '162307', 'INGENIERIA CIVIL ', 9, '', '957030870', '162307@unamba.edu.pe\r'),
(822, '2023-2', '48525678', 'ALARCON', 'AYBAR', 'ANGEL', 1, 0, '171300', 'INGENIERIA CIVIL ', 9, '', '973164488', '171300@unamba.edu.pe\r'),
(823, '2023-2', '74538915', 'ALTAMIRANO', 'SAUÑE', 'CARMEN YULISA', 2, 0, '171301', 'INGENIERIA CIVIL ', 10, '', '910384484', '171301@unamba.edu.pe\r'),
(824, '2023-2', '72394981', 'AMPUERO', 'HUAMAN', 'VICTOR RAUL', 1, 0, '171302', 'INGENIERIA CIVIL ', 8, '', '997268348', '171302@unamba.edu.pe\r'),
(825, '2023-2', '74820850', 'PICONA', 'OJEDA', 'CRISTIAN', 1, 0, '171324', 'INGENIERIA CIVIL ', 9, '', '976291940', '171324@unamba.edu.pe\r'),
(826, '2023-2', '74589543', 'ANDRADA', 'GUTIERREZ', 'JUAN JOSE', 1, 0, '171415', 'INGENIERIA CIVIL ', 10, '', '929169518', '171415@unamba.edu.pe\r'),
(827, '2023-2', '71740222', 'BUENDIA', 'LLACTAHUAMANI', 'SAUL', 1, 0, '172280', 'INGENIERIA CIVIL ', 10, '', '930234094', '172280@unamba.edu.pe\r'),
(828, '2023-2', '73385991', 'BUENDIA', 'SOPA', 'ALEX', 1, 0, '172281', 'INGENIERIA CIVIL ', 10, '', '929905598', '172281@unamba.edu.pe\r'),
(829, '2023-2', '74449256', 'ESCALANTE', 'HUANACO', 'ROSMERY', 2, 0, '172289', 'INGENIERIA CIVIL ', 10, '', '953515303', '172289@unamba.edu.pe\r'),
(830, '2023-2', '73219783', 'QUISPE', 'RAMOS', 'CAROLINA', 2, 0, '172306', 'INGENIERIA CIVIL ', 9, '', '955994334', '172306@unamba.edu.pe\r'),
(831, '2023-2', '76292076', 'VIVANCO', 'GARFIAS', 'MAYLU KENNY', 2, 0, '172313', 'INGENIERIA CIVIL ', 9, '', '914478342', '172313@unamba.edu.pe\r'),
(832, '2023-2', '72281611', 'SILVA', 'CONTRERAS', 'NADINE MILAGROS', 2, 0, '201131', 'INGENIERIA CIVIL ', 8, '', '995311570', '201131@unamba.edu.pe\r'),
(833, '2023-2', '44518649', 'ALVAREZ', 'CARTOLIN', 'RONAL', 1, 0, '121408', 'INGENIERIA CIVIL ', 8, '', '967868926', '121408@unamba.edu.pe\r'),
(834, '2023-2', '47339144', 'ALARCON', 'HUAYHUA', 'VERONICA', 2, 0, '122427', 'INGENIERIA CIVIL ', 10, '', '984319927', '122427@unamba.edu.pe\r'),
(835, '2023-2', '70861158', 'CARRASCO', 'CALLE', 'YESI', 2, 0, '122438', 'INGENIERIA CIVIL ', 10, '', '915203709', '122438@unamba.edu.pe\r'),
(836, '2023-2', '43596134', 'HUARAYA', 'HUAMAN', 'SAUL', 1, 0, '122454', 'INGENIERIA CIVIL ', 10, '', '956697749', '122454@unamba.edu.pe\r'),
(837, '2023-2', '70855965', 'LLICAHUA', 'HUAMANI', 'JOHN  RICHARD', 1, 0, '122458', 'INGENIERIA CIVIL ', 10, '', '987971240', '122458@unamba.edu.pe\r'),
(838, '2023-2', '75661464', 'AYMA', 'BENITES', 'FELIX', 1, 0, '132142', 'INGENIERIA CIVIL ', 10, '', '917912867', '132142@unamba.edu.pe\r'),
(839, '2023-2', '42318896', 'SALINAS', 'RETAMOZO', 'RODOLFO', 1, 0, '132161', 'INGENIERIA CIVIL ', 10, '', '983985590', '132161@unamba.edu.pe\r'),
(840, '2023-2', '48554079', 'TORRES', 'PEREIRA', 'YONATAN', 1, 0, '132164', 'INGENIERIA CIVIL ', 10, '', '984179593', '132164@unamba.edu.pe\r'),
(841, '2023-2', '47716608', 'CAILLAHUA', ' ALVIS', ' CHANO ELISBAN', 1, 0, '141337', 'INGENIERIA CIVIL ', 10, '', '984449537', '141337@unamba.edu.pe\r'),
(842, '2023-2', '71856235', 'LUIS', 'ESCALANTE', 'MARIO', 1, 0, '142360', 'INGENIERIA CIVIL ', 8, '', '928062336', '142360@unamba.edu.pe\r'),
(843, '2023-2', '70790259', 'PINEDA', 'ROJAS ', 'JHONNY', 1, 0, '151291', 'INGENIERIA CIVIL ', 10, '', '963059560', '151291@unamba.edu.pe\r'),
(844, '2023-2', '70813718', 'CHALCO', 'CAMERO', 'MARICRUZ', 2, 0, '151328', 'INGENIERIA CIVIL ', 8, '', '915371966', '151328@unamba.edu.pe\r'),
(845, '2023-2', '74579839', 'ALEJANDRO', 'PEÑA', 'EDISON', 1, 0, '151336', 'INGENIERIA CIVIL ', 10, '', '916038586', '151336@unamba.edu.pe\r'),
(846, '2023-2', '70793390', 'QUINTANA', 'ARONE', 'JUAN BENITO', 1, 0, '152254', 'INGENIERIA CIVIL ', 10, '', '988757518', '152254@unamba.edu.pe\r'),
(847, '2023-2', '78459803', 'CORPUNA', 'CHINO', 'WILFREDO', 1, 0, '192381', 'INGENIERIA CIVIL ', 8, '', '944377966', '192381@unamba.edu.pe\r'),
(848, '2023-2', '71596627', 'HUAMAN', 'HERBAS', 'FREDY', 1, 0, '192390', 'INGENIERIA CIVIL ', 8, '', '957059167', '192390@unamba.edu.pe\r'),
(849, '2023-2', '74449107', 'AUKGAPURI', 'HUITOCCOLLO', 'HENRY ROMARIO', 1, 0, '191597', 'INGENIERIA CIVIL ', 9, '', '915119147', '191597@unamba.edu.pe\r'),
(850, '2023-2', '48190836', 'BETANCUR', 'ORDOÑEZ', 'CHRISTIAN HELMUT', 1, 0, '191600', 'INGENIERIA CIVIL ', 8, '', '927556121', '191600@unamba.edu.pe\r'),
(851, '2023-2', '76445068', 'CARDENAS', 'PANIURA', 'ESMID YONATAN', 1, 0, '191604', 'INGENIERIA CIVIL ', 8, '', '965190142', '191604@unamba.edu.pe\r'),
(852, '2023-2', '77213928', 'HUAMAN', 'ABARCA', 'GERARDO', 1, 0, '191614', 'INGENIERIA CIVIL ', 8, '', '913395683', '191614@unamba.edu.pe\r'),
(853, '2023-2', '73474375', 'SARMIENTO', 'LIVIZACA', 'JESUS', 1, 0, '191633', 'INGENIERIA CIVIL ', 8, '', '926054867', '191633@unamba.edu.pe\r'),
(854, '2023-2', '75333643', 'ARONE', 'VARGAS', 'ROSA', 2, 0, '191431', 'INGENIERIA CIVIL ', 10, '', '914203786', '191431@unamba.edu.pe\r'),
(855, '2023-2', '72268709', 'AUCCAPUMA', 'PICHIHUA', 'OSWALDO', 1, 0, '191433', 'INGENIERIA CIVIL ', 10, '', '948365642', '191433@unamba.edu.pe\r'),
(856, '2023-2', '73543227', 'CAMPOSANO', 'CUELLAR', 'CRISTHIAN', 1, 0, '191435', 'INGENIERIA CIVIL ', 9, '', '920567861', '191435@unamba.edu.pe\r'),
(857, '2023-2', '71735123', 'DAMIAN', 'JUAREZ', 'PEDRO LUIS', 1, 0, '191440', 'INGENIERIA CIVIL ', 8, '', '931959226', '191440@unamba.edu.pe\r'),
(858, '2023-2', '63362516', 'FLORES', 'CASTAÑEDA', 'LUZ REINA', 2, 0, '191443', 'INGENIERIA CIVIL ', 10, '', '917317396', '191443@unamba.edu.pe\r'),
(859, '2023-2', '76032505', 'GARAY', 'ZAMORA', 'LEONELA KATHERINE', 2, 0, '191444', 'INGENIERIA CIVIL ', 8, '', '991090743', '191444@unamba.edu.pe\r'),
(860, '2023-2', '74317632', 'GARRAFA', 'GARCIA', 'SUSAN', 2, 0, '191445', 'INGENIERIA CIVIL ', 10, '', '946899617', '191445@unamba.edu.pe\r'),
(861, '2023-2', '73645523', 'GARZON', 'CHIPANA', 'LUZDELY', 2, 0, '191446', 'INGENIERIA CIVIL ', 10, '', '914606996', '191446@unamba.edu.pe\r'),
(862, '2023-2', '62560822', 'JURO', 'CERECEDA', 'ANGIE KATHERINE', 2, 0, '191451', 'INGENIERIA CIVIL ', 9, '', '964789329', '191451@unamba.edu.pe\r'),
(863, '2023-2', '75774403', 'ÑAHUE', 'BAZAN', 'JHON WILDER', 1, 0, '191455', 'INGENIERIA CIVIL ', 9, '', '959247507', '191455@unamba.edu.pe\r'),
(864, '2023-2', '73362383', 'PANIURA', 'ÑAUPA', 'CRISTIAN ALFONSO', 1, 0, '191457', 'INGENIERIA CIVIL ', 8, '', '957539282', '191457@unamba.edu.pe\r'),
(865, '2023-2', '72026418', 'POCCO', 'UTANI', 'PABEL ANTONY', 1, 0, '191460', 'INGENIERIA CIVIL ', 10, '', '938528761', '191460@unamba.edu.pe\r'),
(866, '2023-2', '76939012', 'QUISPE', 'ANCCO', 'KEVIN', 1, 0, '191461', 'INGENIERIA CIVIL ', 10, '', '949282040', '191461@unamba.edu.pe\r'),
(867, '2023-2', '72085880', 'RAMIREZ', 'LIMAS', 'ANTHONY KLUBER', 1, 0, '191464', 'INGENIERIA CIVIL ', 10, '', '902001836', '191464@unamba.edu.pe\r'),
(868, '2023-2', '75782527', 'RAMOS', 'SANTI', 'FIORELA', 2, 0, '191465', 'INGENIERIA CIVIL ', 8, '', '931127994', '191465@unamba.edu.pe\r'),
(869, '2023-2', '72268282', 'RIVERA', 'ARCE', 'CRISTIAN SMITH', 1, 0, '191467', 'INGENIERIA CIVIL ', 9, '', '921021407', '191467@unamba.edu.pe\r'),
(870, '2023-2', '70419807', 'SACA', 'PECEROS', 'CLINTON GREGORI', 1, 0, '191469', 'INGENIERIA CIVIL ', 9, '', '974019227', '191469@unamba.edu.pe\r'),
(871, '2023-2', '73664216', 'SOEL', 'LUNA', 'JUAN', 1, 0, '191472', 'INGENIERIA CIVIL ', 10, '', '942016158', '191472@unamba.edu.pe\r'),
(872, '2023-2', '74462954', 'SOTO', 'PANIURA', 'RUSVA REGINA', 2, 0, '191473', 'INGENIERIA CIVIL ', 8, '', '925885927', '191473@unamba.edu.pe\r'),
(873, '2023-2', '74453744', 'VARGAS', 'SALINAS', 'JEAN ESTEBAN', 1, 0, '191477', 'INGENIERIA CIVIL ', 8, '', '966530562', '191477@unamba.edu.pe\r'),
(874, '2023-2', '75701622', 'CASTRO', 'HUARANCCA', 'MARY CIELO', 2, 0, '182416', 'INGENIERIA CIVIL ', 9, '', '900186920', '182416@unamba.edu.pe\r'),
(875, '2023-2', '73331478', 'CAYTUIRO', 'LEO', 'ELIDA MAGRITH', 2, 0, '182419', 'INGENIERIA CIVIL ', 8, '', '972749206', '182419@unamba.edu.pe\r'),
(876, '2023-2', '60478524', 'CCARI', 'LLIULLI', 'CRISTIAN', 1, 0, '182420', 'INGENIERIA CIVIL ', 10, '', '972364803', '182420@unamba.edu.pe\r'),
(877, '2023-2', '75924160', 'CHALCO', 'CCAIHUARI', 'LEYDI ERIKA', 2, 0, '182421', 'INGENIERIA CIVIL ', 9, '', '997580481', '182421@unamba.edu.pe\r'),
(878, '2023-2', '74991619', 'HUANACO', 'CHUMBEZ', 'RONALD', 1, 0, '182434', 'INGENIERIA CIVIL ', 10, '', '914533277', '182434@unamba.edu.pe\r'),
(879, '2023-2', '75939114', 'IZQUIERDO', 'AZURIN', 'MARIA ELENA', 2, 0, '182438', 'INGENIERIA CIVIL ', 8, '', '946668034', '182438@unamba.edu.pe\r'),
(880, '2023-2', '70761345', 'MENDOZA', 'QUISPE', 'DIMAS MANUEL', 1, 0, '182445', 'INGENIERIA CIVIL ', 10, '', '958735409', '182445@unamba.edu.pe\r'),
(881, '2023-2', '70342581', 'NOA', 'THEA', 'ROGER', 1, 0, '182449', 'INGENIERIA CIVIL ', 10, '', '916932969', '182449@unamba.edu.pe\r'),
(882, '2023-2', '73824997', 'RIVERA', 'ARCE', 'ALEXANDER', 1, 0, '182456', 'INGENIERIA CIVIL ', 10, '', '942237213', '182456@unamba.edu.pe\r'),
(883, '2023-2', '74239958', 'SAAVEDRA', 'HUARACA', 'JEAN PAUL', 1, 0, '182458', 'INGENIERIA CIVIL ', 8, '', '961861631', '182458@unamba.edu.pe\r'),
(884, '2023-2', '73659467', 'TORRES', 'HUANACO', 'ERICK ECKERT', 1, 0, '182464', 'INGENIERIA CIVIL ', 8, '', '914846287', '182464@unamba.edu.pe\r'),
(885, '2023-2', '71380214', 'VEGA', 'OTAZU', 'VICTORINY', 1, 0, '182465', 'INGENIERIA CIVIL ', 8, '', '935720140', '182465@unamba.edu.pe\r'),
(886, '2023-2', '75275244', 'CONDORPUSA', 'PANIAGUA', 'LUZ MEDALI', 2, 0, '182553', 'INGENIERIA CIVIL ', 8, '', '991837398', '182553@unamba.edu.pe\r'),
(887, '2023-2', '71737793', 'QUINTANA', 'ROMERO', 'LISBETH', 2, 0, '181466', 'INGENIERIA CIVIL ', 9, '', '918803155', '181466@unamba.edu.pe\r'),
(888, '2023-2', '48528460', 'QUISPE', 'MEDRANO', 'RONY', 1, 0, '181467', 'INGENIERIA CIVIL ', 8, '', '926060179', '181467@unamba.edu.pe\r'),
(889, '2023-2', '71652416', 'SALAZAR', 'CAYLLAHUA', 'EDISON', 1, 0, '181471', 'INGENIERIA CIVIL ', 9, '', '951016686', '181471@unamba.edu.pe\r'),
(890, '2023-2', '75347707', 'SALDIVAR', 'ORTIZ', 'ALEXANDER', 1, 0, '181473', 'INGENIERIA CIVIL ', 9, '', '951994150', '181473@unamba.edu.pe\r'),
(891, '2023-2', '73636547', 'SOSA', 'HANAMPA', 'RUTHER JAMIL', 1, 0, '181475', 'INGENIERIA CIVIL ', 8, '', '964957518', '181475@unamba.edu.pe\r'),
(892, '2023-2', '75982478', 'UGARTE', 'CORVACHO', 'ABRAHAM', 1, 0, '181481', 'INGENIERIA CIVIL ', 10, '', '913400516', '181481@unamba.edu.pe\r'),
(893, '2023-2', '76129087', 'ZAMBRANO', 'SAPA', 'RAUL', 1, 0, '181485', 'INGENIERIA CIVIL ', 9, '', '916336861', '181485@unamba.edu.pe\r'),
(894, '2023-2', '75323885', 'ZAPATA', 'NAVIO', 'RENZO JHOAN', 1, 0, '181486', 'INGENIERIA CIVIL ', 8, '', '957681466', '181486@unamba.edu.pe\r'),
(895, '2023-2', '46219102', 'MAMANI', 'ARQQUE', 'VIDMAR FIDEL', 1, 0, '181629', 'INGENIERIA CIVIL ', 8, '', '984739129', '181629@unamba.edu.pe\r'),
(896, '2023-2', '76445026', 'MARTINEZ', 'CRIOLLO', 'SILVIA', 2, 0, '181631', 'INGENIERIA CIVIL ', 9, '', '965720884', '181631@unamba.edu.pe\r'),
(897, '2023-2', '72232925', 'SALAS', 'SORIA', 'ROSMERY', 2, 0, '181640', 'INGENIERIA CIVIL ', 10, '', '935315874', '181640@unamba.edu.pe\r'),
(898, '2023-2', '73978956', 'SULLCA', 'HUILLCA', 'PERCY', 1, 0, '181648', 'INGENIERIA CIVIL ', 8, '', '939860726', '181648@unamba.edu.pe\r'),
(899, '2023-2', '76820968', 'MOINA', 'SANCHEZ', 'RODRIGO MIGUEL', 1, 0, '172381', 'INGENIERIA CIVIL ', 10, '', '954502274', '172381@unamba.edu.pe\r'),
(900, '2023-2', '70759301', 'CATALAN', 'CCASANI', 'DANY KEVIN', 1, 0, '172382', 'INGENIERIA CIVIL ', 8, '', '973864826', '172382@unamba.edu.pe\r'),
(901, '2023-2', '73637587', 'CCOROPUNA', 'HUACHO', 'SHIRLEY LISBETH', 2, 0, '172384', 'INGENIERIA CIVIL ', 10, '', '935963009', '172384@unamba.edu.pe\r'),
(902, '2023-2', '48450195', 'TEJADA', 'HUAMANI', 'YURI', 1, 0, '181653', 'INGENIERIA CIVIL ', 8, '', '977806545', '181653@unamba.edu.pe\r'),
(903, '2023-2', '76434212', 'DAVALOS', 'PERALTA', 'KARLA JENNIFER', 2, 0, '201118', 'INGENIERIA CIVIL ', 8, '', '917628227', '201118@unamba.edu.pe\r'),
(904, '2023-2', '75093244', 'CARLIN', 'CONDORI', 'GEORGE MAURY', 1, 0, '192377', 'INGENIERIA CIVIL ', 8, '', '914167430', '192377@unamba.edu.pe\r'),
(905, '2023-2', '76280893', 'RAMOS', 'TENCCO', 'FRITZ', 1, 0, '172308', 'INGENIERIA CIVIL ', 8, '', '935675395', '172308@unamba.edu.pe\r'),
(906, '2023-2', '71428987', 'BARRIENTOS', 'LIPA', 'ROGGER ELIGIO', 1, 0, '191434', 'INGENIERIA CIVIL ', 8, '', '929039126', '191434@unamba.edu.pe\r'),
(907, '2023-2', '77667941', 'TAIPE', 'HURTADO', 'SERGIO ULISES', 1, 0, '151290', 'INGENIERIA CIVIL ', 8, '', '950298980', '151290@unamba.edu.pe\r'),
(908, '2023-2', '75701621', 'LLAMOCCA', 'MARTINEZ', 'JHON KEVIN', 1, 0, '182440', 'INGENIERIA CIVIL ', 8, '', '992708939', '182440@unamba.edu.pe\r'),
(909, '2023-2', '71310649', 'HUILLCAS', 'CASAS', 'JAIME', 1, 0, '162298', 'INGENIERIA CIVIL ', 8, '', '945248650', '162298@unamba.edu.pe\r'),
(910, '2023-2', '74450145', 'HURTADO', 'URRUTIA', 'NIEVES NATHALIA', 2, 0, '191449', 'INGENIERIA CIVIL ', 8, '', '980978886', '191449@unamba.edu.pe\r'),
(911, '2023-2', '70759719', 'CATALAN', 'MENDOZA', 'JOSE LUIS', 1, 0, '192379', 'INGENIERIA CIVIL ', 8, '', '965151363', '192379@unamba.edu.pe\r'),
(912, '2023-2', '70665834', 'FARFAN', 'MAUCAYLLE', 'ANABEL', 2, 0, '192514', 'INGENIERIA CIVIL ', 9, '', '989272264', '192514@unamba.edu.pe\r');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unamba_matrics`
--

CREATE TABLE `unamba_matrics` (
  `Id` int(11) NOT NULL,
  `SEMESTRE` varchar(6) DEFAULT NULL,
  `DNI` varchar(10) DEFAULT NULL,
  `APPATERNO` varchar(14) DEFAULT NULL,
  `APMATERNO` varchar(18) DEFAULT NULL,
  `NOMBRES` varchar(26) DEFAULT NULL,
  `SEXO` int(1) DEFAULT NULL,
  `IdEP` int(11) NOT NULL,
  `CODIGO` varchar(6) DEFAULT NULL,
  `EP` varchar(68) DEFAULT NULL,
  `CICLO` int(2) DEFAULT NULL,
  `DIRECC` varchar(40) DEFAULT NULL,
  `TELEF` varchar(9) DEFAULT NULL,
  `CORREO` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unamba_matrics`
--

INSERT INTO `unamba_matrics` (`Id`, `SEMESTRE`, `DNI`, `APPATERNO`, `APMATERNO`, `NOMBRES`, `SEXO`, `IdEP`, `CODIGO`, `EP`, `CICLO`, `DIRECC`, `TELEF`, `CORREO`) VALUES
(1, '2023-2', '72637493', 'CHAVEZ', 'FLORES', 'MIRIAM ARELI', 2, 1, '192019', 'ADMINISTRACIÓN', 8, '', '937421719', '192019@unamba.edu.pe\r'),
(2, '2023-2', '47490383', 'CHIPA', 'TEJADA', 'SAMIRA', 2, 1, '192020', 'ADMINISTRACIÓN', 10, '', '998761093', '192020@unamba.edu.pe\r'),
(3, '2023-2', '71288282', 'CHIPAYO', 'BLANCO', 'DANY', 1, 1, '192021', 'ADMINISTRACIÓN', 9, '', '967465505', '192021@unamba.edu.pe\r'),
(4, '2023-2', '62220229', 'CHIRINOS', 'BRAVO', 'MILAGROS', 2, 1, '192022', 'ADMINISTRACIÓN', 9, '', '965402856', '192022@unamba.edu.pe\r'),
(5, '2023-2', '75274939', 'CORDOVA', ' GUEVARA', 'BRYAN AUGUSTO', 1, 1, '192023', 'ADMINISTRACIÓN', 8, '', '956365742', '192023@unamba.edu.pe\r'),
(6, '2023-2', '76250333', 'DAMIAN', 'SARMIENTO', 'JOSUE ANDRES', 1, 1, '192024', 'ADMINISTRACIÓN', 8, '', '953773558', '192024@unamba.edu.pe\r'),
(7, '2023-2', '76872490', 'ESCALANTE', 'BAÑARES', 'ALEJANDRA', 2, 1, '192025', 'ADMINISTRACIÓN', 8, '', '973554436', '192025@unamba.edu.pe\r'),
(8, '2023-2', '75765364', 'GARFIAS', 'TAMBRAICO', 'ALEXIA LAURA', 2, 1, '192026', 'ADMINISTRACIÓN', 9, '', '944706809', '192026@unamba.edu.pe\r'),
(9, '2023-2', '73964982', 'HUAMANI', 'SANCHEZ', 'FRANCOIS', 1, 1, '192027', 'ADMINISTRACIÓN', 8, '', '944711665', '192027@unamba.edu.pe\r'),
(10, '2023-2', '76047309', 'MERMA', 'CERECEDA', 'MELIZA', 2, 1, '192030', 'ADMINISTRACIÓN', 8, '', '982223072', '192030@unamba.edu.pe\r'),
(11, '2023-2', '76077435', 'MONZON', 'CCOLCCA', 'SANDRA JANETH', 2, 1, '192032', 'ADMINISTRACIÓN', 9, '', '957146735', '192032@unamba.edu.pe\r'),
(12, '2023-2', '70384171', 'PAREJA', 'PINTO', 'HERNAN', 1, 1, '192035', 'ADMINISTRACIÓN', 9, '', '930609313', '192035@unamba.edu.pe\r'),
(13, '2023-2', '75939066', 'PECEROS', 'MELENDEZ', 'KAREN LILIANA', 2, 1, '192036', 'ADMINISTRACIÓN', 9, '', '962300691', '192036@unamba.edu.pe\r'),
(14, '2023-2', '75746876', 'PEÑA', 'SOEL', 'LISBETH', 2, 1, '192037', 'ADMINISTRACIÓN', 8, '', '927152571', '192037@unamba.edu.pe\r'),
(15, '2023-2', '70761017', 'PORTILLA', 'VALENZUELA', 'JOSE LUIS', 1, 1, '192038', 'ADMINISTRACIÓN', 8, '', '994380141', '192038@unamba.edu.pe\r'),
(16, '2023-2', '71491058', 'PUMA', 'ROBLES', 'JORGE LUIS', 1, 1, '192039', 'ADMINISTRACIÓN', 9, '', '929173415', '192039@unamba.edu.pe\r'),
(17, '2023-2', '73588384', 'QUICAÑA', 'HUACCHARAQUI', 'RUTH ZARAY', 2, 1, '192040', 'ADMINISTRACIÓN', 9, '', '930126294', '192040@unamba.edu.pe\r'),
(18, '2023-2', '70425334', 'QUISPE', 'DAMIAN', 'JHONATAN', 1, 1, '192041', 'ADMINISTRACIÓN', 9, '', '975886368', '192041@unamba.edu.pe\r'),
(19, '2023-2', '73652897', 'QUISPE', 'PORTILLA', 'MAZINHO', 1, 1, '192043', 'ADMINISTRACIÓN', 9, '', '952759141', '192043@unamba.edu.pe\r'),
(20, '2023-2', '71827815', 'QUISPITUPA', 'HUAMANI', 'JUAN', 1, 1, '192045', 'ADMINISTRACIÓN', 9, '', '959935583', '192045@unamba.edu.pe\r'),
(21, '2023-2', '72265135', 'RAMOS', 'REYNAGA', 'RAQUEL REYDA', 2, 1, '192047', 'ADMINISTRACIÓN', 8, '', '940624316', '192047@unamba.edu.pe\r'),
(22, '2023-2', '75746887', 'RIVEROS', 'VERA', 'MASIEL', 2, 1, '192048', 'ADMINISTRACIÓN', 9, '', '963080830', '192048@unamba.edu.pe\r'),
(23, '2023-2', '75347704', 'SALDIVAR', 'ORTIZ', 'SHABELY', 2, 1, '192049', 'ADMINISTRACIÓN', 10, '', '914643984', '192049@unamba.edu.pe\r'),
(24, '2023-2', '78006824', 'SERRANO', 'OBLITAS', 'GERMAN', 1, 1, '192051', 'ADMINISTRACIÓN', 8, '', '980932780', '192051@unamba.edu.pe\r'),
(25, '2023-2', '76335784', 'TAIPE', 'CONDORI', 'EMILY JANICE', 2, 1, '192052', 'ADMINISTRACIÓN', 8, '', '986472301', '192052@unamba.edu.pe\r'),
(26, '2023-2', '72796724', 'TAPIA', 'CHAVEZ', 'GIANPIERRE NICOLAS', 1, 1, '192053', 'ADMINISTRACIÓN', 8, '', '927584039', '192053@unamba.edu.pe\r'),
(27, '2023-2', '70759760', 'TAYPE', 'CRUZ', 'REYNALDINO', 1, 1, '192054', 'ADMINISTRACIÓN', 8, '', '997778670', '192054@unamba.edu.pe\r'),
(28, '2023-2', '75988537', 'TINGO', 'SALAS', 'RUTH ELIZABET', 2, 1, '192055', 'ADMINISTRACIÓN', 9, '', '936377173', '192055@unamba.edu.pe\r'),
(29, '2023-2', '73073709', 'VIDAL', 'RODAS', 'DEYSI XIOMARA', 2, 1, '192059', 'ADMINISTRACIÓN', 9, '', '987911342', '192059@unamba.edu.pe\r'),
(30, '2023-2', '72466825', 'CHICCHE', 'PUJADAS', 'IDALIZ', 2, 1, '182019', 'ADMINISTRACIÓN', 10, '', '945916443', '182019@unamba.edu.pe\r'),
(31, '2023-2', '74645733', 'CHICLLA', 'KARI', 'DENILSON', 1, 1, '182020', 'ADMINISTRACIÓN', 8, '', '986508441', '182020@unamba.edu.pe\r'),
(32, '2023-2', '75272295', 'CHIRINOS', 'PALOMINO', 'JHORDAN SMIT', 1, 1, '182024', 'ADMINISTRACIÓN', 10, '', '940725732', '182024@unamba.edu.pe\r'),
(33, '2023-2', '71737924', 'FERRO', 'ARTIAGA', 'LORHY ANDREA', 2, 1, '182029', 'ADMINISTRACIÓN', 9, '', '958304723', '182029@unamba.edu.pe\r'),
(34, '2023-2', '73500894', 'FLORES', 'AGUILAR', 'YONATAN NILTON', 1, 1, '182030', 'ADMINISTRACIÓN', 10, '', '925852559', '182030@unamba.edu.pe\r'),
(35, '2023-2', '77150801', 'GUTIERREZ', 'VILLCAS', 'MARCO ANTONIO', 1, 1, '182031', 'ADMINISTRACIÓN', 10, '', '902317764', '182031@unamba.edu.pe\r'),
(36, '2023-2', '77047992', 'HUACHACA', 'CUSCO', 'HEELYIG', 1, 1, '182032', 'ADMINISTRACIÓN', 8, '', '946349095', '182032@unamba.edu.pe\r'),
(37, '2023-2', '76724287', 'HURTADO', 'SARAVIA', 'LENA MURIEL', 2, 1, '182039', 'ADMINISTRACIÓN', 10, '', '929226219', '182039@unamba.edu.pe\r'),
(38, '2023-2', '74764278', 'IBARRA', 'CHOCCATA', 'JUAN MARCO', 1, 1, '182040', 'ADMINISTRACIÓN', 10, '', '927150520', '182040@unamba.edu.pe\r'),
(39, '2023-2', '71809648', 'PACHECO', 'MONZON', 'YOBERSON', 1, 1, '182045', 'ADMINISTRACIÓN', 10, '', '973508185', '182045@unamba.edu.pe\r'),
(40, '2023-2', '71308161', 'PINARES', 'BAUTISTA', 'RAUL', 1, 1, '182048', 'ADMINISTRACIÓN', 8, '', '958769551', '182048@unamba.edu.pe\r'),
(41, '2023-2', '72431638', 'PINTO', 'VELASQUEZ', 'NAYELY ZARAI', 2, 1, '182049', 'ADMINISTRACIÓN', 10, '', '910040193', '182049@unamba.edu.pe\r'),
(42, '2023-2', '70784347', 'QUISPE', 'RAFAELE', 'MERLY', 2, 1, '182051', 'ADMINISTRACIÓN', 9, '', '910189146', '182051@unamba.edu.pe\r'),
(43, '2023-2', '76656294', 'RIVAS', 'HUAMAN', 'PRISHILA ANAIS', 2, 1, '182052', 'ADMINISTRACIÓN', 10, '', '974685663', '182052@unamba.edu.pe\r'),
(44, '2023-2', '74751016', 'SIERRA', 'VELAZQUE', 'JUDITH', 2, 1, '182056', 'ADMINISTRACIÓN', 8, '', '917236740', '182056@unamba.edu.pe\r'),
(45, '2023-2', '70763339', 'SOTO', 'SANCHEZ', 'FIDEL', 1, 1, '182057', 'ADMINISTRACIÓN', 10, '', '963319002', '182057@unamba.edu.pe\r'),
(46, '2023-2', '73204486', 'ALFARO', 'MEJIA', 'MAYLI', 2, 1, '231002', 'ADMINISTRACIÓN', 8, 'Asoc. Sol Brillante Mz. D Lt. 10 Abancay', '930777499', '231002@unamba.edu.pe\r'),
(47, '2023-2', '76187120', 'APAZA', 'CCOLQQUE', 'CARLOS DANIEL', 1, 1, '191004', 'ADMINISTRACIÓN', 10, '', '974732627', '191004@unamba.edu.pe\r'),
(48, '2023-2', '77242912', 'AYMARA', 'ZAMORA', 'RENE RAQUEL', 2, 1, '191006', 'ADMINISTRACIÓN', 9, '', '900414326', '191006@unamba.edu.pe\r'),
(49, '2023-2', '73219778', 'BARRIENTOS', 'QUISPE', 'LAURA GABRIELA', 2, 1, '191007', 'ADMINISTRACIÓN', 8, '', '991709085', '191007@unamba.edu.pe\r'),
(50, '2023-2', '74167272', 'BRAVO', 'HUAMANHORCCO', 'TULA', 2, 1, '191009', 'ADMINISTRACIÓN', 8, '', '989979579', '191009@unamba.edu.pe\r'),
(51, '2023-2', '60304096', 'CABRERA', 'SUTURI', 'BRISA ELENA', 2, 1, '191011', 'ADMINISTRACIÓN', 10, '', '918574882', '191011@unamba.edu.pe\r'),
(52, '2023-2', '74998706', 'CANALES', 'SOLIS', 'JUAN ARTURO', 1, 1, '191012', 'ADMINISTRACIÓN', 10, '', '914567104', '191012@unamba.edu.pe\r'),
(53, '2023-2', '76654640', 'CARBAJAL', 'HERRERA', 'JHON RICARDO', 1, 1, '191013', 'ADMINISTRACIÓN', 9, '', '931145501', '191013@unamba.edu.pe\r'),
(54, '2023-2', '76389271', 'CARRASCO', 'ALTAMIRANO', 'ELI MISAEL', 1, 1, '191014', 'ADMINISTRACIÓN', 10, '', '925878846', '191014@unamba.edu.pe\r'),
(55, '2023-2', '75858706', 'CCASANI', 'SORIA', 'JOEL RAFAEL', 1, 1, '191015', 'ADMINISTRACIÓN', 10, '', '929534870', '191015@unamba.edu.pe\r'),
(56, '2023-2', '71229629', 'CENTENO', 'BARRIENTOS', 'EFRAIN JHEDY', 1, 1, '191017', 'ADMINISTRACIÓN', 10, '', '940330216', '191017@unamba.edu.pe\r'),
(57, '2023-2', '72745161', 'CHANI', 'PUJADAS', 'BRYAN FELIPE', 1, 1, '191018', 'ADMINISTRACIÓN', 10, '', '937761499', '191018@unamba.edu.pe\r'),
(58, '2023-2', '61687138', 'CONDORI', 'MOREANO', 'CARMEN VICTORIA', 2, 1, '191019', 'ADMINISTRACIÓN', 8, '', '901524193', '191019@unamba.edu.pe\r'),
(59, '2023-2', '75701616', 'CRUZ', 'LOPEZ', 'RUTH SHARMELYN', 2, 1, '191021', 'ADMINISTRACIÓN', 10, '', '930228187', '191021@unamba.edu.pe\r'),
(60, '2023-2', '71294296', 'ESTRADA', 'PACCO', 'YOVANA', 2, 1, '191023', 'ADMINISTRACIÓN', 10, '', '991698492', '191023@unamba.edu.pe\r'),
(61, '2023-2', '73459064', 'GUTIERREZ', 'SILVERA', 'DAREN WILLIAN', 1, 1, '191024', 'ADMINISTRACIÓN', 10, '', '934841756', '191024@unamba.edu.pe\r'),
(62, '2023-2', '73785224', 'HILARIO', 'MARCA', 'MARX LENIN', 1, 1, '191025', 'ADMINISTRACIÓN', 10, '', '900415918', '191025@unamba.edu.pe\r'),
(63, '2023-2', '75746850', 'HUAMAN', 'TICONA', 'DELSY PILAR', 2, 1, '191027', 'ADMINISTRACIÓN', 10, '', '910378336', '191027@unamba.edu.pe\r'),
(64, '2023-2', '76759813', 'HUANACO', 'BECERRA', 'NOELIA SHARA', 2, 1, '191028', 'ADMINISTRACIÓN', 10, '', '993051641', '191028@unamba.edu.pe\r'),
(65, '2023-2', '76670824', 'HUARANCCA', 'CAHUANCAMA', 'YENIFER', 2, 1, '191029', 'ADMINISTRACIÓN', 10, '', '983887515', '191029@unamba.edu.pe\r'),
(66, '2023-2', '75613220', 'HURTADO', 'MEJIA', 'BRAYAN', 1, 1, '191030', 'ADMINISTRACIÓN', 8, '', '924438443', '191030@unamba.edu.pe\r'),
(67, '2023-2', '75792730', 'LEIVA', 'CRIALES', 'ROCIO', 2, 1, '191032', 'ADMINISTRACIÓN', 10, '', '953200043', '191032@unamba.edu.pe\r'),
(68, '2023-2', '73604030', 'MOLINA', 'MUÑOZ', 'ROSA GISELA', 2, 1, '191035', 'ADMINISTRACIÓN', 10, '', '973059207', '191035@unamba.edu.pe\r'),
(69, '2023-2', '72386839', 'MOREANO', 'PANIURA', 'CINTYA ISABEL', 2, 1, '191036', 'ADMINISTRACIÓN', 9, '', '992824137', '191036@unamba.edu.pe\r'),
(70, '2023-2', '74208959', 'PANEBRA', 'PIZARRO', 'DELACRUZ', 1, 1, '191041', 'ADMINISTRACIÓN', 10, '', '918570626', '191041@unamba.edu.pe\r'),
(71, '2023-2', '77021422', 'QUISPE', 'MIRAYA', 'IVANA', 2, 1, '191045', 'ADMINISTRACIÓN', 8, '', '916053998', '191045@unamba.edu.pe\r'),
(72, '2023-2', '79136699', 'RIOS', 'LEON', 'MEDALID', 2, 1, '191049', 'ADMINISTRACIÓN', 10, '', '999435734', '191049@unamba.edu.pe\r'),
(73, '2023-2', '76565429', 'ROJAS', 'BECERRA', 'YENIFER LUCERO', 2, 1, '191050', 'ADMINISTRACIÓN', 9, '', '958746254', '191050@unamba.edu.pe\r'),
(74, '2023-2', '74463798', 'ROMAN', 'QUISPE', 'LILIANA', 2, 1, '191051', 'ADMINISTRACIÓN', 10, '', '963266231', '191051@unamba.edu.pe\r'),
(75, '2023-2', '71032325', 'ROQUE', 'QUISPE', 'BRENDA HELEN', 2, 1, '191052', 'ADMINISTRACIÓN', 9, '', '956888037', '191052@unamba.edu.pe\r'),
(76, '2023-2', '75917788', 'VALDEZ', 'VILCAS', 'GLADY SHAYDA', 2, 1, '191056', 'ADMINISTRACIÓN', 10, '', '973740506', '191056@unamba.edu.pe\r'),
(77, '2023-2', '72834903', 'VALVERDE', 'CARRASCO', 'MARIA FRANCISCA', 2, 1, '191057', 'ADMINISTRACIÓN', 10, '', '928521401', '191057@unamba.edu.pe\r'),
(78, '2023-2', '76909126', 'VELASQUEZ', 'GONZALES', 'MISHELL LAURA', 2, 1, '191060', 'ADMINISTRACIÓN', 10, '', '974518858', '191060@unamba.edu.pe\r'),
(79, '2023-2', '73444853', 'ZAMORA', 'MUNARES', 'LUIS MIGUEL', 1, 1, '191061', 'ADMINISTRACIÓN', 10, '', '916374494', '191061@unamba.edu.pe\r'),
(80, '2023-2', '76292002', 'ZANABRIA', 'VERA', 'MELITZA', 2, 1, '191062', 'ADMINISTRACIÓN', 8, '', '917666343', '191062@unamba.edu.pe\r'),
(81, '2023-2', '61747661', 'ZEGARRA', 'CASABLANCA', 'HENRY', 1, 1, '191063', 'ADMINISTRACIÓN', 8, '', '916635502', '191063@unamba.edu.pe\r'),
(82, '2023-2', '76073707', 'ALATA', 'CONTRERAS', 'ESTEFANY', 2, 1, '192001', 'ADMINISTRACIÓN', 9, '', '917981157', '192001@unamba.edu.pe\r'),
(83, '2023-2', '75101108', 'ALVAREZ', 'CHIPANA', 'EUSI BONI', 1, 1, '192002', 'ADMINISTRACIÓN', 8, '', '944020828', '192002@unamba.edu.pe\r'),
(84, '2023-2', '74499818', 'ARENAZA', 'CCACCYA', 'WENDY', 2, 1, '192004', 'ADMINISTRACIÓN', 9, '', '938274294', '192004@unamba.edu.pe\r'),
(85, '2023-2', '76195242', 'ARQQUE', 'PIZARRO', 'CINTHIA ALEXANDRA', 2, 1, '192005', 'ADMINISTRACIÓN', 8, '', '949121413', '192005@unamba.edu.pe\r'),
(86, '2023-2', '76292093', 'AVENDAÑO', 'QUINTANA', 'MILI MILUSKA', 2, 1, '192006', 'ADMINISTRACIÓN', 8, '', '921209342', '192006@unamba.edu.pe\r'),
(87, '2023-2', '72264160', 'BARRIENTOS', 'ORTIZ', 'KAREN KAROL', 2, 1, '192007', 'ADMINISTRACIÓN', 10, '', '900280402', '192007@unamba.edu.pe\r'),
(88, '2023-2', '73664205', 'BRICEÑO', 'SALAS', 'ESTEFANY INDIRA', 2, 1, '192009', 'ADMINISTRACIÓN', 9, '', '928029541', '192009@unamba.edu.pe\r'),
(89, '2023-2', '71526117', 'CALLALLI', 'BEDOYA', 'NICOLE MELINA', 2, 1, '192011', 'ADMINISTRACIÓN', 8, '', '941450601', '192011@unamba.edu.pe\r'),
(90, '2023-2', '71805841', 'CAMACHO', 'BATALLANOS', 'MARIA', 2, 1, '192013', 'ADMINISTRACIÓN', 9, '', '973685458', '192013@unamba.edu.pe\r'),
(91, '2023-2', '71333963', 'CASTAÑEDA', 'CASTAÑEDA', 'SANDRA MIRELLA', 2, 1, '192015', 'ADMINISTRACIÓN', 8, '', '929713339', '192015@unamba.edu.pe\r'),
(92, '2023-2', '75627247', 'CASTRO', 'HUARANCCA', 'YASBETH AMELY', 2, 1, '192016', 'ADMINISTRACIÓN', 9, '', '977991527', '192016@unamba.edu.pe\r'),
(93, '2023-2', '72092762', 'CAYTUIRO', 'BAUTISTA', 'MARILUZ', 2, 1, '192017', 'ADMINISTRACIÓN', 9, '', '919167254', '192017@unamba.edu.pe\r'),
(94, '2023-2', '73990976', 'ATAHUA', 'HUILLCAÑAHUI', 'ANABEL HANYELA', 2, 1, '201001', 'ADMINISTRACIÓN', 8, '', '928112129', '201001@unamba.edu.pe\r'),
(95, '2023-2', '71082230', 'CERDA', 'ARARANJA', 'INDIRA ', 2, 1, '201002', 'ADMINISTRACIÓN', 8, '', '994644750', '201002@unamba.edu.pe\r'),
(96, '2023-2', '74748196', 'DIAZ', 'LAYME', 'PAMELA', 2, 1, '201005', 'ADMINISTRACIÓN', 8, '', '958588022', '201005@unamba.edu.pe\r'),
(97, '2023-2', '73662515', 'PAGAZA', 'TAIPE', 'RUTH ', 2, 1, '201009', 'ADMINISTRACIÓN', 8, '', '955785828', '201009@unamba.edu.pe\r'),
(98, '2023-2', '73801316', 'QUISPE', 'AUCAILLA', 'JOHN JOSUE ', 1, 1, '201010', 'ADMINISTRACIÓN', 9, '', '943476464', '201010@unamba.edu.pe\r'),
(99, '2023-2', '75334935', 'RIVERA', 'GUTIERREZ', 'ANEL ANAHI ', 2, 1, '201013', 'ADMINISTRACIÓN', 8, '', '957157387', '201013@unamba.edu.pe\r'),
(100, '2023-2', '77383366', 'VELASQUE', 'CARRASCO', 'KARIM YULIBETH ', 2, 1, '201017', 'ADMINISTRACIÓN', 8, '', '929507857', '201017@unamba.edu.pe\r'),
(101, '2023-2', '75698271', 'ACHAICA', 'SOTO', 'DANY CRISTHIAN', 1, 1, '201157', 'ADMINISTRACIÓN', 8, '', '939884363', '201157@unamba.edu.pe\r'),
(102, '2023-2', '76236202', 'GUIZADO', 'VEGA', 'NOEMI', 2, 1, '201158', 'ADMINISTRACIÓN', 8, '', '963715701', '201158@unamba.edu.pe\r'),
(103, '2023-2', '74651588', 'MIRANDA', 'CRUZ', 'GIOVANNI LUTER', 1, 1, '201161', 'ADMINISTRACIÓN', 8, '', '978505790', '201161@unamba.edu.pe\r'),
(104, '2023-2', '45894519', 'CARDENAS', 'CASTRO', 'JULIA NATALI', 2, 1, '061104', 'ADMINISTRACIÓN', 10, '', '993884091', '061104@unamba.edu.pe\r'),
(105, '2023-2', '73577727', 'BUITRON', 'BARRETO', 'DIANA ELIZABETH', 2, 1, '101007', 'ADMINISTRACIÓN', 10, '', '974669714', '101007@unamba.edu.pe\r'),
(106, '2023-2', '70831354', 'WARTHON', 'AGUIRRE', 'JANNELLY SHARYD', 2, 1, '101049', 'ADMINISTRACIÓN', 10, '', '957341967', '101049@unamba.edu.pe\r'),
(107, '2023-2', '43496041', 'FERRO', 'CHUMPISUCA', 'BIVIANA', 2, 1, '112019', 'ADMINISTRACIÓN', 10, '', '962479190', '112019@unamba.edu.pe\r'),
(108, '2023-2', '70843403', 'GUTIERREZ', 'MIRANDA', 'YENIFER', 2, 1, '131027', 'ADMINISTRACIÓN', 10, '', '931713897', '131027@unamba.edu.pe\r'),
(109, '2023-2', '48183840', 'VILLAFUERTE', 'HUANACO', 'FRANCISCO', 1, 1, '131047', 'ADMINISTRACIÓN', 10, '', '929961813', '131047@unamba.edu.pe\r'),
(110, '2023-2', '73129024', 'MORALES', 'BAZAN', 'IRVIN ROYER', 1, 1, '132020', 'ADMINISTRACIÓN', 9, '', '961235845', '132020@unamba.edu.pe\r'),
(111, '2023-2', '70780501', 'ATIQUIPA', 'MENA', 'JOSE CARLOS', 1, 1, '141007', 'ADMINISTRACIÓN', 10, '', '910945541', '141007@unamba.edu.pe\r'),
(112, '2023-2', '47260410', 'DAVALOS', 'JARA', 'CATALINA', 2, 1, '141019', 'ADMINISTRACIÓN', 8, '', '962930730', '141019@unamba.edu.pe\r'),
(113, '2023-2', '48103667', 'ALFARO', 'TORRES', 'FREDY QUEINER', 1, 1, '152001', 'ADMINISTRACIÓN', 10, '', '991530249', '152001@unamba.edu.pe\r'),
(114, '2023-2', '47120993', 'DURAND', 'PORRAS', 'VIDRIDIANA', 2, 1, '152017', 'ADMINISTRACIÓN', 9, '', '983039131', '152017@unamba.edu.pe\r'),
(115, '2023-2', '73488768', 'GOMEZ', 'TAIPE', 'NICOLAS', 1, 1, '152019', 'ADMINISTRACIÓN', 10, '', '993709091', '152019@unamba.edu.pe\r'),
(116, '2023-2', '76479587', 'HUAYLLAS', 'MONTESINOS', 'BRYAN MIGUEL', 1, 1, '161026', 'ADMINISTRACIÓN', 9, '', '947825688', '161026@unamba.edu.pe\r'),
(117, '2023-2', '76228054', 'SINCE', 'VILLEGAS', 'JOSE FAUSTINO', 1, 1, '161044', 'ADMINISTRACIÓN', 10, '', '914474479', '161044@unamba.edu.pe\r'),
(118, '2023-2', '71533355', 'ACUÑA', 'HUASHUA', 'SANTIAGO PRUDENCIO', 1, 1, '162001', 'ADMINISTRACIÓN', 8, '', '978474878', '162001@unamba.edu.pe\r'),
(119, '2023-2', '71383902', 'CENTENO', 'HUILLCAHUA', 'LIDA', 2, 1, '162011', 'ADMINISTRACIÓN', 9, '', '942067657', '162011@unamba.edu.pe\r'),
(120, '2023-2', '71109568', 'CORDOVA', 'MEZA', 'ISAAC', 1, 1, '162013', 'ADMINISTRACIÓN', 10, '', '983128677', '162013@unamba.edu.pe\r'),
(121, '2023-2', '76657826', 'DAMIAN', 'BENITES', 'DANIEL', 1, 1, '162014', 'ADMINISTRACIÓN', 10, '', '937359272', '162014@unamba.edu.pe\r'),
(122, '2023-2', '76761222', 'GUILLEN', 'GUEVARA', 'MERCEDES', 2, 1, '162021', 'ADMINISTRACIÓN', 9, '', '935889554', '162021@unamba.edu.pe\r'),
(123, '2023-2', '74778177', 'HUAMANI', 'CACERES', 'JOE', 1, 1, '162024', 'ADMINISTRACIÓN', 10, '', '994861598', '162024@unamba.edu.pe\r'),
(124, '2023-2', '76872227', 'HUARACA', 'HUARCAYA', 'YHAM GIMER', 1, 1, '162025', 'ADMINISTRACIÓN', 8, '', '915241190', '162025@unamba.edu.pe\r'),
(125, '2023-2', '76048376', 'LAURA', 'SANTI', 'ESMERALDA', 2, 1, '162031', 'ADMINISTRACIÓN', 10, '', '925387440', '162031@unamba.edu.pe\r'),
(126, '2023-2', '48815463', 'SEGOVIA', 'ZELA', 'AMERICO', 1, 1, '162048', 'ADMINISTRACIÓN', 9, '', '945289377', '162048@unamba.edu.pe\r'),
(127, '2023-2', '75613182', 'AYMARA', 'GONZALEZ', 'ANA GABRIELA', 2, 1, '171005', 'ADMINISTRACIÓN', 10, '', '929302099', '171005@unamba.edu.pe\r'),
(128, '2023-2', '76273392', 'CABRERA', 'TICONA', 'FLORENCIO', 1, 1, '171006', 'ADMINISTRACIÓN', 9, '', '920209872', '171006@unamba.edu.pe\r'),
(129, '2023-2', '61222458', 'GUILLEN', 'GUEVARA', 'FLOR MARGOTH', 2, 1, '171020', 'ADMINISTRACIÓN', 9, '', '918572700', '171020@unamba.edu.pe\r'),
(130, '2023-2', '74276986', 'HUAMANI', 'SUEL', 'RIQUELME', 1, 1, '171025', 'ADMINISTRACIÓN', 10, '', '964672613', '171025@unamba.edu.pe\r'),
(131, '2023-2', '71657088', 'PUMA', 'CAYLLAHUA', 'JUAN', 1, 1, '171035', 'ADMINISTRACIÓN', 10, '', '950378273', '171035@unamba.edu.pe\r'),
(132, '2023-2', '75939473', 'QUINTANA', 'HUAYAPA', 'LUIS FERNANDO', 1, 1, '171037', 'ADMINISTRACIÓN', 9, '', '931164696', '171037@unamba.edu.pe\r'),
(133, '2023-2', '74579996', 'ALVITES', 'GUIZADO', 'JHON BENJAMIN', 1, 1, '172002', 'ADMINISTRACIÓN', 9, '', '935627798', '172002@unamba.edu.pe\r'),
(134, '2023-2', '75275266', 'AYERVE', 'CHIRINOS', 'MAY FLORA', 2, 1, '172009', 'ADMINISTRACIÓN', 10, '', '900091433', '172009@unamba.edu.pe\r'),
(135, '2023-2', '75336275', 'HUARACA', 'LLACHUA', 'JHAN RONALDO', 1, 1, '172020', 'ADMINISTRACIÓN', 9, '', '981566330', '172020@unamba.edu.pe\r'),
(136, '2023-2', '76673686', 'HUARANCCA', 'CAHUANCAMA', 'ESTEFANY LUCERO', 2, 1, '172021', 'ADMINISTRACIÓN', 10, '', '959728184', '172021@unamba.edu.pe\r'),
(137, '2023-2', '76659410', 'RAMOS', 'VALDERRAMA', 'ROEL', 1, 1, '172041', 'ADMINISTRACIÓN', 8, '', '950311835', '172041@unamba.edu.pe\r'),
(138, '2023-2', '74086280', 'SANCHEZ', 'PUMA', 'ALDO ANDRES', 1, 1, '172044', 'ADMINISTRACIÓN', 9, '', '935815605', '172044@unamba.edu.pe\r'),
(139, '2023-2', '73425614', 'SORAS', 'PICHIHUA', 'YESENIA MARIBEL', 2, 1, '172045', 'ADMINISTRACIÓN', 9, '', '916353590', '172045@unamba.edu.pe\r'),
(140, '2023-2', '76329167', 'BATALLANOS', 'SORIA', 'SHANERY LIZETH', 2, 1, '181008', 'ADMINISTRACIÓN', 10, '', '900416034', '181008@unamba.edu.pe\r'),
(141, '2023-2', '75828471', 'GARCIA', 'GONZALES', 'EDITH ROXANA', 2, 1, '181026', 'ADMINISTRACIÓN', 8, '', '928417339', '181026@unamba.edu.pe\r'),
(142, '2023-2', '72169946', 'HUAMANI', 'VILLCAS', 'MISAEL ANTONY', 1, 1, '181028', 'ADMINISTRACIÓN', 9, '', '955866461', '181028@unamba.edu.pe\r'),
(143, '2023-2', '72938032', 'LEON', 'CABALLERO', 'KEYLA', 2, 1, '181033', 'ADMINISTRACIÓN', 10, '', '931024835', '181033@unamba.edu.pe\r'),
(144, '2023-2', '73664159', 'LUNA', 'SIERRA', 'SANDRA', 2, 1, '181037', 'ADMINISTRACIÓN', 8, '', '915222381', '181037@unamba.edu.pe\r'),
(145, '2023-2', '71297337', 'MONZON', 'FERRO', 'KATY', 2, 1, '181042', 'ADMINISTRACIÓN', 9, '', '910652651', '181042@unamba.edu.pe\r'),
(146, '2023-2', '71739134', 'PANEBRA', 'CONDORHUACHO', 'ANDERSON', 1, 1, '181045', 'ADMINISTRACIÓN', 10, '', '921048134', '181045@unamba.edu.pe\r'),
(147, '2023-2', '76090338', 'SANCHEZ', 'CCASANI', 'KELLY ANAIZ', 2, 1, '181054', 'ADMINISTRACIÓN', 8, '', '931110889', '181054@unamba.edu.pe\r'),
(148, '2023-2', '60347614', 'VELILLE', 'LAYME', 'ANA BELY', 2, 1, '181595', 'ADMINISTRACIÓN', 10, '', '929516776', '181595@unamba.edu.pe\r'),
(149, '2023-2', '70438173', 'ANAMPA', 'YALLI', 'SHADIA', 2, 1, '182003', 'ADMINISTRACIÓN', 10, '', '932524434', '182003@unamba.edu.pe\r'),
(150, '2023-2', '73321802', 'ANCCO', 'CHANCAHUAÑA', 'JHONATAN', 1, 1, '182004', 'ADMINISTRACIÓN', 10, '', '969527285', '182004@unamba.edu.pe\r'),
(151, '2023-2', '71530706', 'ARCE', ' CAMACHO', 'ELIAN YITHVY', 1, 1, '182005', 'ADMINISTRACIÓN', 10, '', '988686318', '182005@unamba.edu.pe\r'),
(152, '2023-2', '73463311', 'ARCIBIA', 'ARIAS', 'JHON KEVIN', 1, 1, '182006', 'ADMINISTRACIÓN', 10, '', '925892700', '182006@unamba.edu.pe\r'),
(153, '2023-2', '74552469', 'BENITO', 'PUMAPILLO', 'LUCIO', 1, 1, '182009', 'ADMINISTRACIÓN', 10, '', '999314821', '182009@unamba.edu.pe\r'),
(154, '2023-2', '74752934', 'BORDA', 'ESPINOZA', 'RONALD', 1, 1, '182010', 'ADMINISTRACIÓN', 10, '', '901556013', '182010@unamba.edu.pe\r'),
(155, '2023-2', '77678196', 'CARBAJAL', 'HERRERA', 'YURY', 1, 1, '182012', 'ADMINISTRACIÓN', 9, '', '928394046', '182012@unamba.edu.pe\r'),
(156, '2023-2', '73704192', 'CERVANTES', 'MENDOZA', 'MERIBETH SHARMELY', 2, 1, '182015', 'ADMINISTRACIÓN', 9, '', '956767232', '182015@unamba.edu.pe\r'),
(157, '2023-2', '74076101', 'CHAVEZ', 'CAMARGO', 'ROGERS IVAN', 1, 1, '182018', 'ADMINISTRACIÓN', 9, '', '925088588', '182018@unamba.edu.pe\r'),
(158, '2023-2', '75417189', 'SEGOVIA', 'PANIURA', 'JIMENA GRISELDA', 2, 0, '191113', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '972979676', '191113@unamba.edu.pe\r'),
(159, '2023-2', '71800974', 'TEVES', 'VARGAS', 'CLENY', 2, 0, '191116', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '935424183', '191116@unamba.edu.pe\r'),
(160, '2023-2', '79950566', 'CRUZ', 'CHIPANE', 'YOLIDA', 2, 0, '192072', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '952958689', '192072@unamba.edu.pe\r'),
(161, '2023-2', '75474097', 'GUTIERREZ', 'SERRANO', 'SAIDA KARIN', 2, 0, '192078', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '994442908', '192078@unamba.edu.pe\r'),
(162, '2023-2', '71781825', 'JURO', 'ZAVALA', 'ALDY', 2, 0, '192082', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '930193960', '192082@unamba.edu.pe\r'),
(163, '2023-2', '71780466', 'PEÑA', 'HUALLPA', 'CARMEN ROSA', 2, 0, '192093', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '919166145', '192093@unamba.edu.pe\r'),
(164, '2023-2', '76726099', 'RIVERA', 'CONTRERAS', 'ILIANA PATRICIA', 2, 0, '192099', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '922168276', '192099@unamba.edu.pe\r'),
(165, '2023-2', '70762472', 'ROJAS', 'GOMEZ', 'ROSIO', 2, 0, '192101', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '925705947', '192101@unamba.edu.pe\r'),
(166, '2023-2', '73383232', 'AZURIN', 'HUMAN', 'MAYERLIN ROSARIO', 2, 0, '201021', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '965896244', '201021@unamba.edu.pe\r'),
(167, '2023-2', '43694757', 'MONTESINOS', 'CHACCARA', 'JULIO', 1, 0, '071142', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '957143923', '071142@unamba.edu.pe\r'),
(168, '2023-2', '45352078', 'VALDERRAMA', 'ZANABRIA', 'ALEX CRISTIAN', 1, 0, '072229', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '931114913', '072229@unamba.edu.pe\r'),
(169, '2023-2', '43430110', 'SANCHEZ', 'VALDERRAMA', 'LUIS ALBERTO', 1, 0, '081207', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '967274911', '081207@unamba.edu.pe\r'),
(170, '2023-2', '70778476', 'LLACCHUA', 'MOLINA', 'LUISA', 2, 0, '102078', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '963918258', '102078@unamba.edu.pe\r'),
(171, '2023-2', '70764877', 'MACCAPA', 'CHANCA', 'XIOMARA', 2, 0, '102079', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '994525213', '102079@unamba.edu.pe\r'),
(172, '2023-2', '71474578', 'VERA', 'GUTIERREZ', 'JUAN CARLOS', 1, 0, '112087', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '983656872', '112087@unamba.edu.pe\r'),
(173, '2023-2', '71043528', 'FERRO', 'AGUILAR', 'VIKY', 2, 0, '121067', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '930822815', '121067@unamba.edu.pe\r'),
(174, '2023-2', '60016182', 'PUMACAYO', 'CUELLAR', 'JOHN KENNEDY', 1, 0, '132042', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '973133064', '132042@unamba.edu.pe\r'),
(175, '2023-2', '73972910', 'JURO', 'GARCIA', 'JOSEHP EMILL', 1, 0, '151073', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '953743825', '151073@unamba.edu.pe\r'),
(176, '2023-2', '72374698', 'JUAREZ', 'ROMAN', 'SOZIMO', 1, 0, '152064', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '925119901', '152064@unamba.edu.pe\r'),
(177, '2023-2', '72511116', 'BARRETO', 'PRADO', 'MARIA DEL CARMEN', 2, 0, '161052', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '901997756', '161052@unamba.edu.pe\r'),
(178, '2023-2', '77292177', 'ROMAN', 'CHAUCCA', 'FRANKLIN', 1, 0, '161076', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '997044688', '161076@unamba.edu.pe\r'),
(179, '2023-2', '73946672', 'SOEL', 'VARGAS', 'FRANKLIN', 1, 0, '161080', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '917205758', '161080@unamba.edu.pe\r'),
(180, '2023-2', '71619541', 'CASAVERDE', 'CUELLAR', 'DEYBERT ENRIQUE', 1, 0, '162066', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '915037838', '162066@unamba.edu.pe\r'),
(181, '2023-2', '71739128', 'CHOQUE', 'GOMEZ', 'ROYER', 1, 0, '162070', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '917652471', '162070@unamba.edu.pe\r'),
(182, '2023-2', '76038777', 'SALCEDO', 'QUINTANA', 'MARI MAR', 2, 0, '162081', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '929008274', '162081@unamba.edu.pe\r'),
(183, '2023-2', '70780299', 'JAUREGUI', 'NUÑEZ', 'ELIAS', 1, 0, '171069', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '915148460', '171069@unamba.edu.pe\r'),
(184, '2023-2', '74141151', 'LOPEZ', 'MOSQUEIRA', 'LUIS ANYHELO', 1, 0, '171072', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '920491274', '171072@unamba.edu.pe\r'),
(185, '2023-2', '70772182', 'PAMPAÑAUPA', 'MOREL', 'SANDRA', 2, 0, '171076', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '950728933', '171076@unamba.edu.pe\r'),
(186, '2023-2', '77072418', 'QUISPITUPA', 'RAMOS', 'IDALIA', 2, 0, '171080', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '940656173', '171080@unamba.edu.pe\r'),
(187, '2023-2', '77048562', 'CRUZ', 'ESCALANTE', 'LIZBETH', 2, 0, '191080', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '973507424', '191080@unamba.edu.pe\r'),
(188, '2023-2', '61747680', 'MOLINA', 'LLACHUA', 'JOSE SIMON', 1, 0, '201271', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '910277495', '201271@unamba.edu.pe\r'),
(189, '2023-2', '77480427', 'FELIX', 'LLACCTA', 'ANDREA LUDY', 2, 0, '181085', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '925871351', '181085@unamba.edu.pe\r'),
(190, '2023-2', '76731472', 'ROMERO', 'SILVESTRE', 'SHARON', 2, 0, '182103', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '913168254', '182103@unamba.edu.pe\r'),
(191, '2023-2', '73440523', 'ALVIS', 'TOMATEO', 'NANCY', 2, 0, '181067', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '978898917', '181067@unamba.edu.pe\r'),
(192, '2023-2', '74402781', 'ROJAS', 'SOTO', 'ROY MIGUEL ALEJANDRO', 1, 0, '182102', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '979673036', '182102@unamba.edu.pe\r'),
(193, '2023-2', '74871552', 'ALAMO', 'PEÑA', 'EDITH ESTEFANY', 2, 0, '191065', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '921297889', '191065@unamba.edu.pe\r'),
(194, '2023-2', '76181106', 'CARRASCO', 'ICARAYME', 'JOSE ANTONIO', 1, 0, '181078', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '931190591', '181078@unamba.edu.pe\r'),
(195, '2023-2', '77682088', 'CHOCCATA', 'RAMOS', 'CARMEN', 2, 0, '182075', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '929948840', '182075@unamba.edu.pe\r'),
(196, '2023-2', '73301117', 'ALLCA', 'SALAS', 'SHIRLY CORAIMA', 2, 0, '172051', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '921995316', '172051@unamba.edu.pe\r'),
(197, '2023-2', '73446384', 'BRICEÑO', 'EZPINOZA', 'MILISSA', 2, 0, '172055', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '925703374', '172055@unamba.edu.pe\r'),
(198, '2023-2', '47851167', 'CHICLLA', 'SIERRA', 'NOE', 1, 0, '172061', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '950333996', '172061@unamba.edu.pe\r'),
(199, '2023-2', '76725607', 'QUISPE', 'MARTINEZ', 'ALICIA', 2, 0, '172078', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '930902065', '172078@unamba.edu.pe\r'),
(200, '2023-2', '73512569', 'SORAS', 'NINA', 'JANETH', 2, 0, '172087', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '928240040', '172087@unamba.edu.pe\r'),
(201, '2023-2', '70082815', 'ALVAREZ', 'JOSEC', 'MILTON', 1, 0, '181065', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '994441206', '181065@unamba.edu.pe\r'),
(202, '2023-2', '73609405', 'BORDA', 'VARGAS', 'SIDANE STALYN', 1, 0, '181073', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '927905944', '181073@unamba.edu.pe\r'),
(203, '2023-2', '71803075', 'CARHUAS', 'MONZON', 'YULIA STEFHANY', 2, 0, '181077', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '923189039', '181077@unamba.edu.pe\r'),
(204, '2023-2', '70752383', 'CASTRO', 'VELASQUE', 'ROSMERI', 2, 0, '181080', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '987211067', '181080@unamba.edu.pe\r'),
(205, '2023-2', '78721162', 'GUEVARA', 'CARBAJAL', 'ERNESTO', 1, 0, '181089', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '950692844', '181089@unamba.edu.pe\r'),
(206, '2023-2', '75169132', 'HUAMANI', 'VALENZUELA', 'ANALY', 2, 0, '181091', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '986177494', '181091@unamba.edu.pe\r'),
(207, '2023-2', '76213879', 'HUAMANÑAHUI', 'GONZALES', 'NOEMI', 2, 0, '181092', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '964878817', '181092@unamba.edu.pe\r'),
(208, '2023-2', '74833847', 'LINASCA', 'VALDERREMA', 'WILLY DIEGO', 1, 0, '181094', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '965767015', '181094@unamba.edu.pe\r'),
(209, '2023-2', '61673449', 'MEJIA', 'HURTADO', 'RUTH RODE', 2, 0, '181095', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '917023494', '181095@unamba.edu.pe\r'),
(210, '2023-2', '77385201', 'ORTEGA', 'TELLO', 'JHON JOEL', 1, 0, '181100', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '954045841', '181100@unamba.edu.pe\r'),
(211, '2023-2', '71713454', 'QUISPE', 'CALLA', 'ANABEL', 2, 0, '181108', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '929878964', '181108@unamba.edu.pe\r'),
(212, '2023-2', '77017903', 'VARGAS', 'HILARES', 'EVA LUCIA', 2, 0, '181122', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '912809144', '181122@unamba.edu.pe\r'),
(213, '2023-2', '71935406', 'VEGA', 'ORTIZ', 'MARIA AURELIA', 2, 0, '181123', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '934043250', '181123@unamba.edu.pe\r'),
(214, '2023-2', '76511506', 'BLAS', 'CHACON', 'DINO', 1, 0, '182065', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '935367985', '182065@unamba.edu.pe\r'),
(215, '2023-2', '76329040', 'CARRASCO', 'ALTAMIRANO', 'CRISBER', 1, 0, '182068', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '916338334', '182068@unamba.edu.pe\r'),
(216, '2023-2', '73754815', 'CASTILLO', 'TOTOCAYO', 'JHESMIN KATHERIN', 1, 0, '182071', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '913561943', '182071@unamba.edu.pe\r'),
(217, '2023-2', '76509246', 'GONZALES', 'PANIURA', 'ZORAIDA', 2, 0, '182082', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '974110731', '182082@unamba.edu.pe\r'),
(218, '2023-2', '70430738', 'HUAMANI', 'QUISPE', 'LUIS ALFREDO', 1, 0, '182087', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '981729607', '182087@unamba.edu.pe\r'),
(219, '2023-2', '72938041', 'HUARI', 'ARROYO', 'SHERMI DIANA CCOYLLOR', 2, 0, '182090', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '901545991', '182090@unamba.edu.pe\r'),
(220, '2023-2', '76502802', 'MENEJES', 'RAMIREZ', 'MARCO ANTONIO', 1, 0, '182095', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '973144251', '182095@unamba.edu.pe\r'),
(221, '2023-2', '75746864', 'SERRANO', 'TOMAYLLA', 'MELVIN JORGE', 1, 0, '182109', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '958223886', '182109@unamba.edu.pe\r'),
(222, '2023-2', '81047154', 'SUMARRIVA', 'UTANI', 'LUJHEFSCY MYLU', 2, 0, '182112', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '919002853', '182112@unamba.edu.pe\r'),
(223, '2023-2', '75729162', 'VALENZUELA', 'CAYTUIRO', 'EVELYNE NANCY', 2, 0, '182117', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '913385929', '182117@unamba.edu.pe\r'),
(224, '2023-2', '76297917', 'AMAO', 'FLORES', 'RICKY MICHAEL', 1, 0, '191066', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '900435257', '191066@unamba.edu.pe\r'),
(225, '2023-2', '61294739', 'CAJAHUARINGA', 'CUEVA', 'ALISON VICTORIA', 2, 0, '191071', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '972558356', '191071@unamba.edu.pe\r'),
(226, '2023-2', '71749260', 'CCAÑAHUA', 'CAMARGO', 'MILAGROS', 2, 0, '191075', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '918849978', '191075@unamba.edu.pe\r'),
(227, '2023-2', '77022603', 'CONTRERAS', 'PANIURA', 'YULIANI', 2, 0, '191079', 'INGENIERÍA AGROINDUSTRIAL', 9, '', '935715525', '191079@unamba.edu.pe\r'),
(228, '2023-2', '71412019', 'HUILLCAHUA', 'SIERRA', 'DORCA BETZABET', 2, 0, '191092', 'INGENIERÍA AGROINDUSTRIAL', 8, '', '935029278', '191092@unamba.edu.pe\r'),
(229, '2023-2', '61580814', 'LLACHUA', 'CASABLANCA', 'GIANELLA JAHAIRA', 2, 0, '191097', 'INGENIERÍA AGROINDUSTRIAL', 10, '', '987377380', '191097@unamba.edu.pe\r'),
(230, '2023-2', '74383209', 'BELTRAN', 'RUIZ', 'JUAN CAYO', 1, 0, '191130', 'INGENIERÍA DE MINAS', 9, '', '933576183', '191130@unamba.edu.pe\r'),
(231, '2023-2', '72882449', 'CARRASCO', 'SAUÑE', 'ELVIS', 1, 0, '191137', 'INGENIERÍA DE MINAS', 8, '', '987067795', '191137@unamba.edu.pe\r'),
(232, '2023-2', '70383312', 'CHACON', 'BEJAR', 'DIEGO', 1, 0, '191140', 'INGENIERÍA DE MINAS', 8, '', '932553635', '191140@unamba.edu.pe\r'),
(233, '2023-2', '73650888', 'CHAUCCA', 'ROMAN', 'ROMEL REYNALDO', 1, 0, '191142', 'INGENIERÍA DE MINAS', 10, '', '920304234', '191142@unamba.edu.pe\r'),
(234, '2023-2', '71741313', 'CUNO', 'CASA', 'ALI ANSELMO', 1, 0, '191147', 'INGENIERÍA DE MINAS', 9, '', '984768232', '191147@unamba.edu.pe\r'),
(235, '2023-2', '77682104', 'HUACHACA', 'GABANCHO', 'LUIS FERNANDO', 1, 0, '191153', 'INGENIERÍA DE MINAS', 9, '', '921464855', '191153@unamba.edu.pe\r'),
(236, '2023-2', '70306312', 'HUAMAN', 'AROHUILLCA', 'NESTOR ANTONIO', 1, 0, '191154', 'INGENIERÍA DE MINAS', 9, '', '950141649', '191154@unamba.edu.pe\r'),
(237, '2023-2', '73383241', 'HUAMAN', 'CCORAHUA', 'ALEXANDER DARIO', 1, 0, '191155', 'INGENIERÍA DE MINAS', 10, '', '942395767', '191155@unamba.edu.pe\r'),
(238, '2023-2', '74042998', 'PUMAPILLO', 'PARCCO', 'EFRAIN', 1, 0, '191170', 'INGENIERÍA DE MINAS', 9, '', '929161526', '191170@unamba.edu.pe\r'),
(239, '2023-2', '70781823', 'ROBLES', 'CARDENAS', 'OSCAR YONATAN', 1, 0, '191173', 'INGENIERÍA DE MINAS', 8, '', '931569976', '191173@unamba.edu.pe\r'),
(240, '2023-2', '71491051', 'ROJAS', 'VENTURA', 'JHONATAN RAPHAEL', 1, 0, '191174', 'INGENIERÍA DE MINAS', 9, '', '950741002', '191174@unamba.edu.pe\r'),
(241, '2023-2', '77466209', 'SOTO', 'LETONA', 'FELISARDO', 1, 0, '191177', 'INGENIERÍA DE MINAS', 8, '', '945195186', '191177@unamba.edu.pe\r'),
(242, '2023-2', '77017950', 'TIAHUALLPA', 'ANGELINO', 'ALEX VALERIO', 1, 0, '191181', 'INGENIERÍA DE MINAS', 9, '', '921211921', '191181@unamba.edu.pe\r'),
(243, '2023-2', '74042240', 'AQUINO', 'AYMARA', 'BRHANDON', 1, 0, '192117', 'INGENIERÍA DE MINAS', 8, '', '930473116', '192117@unamba.edu.pe\r'),
(244, '2023-2', '76959727', 'CCALA', 'CHOQUE', 'MARGOT', 2, 0, '192125', 'INGENIERÍA DE MINAS', 9, '', '927464043', '192125@unamba.edu.pe\r'),
(245, '2023-2', '73854472', 'CUELLAR', 'CARDENAS', 'LIZZETH', 2, 0, '192132', 'INGENIERÍA DE MINAS', 8, '', '956239914', '192132@unamba.edu.pe\r'),
(246, '2023-2', '71611136', 'MOSCOSO', 'LOPEZ', 'FANNY', 2, 0, '192151', 'INGENIERÍA DE MINAS', 8, '', '916628688', '192151@unamba.edu.pe\r'),
(247, '2023-2', '75224815', 'QUISPITUPA', 'RIVAS', 'YELTSIN JOSUE', 1, 0, '192159', 'INGENIERÍA DE MINAS', 8, '', '929336697', '192159@unamba.edu.pe\r'),
(248, '2023-2', '71387469', 'RAYME', 'JARA', 'RHOEL ELISEO', 1, 0, '192160', 'INGENIERÍA DE MINAS', 8, '', '955872943', '192160@unamba.edu.pe\r'),
(249, '2023-2', '74463780', 'SULLO', 'HUAMANGA', 'EDITH', 2, 0, '192168', 'INGENIERÍA DE MINAS', 8, '', '930668838', '192168@unamba.edu.pe\r'),
(250, '2023-2', '72198063', 'CORIHUAMANI', 'LIMASCCA', 'SAIR', 1, 0, '201211', 'INGENIERÍA DE MINAS', 8, '', '929296320', '201211@unamba.edu.pe\r'),
(251, '2023-2', '45648868', 'PALOMINO', 'GIL', 'ABEL', 1, 0, '091155', 'INGENIERÍA DE MINAS', 10, '', '916733653', '091155@unamba.edu.pe\r'),
(252, '2023-2', '73219803', 'ROMAN', 'CHAUCCA', 'FRITS EULER', 1, 0, '121130', 'INGENIERÍA DE MINAS', 10, '', '950707396', '121130@unamba.edu.pe\r'),
(253, '2023-2', '73704164', 'CARRASCO', 'SIERRA', 'DANNY', 1, 0, '151123', 'INGENIERÍA DE MINAS', 10, '', '983917039', '151123@unamba.edu.pe\r'),
(254, '2023-2', '74233338', 'COSIO', 'PALOMINO', 'ERICK DAIVIS', 1, 0, '152091', 'INGENIERÍA DE MINAS', 9, '', '916381600', '152091@unamba.edu.pe\r'),
(255, '2023-2', '48067380', 'OCSA', 'CHALLCO', 'RENATO', 1, 0, '152101', 'INGENIERÍA DE MINAS', 10, '', '964100389', '152101@unamba.edu.pe\r'),
(256, '2023-2', '71782192', 'FERREL', 'TAPIA', 'HANDY DENISS', 1, 0, '161096', 'INGENIERÍA DE MINAS', 8, '', '925640547', '161096@unamba.edu.pe\r'),
(257, '2023-2', '73757006', 'JARA', 'COLLANTES', 'ALEX JORGE', 1, 0, '161103', 'INGENIERÍA DE MINAS', 8, '', '946753027', '161103@unamba.edu.pe\r'),
(258, '2023-2', '76523534', 'SANCHEZ', 'PUMACAYO', 'JEHAN BRANCO', 1, 0, '162119', 'INGENIERÍA DE MINAS', 9, '', '965106460', '162119@unamba.edu.pe\r'),
(259, '2023-2', '75230167', 'VERA', 'HUAMANI', 'JESUS MANUEL', 1, 0, '162128', 'INGENIERÍA DE MINAS', 10, '', '910987234', '162128@unamba.edu.pe\r'),
(260, '2023-2', '71298811', 'ACHAICA', 'AGUILAR', 'SAUL', 1, 0, '171084', 'INGENIERÍA DE MINAS', 10, '', '921212959', '171084@unamba.edu.pe\r'),
(261, '2023-2', '73224968', 'CABRERA', 'ALVARACIN', 'AGUSTIN', 1, 0, '171093', 'INGENIERÍA DE MINAS', 10, '', '931708006', '171093@unamba.edu.pe\r'),
(262, '2023-2', '74353734', 'GUILLEN', 'UMERES', 'YUDIÑO', 1, 0, '171104', 'INGENIERÍA DE MINAS', 9, '', '973694170', '171104@unamba.edu.pe\r'),
(263, '2023-2', '73587703', 'HUAMANGA', 'SANDOVAL', 'CRISTIAN', 1, 0, '171106', 'INGENIERÍA DE MINAS', 8, '', '926435502', '171106@unamba.edu.pe\r'),
(264, '2023-2', '77081133', 'HUAMANI', 'SERRANO', 'DAVID', 1, 0, '171107', 'INGENIERÍA DE MINAS', 8, '', '928942037', '171107@unamba.edu.pe\r'),
(265, '2023-2', '74085106', 'VELASQUEZ', 'ALVITES', 'LEIDY SHARMELY', 2, 0, '171126', 'INGENIERÍA DE MINAS', 10, '', '925331614', '171126@unamba.edu.pe\r'),
(266, '2023-2', '75592166', 'MARTINEZ', 'RAMOS', 'EDGAR EDUARDO', 1, 0, '172110', 'INGENIERÍA DE MINAS', 10, '', '950068859', '172110@unamba.edu.pe\r'),
(267, '2023-2', '77033324', 'ALBACALLE', 'BELLOTA', 'ITALA', 2, 0, '181125', 'INGENIERÍA DE MINAS', 10, '', '948320537', '181125@unamba.edu.pe\r'),
(268, '2023-2', '73659522', 'BARRIOS', 'SUBELETE', 'AURELIANO', 1, 0, '181133', 'INGENIERÍA DE MINAS', 9, '', '938970756', '181133@unamba.edu.pe\r'),
(269, '2023-2', '77214012', 'CHECCLLO', 'AYMARA', 'URIEL ORESTES', 1, 0, '181137', 'INGENIERÍA DE MINAS', 9, '', '900078128', '181137@unamba.edu.pe\r'),
(270, '2023-2', '60324385', 'CHUYMA', 'HUAMANI', 'JOEL', 1, 0, '181140', 'INGENIERÍA DE MINAS', 10, '', '982585950', '181140@unamba.edu.pe\r'),
(271, '2023-2', '72866139', 'GARCIA', 'CONDE', 'GERENI DUSTIN', 1, 0, '181146', 'INGENIERÍA DE MINAS', 8, '', '925906694', '181146@unamba.edu.pe\r'),
(272, '2023-2', '73387948', 'HILARES', 'GERI', 'WILBER', 1, 0, '181150', 'INGENIERÍA DE MINAS', 10, '', '952707345', '181150@unamba.edu.pe\r'),
(273, '2023-2', '76027603', 'MALLMA', 'ATIQUIPA', 'LUIS DAVID', 1, 0, '181157', 'INGENIERÍA DE MINAS', 8, '', '916037701', '181157@unamba.edu.pe\r'),
(274, '2023-2', '71530690', 'MARQUEZ ', 'GUTIERREZ', 'LINCOLN', 1, 0, '181159', 'INGENIERÍA DE MINAS', 8, '', '921120041', '181159@unamba.edu.pe\r'),
(275, '2023-2', '73361735', 'MARQUEZ', 'HUAMAN', 'LUIS ANGEL', 1, 0, '181160', 'INGENIERÍA DE MINAS', 10, '', '932360538', '181160@unamba.edu.pe\r'),
(276, '2023-2', '70745646', 'PIZARRO', 'SANCHEZ', 'JOSE', 1, 0, '181169', 'INGENIERÍA DE MINAS', 10, '', '925903812', '181169@unamba.edu.pe\r'),
(277, '2023-2', '75656658', 'PUMA', 'MENDOZA', 'WILLIAM ERICK', 1, 0, '181171', 'INGENIERÍA DE MINAS', 9, '', '964160363', '181171@unamba.edu.pe\r'),
(278, '2023-2', '78718434', 'QUISPE', 'PANIURA', 'MIGUEL ANGEL', 1, 0, '181173', 'INGENIERÍA DE MINAS', 9, '', '962174224', '181173@unamba.edu.pe\r'),
(279, '2023-2', '72647134', 'TAPIA', 'ROMAN', 'FRANK PERCY', 1, 0, '181180', 'INGENIERÍA DE MINAS', 8, '', '992251803', '181180@unamba.edu.pe\r'),
(280, '2023-2', '60018798', 'VEGA', 'SEQUEIROS', 'JEAN MARIO', 1, 0, '181186', 'INGENIERÍA DE MINAS', 10, '', '927844233', '181186@unamba.edu.pe\r'),
(281, '2023-2', '74537488', 'BORDA', 'MOZO', 'FLOR MILAGROS', 2, 0, '182128', 'INGENIERÍA DE MINAS', 10, '', '925107189', '182128@unamba.edu.pe\r'),
(282, '2023-2', '72238658', 'BRICEÑO', 'LLAMOZA', 'KENT REYNER', 1, 0, '182130', 'INGENIERÍA DE MINAS', 8, '', '921211208', '182130@unamba.edu.pe\r'),
(283, '2023-2', '72085977', 'CHOQUE', 'DAVILA', 'MIGUEL ANGEL', 1, 0, '182137', 'INGENIERÍA DE MINAS', 8, '', '957389288', '182137@unamba.edu.pe\r'),
(284, '2023-2', '71730852', 'HUILLCAPANIURA', 'CCOSCCO', 'EDU ANTONY', 1, 0, '182148', 'INGENIERÍA DE MINAS', 9, '', '921301964', '182148@unamba.edu.pe\r'),
(285, '2023-2', '63362530', 'LLICAHUA', 'CASTAÑEDA', 'NICOLAS', 1, 0, '182151', 'INGENIERÍA DE MINAS', 9, '', '955663474', '182151@unamba.edu.pe\r'),
(286, '2023-2', '75520678', 'LOPEZ', 'SOTO', 'HUGO JUNIOR', 1, 0, '182153', 'INGENIERÍA DE MINAS', 10, '', '951083641', '182153@unamba.edu.pe\r'),
(287, '2023-2', '75239821', 'LUIS', 'ROCA', 'FILOMENO NILTON', 1, 0, '182154', 'INGENIERÍA DE MINAS', 10, '', '953579506', '182154@unamba.edu.pe\r'),
(288, '2023-2', '70803720', 'MOYNA', 'SOTO', 'ROSBEL', 1, 0, '182161', 'INGENIERÍA DE MINAS', 10, '', '932097049', '182161@unamba.edu.pe\r'),
(289, '2023-2', '71651866', 'PAREJA', 'PAIRA', 'DIANA', 2, 0, '182163', 'INGENIERÍA DE MINAS', 9, '', '930176095', '182163@unamba.edu.pe\r'),
(290, '2023-2', '74134106', 'AYQUIPA', 'ARBIETO', 'WILMER RAFAEL', 1, 0, '201033', 'INGENIERÍA DE MINAS', 8, '', '995833672', '201033@unamba.edu.pe\r'),
(291, '2023-2', '74964258', 'SOTOMAYOR', 'VELASQUEZ', 'PERCY EDUARDO', 1, 0, '192167', 'INGENIERÍA DE MINAS', 8, '', '927284327', '192167@unamba.edu.pe\r'),
(292, '2023-2', '75872372', 'KCACHA', 'RAFAELE', 'RIKE MANUEL', 1, 0, '182149', 'INGENIERÍA DE MINAS', 8, '', '926591306', '182149@unamba.edu.pe\r'),
(293, '2023-2', '71745650', 'QUISPE', 'NINA', 'MAURO', 1, 0, '181172', 'INGENIERÍA DE MINAS', 8, '', '932284753', '181172@unamba.edu.pe\r'),
(294, '2023-2', '74578741', 'ALLCCA', 'OSCCO', 'NEHEMIAS ALFREDO', 1, 0, '191124', 'INGENIERÍA DE MINAS', 8, '', '942862903', '191124@unamba.edu.pe\r'),
(295, '2023-2', '76667237', 'CRUZ', 'CAYLLAHUA', 'SHANDE WALTHER', 1, 0, '192131', 'INGENIERÍA DE MINAS', 8, '', '998522152', '192131@unamba.edu.pe\r'),
(296, '2023-2', '73385945', 'HUAMANGA', 'SULLO', 'JOSE LUIS ', 1, 0, '162104', 'INGENIERÍA DE MINAS', 8, '', '916038583', '162104@unamba.edu.pe\r'),
(297, '2023-2', '40051611', 'HANCCO', 'HALIRE', 'DAVID', 1, 0, '122124', 'INGENIERÍA DE MINAS', 9, '', '984174596', '122124@unamba.edu.pe\r'),
(298, '2023-2', '74277030', 'CCOLLCCA', 'HERBAS', 'EDISON', 1, 0, '191138', 'INGENIERÍA DE MINAS', 9, '', '957750886', '191138@unamba.edu.pe\r'),
(299, '2023-2', '60531293', 'HUARACA', 'AGUILAR', 'JEAN FRANCK', 1, 0, '182147', 'INGENIERÍA DE MINAS', 9, '', '921896429', '182147@unamba.edu.pe\r'),
(300, '2023-2', '72169998', 'BENAVENTE', 'MINA', 'FELMI', 1, 0, '172092', 'INGENIERÍA DE MINAS', 9, '', '953519554', '172092@unamba.edu.pe\r'),
(301, '2023-2', '74465984', 'FLORES', 'PORTILLA', 'CARLA DIARY', 2, 0, '191151', 'INGENIERÍA DE MINAS', 9, '', '942471762', '191151@unamba.edu.pe\r'),
(302, '2023-2', '76611627', 'CONTRERAS', 'BUSTINZA', 'JOSE LUIS', 1, 0, '181143', 'INGENIERÍA DE MINAS', 9, '', '966523635', '181143@unamba.edu.pe\r'),
(303, '2023-2', '72850213', 'ROBLES', 'ALVARADO', 'MAX ANDRES', 1, 0, '141133', 'INGENIERÍA DE MINAS', 10, '', '951249581', '141133@unamba.edu.pe\r'),
(304, '2023-2', '73142291', 'VILLAVICENCIO', 'COAQUIRA', 'MARIO HOUSWAN', 1, 0, '162129', 'INGENIERÍA DE MINAS', 10, '', '929350177', '162129@unamba.edu.pe\r'),
(305, '2023-2', '60115014', 'BRAVO', 'QUISPE', 'MIGUEL ANGEL', 1, 0, '182129', 'INGENIERÍA DE MINAS', 10, '', '931187059', '182129@unamba.edu.pe\r'),
(306, '2023-2', '72848536', 'LIMA', 'ARONI', 'ROSINALDO SAMUEL', 1, 0, '181156', 'INGENIERÍA DE MINAS', 10, '', '938964924', '181156@unamba.edu.pe\r'),
(307, '2023-2', '78198483', 'AVALOS', 'DURAN', 'LUZ CLARITA', 2, 0, '191127', 'INGENIERÍA DE MINAS', 10, '', '931153749', '191127@unamba.edu.pe\r'),
(308, '2023-2', '72153200', 'SINCE', 'ARONI', 'GABY', 2, 0, '182176', 'INGENIERÍA DE MINAS', 10, '', '961133668', '182176@unamba.edu.pe\r'),
(309, '2023-2', '75938267', 'TICONA', 'GUIZADO', 'JEAN ADERLY', 1, 0, '181181', 'INGENIERÍA DE MINAS', 10, '', '921047052', '181181@unamba.edu.pe\r'),
(310, '2023-2', '70784337', 'POCCO', 'VILLAVICENCIO', 'WILFREDO', 1, 0, '152103', 'INGENIERÍA DE MINAS', 10, '', '913484524', '152103@unamba.edu.pe\r'),
(311, '2023-2', '72907439', 'CANALES', 'ALVIZURI', 'DANIEL JESUS', 1, 0, '182132', 'INGENIERÍA DE MINAS', 10, '', '956030403', '182132@unamba.edu.pe\r'),
(312, '2023-2', '73474362', 'ALVIS', 'TOMATEO', 'ANA ESTHER', 2, 0, '191125', 'INGENIERÍA DE MINAS', 8, '', '979319255', '191125@unamba.edu.pe\r'),
(313, '2023-2', '70516820', 'ARCOS', 'HUILLCA', 'JHON SMITH', 1, 0, '191126', 'INGENIERÍA DE MINAS', 8, '', '950707143', '191126@unamba.edu.pe\r'),
(314, '2023-2', '75627242', 'ARONE', 'ANGELES', 'JHEYSON JHAIR ', 1, 0, '201054', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '983805438', '201054@unamba.edu.pe\r'),
(315, '2023-2', '76667165', 'CARLIN', 'CONDORI', 'BILLY SEBASTIAN ', 1, 0, '201057', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '946030193', '201057@unamba.edu.pe\r'),
(316, '2023-2', '73639719', 'SOTO', 'HUAMANHORCCO', 'ED NATIVIDO', 1, 0, '201068', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '931279039', '201068@unamba.edu.pe\r'),
(317, '2023-2', '76028633', 'ESCALANTE', 'BENITES', 'JHON AUGUSTO', 1, 0, '201224', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '929343385', '201224@unamba.edu.pe\r'),
(318, '2023-2', '70930383', 'ÑAHUINLLA', 'VELASQUEZ', 'EMERSON', 1, 0, '101131', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '983780014', '101131@unamba.edu.pe\r'),
(319, '2023-2', '70762466', 'GOMEZ', 'CHIPANI', 'ALFREDO', 1, 0, '121163', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '959644760', '121163@unamba.edu.pe\r'),
(320, '2023-2', '73633869', 'ROJAS', 'CARRASCO', 'NILTON', 1, 0, '121178', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '985146700', '121178@unamba.edu.pe\r'),
(321, '2023-2', '47302718', 'SERRANO', 'PEREZ', 'ELI', 1, 0, '121183', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '941194553', '121183@unamba.edu.pe\r'),
(322, '2023-2', '70971644', 'CARRASCO', 'GUIZADO', 'OSCAR', 1, 0, '122155', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '921965942', '122155@unamba.edu.pe\r'),
(323, '2023-2', '75279540', 'PORTILLO', 'GUEVARA', 'ALVARO', 1, 0, '152145', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '972876407', '152145@unamba.edu.pe\r'),
(324, '2023-2', '73441702', 'VALENZUELA', 'REYNAGA', 'DANTE', 1, 0, '152159', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '991935963', '152159@unamba.edu.pe\r'),
(325, '2023-2', '71772911', 'ARONE', 'BARAZORDA', 'FRITZ JOHAN', 1, 0, '161130', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '941215482', '161130@unamba.edu.pe\r'),
(326, '2023-2', '70440683', 'CHOQUEHUALLPA', 'HURTADO', 'OSCAR ALCIDES', 1, 0, '161139', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '965335422', '161139@unamba.edu.pe\r'),
(327, '2023-2', '71735032', 'HUAMAN', 'AMPUERO', 'JOSELYN', 2, 0, '161146', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '928936882', '161146@unamba.edu.pe\r'),
(328, '2023-2', '73859340', 'PANIURA', 'GONZALES', 'EDY JHON', 1, 0, '161159', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '953680120', '161159@unamba.edu.pe\r'),
(329, '2023-2', '74418072', 'BUSTINZA', 'MENDOZA', 'JONATHAN', 1, 0, '162134', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '916483201', '162134@unamba.edu.pe\r'),
(330, '2023-2', '48395410', 'CHAQQUERE', 'REA', 'JOSE', 1, 0, '162140', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '968946598', '162140@unamba.edu.pe\r'),
(331, '2023-2', '71798973', 'CHIPA', 'CARDENAS', 'ALEXANDHER', 1, 0, '162141', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '927852607', '162141@unamba.edu.pe\r'),
(332, '2023-2', '75914563', 'HUASHUAYO', 'MIRANDA', 'ELIAS', 1, 0, '162158', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '926322896', '162158@unamba.edu.pe\r'),
(333, '2023-2', '76361603', 'OSCCO', 'CCUIRO', 'SMIT', 1, 0, '162163', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '914143908', '162163@unamba.edu.pe\r'),
(334, '2023-2', '74312900', 'VALVERDE', 'RAMIREZ', 'JUAN CARLOS', 1, 0, '162179', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '915231431', '162179@unamba.edu.pe\r'),
(335, '2023-2', '73531077', 'CASTAÑEDA', 'PARI', 'KAREN SHEILA', 2, 0, '171137', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '964145679', '171137@unamba.edu.pe\r'),
(336, '2023-2', '73741315', 'CHACON', 'MESCCO', 'SAANDRA', 2, 0, '171140', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '970276219', '171140@unamba.edu.pe\r'),
(337, '2023-2', '71918860', 'HUAMAN', 'PIPA', 'GREGORI STEVEN ALDO', 1, 0, '171152', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '938533995', '171152@unamba.edu.pe\r'),
(338, '2023-2', '70775130', 'JIMENEZ', 'ARONE', 'ALDINN KEENNEHT', 1, 0, '171156', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '935698266', '171156@unamba.edu.pe\r');
INSERT INTO `unamba_matrics` (`Id`, `SEMESTRE`, `DNI`, `APPATERNO`, `APMATERNO`, `NOMBRES`, `SEXO`, `IdEP`, `CODIGO`, `EP`, `CICLO`, `DIRECC`, `TELEF`, `CORREO`) VALUES
(339, '2023-2', '77821532', 'MEZA', 'TANTALLA', 'YENNIFER', 2, 0, '171159', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '968101205', '171159@unamba.edu.pe\r'),
(340, '2023-2', '77695871', 'PAREJA', 'ARREDONDO', 'FLOR CINTIA', 2, 0, '171167', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '921455402', '171167@unamba.edu.pe\r'),
(341, '2023-2', '71798288', 'SANCHEZ', 'ESPINOZA', 'ROSMERY', 2, 0, '171175', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '900597199', '171175@unamba.edu.pe\r'),
(342, '2023-2', '76090321', 'ATAHUA', 'VILLEGAS', 'SUKER', 1, 0, '172130', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '999505779', '172130@unamba.edu.pe\r'),
(343, '2023-2', '73650911', 'LEO', 'HUAMANI', 'LUIS FERNANDO', 1, 0, '172154', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '987298068', '172154@unamba.edu.pe\r'),
(344, '2023-2', '71082237', 'SANCHEZ', 'CONTRERAS', 'EMERSON', 1, 0, '172168', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '992191047', '172168@unamba.edu.pe\r'),
(345, '2023-2', '73316975', 'CONDORI', 'CONDORI', 'JOSE', 1, 0, '181203', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '983276404', '181203@unamba.edu.pe\r'),
(346, '2023-2', '76744916', 'GOIZUETA', 'CASTAÑEDA', 'JOSE LUIS', 1, 0, '181209', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '901034923', '181209@unamba.edu.pe\r'),
(347, '2023-2', '76031997', 'HUARACA', 'NUÑEZ', 'JHOEL ALAN', 1, 0, '181212', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '952012595', '181212@unamba.edu.pe\r'),
(348, '2023-2', '72392177', 'MELÉNDEZ', 'VILCAS', 'PAUL JAINOR', 1, 0, '181219', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '989191916', '181219@unamba.edu.pe\r'),
(349, '2023-2', '76006888', 'MEZA', 'BAUTISTA', 'ANTHONY', 1, 0, '181221', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '927386272', '181221@unamba.edu.pe\r'),
(350, '2023-2', '71805816', 'VALCARCEL', 'SIERRA', 'RUTH', 2, 0, '181246', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '931157493', '181246@unamba.edu.pe\r'),
(351, '2023-2', '76237215', 'ALVITES', 'LEON', 'MELITZA GRACIELA', 2, 0, '182184', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '940061480', '182184@unamba.edu.pe\r'),
(352, '2023-2', '74395026', 'CARPIO', 'FELIX', 'ARON UBALDO', 1, 0, '182192', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '983958321', '182192@unamba.edu.pe\r'),
(353, '2023-2', '77344588', 'CHECCAÑA', 'ALEJANDRO', 'LUCHO CARLOS', 1, 0, '182196', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '962248104', '182196@unamba.edu.pe\r'),
(354, '2023-2', '73537764', 'CONDORI', 'NINA', 'YESICA', 2, 0, '182200', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '931879821', '182200@unamba.edu.pe\r'),
(355, '2023-2', '76180906', 'ESPINOZA', 'RODAS', 'LEYTER ARTURO', 1, 0, '182205', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '951396100', '182205@unamba.edu.pe\r'),
(356, '2023-2', '75698283', 'MUÑOZ', 'MIRANDA', 'JAIRO', 1, 0, '182213', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '994455284', '182213@unamba.edu.pe\r'),
(357, '2023-2', '74777709', 'SALAZAR', 'ASCUE', 'NEISA KARYN', 2, 0, '182229', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '918713177', '182229@unamba.edu.pe\r'),
(358, '2023-2', '72080836', 'SANCHEZ', 'VALVERDE', 'LUIS ALBERTO', 1, 0, '182231', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '926199554', '182231@unamba.edu.pe\r'),
(359, '2023-2', '73147233', 'TICONA', 'ORTIZ', 'JHEFERSSON CLETO', 1, 0, '182237', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '965703173', '182237@unamba.edu.pe\r'),
(360, '2023-2', '76658188', 'OLIVERA', 'SIERRA', 'DAVID', 1, 0, '182216', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '921288100', '182216@unamba.edu.pe\r'),
(361, '2023-2', '73713781', 'ARONE', 'HUANACO', 'ANDRES', 1, 0, '201055', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '951131448', '201055@unamba.edu.pe\r'),
(362, '2023-2', '75628884', 'PALOMINO', 'CHIRINOS', 'ANDERSON', 1, 0, '192217', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '914527458', '192217@unamba.edu.pe\r'),
(363, '2023-2', '71373244', 'CALDERON', 'CHIPA', 'DARCY', 1, 0, '201221', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '943747583', '201221@unamba.edu.pe\r'),
(364, '2023-2', '77703937', 'TAPIA', 'SUELDO', 'NINO', 1, 0, '162177', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '931278995', '162177@unamba.edu.pe\r'),
(365, '2023-2', '74053679', 'CANSAYA', 'HUAMAN', 'LUIS BELTRAN', 1, 0, '182190', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '935791512', '182190@unamba.edu.pe\r'),
(366, '2023-2', '60690771', 'LETONA', 'PORRAS', 'ARTURO', 1, 0, '192205', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '929160412', '192205@unamba.edu.pe\r'),
(367, '2023-2', '48682316', 'RIVERO', 'ESPINOZA', 'DIEGO KENNY', 1, 0, '112162', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '929161022', '112162@unamba.edu.pe\r'),
(368, '2023-2', '76269132', 'MENA', 'MOREANO', 'CRISTOFER ELIAS', 1, 0, '191220', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '924685317', '191220@unamba.edu.pe\r'),
(369, '2023-2', '70247790', 'YBARGUEN', 'FERNANDEZ', 'YEREMI CONNIE', 2, 0, '191245', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '915186036', '191245@unamba.edu.pe\r'),
(370, '2023-2', '72420004', 'LEON', 'MELENDEZ', 'DANUSKA JUANA', 2, 0, '192204', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '982889984', '192204@unamba.edu.pe\r'),
(371, '2023-2', '61580841', 'QUIROZ', 'CERON', 'LAURA ASTRID', 2, 0, '182223', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '930527863', '182223@unamba.edu.pe\r'),
(372, '2023-2', '71632611', 'MOREANO', 'FALCON', 'ZEILU MASSIEL', 2, 0, '191223', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '962137768', '191223@unamba.edu.pe\r'),
(373, '2023-2', '72695314', 'QUINTANA', 'CERON', 'JESUS ALBERTO', 1, 0, '191230', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '957225305', '191230@unamba.edu.pe\r'),
(374, '2023-2', '75422755', 'ROMERO', 'RAMOS', 'JHON FRANKLIN', 1, 0, '181238', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '967922800', '181238@unamba.edu.pe\r'),
(375, '2023-2', '60014426', 'CARRASCO', 'TAIPE', 'JAIME IVAN', 1, 0, '182193', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '927613580', '182193@unamba.edu.pe\r'),
(376, '2023-2', '75347703', 'CERVANTES', 'CCASA', 'ALFREDO', 1, 0, '172138', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '925657285', '172138@unamba.edu.pe\r'),
(377, '2023-2', '70780488', 'LEONA', 'AMPUERO', 'LUIS LUCIO', 1, 0, '171157', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '928397318', '171157@unamba.edu.pe\r'),
(378, '2023-2', '77383369', 'LEON', 'CRUZ', 'JHON MARK', 1, 0, '181216', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '934994343', '181216@unamba.edu.pe\r'),
(379, '2023-2', '75821032', 'ACHULLI', 'YUCRA', 'VICTOR', 1, 0, '162130', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '972410897', '162130@unamba.edu.pe\r'),
(380, '2023-2', '47215922', 'SALAZAR', 'CAHUANA', 'MARCIAL', 1, 0, '121179', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '935730370', '121179@unamba.edu.pe\r'),
(381, '2023-2', '72435654', 'VERA', 'TAYPE', 'JORGE LUIS', 1, 0, '161174', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '935725019', '161174@unamba.edu.pe\r'),
(382, '2023-2', '74451355', 'VELARDE', 'SAAVEDRA', 'LUIS ALEX', 1, 0, '161172', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '910461090', '161172@unamba.edu.pe\r'),
(383, '2023-2', '71840332', 'OCHOA', 'CHIRINOS', 'EDDY', 1, 0, '162162', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '985319022', '162162@unamba.edu.pe\r'),
(384, '2023-2', '76663592', 'AGUILAR', 'VALENZUELA', 'GUILLERMO RENATO', 1, 0, '191186', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '935080994', '191186@unamba.edu.pe\r'),
(385, '2023-2', '71543554', 'CHOCCARE', 'HUANCA', 'MARIA MERCEDES', 2, 0, '191198', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '918545162', '191198@unamba.edu.pe\r'),
(386, '2023-2', '72023289', 'COAQUIRA', 'BACA', 'EDNY', 1, 0, '191200', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '946264683', '191200@unamba.edu.pe\r'),
(387, '2023-2', '76621735', 'DELGADO', 'LADERA', 'BRYAN JIM', 1, 0, '191206', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '919166429', '191206@unamba.edu.pe\r'),
(388, '2023-2', '60015284', 'HUAMANI', 'AIQUIPA', 'JACK EDWIN', 1, 0, '191211', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '900415113', '191211@unamba.edu.pe\r'),
(389, '2023-2', '76188710', 'HURTADO', 'DELGADO', 'BRYAN', 1, 0, '191215', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '945522424', '191215@unamba.edu.pe\r'),
(390, '2023-2', '75917761', 'MOLINA', 'PORTILLA', 'OSCAR LORENZO', 1, 0, '191222', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '918803648', '191222@unamba.edu.pe\r'),
(391, '2023-2', '71958460', 'ÑAHUI', 'VARGAS', 'LUIS EDISON', 1, 0, '191224', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '935026813', '191224@unamba.edu.pe\r'),
(392, '2023-2', '75904811', 'OSCCO', 'GUILLEN', 'MARYCIELO XIOMARA', 2, 0, '191226', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '925289098', '191226@unamba.edu.pe\r'),
(393, '2023-2', '73658684', 'PFUÑO', 'ALCCAHUAMANI', 'LUIS ALBERTO', 1, 0, '191229', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '954131451', '191229@unamba.edu.pe\r'),
(394, '2023-2', '76668813', 'ROSALES', 'TINTAYA', 'GEORGE STYFF', 1, 0, '191234', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '963649273', '191234@unamba.edu.pe\r'),
(395, '2023-2', '70664218', 'VILLARROEL', 'FRANCO', 'LUISA NAHIELY', 2, 0, '191243', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '982574085', '191243@unamba.edu.pe\r'),
(396, '2023-2', '71809608', 'CASTILLO', 'AGUILAR', 'JHON CLAUDIO', 1, 0, '192185', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '929473619', '192185@unamba.edu.pe\r'),
(397, '2023-2', '73650899', 'CUELLAR', 'JUAREZ', 'LUZ NERIDA', 2, 0, '192194', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '930546911', '192194@unamba.edu.pe\r'),
(398, '2023-2', '72101018', 'CUYO', 'CANAHUIRE', 'JACK RAFAEL', 1, 0, '192195', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '920185987', '192195@unamba.edu.pe\r'),
(399, '2023-2', '71462018', 'ESPINOZA', 'SAYAGO', 'RODRIGO', 1, 0, '192196', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '957180338', '192196@unamba.edu.pe\r'),
(400, '2023-2', '77383373', 'MORIANO', 'SAUÑE', 'ANDERSON', 1, 0, '192211', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 9, '', '900615531', '192211@unamba.edu.pe\r'),
(401, '2023-2', '76040735', 'PRADA', 'HUAMANI', 'RUTH KARINA', 2, 0, '192220', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '913848795', '192220@unamba.edu.pe\r'),
(402, '2023-2', '75672722', 'QUISPE', 'COSTILLA', 'BRAYAN HERVIN', 1, 0, '192221', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '957574255', '192221@unamba.edu.pe\r'),
(403, '2023-2', '75322689', 'RETAMOZO', 'SAAVEDRA', 'LUIS FERNANDO', 1, 0, '192224', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '978752371', '192224@unamba.edu.pe\r'),
(404, '2023-2', '73689123', 'SARMIENTO', 'SARMIENTO', 'NAISA MILAGROS', 2, 0, '192227', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 8, '', '914379661', '192227@unamba.edu.pe\r'),
(405, '2023-2', '76240711', 'ARREDONDO', 'ROQUE', 'YASBETH SAYDA', 2, 0, '152115', 'INGENIERÍA INFORMÁTICA Y SISTEMAS', 10, '', '957017089', '152115@unamba.edu.pe\r'),
(406, '2023-2', '44925722', 'JIMENEZ', 'HUASHUAYO', 'JOSE CARLOS', 1, 0, '062128', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '968800682', '062128@unamba.edu.pe\r'),
(407, '2023-2', '44690863', 'SAENZ', 'ENCISO', 'PERCY', 1, 0, '191299', 'MEDICINA VETERINARIA Y ZOOTECNIA', 8, '', '973523481', '191299@unamba.edu.pe\r'),
(408, '2023-2', '46775821', 'MONZON', 'MUÑOZ', 'MIGUEL ANGEL', 1, 0, '121219', 'MEDICINA VETERINARIA Y ZOOTECNIA', 9, '', '925387913', '121219@unamba.edu.pe\r'),
(409, '2023-2', '48103651', 'LOPEZ', 'RAMOS', 'CLAUDIO', 1, 0, '122211', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '917960565', '122211@unamba.edu.pe\r'),
(410, '2023-2', '70776713', 'RAMIREZ', 'MENA', 'ELISEO', 1, 0, '122222', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '917637051', '122222@unamba.edu.pe\r'),
(411, '2023-2', '71898012', 'CASTRO', 'FELIX', 'YORKA YOMARY', 2, 0, '142196', 'MEDICINA VETERINARIA Y ZOOTECNIA', 8, '', '969777751', '142196@unamba.edu.pe\r'),
(412, '2023-2', '72412494', 'RAMIREZ', 'HUANCACURY', 'YERSON MANUEL', 1, 0, '151196', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '931061251', '151196@unamba.edu.pe\r'),
(413, '2023-2', '48660480', 'PINTO', 'MEDINA', 'LUIS DANIEL', 1, 0, '162189', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '963708195', '162189@unamba.edu.pe\r'),
(414, '2023-2', '72793414', 'AMEZQUITA', 'AÑANCA', 'STALIN SALVATORE J', 1, 0, '171179', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '933675611', '171179@unamba.edu.pe\r'),
(415, '2023-2', '72893334', 'CAHUANA', 'CARDENAS', 'MARIA CRISTINA', 2, 0, '171182', 'MEDICINA VETERINARIA Y ZOOTECNIA', 8, '', '925853202', '171182@unamba.edu.pe\r'),
(416, '2023-2', '70378969', 'FERNANDEZ', 'MANTARI', 'REY JAROLD', 1, 0, '172185', 'MEDICINA VETERINARIA Y ZOOTECNIA', 9, '', '982503007', '172185@unamba.edu.pe\r'),
(417, '2023-2', '72696574', 'FLOREZ', 'PEDRAZA', 'HENRY', 1, 0, '172186', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '973463443', '172186@unamba.edu.pe\r'),
(418, '2023-2', '48514646', 'HURTADO', 'GUTIERREZ', 'MARGOTH', 2, 0, '172188', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '967093844', '172188@unamba.edu.pe\r'),
(419, '2023-2', '70234589', 'BARRIENTOS', 'CONDORI', 'EUDOCIA ALEJANDRINA', 2, 0, '181255', 'MEDICINA VETERINARIA Y ZOOTECNIA', 9, '', '990416731', '181255@unamba.edu.pe\r'),
(420, '2023-2', '73427160', 'FERRO', 'AYQUIPA', 'PAULA ESTEFANI', 2, 0, '181274', 'MEDICINA VETERINARIA Y ZOOTECNIA', 8, '', '972535407', '181274@unamba.edu.pe\r'),
(421, '2023-2', '78970030', 'HILARIO', 'HERENCIA', 'JUAN PABLO', 1, 0, '181283', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '949169050', '181283@unamba.edu.pe\r'),
(422, '2023-2', '46260371', 'QUISPE', 'MENDOZA', 'VICTORIA NANCY', 2, 0, '181295', 'MEDICINA VETERINARIA Y ZOOTECNIA', 8, '', '972439633', '181295@unamba.edu.pe\r'),
(423, '2023-2', '76821025', 'CARTAGENA', 'GONZALES', 'JOHANA KATERIN', 2, 0, '182249', 'MEDICINA VETERINARIA Y ZOOTECNIA', 9, '', '984462720', '182249@unamba.edu.pe\r'),
(424, '2023-2', '73387154', 'SULLO', 'ALEGRIA', 'ANALI', 2, 0, '182282', 'MEDICINA VETERINARIA Y ZOOTECNIA', 8, '', '925873415', '182282@unamba.edu.pe\r'),
(425, '2023-2', '61751294', 'ALFARO', 'HUAMANI', 'MELUSCA MARILUZ', 2, 0, '151188', 'MEDICINA VETERINARIA Y ZOOTECNIA', 9, '', '956102668', '151188@unamba.edu.pe\r'),
(426, '2023-2', '62249213', 'CHAVEZ', 'CAYLLAHUA', 'MARIA ELENA', 2, 0, '181264', 'MEDICINA VETERINARIA Y ZOOTECNIA', 9, '', '944786346', '181264@unamba.edu.pe\r'),
(427, '2023-2', '44907264', 'GUTIERREZ', 'MENDOZA', 'VICTOR', 1, 0, '061159', 'MEDICINA VETERINARIA Y ZOOTECNIA', 10, '', '324665', '061159@unamba.edu.pe\r'),
(428, '2023-2', '77474681', 'CUENCA', 'BAYONA', 'PERSA ALEXANDRA', 2, 0, '191259', 'MEDICINA VETERINARIA Y ZOOTECNIA', 9, '', '997878641', '191259@unamba.edu.pe\r'),
(429, '2023-2', '44747143', 'CASTAÑEDA', 'MONZON', 'DILMER', 1, 0, '101201', 'MEDICINA VETERINARIA Y ZOOTECNIA', 9, '', '942460880', '101201@unamba.edu.pe\r'),
(430, '2023-2', '73310306', 'ALEJO', 'LIMA', 'YUTDER', 1, 0, '191480', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 9, '', '958707683', '191480@unamba.edu.pe\r'),
(431, '2023-2', '71929656', 'PABLO', 'CHALCO', 'JULIAN', 1, 0, '151395', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '968496548', '151395@unamba.edu.pe\r'),
(432, '2023-2', '48476317', 'CURI', 'FLORES', 'MOISES ALBERTO', 1, 0, '191486', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 9, '', '900412818', '191486@unamba.edu.pe\r'),
(433, '2023-2', '72236879', 'LEON', 'CONDORI', 'RENE', 1, 0, '191491', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 9, '', '972480154', '191491@unamba.edu.pe\r'),
(434, '2023-2', '74439929', 'SOTA', 'MENDOZA', 'JENNY', 2, 0, '191498', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 9, '', '961363544', '191498@unamba.edu.pe\r'),
(435, '2023-2', '47470240', 'SULLCA', 'SANCHEZ', 'CIRO', 1, 0, '182476', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '962824287', '182476@unamba.edu.pe\r'),
(436, '2023-2', '71800992', 'AVENDAÑO', 'GONZALES', 'SINKLER JHON', 1, 0, '181660', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '984245755', '181660@unamba.edu.pe\r'),
(437, '2023-2', '74075276', 'COSTILLA', 'TAIPE', 'BISMAR HAFFNER', 1, 0, '181662', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 8, '', '901650742', '181662@unamba.edu.pe\r'),
(438, '2023-2', '73650592', 'CUELLAR', 'LEON', 'ARNOLD', 1, 0, '181663', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 9, '', '910440651', '181663@unamba.edu.pe\r'),
(439, '2023-2', '71805302', 'IZQUIERDO', 'MOLINA', 'ALFREDO', 1, 0, '181668', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 9, '', '930915307', '181668@unamba.edu.pe\r'),
(440, '2023-2', '74221939', 'PALOMINO', 'GUZMAN', 'EDISON', 1, 0, '181671', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '991822243', '181671@unamba.edu.pe\r'),
(441, '2023-2', '74459297', 'RAYME', 'SANTOS', 'JAIR CRISTHIAN', 1, 0, '181673', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 8, '', '900440248', '181673@unamba.edu.pe\r'),
(442, '2023-2', '73659468', 'TUERO', 'PANUAGUA', 'LIZ MARLENY', 2, 0, '181676', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 8, '', '948254725', '181676@unamba.edu.pe\r'),
(443, '2023-2', '73604015', 'VARGAS', 'PEÑA', 'REYNA', 2, 0, '181677', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '901465251', '181677@unamba.edu.pe\r'),
(444, '2023-2', '48087500', 'YAGUNO', 'GONZALES', 'FANY', 2, 0, '181678', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 8, '', '974457750', '181678@unamba.edu.pe\r'),
(445, '2023-2', '71745624', 'CARBAJAL', 'CONTRERAS', 'Ronald', 1, 0, '172324', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 8, '', '929951568', '172324@unamba.edu.pe\r'),
(446, '2023-2', '74579817', 'ANDRADE', 'HUAMANI', 'JAIME TIMOTEO', 1, 0, '181659', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '984756073', '181659@unamba.edu.pe\r'),
(447, '2023-2', '74317610', 'ESTRADA', 'MORALES', 'FRANKLIN', 1, 0, '161348', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '958784670', '161348@unamba.edu.pe\r'),
(448, '2023-2', '74579818', 'ANDRADE', 'HUAMANI', 'WILFREDO', 1, 0, '162315', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '967736677', '162315@unamba.edu.pe\r'),
(449, '2023-2', '48148840', 'POCCORI', 'ARONE', 'GIOCONDA', 2, 0, '162320', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '940440053', '162320@unamba.edu.pe\r'),
(450, '2023-2', '73807785', 'GALLEGOS', 'BLAS', 'Ruth Marina', 2, 0, '172326', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 9, '', '900 434 4', '172326@unamba.edu.pe\r'),
(451, '2023-2', '44272102', 'LUNA', 'HUANACO', 'RURU', 1, 0, '072277', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '952151019', '072277@unamba.edu.pe\r'),
(452, '2023-2', '71794532', 'CHIRINOS', 'LLICAHUA', 'EUGENIO ', 1, 0, '151386', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '916370531', '151386@unamba.edu.pe\r'),
(453, '2023-2', '71774628', 'HUALLPA', 'ARTEAGA', 'MARIA DEL PILAR', 2, 0, '151387', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 10, '', '931691709', '151387@unamba.edu.pe\r'),
(454, '2023-2', '72282403', 'CURI', 'FLORES', 'CESAR', 1, 0, '191485', 'INGENIERÍA AGROECOLÓGICA Y DESARROLLO RURAL', 8, '', '931099033', '191485@unamba.edu.pe\r'),
(455, '2023-2', '61747653', 'ANAMARIA', 'ESPINOZA', 'ROSMERY ', 2, 0, '201083', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '974258250', '201083@unamba.edu.pe\r'),
(456, '2023-2', '73385973', 'ANDAGUA', 'GOMEZ', 'RAYDA', 2, 0, '201084', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '933146833', '201084@unamba.edu.pe\r'),
(457, '2023-2', '76277247', 'CHIRINOS', 'BARRIOS', 'MARY CRUZ', 2, 0, '201085', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '964249090', '201085@unamba.edu.pe\r'),
(458, '2023-2', '73587955', 'GONZALES', 'QUINTANILLA', 'RUTH MELISSA', 2, 0, '201091', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '969205630', '201091@unamba.edu.pe\r'),
(459, '2023-2', '75217380', 'MARTINEZ', 'HUAMANI', 'FIORELA', 2, 0, '201093', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '935219897', '201093@unamba.edu.pe\r'),
(460, '2023-2', '71742846', 'MENDOZA', 'BUSTINZA', 'MARGARET ', 2, 0, '201094', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '973155063', '201094@unamba.edu.pe\r'),
(461, '2023-2', '72242235', 'SANCHEZ', 'JIBAJA', 'NARVI REGINA', 2, 0, '181351', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '921305961', '181351@unamba.edu.pe\r'),
(462, '2023-2', '71383916', 'SOTO', 'JARA', 'RUTH KARINA', 2, 0, '181353', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '986732321', '181353@unamba.edu.pe\r'),
(463, '2023-2', '71563034', 'TAIPE', 'MOREANO', 'YULISA JUSTINA', 2, 0, '181354', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '984479510', '181354@unamba.edu.pe\r'),
(464, '2023-2', '46281963', 'VALVERDE', 'CABALLERO', 'MIRIAM', 2, 0, '181361', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '925554947', '181361@unamba.edu.pe\r'),
(465, '2023-2', '47053640', 'VARGAS', 'MEDINA', 'SILVIA', 2, 0, '181362', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '973936971', '181362@unamba.edu.pe\r'),
(466, '2023-2', '77242900', 'CHUMBE', 'SARMIENTO', 'NICOL', 2, 0, '192285', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '929049880', '192285@unamba.edu.pe\r'),
(467, '2023-2', '73379045', 'NAVEDA', 'BUSTINZA', 'VERONICA', 2, 0, '201184', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '928377172', '201184@unamba.edu.pe\r'),
(468, '2023-2', '74658032', 'VARGAS', 'HUAYLLA', 'DANIELA', 2, 0, '192321', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '925741663', '192321@unamba.edu.pe\r'),
(469, '2023-2', '71440462', 'HUAMANI', 'TOMAYLLA', 'NATALY', 2, 0, '192299', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '901547049', '192299@unamba.edu.pe\r'),
(470, '2023-2', '73996740', 'CASTAÑEDA', 'HUAMANÑAHUI', 'DIANA DE LA FLOR', 2, 0, '192282', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '958762281', '192282@unamba.edu.pe\r'),
(471, '2023-2', '47458837', 'MENOR', 'DIAZ', 'BETTY', 2, 0, '201308', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '931077940', '201308@unamba.edu.pe\r'),
(472, '2023-2', '74537523', 'QUISPE', 'CCORAHUA', 'SULEMA', 2, 0, '192315', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '931346598', '192315@unamba.edu.pe\r'),
(473, '2023-2', '71805838', 'BORDA', 'CRUZ', 'FRANCY ADELY', 2, 0, '192273', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '965485241', '192273@unamba.edu.pe\r'),
(474, '2023-2', '74751047', 'VEGA', 'CACERES', 'MIRIAN', 2, 0, '192322', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '978241554', '192322@unamba.edu.pe\r'),
(475, '2023-2', '71550641', 'OSCCO', 'PINTO', 'THANIA MELISSA', 2, 0, '192309', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '965264226', '192309@unamba.edu.pe\r'),
(476, '2023-2', '71657336', 'BRAVO', 'MARIN', 'MAYRA MELLISSA', 2, 0, '191316', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '935450772', '191316@unamba.edu.pe\r'),
(477, '2023-2', '61580847', 'COLLAHUA', 'CORONADO', 'LUSBEL ARACELI', 2, 0, '191327', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '930228289', '191327@unamba.edu.pe\r'),
(478, '2023-2', '73884735', 'VERA', 'TAYPE', 'LIZ DIANA', 2, 0, '191366', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '900433489', '191366@unamba.edu.pe\r'),
(479, '2023-2', '42483114', 'ACHAHUI', 'HUAMANÑAHUI', 'EDWIN OMAR', 1, 0, '162196', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '925991019', '162196@unamba.edu.pe\r'),
(480, '2023-2', '72083758', 'AYMACHOQUE', 'CARRASCO', 'ANALI IRIS', 2, 0, '162199', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '954733150', '162199@unamba.edu.pe\r'),
(481, '2023-2', '71310803', 'GUEVARA', 'CARBAJAL', 'ALICIA', 2, 0, '162206', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '916736034', '162206@unamba.edu.pe\r'),
(482, '2023-2', '73208108', 'SEGOVIA', 'MAMANI', 'KORINA MILAGROS', 2, 0, '162224', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '', '162224@unamba.edu.pe\r'),
(483, '2023-2', '74087658', 'CHALCO', 'VILLEGAS', 'JOHN ANTONY', 1, 0, '171219', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '900421652', '171219@unamba.edu.pe\r'),
(484, '2023-2', '48504567', 'ESCALANTE', 'SERRANO', 'LIZ SHEYLA', 2, 0, '171227', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '941586919', '171227@unamba.edu.pe\r'),
(485, '2023-2', '73532382', 'CCOICCA', 'TELLO', 'YULY', 2, 0, '172202', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '901876665', '172202@unamba.edu.pe\r'),
(486, '2023-2', '74717136', 'RESABAL', 'TAIPECCAHUANA', 'YESSICA', 2, 0, '172226', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '978692447', '172226@unamba.edu.pe\r'),
(487, '2023-2', '46876786', 'SORAS', 'QUISPE', 'KATHLEEN', 2, 0, '172229', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '967186823', '172229@unamba.edu.pe\r'),
(488, '2023-2', '77100749', 'TAPIA', 'MOREANO', 'ANALI', 2, 0, '172233', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '918219307', '172233@unamba.edu.pe\r'),
(489, '2023-2', '75689971', 'SUBELETE', 'MIRANDA', 'RUT KATYA', 2, 0, '201099', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '937636792', '201099@unamba.edu.pe\r'),
(490, '2023-2', '74615675', 'TORRES', 'GUIZADO', 'BERTHA ', 2, 0, '201100', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '948211171', '201100@unamba.edu.pe\r'),
(491, '2023-2', '72464016', 'TORVISCO', 'CONTRERAS', 'LUZ MILAGROS', 2, 0, '201101', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '930682417', '201101@unamba.edu.pe\r'),
(492, '2023-2', '73664241', 'VELASQUE', 'TAPIA', 'MERLY SANTUSA ', 2, 0, '201102', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '928408873', '201102@unamba.edu.pe\r'),
(493, '2023-2', '71290908', 'ARREDONDO', 'OJEDA', 'LIZ YADIRA', 2, 0, '201176', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '910447368', '201176@unamba.edu.pe\r'),
(494, '2023-2', '74158645', 'CONTRERAS', 'SANCHEZ', 'DIANINA', 2, 0, '201180', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '938172921', '201180@unamba.edu.pe\r'),
(495, '2023-2', '73666190', 'HURTADO', 'SORIA', 'ESTEFANI VICTORIA', 2, 0, '201182', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '964894573', '201182@unamba.edu.pe\r'),
(496, '2023-2', '77219434', 'MALDONADO', 'HUARHUA', 'WENDY DENNIS', 2, 0, '201321', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '936112897', '201321@unamba.edu.pe\r'),
(497, '2023-2', '70930043', 'CAYLLAHUA', 'SALAZAR', 'NIDIA', 2, 0, '121242', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '946621065', '121242@unamba.edu.pe\r'),
(498, '2023-2', '73765519', 'MAYHUIRE', 'SUAREZ', 'CLAUDIA BASILIA', 2, 0, '122262', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '910168324', '122262@unamba.edu.pe\r'),
(499, '2023-2', '77822811', 'APAZA', 'ROJAS', 'SARY PAMELA', 2, 0, '142224', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '918887512', '142224@unamba.edu.pe\r'),
(500, '2023-2', '78006023', 'LAPA', 'HUAMAN', 'DAMARIS LINDA', 2, 0, '151205', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '941651931', '151205@unamba.edu.pe\r'),
(501, '2023-2', '70778859', 'BRAVO', 'NAVIO', 'YANETH', 2, 0, '192274', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '994835528', '192274@unamba.edu.pe\r'),
(502, '2023-2', '71289520', 'CACERES', 'CCARHUASLLA', 'FIORELA', 2, 0, '192275', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '953870678', '192275@unamba.edu.pe\r'),
(503, '2023-2', '76090313', 'CACERES', 'HUAMAN', 'MIRIAM MILAGROS', 2, 0, '192276', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '928925839', '192276@unamba.edu.pe\r'),
(504, '2023-2', '71538652', 'CALDERON', 'DAVALOS', 'ROSSY', 2, 0, '192277', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '913088875', '192277@unamba.edu.pe\r'),
(505, '2023-2', '72412458', 'CARRASCO', 'PICHIHUA', 'ARACELI', 2, 0, '192281', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '937644230', '192281@unamba.edu.pe\r'),
(506, '2023-2', '77035314', 'CASTILLO', 'HUAMANÑAHUI', 'MILAGROS', 2, 0, '192283', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '991866830', '192283@unamba.edu.pe\r'),
(507, '2023-2', '61780538', 'CISNEROS', 'TUIRO', 'GABRIELA', 2, 0, '192287', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '920647535', '192287@unamba.edu.pe\r'),
(508, '2023-2', '71560349', 'ESCOBEDO', 'MIRANDA', 'NEYKA KATIUSKA', 2, 0, '192288', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '992169900', '192288@unamba.edu.pe\r'),
(509, '2023-2', '63347248', 'ESPINOZA', 'CHUMPISUCA', 'ANAIS KAROL', 2, 0, '192289', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '997535846', '192289@unamba.edu.pe\r'),
(510, '2023-2', '71310574', 'ESTRADA', 'TAIPE', 'NOEMI ROSA', 2, 0, '192290', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '913284981', '192290@unamba.edu.pe\r'),
(511, '2023-2', '77017910', 'GOMEZ', 'CONDORPUSA', 'RITA', 2, 0, '192291', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '961245864', '192291@unamba.edu.pe\r'),
(512, '2023-2', '62201820', 'HILARES', 'CABALLERO', 'JHENY VANESSA', 2, 0, '192294', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '942707603', '192294@unamba.edu.pe\r'),
(513, '2023-2', '71288467', 'HUACHACA', 'OVALLE', 'TANIA', 2, 0, '192295', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '929963755', '192295@unamba.edu.pe\r'),
(514, '2023-2', '71390828', 'LOAYZA', 'VELAZQUE', 'DORIS NELIDA', 2, 0, '192302', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '989415777', '192302@unamba.edu.pe\r'),
(515, '2023-2', '71423964', 'LOPEZ', 'TOMAYLLA', 'GERONIMA GUADALUPE', 2, 0, '192304', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '931341581', '192304@unamba.edu.pe\r'),
(516, '2023-2', '75924666', 'OJEDA', 'GOMEZ', 'NOEMI FIORELLA', 2, 0, '192307', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '931708753', '192307@unamba.edu.pe\r'),
(517, '2023-2', '76280926', 'OJEDA', 'MANGA', 'INGRIT ROSSANA', 2, 0, '192308', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '928646218', '192308@unamba.edu.pe\r'),
(518, '2023-2', '74451333', 'PALOMINO', 'ROMAN', 'NATALIA', 2, 0, '192311', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '961488793', '192311@unamba.edu.pe\r'),
(519, '2023-2', '63349012', 'PANIURA', 'GAYOSO', 'OTILIA ESPERANZA', 2, 0, '192312', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '973238510', '192312@unamba.edu.pe\r'),
(520, '2023-2', '73385937', 'ROJAS', 'BUENDIA', 'YULIZA MAGDALENA', 2, 0, '192316', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '921216223', '192316@unamba.edu.pe\r'),
(521, '2023-2', '73754524', 'ROJAS', 'TORRES', 'KELY YASMINA', 2, 0, '192317', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '957601935', '192317@unamba.edu.pe\r'),
(522, '2023-2', '71809583', 'SOLIS', 'FERRO', 'FLOR DE MARIA', 2, 0, '192319', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '929903615', '192319@unamba.edu.pe\r'),
(523, '2023-2', '76802139', 'TAIPE', 'ECCOÑA', 'ROSA ANDREA', 2, 0, '192320', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '989977284', '192320@unamba.edu.pe\r'),
(524, '2023-2', '72434456', 'ALCARRAZ', 'NUÑEZ', 'MIRIAN JUANA', 2, 0, '201082', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '921915868', '201082@unamba.edu.pe\r'),
(525, '2023-2', '70974040', 'ACHO', 'CHACÑA', 'ROCIO', 2, 0, '192263', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '900984353', '192263@unamba.edu.pe\r'),
(526, '2023-2', '76154849', 'ACHULLI', 'BARRETO', 'VANESSA', 2, 0, '192264', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '916227383', '192264@unamba.edu.pe\r'),
(527, '2023-2', '71383776', 'AGUILAR', 'AYMARA', 'YUMIRA', 2, 0, '192265', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '956304760', '192265@unamba.edu.pe\r'),
(528, '2023-2', '74290931', 'ARONE', 'HURTADO', 'IRMA SHAKIRA', 2, 0, '192268', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '927826316', '192268@unamba.edu.pe\r'),
(529, '2023-2', '47578916', 'AYALA', 'CHIPANA', 'ANA MARIA', 2, 0, '192269', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '92761267', '192269@unamba.edu.pe\r'),
(530, '2023-2', '71334016', 'BARAZORDA', 'CHICLLA', 'CLARISA', 2, 0, '192270', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '900076535', '192270@unamba.edu.pe\r'),
(531, '2023-2', '70790392', 'PEÑA', 'LUNA', 'ROS MERY', 2, 0, '191357', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '900077874', '191357@unamba.edu.pe\r'),
(532, '2023-2', '76858099', 'QUISPE', 'ANCCO', 'LUCERO LEONOR', 2, 0, '191358', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '997335408', '191358@unamba.edu.pe\r'),
(533, '2023-2', '74552459', 'RAMOS', 'HUAMANI', 'KHELMA', 2, 0, '191360', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '953843260', '191360@unamba.edu.pe\r'),
(534, '2023-2', '75853057', 'SAAVEDRA', 'HUAYTALLA', 'NAIR MILUSKA', 2, 0, '191361', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '940625994', '191361@unamba.edu.pe\r'),
(535, '2023-2', '71654705', 'VALDIVIA', 'LOPEZ', 'JESICA', 2, 0, '191364', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '931325874', '191364@unamba.edu.pe\r'),
(536, '2023-2', '75873541', 'VENTURA', 'SANCHEZ', 'YANETH DINA', 2, 0, '191365', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '901135966', '191365@unamba.edu.pe\r'),
(537, '2023-2', '72235278', 'VILLAFUERTE', 'QUIROZ', 'SHANERY', 2, 0, '191367', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '971668090', '191367@unamba.edu.pe\r'),
(538, '2023-2', '72153150', 'ALIAGA', 'TOLA', 'GIANELLA LISBETH', 2, 0, '191308', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '969037994', '191308@unamba.edu.pe\r'),
(539, '2023-2', '70440981', 'BALLON', 'JURO', 'AAROM VICTOR', 1, 0, '191310', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '935463324', '191310@unamba.edu.pe\r'),
(540, '2023-2', '76434214', 'BARRIENTOS', 'TALAVERANO', 'LIZBET', 2, 0, '191311', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '949599600', '191311@unamba.edu.pe\r'),
(541, '2023-2', '71938634', 'BARRIOS', 'MAMANI', 'JOEL', 1, 0, '191313', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '931691033', '191313@unamba.edu.pe\r'),
(542, '2023-2', '71798281', 'BLANCO', 'MERINO', 'DIANA', 2, 0, '191314', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '918539613', '191314@unamba.edu.pe\r'),
(543, '2023-2', '76027590', 'BRAVO', 'CONTRERAS', 'MIRYAM LILY', 2, 0, '191315', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '931692623', '191315@unamba.edu.pe\r'),
(544, '2023-2', '77171087', 'CACERES', 'HUAMANI', 'LISBETH', 2, 0, '191317', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '944353755', '191317@unamba.edu.pe\r'),
(545, '2023-2', '71801737', 'CARBAJAL', 'DURAND', 'MARIBEL', 2, 0, '191318', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '929530440', '191318@unamba.edu.pe\r'),
(546, '2023-2', '76048361', 'CASTAÑEDA', 'PACHECO', 'RUTH DIANA', 2, 0, '191321', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '926075414', '191321@unamba.edu.pe\r'),
(547, '2023-2', '76809712', 'CCORAHUA', 'AMBIA', 'NAYELY ANGELA', 2, 0, '191322', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '929169890', '191322@unamba.edu.pe\r'),
(548, '2023-2', '77676241', 'CCORAHUA', 'VALDERRAMA', 'DIANA ROXANA RUBI', 2, 0, '191323', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '935456020', '191323@unamba.edu.pe\r'),
(549, '2023-2', '75235291', 'CHILE', 'LUNA', 'ELIZA', 2, 0, '191325', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '974198295', '191325@unamba.edu.pe\r'),
(550, '2023-2', '75628878', 'CHIPANA', 'ROMERO', 'LUZ CENAYDA', 2, 0, '191326', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '931277166', '191326@unamba.edu.pe\r'),
(551, '2023-2', '73755572', 'CONTRERAS', 'ACHULLI', 'SUSI SOLEDAD', 2, 0, '191328', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '914466788', '191328@unamba.edu.pe\r'),
(552, '2023-2', '75270551', 'ESCALANTE', 'COSIO', 'SENDY', 2, 0, '191334', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '969786566', '191334@unamba.edu.pe\r'),
(553, '2023-2', '72167365', 'GARCIA', 'ARREDONDO', 'YENY', 2, 0, '191336', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '921214470', '191336@unamba.edu.pe\r'),
(554, '2023-2', '71290736', 'GARCIA', 'ROBLES', 'DEYRA YOSHELY', 2, 0, '191337', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '956753533', '191337@unamba.edu.pe\r'),
(555, '2023-2', '71932942', 'GUTIERREZ', 'CHARA', 'MILAGRITOS SHANDEE', 2, 0, '191340', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '992783207', '191340@unamba.edu.pe\r'),
(556, '2023-2', '75957426', 'HUAMAN', 'BLANCO', 'FLOR DE LIZ', 2, 0, '191341', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '992383407', '191341@unamba.edu.pe\r'),
(557, '2023-2', '73143761', 'LEON', 'MONZON', 'GABRIELA', 2, 0, '191344', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '953077533', '191344@unamba.edu.pe\r'),
(558, '2023-2', '76201021', 'LOAYZA', 'BARRETO', 'YENNIFER', 2, 0, '191346', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '965469285', '191346@unamba.edu.pe\r'),
(559, '2023-2', '76167036', 'LOPEZ', 'CHICLLASTO', 'SILVIA MARGARITA', 2, 0, '191348', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '913428828', '191348@unamba.edu.pe\r'),
(560, '2023-2', '74594924', 'MIRANDA', 'OYOLA', 'LULIANA', 2, 0, '191350', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '960982568', '191350@unamba.edu.pe\r'),
(561, '2023-2', '71440043', 'MORENO', 'GALLO', 'ANA ISABEL', 2, 0, '191353', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '974 212 5', '191353@unamba.edu.pe\r'),
(562, '2023-2', '70080686', 'OCAÑA', 'BENITES', 'LIHZ MARISELA', 2, 0, '191354', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '935434397', '191354@unamba.edu.pe\r'),
(563, '2023-2', '71809590', 'PALOMINO', 'PILLCO', 'VANESSA', 2, 0, '191356', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '925772674', '191356@unamba.edu.pe\r'),
(564, '2023-2', '74581405', 'ARONE', 'QUISPE', 'EVELYN', 2, 0, '182291', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '900410327', '182291@unamba.edu.pe\r'),
(565, '2023-2', '74628922', 'CARRASCO', 'QUIJHUA', 'ANA ROSA', 2, 0, '182297', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '925838330', '182297@unamba.edu.pe\r'),
(566, '2023-2', '75613345', 'CENTENO', 'KARI', 'JOSELYN', 2, 0, '182302', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '997586069', '182302@unamba.edu.pe\r'),
(567, '2023-2', '77094277', 'CURIHUAMANI', 'MALLQUI', 'ESPERANZA CRUSPIDA', 2, 0, '182308', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '951183838', '182308@unamba.edu.pe\r'),
(568, '2023-2', '71039767', 'GUIZADO', 'PEREZ', 'ROSARIO', 2, 0, '182312', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '952126159', '182312@unamba.edu.pe\r'),
(569, '2023-2', '76335780', 'GUTIERREZ', 'SOTO', 'RUTH MARIA', 2, 0, '182313', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '925870598', '182313@unamba.edu.pe\r'),
(570, '2023-2', '48857518', 'HUAMANHORCCO', 'HUAMANORCCO', 'MARI YANINA', 2, 0, '182320', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '992479905', '182320@unamba.edu.pe\r'),
(571, '2023-2', '71840285', 'HUAMANI', 'HUAMANI', 'MARITZA', 2, 0, '182322', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '984799391', '182322@unamba.edu.pe\r'),
(572, '2023-2', '73754756', 'MUÑOZ', 'CCONISLLA', 'FIORELLA', 2, 0, '182326', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '934393001', '182326@unamba.edu.pe\r'),
(573, '2023-2', '71809633', 'QUINTANA', 'ZEVALLOS', 'LIZ BENIGNA', 2, 0, '182334', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '917980072', '182334@unamba.edu.pe\r'),
(574, '2023-2', '70803682', 'QUISPE', 'CERVANTES', 'ARLET', 1, 0, '182335', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '900569057', '182335@unamba.edu.pe\r'),
(575, '2023-2', '76255449', 'QUISPE', 'HUILLCA', 'MILAGROS', 2, 0, '182336', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '930475841', '182336@unamba.edu.pe\r'),
(576, '2023-2', '76274130', 'RIOS', 'ÑAHUI', 'DELFINA', 2, 0, '182338', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '930694718', '182338@unamba.edu.pe\r'),
(577, '2023-2', '73653796', 'ROMAN', 'ROMAN', 'LISET YESICA', 2, 0, '182339', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '918207166', '182339@unamba.edu.pe\r'),
(578, '2023-2', '72763258', 'SARAISE', 'SALAS', 'NELSON', 1, 0, '182341', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '916247192', '182341@unamba.edu.pe\r'),
(579, '2023-2', '70777531', 'TORVISCO', 'CONTRERAS', 'THALIA', 2, 0, '182343', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '993746956', '182343@unamba.edu.pe\r'),
(580, '2023-2', '71294229', 'AEDO', 'OJEDA', 'MARILUZ', 2, 0, '181307', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '936843465', '181307@unamba.edu.pe\r'),
(581, '2023-2', '74658033', 'ALLCCA', 'ALVINO', 'CYNTHIA BRISETH', 1, 0, '181309', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '944127060', '181309@unamba.edu.pe\r'),
(582, '2023-2', '73995155', 'AYBAR', 'ALLCCA', 'MARIA ISABEL', 2, 0, '181312', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '915935844', '181312@unamba.edu.pe\r'),
(583, '2023-2', '72964777', 'CAHUANA', 'CARDENAS', 'VALERIA', 2, 0, '181316', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '976268562', '181316@unamba.edu.pe\r'),
(584, '2023-2', '73048901', 'CHICLLA', 'MARTINEZ', 'ANA LUZ', 2, 0, '181320', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '997565414', '181320@unamba.edu.pe\r'),
(585, '2023-2', '70821971', 'CONTRERAS', 'URFANO', 'ANA CLAUDIA', 2, 0, '181323', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '980497819', '181323@unamba.edu.pe\r'),
(586, '2023-2', '71840297', 'CRUZ', 'ESCOBAL', 'ALDAIR', 1, 0, '181325', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 8, '', '955090772', '181325@unamba.edu.pe\r'),
(587, '2023-2', '73274775', 'RAMOS', 'SIHUINCHA', 'MIRIAM', 2, 0, '181344', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '931220536', '181344@unamba.edu.pe\r'),
(588, '2023-2', '72962198', 'RIVERA', 'BARRIENTOS', 'KATHIA', 2, 0, '181347', 'EDUCACIÓN INICIAL INTERCULTURAL BILINGÜE: PRIMERA Y SEGUNDA INFANCIA', 9, '', '900597215', '181347@unamba.edu.pe\r'),
(589, '2023-2', '71550747', 'ANCALLA', 'SIVINCHA', 'NILBER ANTONIO', 1, 0, '191369', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '916209285', '191369@unamba.edu.pe\r'),
(590, '2023-2', '74445913', 'ARTEAGA', 'BARAZORDA', 'MARITZA', 2, 0, '191370', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '963787101', '191370@unamba.edu.pe\r'),
(591, '2023-2', '73486625', 'BLAS', 'CRUZ', 'ARACELY KASSANDRA', 2, 0, '191373', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '929274485', '191373@unamba.edu.pe\r'),
(592, '2023-2', '75174145', 'BRAVO', 'VALDERRAMA', 'CRISTHIAN GEORGES', 1, 0, '191374', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '997348537', '191374@unamba.edu.pe\r'),
(593, '2023-2', '75660915', 'CALSIN', 'PALOMINO', 'SARAI', 2, 0, '191375', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '921215983', '191375@unamba.edu.pe\r'),
(594, '2023-2', '73650748', 'CARDENAS', 'HUAMAN', 'ANNIE YEP', 2, 0, '191376', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '979937660', '191376@unamba.edu.pe\r'),
(595, '2023-2', '71805811', 'CARRION', ' PALOMINO', 'ANALY', 2, 0, '191377', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '949737136', '191377@unamba.edu.pe\r'),
(596, '2023-2', '75683240', 'CCASANI', 'PINARES', 'ALEX', 1, 0, '191379', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '961838822', '191379@unamba.edu.pe\r'),
(597, '2023-2', '75582070', 'CUELLAR', 'DE LA CRUZ', 'MARIA CRISTINA', 2, 0, '191385', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '970646173', '191385@unamba.edu.pe\r'),
(598, '2023-2', '74942903', 'CUSCO', 'BALDEON', 'JHENIFFER', 2, 0, '191386', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '935217786', '191386@unamba.edu.pe\r'),
(599, '2023-2', '74421828', 'ECCOÑA', 'CASTRO', 'KEVIN', 1, 0, '191387', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '991255262', '191387@unamba.edu.pe\r'),
(600, '2023-2', '75874566', 'ESPINOZA', 'QUISPE', 'MARIFE DAYANA', 2, 0, '191388', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '956247271', '191388@unamba.edu.pe\r'),
(601, '2023-2', '74415429', 'ESPINOZA', 'UTANI', 'RUTH MERY', 2, 0, '191389', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '997816161', '191389@unamba.edu.pe\r'),
(602, '2023-2', '77291288', 'GARAY', 'ROMAN', 'FLOR DE  MARIA', 2, 0, '191390', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '984107543', '191390@unamba.edu.pe\r'),
(603, '2023-2', '70384155', 'HUAMANÑAHUI', 'BARAZORDA', 'MILAGROS NELLY', 2, 0, '191393', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '967234984', '191393@unamba.edu.pe\r'),
(604, '2023-2', '71794507', 'HUARANCCA', 'RAMIREZ', 'MELANY', 2, 0, '191395', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '991863515', '191395@unamba.edu.pe\r'),
(605, '2023-2', '77327414', 'LAURA', 'CHALCO', 'NAYELY', 2, 0, '191397', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '931144523', '191397@unamba.edu.pe\r'),
(606, '2023-2', '71654732', 'LOPEZ', 'ASTO', 'ROSABEL', 2, 0, '191398', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '900436016', '191398@unamba.edu.pe\r'),
(607, '2023-2', '73756101', 'LOZANO', 'PANAIFO', 'PITER LUIGUI', 1, 0, '191399', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '921148387', '191399@unamba.edu.pe\r'),
(608, '2023-2', '70440713', 'MERINO', 'RIVERA', 'LUIS RICARDO', 1, 0, '191404', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '965184629', '191404@unamba.edu.pe\r'),
(609, '2023-2', '46901855', 'MIRANDA', 'TEVES DE FERNANDEZ', 'LIZBET', 2, 0, '191405', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '946754222', '191405@unamba.edu.pe\r'),
(610, '2023-2', '75323724', 'MONZA', 'CCENTE', 'WILLIAM ENRIQUE', 1, 0, '191406', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '913989312', '191406@unamba.edu.pe\r'),
(611, '2023-2', '74445948', 'MONZON', 'MENDOZA', 'KATERINE SHOMARA', 2, 0, '191407', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '940893971', '191407@unamba.edu.pe\r'),
(612, '2023-2', '75598665', 'NAVEDA', 'BACILIO', 'WILFREDO', 1, 0, '191409', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '929934076', '191409@unamba.edu.pe\r'),
(613, '2023-2', '76062614', 'OLIVERA', 'CAHUANA', 'JULIO CESAR', 1, 0, '191410', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '992123655', '191410@unamba.edu.pe\r'),
(614, '2023-2', '71334964', 'OSCCO', 'PEÑA', 'EVELYN', 2, 0, '191412', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '931438804', '191412@unamba.edu.pe\r'),
(615, '2023-2', '74474794', 'PANCHI', 'PABLO', 'ESTEFANY', 2, 0, '191413', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '966939794', '191413@unamba.edu.pe\r'),
(616, '2023-2', '48142515', 'QUISPE', 'CARDENAS', 'YOVANA', 2, 0, '191418', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '928907810', '191418@unamba.edu.pe\r');
INSERT INTO `unamba_matrics` (`Id`, `SEMESTRE`, `DNI`, `APPATERNO`, `APMATERNO`, `NOMBRES`, `SEXO`, `IdEP`, `CODIGO`, `EP`, `CICLO`, `DIRECC`, `TELEF`, `CORREO`) VALUES
(617, '2023-2', '74691099', 'TELLO', 'CHIRINOS', 'FLOR MAGALY', 2, 0, '191424', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '972350832', '191424@unamba.edu.pe\r'),
(618, '2023-2', '74722778', 'VALVERDE', 'SANCHEZ', 'BRITNEY VICTORIA DEL PILAR', 2, 0, '191427', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '963406073', '191427@unamba.edu.pe\r'),
(619, '2023-2', '77157005', 'ZULUAGA', 'REYNAGA', 'BRETMER DAET', 1, 0, '191429', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '948603974', '191429@unamba.edu.pe\r'),
(620, '2023-2', '76306979', 'CARRASCO', 'SALAZAR', 'HENRRY', 1, 0, '182358', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '949126467', '182358@unamba.edu.pe\r'),
(621, '2023-2', '46647622', 'CASTILLA', 'CACERES', 'LUIS ALBERTO', 1, 0, '182360', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '954326217', '182360@unamba.edu.pe\r'),
(622, '2023-2', '75792728', 'CONTRERAS', 'MENA', 'GUILLERMO ANDRES', 1, 0, '182368', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '927155517', '182368@unamba.edu.pe\r'),
(623, '2023-2', '76656306', 'CUSI', 'AGUILAR', 'MARIA LUISA', 2, 0, '182371', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '931337872', '182371@unamba.edu.pe\r'),
(624, '2023-2', '61569864', 'CUSI', 'MONTUFAR', 'MAIRA YAKELIN', 2, 0, '182372', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '910454522', '182372@unamba.edu.pe\r'),
(625, '2023-2', '73459065', 'GUTIERREZ', 'SILVERA', 'BETSY', 2, 0, '182376', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '958215221', '182376@unamba.edu.pe\r'),
(626, '2023-2', '62081172', 'HUACHACA', 'QUISPE', 'NORMA', 2, 0, '182377', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '954247556', '182377@unamba.edu.pe\r'),
(627, '2023-2', '71741311', 'LLACTA', 'HUAMANI', 'YUBER', 1, 0, '182384', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '941899036', '182384@unamba.edu.pe\r'),
(628, '2023-2', '75792732', 'PIMENTEL', 'QUISPE', 'FRANCO', 1, 0, '182390', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '928380058', '182390@unamba.edu.pe\r'),
(629, '2023-2', '76838961', 'RAMOS', 'CASAVERDE', 'REYNA MARITZA', 2, 0, '182396', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '925337781', '182396@unamba.edu.pe\r'),
(630, '2023-2', '76266358', 'ROJAS', 'HUANACCHIRI', 'WENDY', 2, 0, '182399', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '953317494', '182399@unamba.edu.pe\r'),
(631, '2023-2', '70789376', 'ACUÑA', 'HERENCIA', 'GERTRUDES', 2, 0, '182350', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '940152832', '182350@unamba.edu.pe\r'),
(632, '2023-2', '74911274', 'CAPARO', 'AVALOS', 'ROZY NATHALY', 2, 0, '182356', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '953792079', '182356@unamba.edu.pe\r'),
(633, '2023-2', '75174195', 'ACHULLI', 'VERA', 'JHON STEVE', 1, 0, '181367', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '961028973', '181367@unamba.edu.pe\r'),
(634, '2023-2', '75660897', 'ESPINOZA', 'UTANI', 'DEBORA', 2, 0, '181386', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '900436085', '181386@unamba.edu.pe\r'),
(635, '2023-2', '73604017', 'TORRES', 'VALENZUELA', 'FLOR DIANA', 2, 0, '181421', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '947701019', '181421@unamba.edu.pe\r'),
(636, '2023-2', '71960336', 'ZAPATA', 'CHALQUE', 'GONZALO', 1, 0, '181425', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '916735557', '181425@unamba.edu.pe\r'),
(637, '2023-2', '74279840', 'MARIÑO', 'SERRANO', 'NAYSHA MELANI', 2, 0, '162252', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '919 034 3', '162252@unamba.edu.pe\r'),
(638, '2023-2', '74587268', 'RIVAS', 'CASTAÑEDA', 'JUDITH', 2, 0, '162262', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '929163128', '162262@unamba.edu.pe\r'),
(639, '2023-2', '77017908', 'BUSTINZA', 'MONTES', 'JESUS', 1, 0, '171263', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '918541229', '171263@unamba.edu.pe\r'),
(640, '2023-2', '75093253', 'VILLAFUERTE', 'AEDO', 'EDITH SANDRA', 2, 0, '171296', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '973078217', '171296@unamba.edu.pe\r'),
(641, '2023-2', '76081122', 'BATALLANOS', 'SORIA', 'SHARON PAMELA', 2, 0, '172246', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '974403857', '172246@unamba.edu.pe\r'),
(642, '2023-2', '46490485', 'GUTIERREZ', 'PALOMINO', 'ALEX', 1, 0, '172255', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '992086047', '172255@unamba.edu.pe\r'),
(643, '2023-2', '75498186', 'BORDA', 'CEPEDES', 'FLOR DE MARIA', 2, 0, '201103', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '957324208', '201103@unamba.edu.pe\r'),
(644, '2023-2', '71654687', 'ESPINOZA', 'MAIHUIRE', 'LISBETH', 2, 0, '201105', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '901508819', '201105@unamba.edu.pe\r'),
(645, '2023-2', '75710898', 'MENA', 'AGUIRRE', 'MELANY', 2, 0, '201108', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '978851188', '201108@unamba.edu.pe\r'),
(646, '2023-2', '73662039', 'QUISPE', 'HURTADO', 'ANA LISEY', 2, 0, '201111', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '921243736', '201111@unamba.edu.pe\r'),
(647, '2023-2', '75746862', 'SERRANO', 'BACA', 'FLUKER', 1, 0, '201112', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '912866032', '201112@unamba.edu.pe\r'),
(648, '2023-2', '77018043', 'SOLORZANO', 'GUTIERREZ', 'MARGOT', 2, 0, '201113', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '918118521', '201113@unamba.edu.pe\r'),
(649, '2023-2', '76129080', 'TAPIA', 'CAHUANA', 'GHERSON', 1, 0, '201114', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '983949988', '201114@unamba.edu.pe\r'),
(650, '2023-2', '75917792', 'ABUHADBA', 'ACHO', 'GENESIS DULNAYA', 2, 0, '201166', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '931077845', '201166@unamba.edu.pe\r'),
(651, '2023-2', '76834441', 'CARHUAS', 'ACUÑA', 'YUBITSA JUANA', 2, 0, '201168', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '983801154', '201168@unamba.edu.pe\r'),
(652, '2023-2', '75866871', 'CCAHUANA', 'CONDORI', 'SHANDEE IRINEO', 2, 0, '201169', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '951287057', '201169@unamba.edu.pe\r'),
(653, '2023-2', '75931361', 'CHUMBES', 'HUANACO', 'MARIBEL', 2, 0, '201170', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '931034668', '201170@unamba.edu.pe\r'),
(654, '2023-2', '74461057', 'RIOJA', 'QUISPE', 'ISABEL DE LA O', 2, 0, '201174', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '910111541', '201174@unamba.edu.pe\r'),
(655, '2023-2', '71297354', 'SILVA', 'FERRO', 'VICENTE', 1, 0, '201175', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '', '201175@unamba.edu.pe\r'),
(656, '2023-2', '76527326', 'GONZALES', 'LAIME', 'MARILE CLAUDIA', 2, 0, '201325', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '987653267', '201325@unamba.edu.pe\r'),
(657, '2023-2', '73099880', 'AGUIRRE', 'ALLCCA', 'ADANY', 1, 0, '112247', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '986330349', '112247@unamba.edu.pe\r'),
(658, '2023-2', '70765708', 'GOMEZ', 'GOMEZ', 'ANDRES CRISTIAN', 1, 0, '112265', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '956875439', '112265@unamba.edu.pe\r'),
(659, '2023-2', '77417425', 'BEDIA', 'CAIPANI', 'AIRTON ROMAIN', 1, 0, '131187', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '946791454', '131187@unamba.edu.pe\r'),
(660, '2023-2', '71909945', 'AVALOS', 'CONTRERAS', 'ALEX JOE', 1, 0, '141271', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '973653531', '141271@unamba.edu.pe\r'),
(661, '2023-2', '76657827', 'GARFIAS', 'CHICLLA', 'YURICA YUCELI', 2, 0, '151251', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '910939376', '151251@unamba.edu.pe\r'),
(662, '2023-2', '75961501', 'LAURA', 'SANTI', 'DENIS ', 1, 0, '151269', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '935792622', '151269@unamba.edu.pe\r'),
(663, '2023-2', '76274122', 'QUIO', 'MAQUERA', 'ARON ANTHONY', 1, 0, '151281', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '983311270', '151281@unamba.edu.pe\r'),
(664, '2023-2', '75821023', 'CENTENO', 'KARI', 'BLADIMIR', 1, 0, '152194', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 10, '', '950368144', '152194@unamba.edu.pe\r'),
(665, '2023-2', '73235399', 'AUQUIPUMA', 'CCORAHUA', 'YURIKA', 2, 0, '192327', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '964895644', '192327@unamba.edu.pe\r'),
(666, '2023-2', '73772977', 'CAMARGO', 'NARVAEZ', 'CRISTIAN', 1, 0, '192331', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '912197977', '192331@unamba.edu.pe\r'),
(667, '2023-2', '74445254', 'CARHUAMACA', 'PIMENTEL', 'SHARMELY ANSHELA', 2, 0, '192332', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '943780482', '192332@unamba.edu.pe\r'),
(668, '2023-2', '70551912', 'CURO', 'ONTON', 'FLOR MILAGROS', 2, 0, '192335', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '949635878', '192335@unamba.edu.pe\r'),
(669, '2023-2', '71383922', 'JARA', 'VARGAS', 'VANESSA', 2, 0, '192342', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '951121604', '192342@unamba.edu.pe\r'),
(670, '2023-2', '74050739', 'LLOCLLA', 'BERMUDEZ', 'MAYKOL YORDAN', 1, 0, '192344', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '925904383', '192344@unamba.edu.pe\r'),
(671, '2023-2', '77177588', 'MALLQUI', 'VEGA', 'ERICK JHERSON', 1, 0, '192345', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '923428859', '192345@unamba.edu.pe\r'),
(672, '2023-2', '48955465', 'MEDINA', 'TAIPE', 'JEYDY SHANIRA', 2, 0, '192347', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '914941069', '192347@unamba.edu.pe\r'),
(673, '2023-2', '80851707', 'ORTIZ', 'CARRION', 'ERLITH EULOGIA', 2, 0, '192350', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '974372053', '192350@unamba.edu.pe\r'),
(674, '2023-2', '47567473', 'QUISPE', 'PANEBRA', 'MARITZA', 2, 0, '192354', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '901003372', '192354@unamba.edu.pe\r'),
(675, '2023-2', '74926486', 'RIVAS', 'ZANABRIA', 'RUTH NOEMI', 2, 0, '192356', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '992809553', '192356@unamba.edu.pe\r'),
(676, '2023-2', '77296813', 'SAAVEDRA', 'CARRION', 'BRIGUITH', 2, 0, '192359', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '980711869', '192359@unamba.edu.pe\r'),
(677, '2023-2', '77911943', 'SALAS', 'HUAMANI', 'MARIA FLORA', 2, 0, '192360', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 9, '', '987330758', '192360@unamba.edu.pe\r'),
(678, '2023-2', '75018276', 'VELASQUEZ', 'VARGAS', 'MARIA EMILIA', 2, 0, '192371', 'CIENCIA POLÍTICA Y GOBERNABILIDAD', 8, '', '931201037', '192371@unamba.edu.pe\r'),
(679, '2023-2', '77214563', 'CASTILLA', 'PINARES', 'GABRIEL', 1, 0, '191504', 'INGENIERÍA DE MINAS (COTABAMBAS)', 10, '', '900091040', '191504@unamba.edu.pe\r'),
(680, '2023-2', '74630546', 'MALDONADO', 'AYQUIPA', 'FRANKLIN', 1, 0, '152224', 'INGENIERÍA DE MINAS (COTABAMBAS)', 10, '', '917953210', '152224@unamba.edu.pe\r'),
(681, '2023-2', '77139120', 'CUCHO', 'CCARI', 'LUIS FERNANDO', 1, 0, '191511', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '929655210', '191511@unamba.edu.pe\r'),
(682, '2023-2', '71077871', 'MAMANI', 'YARICE', 'YOVANI FREDY', 1, 0, '191530', 'INGENIERÍA DE MINAS (COTABAMBAS)', 9, '', '949279088', '191530@unamba.edu.pe\r'),
(683, '2023-2', '71764247', 'QUISPE', 'TARAPAQUI', 'JOSE LUIS', 1, 0, '191531', 'INGENIERÍA DE MINAS (COTABAMBAS)', 9, '', '913380082', '191531@unamba.edu.pe\r'),
(684, '2023-2', '73766524', 'ARONI', 'FLORES', 'JHOSEP JUNIOR', 1, 0, '191501', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '973043641', '191501@unamba.edu.pe\r'),
(685, '2023-2', '74544546', 'ARONI', 'CHECYA', 'JOVINO', 1, 0, '182480', 'INGENIERÍA DE MINAS (COTABAMBAS)', 9, '', '957178716', '182480@unamba.edu.pe\r'),
(686, '2023-2', '73785929', 'HUARAC', 'LIMA', 'JHAN CARLOS', 1, 0, '182486', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '932526316', '182486@unamba.edu.pe\r'),
(687, '2023-2', '71211402', 'QUISPE', 'FARFAN', 'JHON DARCY', 1, 0, '182494', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '958381620', '182494@unamba.edu.pe\r'),
(688, '2023-2', '74621949', 'MALLCO', 'CRUZ', 'ALBERTO FREDY', 1, 0, '181508', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '900077812', '181508@unamba.edu.pe\r'),
(689, '2023-2', '60315824', 'MENDOZA', 'SOTA', 'SAYDA LUISA', 2, 0, '181511', 'INGENIERÍA DE MINAS (COTABAMBAS)', 9, '', '993946916', '181511@unamba.edu.pe\r'),
(690, '2023-2', '71201588', 'QUISPE', 'GALLEGOS', 'MIGUEL ANGEL', 1, 0, '181519', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '900911030', '181519@unamba.edu.pe\r'),
(691, '2023-2', '72389419', 'TAIPE', 'HURTADO', 'VERYOSKA', 2, 0, '181527', 'INGENIERÍA DE MINAS (COTABAMBAS)', 10, '', '927293481', '181527@unamba.edu.pe\r'),
(692, '2023-2', '71194351', 'TAIPE', 'PEÑA', 'AYBEN', 1, 0, '181528', 'INGENIERÍA DE MINAS (COTABAMBAS)', 10, '', '964273851', '181528@unamba.edu.pe\r'),
(693, '2023-2', '76420002', 'ZAMORA', 'SONDO', 'YOHAN', 1, 0, '181535', 'INGENIERÍA DE MINAS (COTABAMBAS)', 9, '', '993720545', '181535@unamba.edu.pe\r'),
(694, '2023-2', '73800143', 'BLAS', 'CHIPAYO', 'FRAN CRISTIAN', 1, 0, '191503', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '972848059', '191503@unamba.edu.pe\r'),
(695, '2023-2', '74482245', 'CHIPA', 'JAQUIS', 'ERICK NILDON', 1, 0, '181494', 'INGENIERÍA DE MINAS (COTABAMBAS)', 9, '', '948215496', '181494@unamba.edu.pe\r'),
(696, '2023-2', '46508556', 'QUISPE', 'VERA', 'YOSEDY', 2, 0, '172367', 'INGENIERÍA DE MINAS (COTABAMBAS)', 10, '', '931834256', '172367@unamba.edu.pe\r'),
(697, '2023-2', '76058449', 'DAVILA', 'OVIEDO', ' RONY', 1, 0, '161281', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '930919583', '161281@unamba.edu.pe\r'),
(698, '2023-2', '74615888', 'MELENDEZ', 'AQUIMA', 'LEYCHAVEN', 1, 0, '171369', 'INGENIERÍA DE MINAS (COTABAMBAS)', 10, '', '901671570', '171369@unamba.edu.pe\r'),
(699, '2023-2', '74431323', 'SULLCAHUAMAN', 'FLORES', 'BLADIMIR IDIR', 1, 0, '171375', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '916634910', '171375@unamba.edu.pe\r'),
(700, '2023-2', '74430097', 'ZAMORA', 'QUISPE', 'ROGER', 1, 0, '171379', 'INGENIERÍA DE MINAS (COTABAMBAS)', 10, '', '915380432', '171379@unamba.edu.pe\r'),
(701, '2023-2', '77215253', 'TORRES', 'NINA', 'SERAFIN ', 1, 0, '201155', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '964136061', '201155@unamba.edu.pe\r'),
(702, '2023-2', '41971429', 'ARANGO', 'MARIACA', 'Fritz Jesus', 1, 0, '142303', 'INGENIERÍA DE MINAS (COTABAMBAS)', 9, '', '982406477', '142303@unamba.edu.pe\r'),
(703, '2023-2', '76019801', 'CCONISLLA', 'HUAMANI', 'RONALDO', 1, 0, '151363', 'INGENIERÍA DE MINAS (COTABAMBAS)', 10, '', '953864931', '151363@unamba.edu.pe\r'),
(704, '2023-2', '73639310', 'ARREDONDO', 'ESTRADA', 'FREDY', 1, 0, '151365', 'INGENIERÍA DE MINAS (COTABAMBAS)', 9, '', '930871603', '151365@unamba.edu.pe\r'),
(705, '2023-2', '74622274', 'CONZA', 'PACHECO', 'MAICOL JAINOR', 1, 0, '191510', 'INGENIERÍA DE MINAS (COTABAMBAS)', 8, '', '925734153', '191510@unamba.edu.pe\r'),
(706, '2023-2', '72150031', 'FUENTES', 'ARREDONDO', 'PILAR', 2, 0, '192455', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '944065827', '192455@unamba.edu.pe\r'),
(707, '2023-2', '74579026', 'GONZALES', 'QUISPE', 'CRISTIAN', 1, 0, '192458', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '963415333', '192458@unamba.edu.pe\r'),
(708, '2023-2', '48054380', 'LIMA', 'HUILLCA', 'JUAN CARLOS', 1, 0, '192468', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '992437896', '192468@unamba.edu.pe\r'),
(709, '2023-2', '71548567', 'MAMANI', 'HUILLCA', 'YANET', 2, 0, '192471', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '928353516', '192471@unamba.edu.pe\r'),
(710, '2023-2', '43806567', 'MERMA', 'CARDENAS', 'FERDINAN', 1, 0, '192473', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '982690411', '192473@unamba.edu.pe\r'),
(711, '2023-2', '74991476', 'PANIURA', 'YAGUILLO', 'ROMULO', 1, 0, '192479', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '931779598', '192479@unamba.edu.pe\r'),
(712, '2023-2', '71290766', 'RAMOS', 'DURAN', 'RAUL SAMUEL', 1, 0, '192480', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '956797988', '192480@unamba.edu.pe\r'),
(713, '2023-2', '77288375', 'SALAS', 'HUAMANI', 'NESTOR', 1, 0, '192482', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '914959136', '192482@unamba.edu.pe\r'),
(714, '2023-2', '72309137', 'ARCOS', 'HUILLCA', 'JOSE', 1, 0, '191543', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '946711991', '191543@unamba.edu.pe\r'),
(715, '2023-2', '76419982', 'ARISAPANA', 'CONDORI', 'BERNABE LUCHO', 1, 0, '191544', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '931358019', '191544@unamba.edu.pe\r'),
(716, '2023-2', '75934964', 'ARRAMBIDE', 'MENDOZA', 'JAIME', 1, 0, '191545', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '987708748', '191545@unamba.edu.pe\r'),
(717, '2023-2', '60520474', 'ARREDONDO', 'CHUMBES', 'NILDA', 2, 0, '191546', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '900449986', '191546@unamba.edu.pe\r'),
(718, '2023-2', '72625557', 'CAYLLAHUA', 'OLMEDO', 'FRED TONY', 1, 0, '191550', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '928655158', '191550@unamba.edu.pe\r'),
(719, '2023-2', '77682926', 'CERECEDA', 'ESCOBEDO', 'GISELA', 2, 0, '191551', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '963749792', '191551@unamba.edu.pe\r'),
(720, '2023-2', '72165512', 'CHAHUAYLLO', 'CONDORI', 'LIBIA', 1, 0, '191552', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '973535245', '191552@unamba.edu.pe\r'),
(721, '2023-2', '71654738', 'CHECCLLO', 'VALENZUELA', 'SITNAE', 2, 0, '191553', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '935315060', '191553@unamba.edu.pe\r'),
(722, '2023-2', '74580805', 'CHUMBES', 'QUISPE', 'JORGE GERARDO', 1, 0, '191554', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '914257241', '191554@unamba.edu.pe\r'),
(723, '2023-2', '76502638', 'CONDORI', 'LIMA', 'RUTH KARINA', 2, 0, '191555', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '901057399', '191555@unamba.edu.pe\r'),
(724, '2023-2', '74361285', 'ESPINOZA', 'DIAZ', 'FANY', 2, 0, '191560', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '941230617', '191560@unamba.edu.pe\r'),
(725, '2023-2', '75902280', 'HUACHO', 'LAYME', 'EDITH', 2, 0, '191563', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '980701130', '191563@unamba.edu.pe\r'),
(726, '2023-2', '77084158', 'HUANCARA', 'GUILLEN', 'NALY EDITH', 2, 0, '191566', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '982155748', '191566@unamba.edu.pe\r'),
(727, '2023-2', '72276248', 'HUILLCA', 'QUISPE', 'NAYDA SINTHIA', 2, 0, '191568', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '969394330', '191568@unamba.edu.pe\r'),
(728, '2023-2', '70815635', 'QUISPE', 'FLORES', 'OSCAR ALEXANDER', 1, 0, '191576', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '916830002', '191576@unamba.edu.pe\r'),
(729, '2023-2', '75871564', 'UGARTE', 'PERLACIO', 'KARINA', 2, 0, '191583', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '932382819', '191583@unamba.edu.pe\r'),
(730, '2023-2', '74483494', 'YANQQUE', 'CCAHUANA', 'YULY', 2, 0, '191588', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '928827308', '191588@unamba.edu.pe\r'),
(731, '2023-2', '74448367', 'YUCRA', 'LOZANO', 'YOVANA', 2, 0, '191589', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '901259521', '191589@unamba.edu.pe\r'),
(732, '2023-2', '74483692', 'ZAMORA', 'QUISPE', 'ROSA', 2, 0, '191590', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '931552633', '191590@unamba.edu.pe\r'),
(733, '2023-2', '72155967', 'ANCCO', 'CHUMBEZ', 'YENY MILAGROS', 2, 0, '182498', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '921336604', '182498@unamba.edu.pe\r'),
(734, '2023-2', '76462191', 'CONDORI', 'SIPAUCCAR', 'NANCY LUCILA', 2, 0, '182511', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '935082138', '182511@unamba.edu.pe\r'),
(735, '2023-2', '74440245', 'HUAÑAHUI', 'JURO', 'SOLEDAD ERIKA', 2, 0, '182520', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '956338615', '182520@unamba.edu.pe\r'),
(736, '2023-2', '74431334', 'HUAYHUA', 'OVIEDO', 'JANET JAIDA', 2, 0, '182521', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '948919400', '182521@unamba.edu.pe\r'),
(737, '2023-2', '74583210', 'HUILLCA', 'LIMA', 'UBALDINA', 2, 0, '182522', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '914297687', '182522@unamba.edu.pe\r'),
(738, '2023-2', '72232805', 'OSORIO', 'MOLINA', 'LISBETH MARY YESELA', 2, 0, '182527', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '969349512', '182527@unamba.edu.pe\r'),
(739, '2023-2', '73705955', 'PUMA', ' LLAMOCCA', 'MAURO', 1, 0, '182528', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '940801143', '182528@unamba.edu.pe\r'),
(740, '2023-2', '62530245', 'PUMA', 'CHICLLASTO', 'MARLENY', 2, 0, '182529', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '984405255', '182529@unamba.edu.pe\r'),
(741, '2023-2', '74991534', 'PUMA', 'INOSTROZA', 'MAYCOL', 1, 0, '182530', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '917193871', '182530@unamba.edu.pe\r'),
(742, '2023-2', '73711070', 'TARAPAQUI', 'CHAHUAYLLO', 'DAMIAN', 1, 0, '182536', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '958280770', '182536@unamba.edu.pe\r'),
(743, '2023-2', '77435981', 'APASA', 'HUAMANI', 'LUZ MARINA', 2, 0, '181540', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '943774409', '181540@unamba.edu.pe\r'),
(744, '2023-2', '76790325', 'ARAMBURU', 'BERRIO', 'RITA ISABEL', 2, 0, '181541', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '991192545', '181541@unamba.edu.pe\r'),
(745, '2023-2', '74448353', 'ARREDONDO', 'ESTRADA', 'ROSA ROSMERY', 2, 0, '181545', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '927023799', '181545@unamba.edu.pe\r'),
(746, '2023-2', '77218661', 'CCOSCCO', 'HUAMANZANA', 'ALEX', 1, 0, '181552', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '944721637', '181552@unamba.edu.pe\r'),
(747, '2023-2', '75941265', 'CONDORI', 'PUMA', 'ALEXANDER', 1, 0, '181557', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '917011621', '181557@unamba.edu.pe\r'),
(748, '2023-2', '75282991', 'FERRO', 'HUAMAN', 'SAIDA MERCEDES', 2, 0, '181558', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '973528080', '181558@unamba.edu.pe\r'),
(749, '2023-2', '75000877', 'FLORES', 'LUCAS', 'ERMELINDA', 2, 0, '181559', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '900419269', '181559@unamba.edu.pe\r'),
(750, '2023-2', '76778288', 'GONZALES', 'PEÑA', 'SALY NOELIA', 2, 0, '181561', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '946970638', '181561@unamba.edu.pe\r'),
(751, '2023-2', '73737069', 'HUAMANI', 'CCOPA', 'NANCY', 2, 0, '181565', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '959182373', '181565@unamba.edu.pe\r'),
(752, '2023-2', '73742373', 'LETONA', 'AMARO', 'ENRIQUE', 1, 0, '181567', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '928769584', '181567@unamba.edu.pe\r'),
(753, '2023-2', '77043853', 'LIMA', 'HUILLCA', 'MARIA ELENA', 2, 0, '181568', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '917232835', '181568@unamba.edu.pe\r'),
(754, '2023-2', '77215288', 'QUISPE', 'PALMA', 'FLAVIO CESAR', 1, 0, '181579', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '973329765', '181579@unamba.edu.pe\r'),
(755, '2023-2', '73856265', 'SALAS', 'LUQUE', 'WILMER PABLO', 1, 0, '181583', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '971967336', '181583@unamba.edu.pe\r'),
(756, '2023-2', '74757062', 'SALCEDO', 'MOLINA', 'NATALIA GLADYS', 2, 0, '181584', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '944060735', '181584@unamba.edu.pe\r'),
(757, '2023-2', '73757146', 'SOLIS', 'BALTAZAR', 'RONY ISMAEL', 1, 0, '181585', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '914548325', '181585@unamba.edu.pe\r'),
(758, '2023-2', '76445020', 'TARAPAQUI', 'CHAHUAYLLO', 'LOURDES ALEJANDRINA', 2, 0, '181591', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '926240858', '181591@unamba.edu.pe\r'),
(759, '2023-2', '72232880', 'GUZMAN', 'GONZALES', 'ALEJANDRA', 1, 0, '172338', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '952308671', '172338@unamba.edu.pe\r'),
(760, '2023-2', '72249051', 'CARRASCO', 'TACO', 'BENJAMIN', 1, 0, '172342', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '931504368', '172342@unamba.edu.pe\r'),
(761, '2023-2', '72143626', 'SULLCAHUAMAN', 'ARISTA', 'DIANA VANESSA', 2, 0, '172344', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '925871264', '172344@unamba.edu.pe\r'),
(762, '2023-2', '71568777', 'QQUENTA', 'SOTO', 'WALTER', 1, 0, '172350', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '930796495', '172350@unamba.edu.pe\r'),
(763, '2023-2', '77814322', 'HUAMANI', 'POSACLLA', ' EDGAR', 1, 0, '161297', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '959308230', '161297@unamba.edu.pe\r'),
(764, '2023-2', '71244937', 'MAMANI', 'TORRES', ' LIZ ELISA', 2, 0, '161304', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '931929665', '161304@unamba.edu.pe\r'),
(765, '2023-2', '74583006', 'MALDONADO', 'GUILLERMO', 'JOSE LUIS', 1, 0, '162334', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '973209784', '162334@unamba.edu.pe\r'),
(766, '2023-2', '73313583', 'CABRERA', 'BOLIVAR', 'ISAURO', 1, 0, '171384', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '935159334', '171384@unamba.edu.pe\r'),
(767, '2023-2', '75232903', 'MOLINA', 'ARAUJO', 'RUTH MERY', 2, 0, '171403', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '925014219', '171403@unamba.edu.pe\r'),
(768, '2023-2', '74426781', 'LIMAYPUMA', 'SILVA', 'CINTHIA YANETH', 2, 0, '172331', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '932003162', '172331@unamba.edu.pe\r'),
(769, '2023-2', '73773343', 'CCAMA', 'ZENTENO', 'JHAMIL FERNANDO', 1, 0, '201333', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '900284423', '201333@unamba.edu.pe\r'),
(770, '2023-2', '73313618', 'ROQUE', 'ESCALANTE', 'EBERT', 1, 0, '122412', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '927965490', '122412@unamba.edu.pe\r'),
(771, '2023-2', '72167424', 'SILVA', 'OLMEDO', 'ANALY MONICA', 2, 0, '151408', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '921180379', '151408@unamba.edu.pe\r'),
(772, '2023-2', '74896379', 'CHAVES', 'BATALLANOS', 'ALDO RUBEN', 1, 0, '151428', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '974729930', '151428@unamba.edu.pe\r'),
(773, '2023-2', '74884206', 'ARCOS', 'QUISPE', 'NELLY MARGOT', 2, 0, '151429', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '989939326', '151429@unamba.edu.pe\r'),
(774, '2023-2', '77540243', 'APAZA', 'CCAHUANA', 'DANIELA', 2, 0, '152227', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '929921551', '152227@unamba.edu.pe\r'),
(775, '2023-2', '70815483', 'ARREDONDO', 'ALFARO', 'HAYDEE', 2, 0, '192441', 'ADMINISTRACIÓN (COTABAMBAS)', 9, '', '946677581', '192441@unamba.edu.pe\r'),
(776, '2023-2', '44029710', 'CCAMA', 'ZENTENO', 'CHRISTIAN RENE', 1, 0, '192445', 'ADMINISTRACIÓN (COTABAMBAS)', 10, '', '957048414', '192445@unamba.edu.pe\r'),
(777, '2023-2', '48029611', 'CHUMBES', 'SILVA', 'SAUL RODRIGO', 1, 0, '192450', 'ADMINISTRACIÓN (COTABAMBAS)', 8, '', '951312708', '192450@unamba.edu.pe\r'),
(778, '2023-2', '76280927', 'OJEDA', 'MANGA', 'FRANK BRYAN', 1, 0, '192404', 'INGENIERIA CIVIL ', 8, '', '929175075', '192404@unamba.edu.pe\r'),
(779, '2023-2', '72279118', 'QUISPE', 'JURO', 'CLEVERTSON ALCIDES', 1, 0, '192408', 'INGENIERIA CIVIL ', 9, '', '993418362', '192408@unamba.edu.pe\r'),
(780, '2023-2', '60117565', 'SILVA', 'SALAS', 'JHOSET AMERICO', 1, 0, '192417', 'INGENIERIA CIVIL ', 8, '', '913114328', '192417@unamba.edu.pe\r'),
(781, '2023-2', '76007823', 'ARONI', 'BORDA', 'EVELYN KATHERINE', 2, 0, '192493', 'INGENIERIA CIVIL ', 8, '', '931336692', '192493@unamba.edu.pe\r'),
(782, '2023-2', '72165554', 'ARRAMBIDE', 'VILCA', 'JOSE LUIS', 1, 0, '192494', 'INGENIERIA CIVIL ', 8, '', '914936200', '192494@unamba.edu.pe\r'),
(783, '2023-2', '72412701', 'CONDORI', 'SANTOS', 'JULIO CESAR', 1, 0, '192507', 'INGENIERIA CIVIL ', 8, '', '982354630', '192507@unamba.edu.pe\r'),
(784, '2023-2', '74126482', 'PORTILLA', 'HUALLPA', 'MANUEL FLORENCIO', 1, 0, '192527', 'INGENIERIA CIVIL ', 8, '', '916813208', '192527@unamba.edu.pe\r'),
(785, '2023-2', '75628908', 'VARGAS', 'FERREL', 'DEYVIS NEPTALI', 1, 0, '191476', 'INGENIERIA CIVIL ', 9, '', '929947386', '191476@unamba.edu.pe\r'),
(786, '2023-2', '73016195', 'VILCA', 'NARVAEZ', 'RONALD', 1, 0, '162345', 'INGENIERIA CIVIL ', 9, '', '900601289', '162345@unamba.edu.pe\r'),
(787, '2023-2', '48426876', 'ABRIGO', 'GONZALES', 'SOLEDAD', 2, 0, '152239', 'INGENIERIA CIVIL ', 9, '', '935279602', '152239@unamba.edu.pe\r'),
(788, '2023-2', '73614986', 'GONZALES', 'QUISPE', 'YAMELIN STEFANY', 2, 0, '191447', 'INGENIERIA CIVIL ', 9, '', '987810589', '191447@unamba.edu.pe\r'),
(789, '2023-2', '73683847', 'CONDORI', 'SEGOVIA', 'ADEL', 1, 0, '191437', 'INGENIERIA CIVIL ', 9, '', '900443468', '191437@unamba.edu.pe\r'),
(790, '2023-2', '77078535', 'ESTRADA', 'CONTRERAS', 'VICTOR RAMON', 1, 0, '172291', 'INGENIERIA CIVIL ', 9, '', '936653652', '172291@unamba.edu.pe\r'),
(791, '2023-2', '70379117', 'DELGADO', 'ACHATA', 'MAXIMO', 1, 0, '142372', 'INGENIERIA CIVIL ', 10, '', '946286436', '142372@unamba.edu.pe\r'),
(792, '2023-2', '48765665', 'LUCAS', 'PUMA', 'DE LA CRUZ', 1, 0, '152287', 'INGENIERIA CIVIL ', 10, '', '963406679', '152287@unamba.edu.pe\r'),
(793, '2023-2', '77905991', 'CCOLQUE', 'HILARIO', 'KATERIN ROSALBA', 2, 0, '162336', 'INGENIERIA CIVIL ', 10, '', '993271334', '162336@unamba.edu.pe\r'),
(794, '2023-2', '71288358', 'HUAMANI', 'ACHAICA', 'ELISEO', 1, 0, '172298', 'INGENIERIA CIVIL ', 10, '', '900076417', '172298@unamba.edu.pe\r'),
(795, '2023-2', '71772909', 'CASERES', 'ARIAS', 'MAYRA  LUCINA', 2, 0, '182415', 'INGENIERIA CIVIL ', 10, '', '917955643', '182415@unamba.edu.pe\r'),
(796, '2023-2', '74527554', 'ECCOÑA', 'CAHUANA', 'IGNACIO AMILCAR', 1, 0, '191442', 'INGENIERIA CIVIL ', 10, '', '944269886', '191442@unamba.edu.pe\r'),
(797, '2023-2', '74431320', 'HUAYHUA', 'BARCENA', 'REYSU', 2, 0, '171434', 'INGENIERIA CIVIL ', 10, '', '972460912', '171434@unamba.edu.pe\r'),
(798, '2023-2', '48532033', 'AUKGAPURI', 'HUITOCCOLLO', 'ARMANDO', 1, 0, '181602', 'INGENIERIA CIVIL ', 10, '', '900904640', '181602@unamba.edu.pe\r'),
(799, '2023-2', '74470665', 'MENDOZA', 'BUSTINZA', 'ANDRE', 1, 0, '191454', 'INGENIERIA CIVIL ', 10, '', '913870809', '191454@unamba.edu.pe\r'),
(800, '2023-2', '47677869', 'CONDORI', 'NINA', 'BINICIO', 1, 0, '121419', 'INGENIERIA CIVIL ', 10, '', '935562326', '121419@unamba.edu.pe\r'),
(801, '2023-2', '71609811', 'NAVARRO', 'CARDENAS', 'WILFREDO', 1, 0, '182448', 'INGENIERIA CIVIL ', 10, '', '981578835', '182448@unamba.edu.pe\r'),
(802, '2023-2', '76654225', 'TEVES', 'FERREL', 'NATALY XIOMARA', 2, 0, '181478', 'INGENIERIA CIVIL ', 10, '', '900076893', '181478@unamba.edu.pe\r'),
(803, '2023-2', '73067274', 'ALVARADO', 'ZARATE', 'ALBERT ALEXANDRO', 1, 0, '181428', 'INGENIERIA CIVIL ', 10, '', '924602373', '181428@unamba.edu.pe\r'),
(804, '2023-2', '71289444', 'AVALOS', 'CASILLA', 'ISAIAS', 1, 0, '181430', 'INGENIERIA CIVIL ', 10, '', '984412202', '181430@unamba.edu.pe\r'),
(805, '2023-2', '72466506', 'CRESPO', 'FERNANDEZ', 'ROGER ANTONY', 1, 0, '181441', 'INGENIERIA CIVIL ', 10, '', '928398074', '181441@unamba.edu.pe\r'),
(806, '2023-2', '48910165', 'CRUZ', 'CHIPANI', 'EDISON', 1, 0, '181442', 'INGENIERIA CIVIL ', 10, '', '973825466', '181442@unamba.edu.pe\r'),
(807, '2023-2', '72148621', 'GONZALES', 'CONDORI', 'MIKE MEIER', 1, 0, '181447', 'INGENIERIA CIVIL ', 10, '', '980984604', '181447@unamba.edu.pe\r'),
(808, '2023-2', '74361265', 'GUILLEN', 'GUILLEN', 'EDGAR', 1, 0, '181448', 'INGENIERIA CIVIL ', 8, '', '948567160', '181448@unamba.edu.pe\r'),
(809, '2023-2', '70383325', 'HUAMANRIMACHI', 'HUAMAN', 'NICOL MELANY', 2, 0, '181453', 'INGENIERIA CIVIL ', 10, '', '954110168', '181453@unamba.edu.pe\r'),
(810, '2023-2', '71866602', 'HUAYTARA', 'HUILLCA', 'KEVIN GEOVANY', 1, 0, '181454', 'INGENIERIA CIVIL ', 10, '', '928429126', '181454@unamba.edu.pe\r'),
(811, '2023-2', '71734976', 'LLACTAHUAMANI', 'CHUMBE', 'MAYHUA', 2, 0, '181458', 'INGENIERIA CIVIL ', 9, '', '923290073', '181458@unamba.edu.pe\r'),
(812, '2023-2', '73068537', 'PORTUGAL', 'AIQUIPA', 'JOSE LUIS', 1, 0, '181464', 'INGENIERIA CIVIL ', 10, '', '928381099', '181464@unamba.edu.pe\r'),
(813, '2023-2', '74439136', 'TUIRO', 'SAAVEDRA', 'NIVIO', 1, 0, '152261', 'INGENIERIA CIVIL ', 10, '', '992157191', '152261@unamba.edu.pe\r'),
(814, '2023-2', '72020265', 'JORDAN', 'GABANCHO', 'JHOJANS EDWARDO', 1, 0, '152285', 'INGENIERIA CIVIL ', 10, '', '961476316', '152285@unamba.edu.pe\r'),
(815, '2023-2', '72148666', 'ALVAREZ', 'HANAMPA', 'WILFREDO', 1, 0, '161312', 'INGENIERIA CIVIL ', 9, '', '968357292', '161312@unamba.edu.pe\r'),
(816, '2023-2', '73313582', 'BOLIVAR', 'ARANGURI', ' FERNANDO TADEO', 1, 0, '161315', 'INGENIERIA CIVIL ', 9, '', '930527702', '161315@unamba.edu.pe\r'),
(817, '2023-2', '74322725', 'CAILLAHUA', 'ALVIS', 'ROMARIO', 1, 0, '161316', 'INGENIERIA CIVIL ', 8, '', '910089830', '161316@unamba.edu.pe\r'),
(818, '2023-2', '74621793', 'CHUMBES', 'AGUILAR', ' WILSON AMILCAR', 1, 0, '161321', 'INGENIERIA CIVIL ', 8, '', '916532241', '161321@unamba.edu.pe\r'),
(819, '2023-2', '70764841', 'CRUZ', 'AGUIRRE', 'SHAVERLY YOHANA', 2, 0, '161324', 'INGENIERIA CIVIL ', 8, '', '973654671', '161324@unamba.edu.pe\r'),
(820, '2023-2', '72675661', 'INCA', 'PALOMINO', 'FRANCISCO', 1, 0, '162299', 'INGENIERIA CIVIL ', 10, '', '921795837', '162299@unamba.edu.pe\r'),
(821, '2023-2', '70197647', 'QUISPE', 'SORAS', 'ROMARIO JUAN', 1, 0, '162307', 'INGENIERIA CIVIL ', 9, '', '957030870', '162307@unamba.edu.pe\r'),
(822, '2023-2', '48525678', 'ALARCON', 'AYBAR', 'ANGEL', 1, 0, '171300', 'INGENIERIA CIVIL ', 9, '', '973164488', '171300@unamba.edu.pe\r'),
(823, '2023-2', '74538915', 'ALTAMIRANO', 'SAUÑE', 'CARMEN YULISA', 2, 0, '171301', 'INGENIERIA CIVIL ', 10, '', '910384484', '171301@unamba.edu.pe\r'),
(824, '2023-2', '72394981', 'AMPUERO', 'HUAMAN', 'VICTOR RAUL', 1, 0, '171302', 'INGENIERIA CIVIL ', 8, '', '997268348', '171302@unamba.edu.pe\r'),
(825, '2023-2', '74820850', 'PICONA', 'OJEDA', 'CRISTIAN', 1, 0, '171324', 'INGENIERIA CIVIL ', 9, '', '976291940', '171324@unamba.edu.pe\r'),
(826, '2023-2', '74589543', 'ANDRADA', 'GUTIERREZ', 'JUAN JOSE', 1, 0, '171415', 'INGENIERIA CIVIL ', 10, '', '929169518', '171415@unamba.edu.pe\r'),
(827, '2023-2', '71740222', 'BUENDIA', 'LLACTAHUAMANI', 'SAUL', 1, 0, '172280', 'INGENIERIA CIVIL ', 10, '', '930234094', '172280@unamba.edu.pe\r'),
(828, '2023-2', '73385991', 'BUENDIA', 'SOPA', 'ALEX', 1, 0, '172281', 'INGENIERIA CIVIL ', 10, '', '929905598', '172281@unamba.edu.pe\r'),
(829, '2023-2', '74449256', 'ESCALANTE', 'HUANACO', 'ROSMERY', 2, 0, '172289', 'INGENIERIA CIVIL ', 10, '', '953515303', '172289@unamba.edu.pe\r'),
(830, '2023-2', '73219783', 'QUISPE', 'RAMOS', 'CAROLINA', 2, 0, '172306', 'INGENIERIA CIVIL ', 9, '', '955994334', '172306@unamba.edu.pe\r'),
(831, '2023-2', '76292076', 'VIVANCO', 'GARFIAS', 'MAYLU KENNY', 2, 0, '172313', 'INGENIERIA CIVIL ', 9, '', '914478342', '172313@unamba.edu.pe\r'),
(832, '2023-2', '72281611', 'SILVA', 'CONTRERAS', 'NADINE MILAGROS', 2, 0, '201131', 'INGENIERIA CIVIL ', 8, '', '995311570', '201131@unamba.edu.pe\r'),
(833, '2023-2', '44518649', 'ALVAREZ', 'CARTOLIN', 'RONAL', 1, 0, '121408', 'INGENIERIA CIVIL ', 8, '', '967868926', '121408@unamba.edu.pe\r'),
(834, '2023-2', '47339144', 'ALARCON', 'HUAYHUA', 'VERONICA', 2, 0, '122427', 'INGENIERIA CIVIL ', 10, '', '984319927', '122427@unamba.edu.pe\r'),
(835, '2023-2', '70861158', 'CARRASCO', 'CALLE', 'YESI', 2, 0, '122438', 'INGENIERIA CIVIL ', 10, '', '915203709', '122438@unamba.edu.pe\r'),
(836, '2023-2', '43596134', 'HUARAYA', 'HUAMAN', 'SAUL', 1, 0, '122454', 'INGENIERIA CIVIL ', 10, '', '956697749', '122454@unamba.edu.pe\r'),
(837, '2023-2', '70855965', 'LLICAHUA', 'HUAMANI', 'JOHN  RICHARD', 1, 0, '122458', 'INGENIERIA CIVIL ', 10, '', '987971240', '122458@unamba.edu.pe\r'),
(838, '2023-2', '75661464', 'AYMA', 'BENITES', 'FELIX', 1, 0, '132142', 'INGENIERIA CIVIL ', 10, '', '917912867', '132142@unamba.edu.pe\r'),
(839, '2023-2', '42318896', 'SALINAS', 'RETAMOZO', 'RODOLFO', 1, 0, '132161', 'INGENIERIA CIVIL ', 10, '', '983985590', '132161@unamba.edu.pe\r'),
(840, '2023-2', '48554079', 'TORRES', 'PEREIRA', 'YONATAN', 1, 0, '132164', 'INGENIERIA CIVIL ', 10, '', '984179593', '132164@unamba.edu.pe\r'),
(841, '2023-2', '47716608', 'CAILLAHUA', ' ALVIS', ' CHANO ELISBAN', 1, 0, '141337', 'INGENIERIA CIVIL ', 10, '', '984449537', '141337@unamba.edu.pe\r'),
(842, '2023-2', '71856235', 'LUIS', 'ESCALANTE', 'MARIO', 1, 0, '142360', 'INGENIERIA CIVIL ', 8, '', '928062336', '142360@unamba.edu.pe\r'),
(843, '2023-2', '70790259', 'PINEDA', 'ROJAS ', 'JHONNY', 1, 0, '151291', 'INGENIERIA CIVIL ', 10, '', '963059560', '151291@unamba.edu.pe\r'),
(844, '2023-2', '70813718', 'CHALCO', 'CAMERO', 'MARICRUZ', 2, 0, '151328', 'INGENIERIA CIVIL ', 8, '', '915371966', '151328@unamba.edu.pe\r'),
(845, '2023-2', '74579839', 'ALEJANDRO', 'PEÑA', 'EDISON', 1, 0, '151336', 'INGENIERIA CIVIL ', 10, '', '916038586', '151336@unamba.edu.pe\r'),
(846, '2023-2', '70793390', 'QUINTANA', 'ARONE', 'JUAN BENITO', 1, 0, '152254', 'INGENIERIA CIVIL ', 10, '', '988757518', '152254@unamba.edu.pe\r'),
(847, '2023-2', '78459803', 'CORPUNA', 'CHINO', 'WILFREDO', 1, 0, '192381', 'INGENIERIA CIVIL ', 8, '', '944377966', '192381@unamba.edu.pe\r'),
(848, '2023-2', '71596627', 'HUAMAN', 'HERBAS', 'FREDY', 1, 0, '192390', 'INGENIERIA CIVIL ', 8, '', '957059167', '192390@unamba.edu.pe\r'),
(849, '2023-2', '74449107', 'AUKGAPURI', 'HUITOCCOLLO', 'HENRY ROMARIO', 1, 0, '191597', 'INGENIERIA CIVIL ', 9, '', '915119147', '191597@unamba.edu.pe\r'),
(850, '2023-2', '48190836', 'BETANCUR', 'ORDOÑEZ', 'CHRISTIAN HELMUT', 1, 0, '191600', 'INGENIERIA CIVIL ', 8, '', '927556121', '191600@unamba.edu.pe\r'),
(851, '2023-2', '76445068', 'CARDENAS', 'PANIURA', 'ESMID YONATAN', 1, 0, '191604', 'INGENIERIA CIVIL ', 8, '', '965190142', '191604@unamba.edu.pe\r'),
(852, '2023-2', '77213928', 'HUAMAN', 'ABARCA', 'GERARDO', 1, 0, '191614', 'INGENIERIA CIVIL ', 8, '', '913395683', '191614@unamba.edu.pe\r'),
(853, '2023-2', '73474375', 'SARMIENTO', 'LIVIZACA', 'JESUS', 1, 0, '191633', 'INGENIERIA CIVIL ', 8, '', '926054867', '191633@unamba.edu.pe\r'),
(854, '2023-2', '75333643', 'ARONE', 'VARGAS', 'ROSA', 2, 0, '191431', 'INGENIERIA CIVIL ', 10, '', '914203786', '191431@unamba.edu.pe\r'),
(855, '2023-2', '72268709', 'AUCCAPUMA', 'PICHIHUA', 'OSWALDO', 1, 0, '191433', 'INGENIERIA CIVIL ', 10, '', '948365642', '191433@unamba.edu.pe\r'),
(856, '2023-2', '73543227', 'CAMPOSANO', 'CUELLAR', 'CRISTHIAN', 1, 0, '191435', 'INGENIERIA CIVIL ', 9, '', '920567861', '191435@unamba.edu.pe\r'),
(857, '2023-2', '71735123', 'DAMIAN', 'JUAREZ', 'PEDRO LUIS', 1, 0, '191440', 'INGENIERIA CIVIL ', 8, '', '931959226', '191440@unamba.edu.pe\r'),
(858, '2023-2', '63362516', 'FLORES', 'CASTAÑEDA', 'LUZ REINA', 2, 0, '191443', 'INGENIERIA CIVIL ', 10, '', '917317396', '191443@unamba.edu.pe\r'),
(859, '2023-2', '76032505', 'GARAY', 'ZAMORA', 'LEONELA KATHERINE', 2, 0, '191444', 'INGENIERIA CIVIL ', 8, '', '991090743', '191444@unamba.edu.pe\r'),
(860, '2023-2', '74317632', 'GARRAFA', 'GARCIA', 'SUSAN', 2, 0, '191445', 'INGENIERIA CIVIL ', 10, '', '946899617', '191445@unamba.edu.pe\r'),
(861, '2023-2', '73645523', 'GARZON', 'CHIPANA', 'LUZDELY', 2, 0, '191446', 'INGENIERIA CIVIL ', 10, '', '914606996', '191446@unamba.edu.pe\r'),
(862, '2023-2', '62560822', 'JURO', 'CERECEDA', 'ANGIE KATHERINE', 2, 0, '191451', 'INGENIERIA CIVIL ', 9, '', '964789329', '191451@unamba.edu.pe\r'),
(863, '2023-2', '75774403', 'ÑAHUE', 'BAZAN', 'JHON WILDER', 1, 0, '191455', 'INGENIERIA CIVIL ', 9, '', '959247507', '191455@unamba.edu.pe\r'),
(864, '2023-2', '73362383', 'PANIURA', 'ÑAUPA', 'CRISTIAN ALFONSO', 1, 0, '191457', 'INGENIERIA CIVIL ', 8, '', '957539282', '191457@unamba.edu.pe\r'),
(865, '2023-2', '72026418', 'POCCO', 'UTANI', 'PABEL ANTONY', 1, 0, '191460', 'INGENIERIA CIVIL ', 10, '', '938528761', '191460@unamba.edu.pe\r'),
(866, '2023-2', '76939012', 'QUISPE', 'ANCCO', 'KEVIN', 1, 0, '191461', 'INGENIERIA CIVIL ', 10, '', '949282040', '191461@unamba.edu.pe\r'),
(867, '2023-2', '72085880', 'RAMIREZ', 'LIMAS', 'ANTHONY KLUBER', 1, 0, '191464', 'INGENIERIA CIVIL ', 10, '', '902001836', '191464@unamba.edu.pe\r'),
(868, '2023-2', '75782527', 'RAMOS', 'SANTI', 'FIORELA', 2, 0, '191465', 'INGENIERIA CIVIL ', 8, '', '931127994', '191465@unamba.edu.pe\r'),
(869, '2023-2', '72268282', 'RIVERA', 'ARCE', 'CRISTIAN SMITH', 1, 0, '191467', 'INGENIERIA CIVIL ', 9, '', '921021407', '191467@unamba.edu.pe\r'),
(870, '2023-2', '70419807', 'SACA', 'PECEROS', 'CLINTON GREGORI', 1, 0, '191469', 'INGENIERIA CIVIL ', 9, '', '974019227', '191469@unamba.edu.pe\r'),
(871, '2023-2', '73664216', 'SOEL', 'LUNA', 'JUAN', 1, 0, '191472', 'INGENIERIA CIVIL ', 10, '', '942016158', '191472@unamba.edu.pe\r'),
(872, '2023-2', '74462954', 'SOTO', 'PANIURA', 'RUSVA REGINA', 2, 0, '191473', 'INGENIERIA CIVIL ', 8, '', '925885927', '191473@unamba.edu.pe\r'),
(873, '2023-2', '74453744', 'VARGAS', 'SALINAS', 'JEAN ESTEBAN', 1, 0, '191477', 'INGENIERIA CIVIL ', 8, '', '966530562', '191477@unamba.edu.pe\r'),
(874, '2023-2', '75701622', 'CASTRO', 'HUARANCCA', 'MARY CIELO', 2, 0, '182416', 'INGENIERIA CIVIL ', 9, '', '900186920', '182416@unamba.edu.pe\r'),
(875, '2023-2', '73331478', 'CAYTUIRO', 'LEO', 'ELIDA MAGRITH', 2, 0, '182419', 'INGENIERIA CIVIL ', 8, '', '972749206', '182419@unamba.edu.pe\r'),
(876, '2023-2', '60478524', 'CCARI', 'LLIULLI', 'CRISTIAN', 1, 0, '182420', 'INGENIERIA CIVIL ', 10, '', '972364803', '182420@unamba.edu.pe\r'),
(877, '2023-2', '75924160', 'CHALCO', 'CCAIHUARI', 'LEYDI ERIKA', 2, 0, '182421', 'INGENIERIA CIVIL ', 9, '', '997580481', '182421@unamba.edu.pe\r'),
(878, '2023-2', '74991619', 'HUANACO', 'CHUMBEZ', 'RONALD', 1, 0, '182434', 'INGENIERIA CIVIL ', 10, '', '914533277', '182434@unamba.edu.pe\r'),
(879, '2023-2', '75939114', 'IZQUIERDO', 'AZURIN', 'MARIA ELENA', 2, 0, '182438', 'INGENIERIA CIVIL ', 8, '', '946668034', '182438@unamba.edu.pe\r'),
(880, '2023-2', '70761345', 'MENDOZA', 'QUISPE', 'DIMAS MANUEL', 1, 0, '182445', 'INGENIERIA CIVIL ', 10, '', '958735409', '182445@unamba.edu.pe\r'),
(881, '2023-2', '70342581', 'NOA', 'THEA', 'ROGER', 1, 0, '182449', 'INGENIERIA CIVIL ', 10, '', '916932969', '182449@unamba.edu.pe\r'),
(882, '2023-2', '73824997', 'RIVERA', 'ARCE', 'ALEXANDER', 1, 0, '182456', 'INGENIERIA CIVIL ', 10, '', '942237213', '182456@unamba.edu.pe\r'),
(883, '2023-2', '74239958', 'SAAVEDRA', 'HUARACA', 'JEAN PAUL', 1, 0, '182458', 'INGENIERIA CIVIL ', 8, '', '961861631', '182458@unamba.edu.pe\r'),
(884, '2023-2', '73659467', 'TORRES', 'HUANACO', 'ERICK ECKERT', 1, 0, '182464', 'INGENIERIA CIVIL ', 8, '', '914846287', '182464@unamba.edu.pe\r'),
(885, '2023-2', '71380214', 'VEGA', 'OTAZU', 'VICTORINY', 1, 0, '182465', 'INGENIERIA CIVIL ', 8, '', '935720140', '182465@unamba.edu.pe\r'),
(886, '2023-2', '75275244', 'CONDORPUSA', 'PANIAGUA', 'LUZ MEDALI', 2, 0, '182553', 'INGENIERIA CIVIL ', 8, '', '991837398', '182553@unamba.edu.pe\r'),
(887, '2023-2', '71737793', 'QUINTANA', 'ROMERO', 'LISBETH', 2, 0, '181466', 'INGENIERIA CIVIL ', 9, '', '918803155', '181466@unamba.edu.pe\r'),
(888, '2023-2', '48528460', 'QUISPE', 'MEDRANO', 'RONY', 1, 0, '181467', 'INGENIERIA CIVIL ', 8, '', '926060179', '181467@unamba.edu.pe\r'),
(889, '2023-2', '71652416', 'SALAZAR', 'CAYLLAHUA', 'EDISON', 1, 0, '181471', 'INGENIERIA CIVIL ', 9, '', '951016686', '181471@unamba.edu.pe\r'),
(890, '2023-2', '75347707', 'SALDIVAR', 'ORTIZ', 'ALEXANDER', 1, 0, '181473', 'INGENIERIA CIVIL ', 9, '', '951994150', '181473@unamba.edu.pe\r'),
(891, '2023-2', '73636547', 'SOSA', 'HANAMPA', 'RUTHER JAMIL', 1, 0, '181475', 'INGENIERIA CIVIL ', 8, '', '964957518', '181475@unamba.edu.pe\r'),
(892, '2023-2', '75982478', 'UGARTE', 'CORVACHO', 'ABRAHAM', 1, 0, '181481', 'INGENIERIA CIVIL ', 10, '', '913400516', '181481@unamba.edu.pe\r'),
(893, '2023-2', '76129087', 'ZAMBRANO', 'SAPA', 'RAUL', 1, 0, '181485', 'INGENIERIA CIVIL ', 9, '', '916336861', '181485@unamba.edu.pe\r'),
(894, '2023-2', '75323885', 'ZAPATA', 'NAVIO', 'RENZO JHOAN', 1, 0, '181486', 'INGENIERIA CIVIL ', 8, '', '957681466', '181486@unamba.edu.pe\r'),
(895, '2023-2', '46219102', 'MAMANI', 'ARQQUE', 'VIDMAR FIDEL', 1, 0, '181629', 'INGENIERIA CIVIL ', 8, '', '984739129', '181629@unamba.edu.pe\r'),
(896, '2023-2', '76445026', 'MARTINEZ', 'CRIOLLO', 'SILVIA', 2, 0, '181631', 'INGENIERIA CIVIL ', 9, '', '965720884', '181631@unamba.edu.pe\r'),
(897, '2023-2', '72232925', 'SALAS', 'SORIA', 'ROSMERY', 2, 0, '181640', 'INGENIERIA CIVIL ', 10, '', '935315874', '181640@unamba.edu.pe\r'),
(898, '2023-2', '73978956', 'SULLCA', 'HUILLCA', 'PERCY', 1, 0, '181648', 'INGENIERIA CIVIL ', 8, '', '939860726', '181648@unamba.edu.pe\r'),
(899, '2023-2', '76820968', 'MOINA', 'SANCHEZ', 'RODRIGO MIGUEL', 1, 0, '172381', 'INGENIERIA CIVIL ', 10, '', '954502274', '172381@unamba.edu.pe\r'),
(900, '2023-2', '70759301', 'CATALAN', 'CCASANI', 'DANY KEVIN', 1, 0, '172382', 'INGENIERIA CIVIL ', 8, '', '973864826', '172382@unamba.edu.pe\r'),
(901, '2023-2', '73637587', 'CCOROPUNA', 'HUACHO', 'SHIRLEY LISBETH', 2, 0, '172384', 'INGENIERIA CIVIL ', 10, '', '935963009', '172384@unamba.edu.pe\r'),
(902, '2023-2', '48450195', 'TEJADA', 'HUAMANI', 'YURI', 1, 0, '181653', 'INGENIERIA CIVIL ', 8, '', '977806545', '181653@unamba.edu.pe\r'),
(903, '2023-2', '76434212', 'DAVALOS', 'PERALTA', 'KARLA JENNIFER', 2, 0, '201118', 'INGENIERIA CIVIL ', 8, '', '917628227', '201118@unamba.edu.pe\r'),
(904, '2023-2', '75093244', 'CARLIN', 'CONDORI', 'GEORGE MAURY', 1, 0, '192377', 'INGENIERIA CIVIL ', 8, '', '914167430', '192377@unamba.edu.pe\r'),
(905, '2023-2', '76280893', 'RAMOS', 'TENCCO', 'FRITZ', 1, 0, '172308', 'INGENIERIA CIVIL ', 8, '', '935675395', '172308@unamba.edu.pe\r'),
(906, '2023-2', '71428987', 'BARRIENTOS', 'LIPA', 'ROGGER ELIGIO', 1, 0, '191434', 'INGENIERIA CIVIL ', 8, '', '929039126', '191434@unamba.edu.pe\r'),
(907, '2023-2', '77667941', 'TAIPE', 'HURTADO', 'SERGIO ULISES', 1, 0, '151290', 'INGENIERIA CIVIL ', 8, '', '950298980', '151290@unamba.edu.pe\r'),
(908, '2023-2', '75701621', 'LLAMOCCA', 'MARTINEZ', 'JHON KEVIN', 1, 0, '182440', 'INGENIERIA CIVIL ', 8, '', '992708939', '182440@unamba.edu.pe\r'),
(909, '2023-2', '71310649', 'HUILLCAS', 'CASAS', 'JAIME', 1, 0, '162298', 'INGENIERIA CIVIL ', 8, '', '945248650', '162298@unamba.edu.pe\r'),
(910, '2023-2', '74450145', 'HURTADO', 'URRUTIA', 'NIEVES NATHALIA', 2, 0, '191449', 'INGENIERIA CIVIL ', 8, '', '980978886', '191449@unamba.edu.pe\r'),
(911, '2023-2', '70759719', 'CATALAN', 'MENDOZA', 'JOSE LUIS', 1, 0, '192379', 'INGENIERIA CIVIL ', 8, '', '965151363', '192379@unamba.edu.pe\r'),
(912, '2023-2', '70665834', 'FARFAN', 'MAUCAYLLE', 'ANABEL', 2, 0, '192514', 'INGENIERIA CIVIL ', 9, '', '989272264', '192514@unamba.edu.pe\r');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwDocentes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vwDocentes` (
`Id` int(11)
,`Activo` int(11)
,`DNI` varchar(10)
,`Codigo` varchar(12)
,`IdCategoria` int(11)
,`Categoria` varchar(50)
,`CategAbrev` varchar(15)
,`Tipo` varchar(1)
,`IdFacultad` int(11)
,`Facultad` varchar(100)
,`FacuAbrev` varchar(20)
,`IdCarrera` int(11)
,`Carrera` varchar(100)
,`DatosPers` varchar(152)
,`DatosNom` varchar(151)
,`FechaCon` date
,`ResolCon` varchar(30)
,`Antiguedad` int(7)
,`Edad` int(5)
,`FechaAsc` date
,`ResolAsc` varchar(30)
,`FechaIn` date
,`FechaNac` date
,`Direccion` varchar(50)
,`NroCelular` varchar(12)
,`Correo` varchar(50)
,`Apellidos` varchar(75)
,`Nombres` varchar(75)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwEstadosDoc`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vwEstadosDoc` (
`EstadoAc` int(11)
,`NombEstado` varchar(40)
,`Cantidad` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwLogDocentes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vwLogDocentes` (
`Id` int(11)
,`IdDocente` int(11)
,`EstadoNvo` int(4)
,`IdFacultad` int(11)
,`IdCarrera` int(11)
,`DatosPers` varchar(151)
,`Detalle` text
,`Documento` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwLstCarreras`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vwLstCarreras` (
`IdFacultad` int(11)
,`Facultad` varchar(100)
,`IdCarrera` int(11)
,`Carrera` varchar(100)
,`IdEspec` int(11)
,`Especialidad` varchar(75)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vwOCDE`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vwOCDE` (
`IdArea` int(2)
,`IdSubArea` int(2)
,`IdDiscip` int(3)
,`Area` varchar(50)
,`SubArea` varchar(100)
,`Discliplina` varchar(300)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vwDocentes`
--
DROP TABLE IF EXISTS `vwDocentes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwDocentes`  AS  select `D`.`Id` AS `Id`,`D`.`Activo` AS `Activo`,`D`.`DNI` AS `DNI`,`D`.`Codigo` AS `Codigo`,`D`.`IdCategoria` AS `IdCategoria`,`C`.`Nombre` AS `Categoria`,`C`.`Abrev` AS `CategAbrev`,`C`.`Tipo` AS `Tipo`,`D`.`IdFacultad` AS `IdFacultad`,`F`.`Nombre` AS `Facultad`,`F`.`Abrev` AS `FacuAbrev`,`D`.`IdCarrera` AS `IdCarrera`,`K`.`Nombre` AS `Carrera`,concat(`D`.`Apellidos`,', ',upper(`D`.`Nombres`)) AS `DatosPers`,concat(upper(`D`.`Nombres`),' ',`D`.`Apellidos`) AS `DatosNom`,`D`.`FechaCon` AS `FechaCon`,`D`.`ResolCon` AS `ResolCon`,(to_days(now()) - to_days(`D`.`FechaAsc`)) AS `Antiguedad`,(year(now()) - year(`D`.`FechaNac`)) AS `Edad`,`D`.`FechaAsc` AS `FechaAsc`,`D`.`ResolAsc` AS `ResolAsc`,`D`.`FechaIn` AS `FechaIn`,`D`.`FechaNac` AS `FechaNac`,`D`.`Direccion` AS `Direccion`,`D`.`NroCelular` AS `NroCelular`,`D`.`Correo` AS `Correo`,`D`.`Apellidos` AS `Apellidos`,`D`.`Nombres` AS `Nombres` from (((`tblDocentes` `D` join `dicCategorias` `C`) join `dicFacultades` `F`) join `dicCarreras` `K`) where ((`C`.`Id` = `D`.`IdCategoria`) and (`F`.`Id` = `D`.`IdFacultad`) and (`K`.`Id` = `D`.`IdCarrera`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vwEstadosDoc`
--
DROP TABLE IF EXISTS `vwEstadosDoc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwEstadosDoc`  AS  select `tblDocentes`.`Activo` AS `EstadoAc`,(select `dicEstadosDoc`.`Nombre` from `dicEstadosDoc` where (`dicEstadosDoc`.`Id` = `tblDocentes`.`Activo`)) AS `NombEstado`,count(0) AS `Cantidad` from `tblDocentes` group by `tblDocentes`.`Activo` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vwLogDocentes`
--
DROP TABLE IF EXISTS `vwLogDocentes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwLogDocentes`  AS  select `L`.`Id` AS `Id`,`D`.`Id` AS `IdDocente`,`L`.`EstadoNvo` AS `EstadoNvo`,`D`.`IdFacultad` AS `IdFacultad`,`D`.`IdCarrera` AS `IdCarrera`,concat(`D`.`Apellidos`,' ',`D`.`Nombres`) AS `DatosPers`,`L`.`Detalle` AS `Detalle`,`L`.`Documento` AS `Documento` from (`tblLogDocentes` `L` join `tblDocentes` `D`) where (`D`.`Id` = `L`.`IdDocente`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vwLstCarreras`
--
DROP TABLE IF EXISTS `vwLstCarreras`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwLstCarreras`  AS  select `F`.`Id` AS `IdFacultad`,`F`.`Nombre` AS `Facultad`,`C`.`Id` AS `IdCarrera`,`C`.`Nombre` AS `Carrera`,`E`.`Id` AS `IdEspec`,`E`.`Nombre` AS `Especialidad` from ((`dicFacultades` `F` left join `dicCarreras` `C` on((`F`.`Id` = `C`.`IdFacultad`))) left join `dicEspecialis` `E` on((`C`.`Id` = `E`.`IdCarrera`))) order by `F`.`Id`,`C`.`Id`,`E`.`Id` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vwOCDE`
--
DROP TABLE IF EXISTS `vwOCDE`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwOCDE`  AS  select `S`.`IdArea` AS `IdArea`,`D`.`IdSubArea` AS `IdSubArea`,`D`.`Id` AS `IdDiscip`,`A`.`Nombre` AS `Area`,`S`.`Nombre` AS `SubArea`,`D`.`Nombre` AS `Discliplina` from ((`ocdeAreas` `A` join `ocdeSubAreas` `S`) join `ocdeDisciplinas` `D`) where ((`A`.`Id` = `S`.`IdArea`) and (`S`.`Id` = `D`.`IdSubArea`)) order by `A`.`Id`,`S`.`Id`,`D`.`Id` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dicCarreras`
--
ALTER TABLE `dicCarreras`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicCategorias`
--
ALTER TABLE `dicCategorias`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicDocIndex`
--
ALTER TABLE `dicDocIndex`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicEspecialis`
--
ALTER TABLE `dicEspecialis`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicEstadosDoc`
--
ALTER TABLE `dicEstadosDoc`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicFacultades`
--
ALTER TABLE `dicFacultades`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicSunedu`
--
ALTER TABLE `dicSunedu`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicSuneOgt`
--
ALTER TABLE `dicSuneOgt`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicUbigeos`
--
ALTER TABLE `dicUbigeos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dicUniversidades`
--
ALTER TABLE `dicUniversidades`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dic_LineasVRI`
--
ALTER TABLE `dic_LineasVRI`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `ocdeAreas`
--
ALTER TABLE `ocdeAreas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `ocdeDisciplinas`
--
ALTER TABLE `ocdeDisciplinas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `ocdeSubAreas`
--
ALTER TABLE `ocdeSubAreas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblDocentes`
--
ALTER TABLE `tblDocentes`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblFormatos`
--
ALTER TABLE `tblFormatos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tblLineas`
--
ALTER TABLE `tblLineas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id` (`Id`);

--
-- Indices de la tabla `tblLogDocentes`
--
ALTER TABLE `tblLogDocentes`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `unamba_docentes`
--
ALTER TABLE `unamba_docentes`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `unamba_matrics`
--
ALTER TABLE `unamba_matrics`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dicCarreras`
--
ALTER TABLE `dicCarreras`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT de la tabla `dicCategorias`
--
ALTER TABLE `dicCategorias`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `dicDocIndex`
--
ALTER TABLE `dicDocIndex`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dicEspecialis`
--
ALTER TABLE `dicEspecialis`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT de la tabla `dicFacultades`
--
ALTER TABLE `dicFacultades`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `dicSunedu`
--
ALTER TABLE `dicSunedu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `dicSuneOgt`
--
ALTER TABLE `dicSuneOgt`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dicUbigeos`
--
ALTER TABLE `dicUbigeos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT de la tabla `dicUniversidades`
--
ALTER TABLE `dicUniversidades`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT de la tabla `ocdeAreas`
--
ALTER TABLE `ocdeAreas`
  MODIFY `Id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `ocdeDisciplinas`
--
ALTER TABLE `ocdeDisciplinas`
  MODIFY `Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;
--
-- AUTO_INCREMENT de la tabla `ocdeSubAreas`
--
ALTER TABLE `ocdeSubAreas`
  MODIFY `Id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT de la tabla `tblDocentes`
--
ALTER TABLE `tblDocentes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1739;
--
-- AUTO_INCREMENT de la tabla `tblFormatos`
--
ALTER TABLE `tblFormatos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblLogDocentes`
--
ALTER TABLE `tblLogDocentes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4462;
--
-- AUTO_INCREMENT de la tabla `unamba_docentes`
--
ALTER TABLE `unamba_docentes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=913;
--
-- AUTO_INCREMENT de la tabla `unamba_matrics`
--
ALTER TABLE `unamba_matrics`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=913;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
