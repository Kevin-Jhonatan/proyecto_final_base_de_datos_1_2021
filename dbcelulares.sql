-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-10-2021 a las 19:00:50
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbcelulares`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ACCESORIO`
--

CREATE TABLE `ACCESORIO` (
  `codigo` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `ACCESORIO`
--

INSERT INTO `ACCESORIO` (`codigo`, `nombre`, `descripcion`) VALUES
(10, 'Funda S20-Ultra', 'Solo el S20-Ultra puede tener este accesorio'),
(15, 'Cargador M-USB(3W)', 'Cargador para celular de entrada Micro-USB, proporcionando carga de 3w.'),
(16, 'Cargador M-USB(5W)', 'Cargador para celular de entrada Micro-USB, proporcionando carga de 5w.'),
(17, 'Cargador M-USB(8W)', 'Cargador para celular de entrada Micro-USB, proporcionando carga de 8w.'),
(18, 'Cargador M-USB(10W)', 'Cargador para celular de entrada Micro-USB, proporcionando carga de 10. '),
(19, 'Cargador M-USB(11W)', 'Cargador para celular de entrada Micro-USB, proporcionando carga de 11w.'),
(20, 'Cargador M-USB(12W)', 'Cargador para celular de entrada Micro-USB, proporcionando carga de 12w.'),
(21, 'Cargador M-USB(15W)', 'Cargador para celular de entrada Micro-USB, proporcionando carga de 15w.'),
(22, 'Cargador T-C(18W)', 'Cargador para celular de entrada tipo c, proporcionando carga rapida de 18w.'),
(23, 'Cargador T-C(20W)', 'Cargador para celular de entrada tipo c, proporcionando carga rapida de 20w.'),
(24, 'Cargador T-C(24W)', 'Cargador para celular de entrada tipo c, proporcionando carga rapida de 24w.'),
(25, 'Cargador T-C(28W)', 'Cargador para celular de entrada tipo c, proporcionando carga rapida de 28w.'),
(26, 'Cargador T-C(32W)', 'Cargador para celular de entrada tipo c, proporcionando carga rapida de 32w.'),
(27, 'Cargador T-C(50W)', 'Cargador para celular de entrada tipo c, proporcionando carga rapida de 50w.'),
(28, 'Cargador T-C(68W)', 'Cargador para celular de entrada tipo c, proporcionando carga rapida de 68w.'),
(29, 'Cargador T-C(70W)', 'Cargador para celular de entrada tipo c, proporcionando carga rapida de 70w.'),
(30, 'Cargador T-C(80W)', 'Cargador para celular de entrada tipo c, proporcionando carga rapida de 80w.'),
(31, 'Cargador T-C(90W)', 'Cargador para celular de entrada tipo c, proporcionando carga rapida de 90w.'),
(32, 'Cargador T-C(100W)', 'Cargador para celular de entrada tipo c, proporcionando carga rapida de 100w.'),
(33, 'Cargador T-C(120W)', 'Cargador para celular de entrada tipo c, proporcionando carga rapida de 120w.'),
(34, 'Cargador T-C(200W)', 'Cargador para celular de entrada tipo c, proporcionando carga rapida de 200w.'),
(35, 'Cargador Lightning(5w)', 'Cargador para celular(Iphone) de entrada Lightning, proporcionando carga de 5w.'),
(36, 'Cargador Lightning(10w)', 'Cargador para celular(Iphone) de entrada Lightning, proporcionando carga de 10w.'),
(37, 'Cargador Lightning(15w)', 'Cargador para celular(Iphone) de entrada Lightning, proporcionando carga de 15w.'),
(38, 'Cargador Lightning(18w)', 'Cargador para celular(Iphone) de entrada Lightning, proporcionando carga rapida de 18W. '),
(39, 'Cargador Lightning(20w)', 'Cargador para celular(Iphone) de entrada Lightning, proporcionando carga rapida de 20w. '),
(40, 'Xiaomi Piston', 'Audifono(xiaomi) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 100dB'),
(41, 'Xiaomi Piston Fresh', 'Audifono(xiaomi) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 98dB y con cancelacion de ruido.'),
(42, 'Redmi AirDots S', 'Audifono Bluetooh5.0(xiaomi) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 100dB.'),
(43, 'Xiaomi Mi Dual Drivers', 'Audifono(xiaomi) con obstruccion de 32Î©, frecuencia de 20-40000Hz, sensibilidad auricular de 105dB.'),
(44, 'Xiaomi Hybrid Pro HD', 'Audifono(xiaomi) con obstruccion de 32Î©, frecuencia de 20-40000Hz, sensibilidad auricular de 98dB.'),
(45, 'Xiaomi MI In-Ear', 'Audifono(xiaomi) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 98dB.'),
(46, 'Xiaomi QCY M10', 'Audifono Bluetooh5.0(xiaomi) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 110dB.'),
(47, 'Samsung EHS61', 'Audifono(Samsung) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 102dB.'),
(48, 'Samsung EO-IC100', 'Audifono(Samsung) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 100dB.'),
(49, 'Samsung EO-EG920', 'Audifono(Samsung) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 100dB.'),
(50, 'Samsung HS-330', 'Audifono(Samsung) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 100dB.'),
(51, 'Samsung Buds 2', 'Audifono Bluetooh5.1(Samsung) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 100dB.'),
(52, 'Samsung Buds Pro', 'Audifono Bluetooh5(Samsung) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 100dB.'),
(53, 'Huawei FreeBuds 3Â ', 'Audifono Bluetooh5.1(Huawei) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 100dB.'),
(54, 'Huawei FreeBuds 4i', 'Audifono Bluetooh5.2(Huawei) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 100dB.'),
(55, 'Huawei FreeBuds 4', 'Audifono Bluetooh5.2(Huawei) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 100dB.'),
(56, 'Oppo Enco Air', 'Audifono Bluetooh5.2(Oppo) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 100dB.'),
(57, 'Oppo Enco Free', 'Audifono Bluetooh5.0(Oppo) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 100dB.'),
(58, 'Oppo Enco Free2', 'Audifono Bluetooh5.2(Oppo) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 100dB.'),
(59, 'Oppo Enco W11', 'Audifono Bluetooh5.0(Oppo) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 100dB.'),
(60, 'Oppo Enco X', 'Audifono Bluetooh5.2(Oppo) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 100dB.'),
(61, 'OnePlus Buds ', 'Audifono Bluetooh5.0(OnePlus) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 97dB.'),
(62, 'OnePlus Buds Pro', 'Audifono Bluetooh5.2(OnePlus) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 104dB.'),
(63, 'Realme Buds Air ', 'Audifono Bluetooh5.0(Realme) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 104dB.'),
(64, 'Realme Buds Air 2', 'Audifono Bluetooh5.2(Realme) con obstruccion de 32Î©, frecuencia de 20-20000Hz, sensibilidad auricular de 104dB.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CLIENTE`
--

CREATE TABLE `CLIENTE` (
  `ci` int NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `celular` int NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `correo` varchar(40) DEFAULT NULL,
  `nit` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `CLIENTE`
--

INSERT INTO `CLIENTE` (`ci`, `nombre`, `apellido`, `celular`, `direccion`, `correo`, `nit`) VALUES
(10, 'juan', 'juan', 72700606, 'Cala Cala', 'kev@gmail.com', 1212),
(9327276, 'Jhoselin', 'Alcocer', 62601052, 'Av.Campos N.107', 'jhoselin.a@gmail.com', 2147483647),
(9327277, 'Yanet', 'Almendraz', 62601053, 'Av.RiveraN.108', 'yanet.a@gmail.com', 2147483647),
(9327278, 'Soraida', 'Abogado', 62601054, 'Av.PatiÃ±o N.109', 'soraida.a@gmail.com', 2147483647),
(9327279, 'Britani', 'Verduguez', 62601055, 'Av.Avellaneda N.110', 'britani.v@gmail.com', 2147483647),
(9327280, 'Moises', 'Ovando', 62601056, 'Av.FernandezN.111', 'moises.o@gmail.com', 2147483647),
(9327281, 'Alvaro', 'Ponce', 62601057, 'Av.RivadaviaN.112', 'alvaro.p@gmail.com', 2147483647),
(9327282, 'Fernando', 'Vegamonte', 62601058, 'Av.petrolera N.113', 'fernando.v@gmail.com', 2147483647),
(9327283, 'Brandon', 'Mamani', 62601059, 'Av.Rivera N.114', 'brandon.m@gmail.com', 2147483647),
(9327284, 'Raul', 'Urquieta', 62601060, 'Av.Amancayas  N.115', 'raul.u@gmail.com', 2147483647),
(9327285, 'Jose', 'Ruiz', 62601061, 'Av.matinez N.116', 'jose.r@gmail.com', 2147483647),
(9327286, 'Lorena', 'Lopez', 62601062, 'Av.ruiseÃ±or  N.117', 'lorena.l@gmail.com', 2147483647),
(9327287, 'Carla', 'Huanca', 62601063, 'Av.Avellaneda   N.118', 'carla.h@gmail.com', 2147483647),
(9327288, 'Carlos', 'Garcia', 62601064, 'Av.Avellaneda   N.119', 'carlos.g@gmail.com', 2147483647),
(9327289, 'Cecilio', 'Puma', 62601065, 'Av.Avellaneda   N.120', 'cecilio.p@gmail.com', 2147483647),
(9327290, 'Eugenio', 'Martinez', 62601066, 'Av.Avellaneda   N.121', 'eugenio.m@gmail.com', 2147483647),
(9327291, 'Hermelinda', 'Rodriguez', 62601067, 'Av.Avellaneda   N.122', 'hermelinda.r@gmail.com', 2147483647),
(9327292, 'Carlos', 'Morales', 62601068, 'Av.Avellaneda   N.123', 'carlos.m@gmail.com', 2147483647),
(9327293, 'Edgar', 'Estivariz', 62601069, 'Av.Avellaneda   N.124', 'edgar.e@gmail.com', 2147483647),
(9327294, 'Juan', 'Condori', 62601070, 'Av.Avellaneda   N.125', 'juan.c@gmail.com', 2147483647),
(9327295, 'Camilo', 'Pereira', 62601071, 'Av.Avellaneda   N.126', 'camilo.p@gmail.com', 2147483647),
(9327296, 'Carmen', 'Leon', 62601072, 'Av.Avellaneda   N.127', 'carmen.l@gmail.com', 2147483647),
(9327297, 'Marta', 'Acosta', 62601073, 'Av.Avellaneda   N.128', 'marta.a@gmail.com', 2147483647),
(9327298, 'Pablo', 'Paco', 62601074, 'Av.Avellaneda   N.129', 'pablo.p@gmail.com', 2147483647),
(9327299, 'Katerin', 'Escobar', 62601075, 'Av.Avellaneda   N.130', 'katerin.e@gmail.com', 2147483647),
(9327300, 'Jhonatan', 'Hernandez', 62601076, 'Av.Avellaneda   N.131', 'jhonatan.h@gmail.com', 2147483647),
(9327301, 'Julio', 'Torres', 62601077, 'Av.Avellaneda   N.132', 'julio.t@gmail.com', 2147483647),
(9327302, 'Julian', 'Gonzales', 62601078, 'Av.Avellaneda   N.133', 'julian.g@gmail.com', 2147483647),
(9327303, 'Julieta', 'Cruz', 62601079, 'Av.Avellaneda   N.134', 'julieta.c@gmail.com', 2147483647),
(9327304, 'Lucia', 'Aguilar', 62601080, 'Av.Avellaneda   N.135', 'lucia.a@gmail.com', 2147483647),
(9327305, 'Rosaria', 'Gomez', 62601081, 'Av.Avellaneda   N.136', 'rosaria.g@gmail.com', 2147483647),
(9327306, 'Claudia', 'Chavez', 62601082, 'Av.Avellaneda   N.137', 'claudia.c@gmail.com', 2147483647),
(9327307, 'Ivone', 'Caceres', 62601083, 'Av.Avellaneda   N.138', 'ivone.c@gmail.com', 2147483647),
(9327308, 'Michael', 'Rosas', 62601084, 'Av.Avellaneda   N.139', 'michael.v@gmail.com', 2147483647),
(9327309, 'Nicolas', 'Verduzco', 62601085, 'Av.Avellaneda   N.140', 'nicolas.v@gmail.com', 2147483647),
(9327310, 'Abel', 'Aranda', 62601086, 'Av.Avellaneda   N.141', 'abel.a@gmail.com', 2147483647),
(9327311, 'Moises', 'Cabrero', 62601087, 'Av.Avellaneda   N.142', 'moises.c@gmail.com', 2147483647),
(9327312, 'Josue', 'Maldonado', 62601088, 'Av.Avellaneda   N.143', 'josue.m@gmail.com', 2147483647),
(9327313, 'Isac', 'Angeles', 62601089, 'Av.Avellaneda   N.144', 'isac.a@gmail.com', 2147483647),
(9327314, 'Martin', 'Herrera', 62601090, 'Av.Avellaneda   N.145', 'martin.h@gmail.com', 2147483647),
(9327315, 'Romina', 'MontaÃ±o', 62601091, 'Av.Avellaneda   N.146', 'romina.m@gmail.com', 2147483647),
(9327316, 'Raquel', 'Garcia', 62601092, 'Av.Avellaneda   N.147', 'raquel.g@gmail.com', 2147483647),
(9327317, 'Lucio', 'Arriete', 62601093, 'Av.Avellaneda   N.148', 'lucio.a@gmail.com', 2147483647),
(9327318, 'Anibal', 'Diaz', 62601094, 'Av.Avellaneda   N.149', 'anibal.d@gmail.com', 2147483647),
(9327319, 'Ramiro', 'Avila', 62601095, 'Av.Avellaneda   N.150', 'ramiro.a@gmail.com', 2147483647),
(9327320, 'Lucio', 'Franco', 62601096, 'Av.Avellaneda   N.151', 'lucio.f@gmail.com', 2147483647),
(9327321, 'luis ', 'Llanos', 62601097, 'Av.Avellaneda   N.152', 'luis.ll@gmail.com', 2147483647),
(9327322, 'Elmer', 'Sanchez', 62601098, 'Av.Avellaneda   N.153', 'elmer.s@gmail.com', 2147483647),
(9327323, 'Guimer', 'Vargas', 62601099, 'Av.Avellaneda   N.154', 'guimer.v@gmail.com', 2147483647),
(9327324, 'Ronal', 'Castillo', 62601100, 'Av.Avellaneda   N.155', 'ronal.c@gmail.com', 2147483647),
(9327325, 'Wilder', 'Camacho', 62601101, 'Av.Avellaneda   N.156', 'wilder.c@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DETALLE_VENTA`
--

CREATE TABLE `DETALLE_VENTA` (
  `id` int NOT NULL,
  `PRODUCTO_codigo` int NOT NULL,
  `VENTA_codigo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `DETALLE_VENTA`
--

INSERT INTO `DETALLE_VENTA` (`id`, `PRODUCTO_codigo`, `VENTA_codigo`) VALUES
(1, 12, 12),
(2, 10, 12),
(3, 10, 12),
(4, 10, 12),
(5, 10, 3954012),
(6, 11, 3954014),
(7, 12, 3954015),
(10, 14, 3954016),
(11, 15, 3954017),
(12, 16, 3954018),
(14, 17, 3954019),
(15, 18, 3954020),
(16, 19, 3954021),
(17, 20, 3954022),
(18, 21, 3954023),
(19, 22, 3954024),
(20, 23, 3954025),
(21, 24, 3954026),
(22, 25, 3954027),
(23, 26, 3954028),
(24, 27, 3954029),
(25, 28, 3954030),
(26, 29, 3954031),
(27, 30, 3954032),
(28, 31, 3954033),
(29, 32, 3954034),
(30, 33, 3954035);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EMPLEADO`
--

CREATE TABLE `EMPLEADO` (
  `codigo` int NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `ci` varchar(10) NOT NULL,
  `cargo` varchar(20) NOT NULL,
  `num_celular` int NOT NULL,
  `fecha_inicio_contrato` date NOT NULL,
  `fecha_finalizacion_contrato` date NOT NULL,
  `correo` varchar(40) DEFAULT NULL,
  `direccion` varchar(50) NOT NULL,
  `genero` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `EMPLEADO`
--

INSERT INTO `EMPLEADO` (`codigo`, `nombre`, `apellido`, `ci`, `cargo`, `num_celular`, `fecha_inicio_contrato`, `fecha_finalizacion_contrato`, `correo`, `direccion`, `genero`) VALUES
(10, 'Kevin', 'Mamani Mollo', '12491877', 'Administrador', 72700606, '2021-10-24', '2021-11-01', 'keevj1999@gmail.com', 'Cala Cala', 'Masculino'),
(11, 'Brisa', 'Paredes Escobar', '17771217', 'Administrador', 72710510, '2021-10-26', '2022-03-01', 'brisa@gmail.com', 'Av. Juan de la Rosa', 'Femenino'),
(12, 'Luis', 'Bustillos Sucre', '12881288', 'Administrador', 72799898, '2021-10-26', '2022-05-03', 'luis@gmail.com', 'Av. Blanco Galindo km 6', 'Masculino'),
(13, 'Jonas', 'Alanes Arrasola', '12891289', 'Administrador', 72278768, '2021-10-26', '2023-01-03', 'jonas@gmail.com', 'Av. Beijin y Av. América', 'Masculino'),
(1000, 'CARMEN', 'ZURITA', '810273', 'VENDEDOR', 6898567, '2021-10-23', '2022-10-23', 'carmenz@gmail', 'Av.Olivos', 'Femenino'),
(1001, 'ANTONIO', 'GARCIA', '647877', 'DUEÃ‘O', 76499099, '2021-10-24', '2022-10-24', 'antoniog@gmail', 'Av.Molles', 'Masculino'),
(1002, 'MANUEL', 'RODRIGUEZ', '589055', 'GERENTE', 7740884, '2021-10-25', '2022-10-25', 'manuelr@gmail', 'Av.Oquendo', 'Masculino'),
(1003, 'JOSE', 'GONZALEZ', '375835', 'VENDEDOR', 79999948, '2021-10-26', '2022-10-26', 'joseg@gmail', 'Av.Blaco Galindo', 'Masculino'),
(1004, 'FRANCISCO', 'FERNANDEZ', '271616', 'CAJERO', 7036639, '2021-10-27', '2022-10-27', 'franciscof@gmail', 'Av.Molles', 'Masculino'),
(1005, 'DAVID', 'LOPEZ', '262571', 'VENDEDOR', 6589742, '2021-10-28', '2022-10-28', 'davidl@gmail', 'Av.Oquendo', 'Masculino'),
(1006, 'JUAN', 'MARTINEZ', '260302', 'VENDEDOR', 6584743, '2021-10-29', '2022-10-29', 'juanm@gmail', 'Av.Blaco Galindo', 'Masculino'),
(1007, 'JAVIER', 'SANCHEZ', '258873', 'VENDEDOR', 66350255, '2021-10-30', '2022-10-30', 'javiers@gmail', 'Av.Molles', 'Masculino'),
(1008, 'JOSE ANTONIO', 'PEREZ', '257680', 'VENDEDOR', 6032739, '2021-10-31', '2022-10-31', 'jose antonp@gmail', 'Av.Oquendo', 'Masculino'),
(1009, 'DANIEL', 'GOMEZ', '255040', 'VENDEDOR', 4444471, '2021-11-01', '2022-11-01', 'danielg@gmail', 'Av.Blaco Galindo', 'Masculino'),
(1010, 'JOSE LUIS', 'MARTIN', '248131', 'VENDEDOR', 4232304, '2021-11-02', '2022-11-02', 'jose luism@gmail', 'Av.Molles', 'Masculino'),
(1011, 'ISABEL', 'JIMENEZ', '396237', 'GERENTE', 6336652, '2019-03-01', '2019-04-10', 'isabelj@gmail', 'Av.Robles', 'Femenino'),
(1012, 'LAURA', 'HERNANDEZ', '368259', 'VENDEDOR', 76499099, '2019-03-02', '2019-04-11', 'laurah@gmail', 'Av.Pando', 'Femenino'),
(1013, 'MARIA DOLORES', 'RUIZ', '367446', 'CAJERO', 7740884, '2019-03-03', '2019-04-12', 'maria dolor@gmail', 'Av.Beni', 'Femenino'),
(1014, 'MARIA TERESA', 'DIAZ', '342548', 'VENDEDOR', 79999948, '2019-03-04', '2019-04-13', 'maria tered@gmail', 'Av.Colombi', 'Femenino'),
(1015, 'ANA', 'MORENO', '321848', 'VENDEDOR', 7036639, '2019-03-05', '2019-04-14', 'anam@gmail', 'Av.Mexico', 'Femenino'),
(1016, 'CRISTINA', 'MUÃ‘OZ', '282983', 'VENDEDOR', 6589742, '2019-05-10', '2019-10-20', 'cristinam@gmail', 'Av.Ecuador', 'Femenino'),
(1017, 'MARTA', 'ALVAREZ', '281024', 'VENDEDOR', 6584743, '2019-05-11', '2019-10-21', 'martaa@gmail', 'C.Ladislao Cabrera', 'Femenino'),
(1018, 'MARIA ANGELES', 'ROMERO', '222901', 'VENDEDOR', 66350255, '2019-05-12', '2019-10-22', 'maria anger@gmail', 'Av.Aroma', 'Femenino'),
(1019, 'LUCIA', 'GUTIERREZ', '195913', 'VENDEDOR', 6032739, '2019-05-13', '2019-10-23', 'luciag@gmail', 'C.Los Pinos', 'Femenino'),
(1020, 'FRANCISCA', 'ALONSO', '194767', 'VENDEDOR', 4444471, '2019-05-14', '2019-10-24', 'franciscaa@gmail', 'C.Quijaro', 'Femenino'),
(1021, 'MARIA ISABEL', 'NAVARRO', '177788', 'VENDEDOR', 4232304, '2019-05-15', '2019-10-25', 'maria isabn@gmail', 'C.Gardenias', 'Femenino'),
(1022, 'JUAN CARLOS', 'AGUIRRE', '474677', 'DUEÃ‘O', 6336652, '2016-05-16', '2019-10-26', 'juan carloa@gmail', 'C.Los laureles', 'Femenino'),
(1023, 'JOSE IGNACIO', 'DIEZ', '450912', 'GERENTE', 76499099, '2016-05-17', '2021-10-24', 'jose ignacd@gmail', 'Av.Molles', 'Masculino'),
(1024, 'ANDER', 'RAMOS', '406497', 'VENDEDOR', 7740884, '2016-05-18', '2018-05-18', 'anderr@gmail', 'Av.Oquendo', 'Masculino'),
(1025, 'DANIEL', 'SALAZAR', '393541', 'CAJERO', 79999948, '2016-05-19', '2018-05-19', 'daniels@gmail', 'Av.Blaco Galindo', 'Masculino'),
(1026, 'OSCAR', 'ORTIZ', '381540', 'VENDEDOR', 7036639, '2016-05-20', '2018-05-20', 'oscaro@gmail', 'Av.Molles', 'Masculino'),
(1027, 'SERGIO', 'DOMINGUEZ', '335214', 'VENDEDOR', 6589742, '2016-05-21', '2018-05-21', 'sergiod@gmail', 'Av.Oquendo', 'Masculino'),
(1028, 'EDUARDO', 'RAMIREZ', '310405', 'VENDEDOR', 6584743, '2016-05-22', '2018-05-22', 'eduardor@gmail', 'Av.Blaco Galindo', 'Masculino'),
(1029, 'PABLO', 'IBAÃ‘EZ', '303397', 'VENDEDOR', 66350255, '2016-05-23', '2018-05-23', 'pabloi@gmail', 'Av.Molles', 'Masculino'),
(1030, 'JOSE MANUEL', 'SAEZ', '290958', 'VENDEDOR', 6032739, '2016-05-24', '2018-05-24', 'jose manues@gmail', 'Av.Oquendo', 'Masculino'),
(1031, 'IÃ‘AKI', 'ROMERO', '281321', 'VENDEDOR', 4444471, '2016-05-25', '2018-05-25', 'iÃ±akir@gmail', 'Av.Blaco Galindo', 'Masculino'),
(1032, 'RUBEN', 'ORTEGA', '259770', 'GERENTE', 4232304, '2016-05-26', '2018-05-26', 'rubeno@gmail', 'Av.Molles', 'Masculino'),
(1033, 'JESUS MARIA', 'SANTOS', '256374', 'VENDEDOR', 6336652, '2016-05-27', '2018-05-27', 'jesus maris@gmail', 'Av.Robles', 'Masculino'),
(1034, 'LUIS', 'URIARTE', '251683', 'CAJERO', 76499099, '2016-05-28', '2018-05-28', 'luisu@gmail', 'Av.Pando', 'Masculino'),
(1035, 'GORKA', 'DELGADO', '240223', 'VENDEDOR', 7740884, '2016-05-29', '2018-05-29', 'gorkad@gmail', 'Av.Beni', 'Masculino'),
(1036, 'PEDRO', 'SANZ', '234335', 'VENDEDOR', 79999948, '2016-05-30', '2018-05-30', 'pedros@gmail', 'Av.Colombi', 'Masculino'),
(1037, 'RAUL', 'SANTAMARIA', '223722', 'VENDEDOR', 7036639, '2016-05-31', '2018-05-31', 'rauls@gmail', 'Av.Mexico', 'Masculino'),
(1038, 'SUSANA', 'ANGULO', '221146', 'VENDEDOR', 6589742, '2016-06-01', '2018-06-01', 'susanaa@gmail', 'Av.Ecuador', 'Femenino'),
(1039, 'MARIA MERCEDES', 'CALVO', '209638', 'VENDEDOR', 6584743, '2016-06-02', '2018-06-02', 'maria mercc@gmail', 'C.Ladislao Cabrera', 'Femenino'),
(1040, 'CRISTINA', 'RUBIO', '201488', 'VENDEDOR', 66350255, '2016-06-03', '2018-06-03', 'cristinar@gmail', 'Av.Aroma', 'Femenino'),
(1041, 'ANA ISABEL', 'CASTRO', '197849', 'VENDEDOR', 6032739, '2016-06-04', '2018-06-04', 'ana isabelc@gmail', 'C.Los Pinos', 'Femenino'),
(1042, 'SONIA', 'PINEDO', '172915', 'VENDEDOR', 4444471, '2016-06-05', '2018-06-05', 'soniap@gmail', 'C.Quijaro', 'Femenino'),
(1043, 'PILAR', 'NUÃ‘EZ', '169558', 'CAJERO', 4232304, '2016-06-06', '2018-06-06', 'pilarn@gmail', 'C.Gardenias', 'Femenino'),
(1044, 'YOLANDA', 'SAENZ', '166012', 'GERENTE', 6336652, '2016-06-07', '2018-06-07', 'yolandas@gmail', 'C.Los laureles', 'Femenino'),
(1045, 'MARIA NIEVES', 'ORTIZ DE ZARATE', '165983', 'VENDEDOR', 4444471, '2016-06-08', '2018-06-08', 'maria nievo@gmail', 'Av.Molles', 'Femenino'),
(1046, 'UXUE', 'VAZQUEZ', '165359', 'VENDEDOR', 4232304, '2016-06-09', '2018-06-09', 'uxuev@gmail', 'Av.Oquendo', 'Femenino'),
(1047, 'MERCEDES', 'CASTILLO', '165098', 'VENDEDOR', 6336652, '2016-06-10', '2018-06-10', 'mercedesc@gmail', 'Av.Blaco Galindo', 'Femenino'),
(1048, 'MARIA ARANZAZU', 'PASCUAL', '164848', 'VENDEDOR', 76499099, '2016-06-11', '2018-06-11', 'maria aranp@gmail', 'Av.Molles', 'Femenino'),
(1049, 'PATRICIA', 'IGLESIAS', '161713', 'VENDEDOR', 7740884, '2016-06-12', '2018-06-12', 'patriciai@gmail', 'Av.Oquendo', 'Femenino'),
(1050, 'FRANCISCA', 'HERRERO', '160863', 'VENDEDOR', 79999948, '2016-06-13', '2018-06-13', 'franciscah@gmail', 'Av.Blaco Galindo', 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PRODUCTO`
--

CREATE TABLE `PRODUCTO` (
  `codigo` int NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `precio` decimal(60,0) DEFAULT NULL,
  `garantia` varchar(10) NOT NULL,
  `gama` varchar(12) NOT NULL,
  `PROVEEDOR_codigo` int NOT NULL,
  `ACCESORIO_codigo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `PRODUCTO`
--

INSERT INTO `PRODUCTO` (`codigo`, `nombre`, `marca`, `modelo`, `descripcion`, `precio`, `garantia`, `gama`, `PROVEEDOR_codigo`, `ACCESORIO_codigo`) VALUES
(10, 'Celular', 'Samsung', 'S20 Ultra', 'Es el último celular lanzado por Samsung y es 100% recomendable.', '2000', '2 años', 'Alta', 10, 10),
(11, 'Celular', 'Nokia', 'N9000', 'Último celular de los siglos pasados y considerado una coleccion antigua.', '200', '1 Año', 'Baja', 10, 10),
(12, 'Juan', 'Sony', 'Z15', 'Nuevo', '2000', '6 meses', 'Alta', 10, 10),
(14, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(15, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(16, 'Celular', 'Motorola', 'G20s', 'Último celular lanzado para este 2021', '1900', '6 meses', 'Media', 12, 21),
(17, 'Celular', 'Huawei', 'P40 PRO', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 11, 22),
(18, 'Celular', 'HUAWEI', 'P8 Lite', 'Último celular lanzado el 2018', '200', '6 meses', 'Media', 12, 23),
(19, 'Celular', 'Iphone', '12 PRO MAX', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 11, 24),
(20, 'Celular', 'Iphone', '13 PRO MAX', 'Último celular lanzado para este 2021', '3000', '1 año', 'Alta', 11, 25),
(21, 'Celular', 'Iphone', '6s plus', 'Último celular lanzado el 2017', '700', '1 año', 'Media', 11, 26),
(22, 'Celular', 'Tecno', ' 7 PRO start', 'Último celular lanzado para este 2021', '600', '1 año', 'Media', 13, 27),
(23, 'Celular', 'Samsung', 'A10 normal', 'Último celular lanzado el 2019', '600', '1 año', 'Media', 11, 28),
(24, 'Celular', 'Samsung', 'A10s', 'Último celular lanzado el 2019', '700', '1 año', 'Media', 11, 29),
(25, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 15),
(26, 'Celular', 'Samsung', 'S21 Plus', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 11, 16),
(27, 'Celular', 'Samsung', 'S20 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 11, 17),
(28, 'Celular', 'Sony', 'z3 Ultra', 'Último celular lanzado para este 2021', '200', '6 meses', 'Media', 13, 18),
(29, 'Celular', 'Nokia', 'N9000', 'Último celular lanzado en 2015', '100', '1 año', 'Baja', 14, 19),
(30, 'Celular', 'Xiaomi', 'Note 11 PRO', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 12, 20),
(31, 'Celular', 'Samsung', 'A20', 'Último celular lanzado el 2019', '710', '1 año', 'Media', 11, 30),
(32, 'Celular', 'Samsung', 'A20s', 'Último celular lanzado el 2019', '800', '1 año', 'Media', 11, 31),
(33, 'Celular', 'Samsung', 'A30', 'Último celular lanzado el 2019', '800', '1 año', 'Media', 11, 32),
(34, 'Celular', 'Samsung', 'A30s', 'Último celular lanzado el 2019', '700', '1 año', 'Media', 10, 33),
(35, 'Celular', 'Samsung', 'A30 normal', 'Último celular lanzado el 2019', '900', '1 año', 'Media', 10, 34),
(36, 'Celular', 'Samsung', 'A30s', 'Último celular lanzado el 2019', '800', '1 año', 'Media', 10, 35),
(37, 'Celular', 'Samsung', 'A50', 'Último celular lanzado el 2020', '900', '1 año', 'Media', 10, 36),
(38, 'Celular', 'Samsung', 'A70', 'Último celular lanzado el 2019', '1000', '1 año', 'Media', 10, 37),
(39, 'Celular', 'Samsung', 'S10', 'Último celular lanzado el 2019', '900', '1 año', 'Alta', 10, 38),
(40, 'Celular', 'Samsung', 'S8 Plus', 'Último celular lanzado el 2018', '2000', '1 año', 'Alta', 10, 39),
(41, 'Celular', 'Samsung', 'S7 edge', 'Último celular lanzado el 2016', '400', '1 año', 'Media', 10, 40),
(42, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(43, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(44, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(45, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(46, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(47, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(48, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(49, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(50, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(51, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(52, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(53, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(54, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(55, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(56, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(57, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(58, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(59, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(60, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(61, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(62, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(63, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(64, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(65, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(66, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(67, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10),
(68, 'Celular', 'Samsung', 'S21 Ultra', 'Último celular lanzado para este 2021', '2000', '1 año', 'Alta', 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PROVEEDOR`
--

CREATE TABLE `PROVEEDOR` (
  `codigo` int NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `celular` int NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `correo` varchar(40) DEFAULT NULL,
  `ci` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `PROVEEDOR`
--

INSERT INTO `PROVEEDOR` (`codigo`, `nombre`, `apellido`, `celular`, `direccion`, `correo`, `ci`) VALUES
(10, 'Pedro', 'Infante', 10, 'Av. Melchor Urquidi y Av. Uyuni', 'proveedor@gmail.com', '12491877'),
(11, 'Manuel', 'Castro', 20, 'San_Roque', 'Manuel@gmail.es', '6954151'),
(12, 'Jhon', 'Serna', 20, 'Los_tiros', 'Jhon06@gmail.es', '5698422'),
(13, 'Sofia', 'Padilla', 20, 'Tunupa', 'Sofia@gmail.es', '6562184'),
(14, 'Claudia', 'Muñoz', 20, 'Colquiri', 'Claudia_20@gmail.es', '6515616'),
(15, 'Miguel', 'Mamani', 20, 'Prado', 'Manuel_07@gmail.es', '6546846');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `VENTA`
--

CREATE TABLE `VENTA` (
  `codigo` int NOT NULL,
  `fecha` date NOT NULL,
  `cantidad_producto` int NOT NULL,
  `EMPLEADO_codigo` int NOT NULL,
  `CLIENTE_ci` int NOT NULL,
  `codigo_PRODUCTO` int DEFAULT NULL,
  `monto_cobrado` float(5,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `VENTA`
--

INSERT INTO `VENTA` (`codigo`, `fecha`, `cantidad_producto`, `EMPLEADO_codigo`, `CLIENTE_ci`, `codigo_PRODUCTO`, `monto_cobrado`) VALUES
(10, '2021-10-26', 1, 10, 10, 60, 100),
(11, '2021-10-24', 2, 10, 10, 64, NULL),
(12, '2021-10-10', 10, 10, 10, 10, NULL),
(100, '2021-10-24', 10, 10, 10, 10, NULL),
(3954012, '2021-10-20', 3, 1001, 9327276, 40, NULL),
(3954014, '2021-10-22', 4, 1002, 9327277, 15, NULL),
(3954015, '2021-10-23', 2, 1004, 9327279, 16, NULL),
(3954016, '2021-10-24', 3, 1005, 9327280, 17, NULL),
(3954017, '2021-10-25', 4, 1006, 9327281, 18, NULL),
(3954018, '2021-10-26', 1, 1007, 9327282, 19, NULL),
(3954019, '2021-10-27', 2, 1008, 9327283, 20, NULL),
(3954020, '2021-10-28', 5, 1009, 9327284, 21, NULL),
(3954021, '2021-10-29', 1, 1010, 9327285, 22, NULL),
(3954022, '2021-10-30', 2, 1011, 9327286, 23, NULL),
(3954023, '2021-10-31', 1, 1012, 9327287, 24, NULL),
(3954024, '2021-11-01', 1, 1013, 9327288, 25, NULL),
(3954025, '2021-11-02', 1, 1014, 9327289, 27, NULL),
(3954026, '2021-11-03', 1, 1015, 9327290, 28, NULL),
(3954027, '2021-11-04', 2, 1016, 9327291, 29, NULL),
(3954028, '2021-11-05', 3, 1017, 9327292, 30, NULL),
(3954029, '2021-11-06', 1, 1018, 9327293, 31, NULL),
(3954030, '2021-11-07', 2, 1019, 9327294, 32, NULL),
(3954031, '2021-11-08', 3, 1020, 9327295, 33, NULL),
(3954032, '2021-11-09', 1, 1021, 9327296, 37, NULL),
(3954033, '2021-11-10', 1, 1022, 9327297, 34, NULL),
(3954034, '2021-11-11', 1, 1023, 9327298, 35, NULL),
(3954035, '2021-11-12', 1, 1024, 9327299, 36, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ACCESORIO`
--
ALTER TABLE `ACCESORIO`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `CLIENTE`
--
ALTER TABLE `CLIENTE`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `DETALLE_VENTA`
--
ALTER TABLE `DETALLE_VENTA`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_VENTA_has_PRODUCTO_PRODUCTO1_idx` (`PRODUCTO_codigo`),
  ADD KEY `fk_VENTA_has_PRODUCTO_VENTA1_idx` (`VENTA_codigo`);

--
-- Indices de la tabla `EMPLEADO`
--
ALTER TABLE `EMPLEADO`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `PRODUCTO`
--
ALTER TABLE `PRODUCTO`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fk_PRODUCTO_PROVEEDOR1_idx` (`PROVEEDOR_codigo`),
  ADD KEY `fk_PRODUCTO_ACCESORIO1_idx` (`ACCESORIO_codigo`);

--
-- Indices de la tabla `PROVEEDOR`
--
ALTER TABLE `PROVEEDOR`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `VENTA`
--
ALTER TABLE `VENTA`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fk_VENTA_EMPLEADO_idx` (`EMPLEADO_codigo`),
  ADD KEY `fk_VENTA_CLIENTE1_idx` (`CLIENTE_ci`),
  ADD KEY `fk_relacion` (`codigo_PRODUCTO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `DETALLE_VENTA`
--
ALTER TABLE `DETALLE_VENTA`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `DETALLE_VENTA`
--
ALTER TABLE `DETALLE_VENTA`
  ADD CONSTRAINT `fk_VENTA_has_PRODUCTO_PRODUCTO1` FOREIGN KEY (`PRODUCTO_codigo`) REFERENCES `PRODUCTO` (`codigo`),
  ADD CONSTRAINT `fk_VENTA_has_PRODUCTO_VENTA1` FOREIGN KEY (`VENTA_codigo`) REFERENCES `VENTA` (`codigo`);

--
-- Filtros para la tabla `PRODUCTO`
--
ALTER TABLE `PRODUCTO`
  ADD CONSTRAINT `fk_PRODUCTO_ACCESORIO1` FOREIGN KEY (`ACCESORIO_codigo`) REFERENCES `ACCESORIO` (`codigo`),
  ADD CONSTRAINT `fk_PRODUCTO_PROVEEDOR1` FOREIGN KEY (`PROVEEDOR_codigo`) REFERENCES `PROVEEDOR` (`codigo`);

--
-- Filtros para la tabla `VENTA`
--
ALTER TABLE `VENTA`
  ADD CONSTRAINT `fk_relacion` FOREIGN KEY (`codigo_PRODUCTO`) REFERENCES `PRODUCTO` (`codigo`),
  ADD CONSTRAINT `fk_VENTA_CLIENTE1` FOREIGN KEY (`CLIENTE_ci`) REFERENCES `CLIENTE` (`ci`),
  ADD CONSTRAINT `fk_VENTA_EMPLEADO` FOREIGN KEY (`EMPLEADO_codigo`) REFERENCES `EMPLEADO` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
