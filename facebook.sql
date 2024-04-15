-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-04-2024 a las 00:42:53
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `facebook`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `correo_electronico` varchar(50) DEFAULT NULL,
  `dni` varchar(8) DEFAULT NULL,
  `edad` varchar(2) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `telefono` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `direccion`, `correo_electronico`, `dni`, `edad`, `fecha_creacion`, `telefono`) VALUES
(1, 'Ogdan', 'Skentelbury', '80 Hooker Crossing', 'ogdan@gmail.com', '94556679', '32', '2024-01-02', '976837456'),
(2, 'Lanie', 'Fitch', '0 Scofield Crossing', 'lanie@gmail.com', '23321232', '84', '2022-12-23', '985345671'),
(3, 'Aurel', 'Kinsley', '06 Nobel Crossing', 'kinsley@gmail.com', '85623487', '15', '2023-06-13', '923567898'),
(4, 'Alexia', 'Vittore', '6462 Birchwood Court', 'alexi@gmail.com', '87546789', '22', '2023-01-03', '978234567'),
(5, 'Jorrie', 'McLernon', '755 Monica Drive', 'jorre@hotmail.com', '45564556', '25', '2023-08-17', '923546783'),
(6, 'Giustina', 'Stirland', '9 Milwaukee Park', 'gs@hotmail.com', '34546789', '66', '2023-08-15', '912543454'),
(7, 'Tamiko', 'Cundy', '1998 3rd Court', 'tcundy@gmail.com', '23454345', '77', '2023-08-16', '945613257'),
(8, 'Morrie', 'Branchet', '8 Katie Pass', 'katipass@gmail.com', '56238756', '51', '2023-05-03', '932878566'),
(9, 'Pooh', 'Shiels', '8469 Ilene Avenue', 'pooh@gmail.com', '89907889', '69', '2024-04-07', '954347560'),
(10, 'Lorrie', 'Albrooke', '3625 Vahlen Trail', 'lorriealbrooke@gmail.com', '67890989', '96', '1899-11-29', '912345687'),
(11, 'Regina', 'Titcombe', '4 Warrior Lane', 'regina@gmail.com', '00078872', '10', '2023-01-20', '923456878'),
(12, 'Reyna', 'Winchurst', '6511 Esch Circle', 'winchurst@gmail.com', '51268460', '13', '1899-11-29', '912345674'),
(13, 'Brook', 'Greenan', '0 Lighthouse Bay Court', 'greenam@gmail.com', '45456565', '65', '2023-11-02', '912345676'),
(14, 'Mendel', 'MacTavish', '051 Fairview Lane', 'mendel@gmail.com', '80808045', '78', '2023-12-06', '934768905'),
(15, 'Deina', 'Abercromby', '0567 Crescent Oaks Park', 'deina@gamil.com', '23765389', '32', '2024-01-16', '965423567'),
(16, 'Meaghan', 'Baldacchino', '92585 Lindbergh Road', 'meaghan@gmail.com', '23563456', '67', '2023-12-04', '987534458'),
(17, 'Nina', 'Cristou', '94130 Burrows Trail', 'cristou@gmail.com', '82437645', '33', '2023-09-20', '345654369'),
(18, 'Nerita', 'Myhan', '20810 Miller Road', 'neritamyhan@gmail.com', '48573645', '56', '2023-08-16', '912323232'),
(19, 'Doretta', 'Stancer', '78035 Knutson Circle', 'doretta@gmail.com', '56235467', '15', '2024-04-02', '345879561'),
(20, 'Elfie', 'Yes', '4858 Vermont Hill', 'elfie@gmail.com', '12896709', '24', '2024-04-04', '967564532'),
(21, 'Selle', 'Hedaux', '014 Jay Junction', 'Femalesllehedaux@gmail.com', '23764365', '75', '2024-01-15', '953467865'),
(22, 'Gregg', 'Huddart', '16698 Pearson Avenue', 'gregghuddartt@gmail.com', '76325489', '24', '2023-11-08', '997876455'),
(23, 'Whitman', 'Egginson', '7 Briar Crest Street', 'whitman@gmail.com', '87343267', '42', '2023-12-13', '975423465'),
(24, 'Fredi', 'Quarmby', '91320 Bluestem Court', 'fredi@gmail.com', '98878976', '54', '2024-02-09', '943352334'),
(25, 'Tina', 'Roper', '8 Elka Pass', 'tina@gmail.com', '90909056', '45', '2024-02-27', '914567893'),
(26, 'Siegfried', 'Robson', '71227 Goodland Circle', 'Male', '70611239', '23', '1899-11-28', '923413222'),
(32, 'nombre', 'apellido', 'direccion', 'correo_electronico', 'dni', 'ed', '1899-11-29', 'telefono');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
