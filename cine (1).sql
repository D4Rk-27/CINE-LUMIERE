-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2026 at 03:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cine`
--

-- --------------------------------------------------------

--
-- Table structure for table `butacas`
--

CREATE TABLE `butacas` (
  `IDBUTACA` int(11) NOT NULL,
  `IDSALA` varchar(45) NOT NULL,
  `TIPO_BUTACA` varchar(45) DEFAULT NULL,
  `FILA` int(11) NOT NULL,
  `ASIENTO` int(11) NOT NULL,
  `IMPORTE` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabla sobre la informacion de los asientos de cada sala';

-- --------------------------------------------------------

--
-- Table structure for table `carrito`
--

CREATE TABLE `carrito` (
  `IDCARRITO` int(11) NOT NULL,
  `FECHA_COMPRA` varchar(45) NOT NULL,
  `IDUSUARIO` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabla sobre la informacion del carrito de entradas';

-- --------------------------------------------------------

--
-- Table structure for table `cines`
--

CREATE TABLE `cines` (
  `IDCINE` int(11) NOT NULL,
  `CINE` varchar(45) NOT NULL,
  `CIUDAD` varchar(45) NOT NULL,
  `CALLE` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabla sobre datos sobre la ubicacion y nombre de los cines.';

-- --------------------------------------------------------

--
-- Table structure for table `datosusuarios`
--

CREATE TABLE `datosusuarios` (
  `ID` int(4) NOT NULL,
  `Usuarios` varchar(50) NOT NULL,
  `Passwords` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `carnet_joven` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabla con informacion principal del logeo sobre usuarios con sus respectivos datos';

--
-- Dumping data for table `datosusuarios`
--

INSERT INTO `datosusuarios` (`ID`, `Usuarios`, `Passwords`, `email`, `fecha_nacimiento`, `carnet_joven`) VALUES
(1, 'ruso', '123', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detalle_carrito`
--

CREATE TABLE `detalle_carrito` (
  `IDDETALLE_CARRITO` int(11) NOT NULL,
  `IDCARRITO` int(11) NOT NULL,
  `IDSALA_BUTACA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generos`
--

CREATE TABLE `generos` (
  `id_genero` int(5) NOT NULL,
  `genero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peliculas`
--

CREATE TABLE `peliculas` (
  `ID` int(4) NOT NULL,
  `TITULO` varchar(100) NOT NULL,
  `DURACION` int(3) NOT NULL,
  `DESCRIPCION` varchar(400) NOT NULL,
  `GÉNERO` varchar(50) NOT NULL,
  `EDAD` int(3) NOT NULL,
  `FOTO` varchar(100) NOT NULL,
  `TRAILER` varchar(45) NOT NULL,
  `VERSIÓN` varchar(45) NOT NULL,
  `FECHA_ESTRENO` date DEFAULT NULL,
  `ACTOR` varchar(45) NOT NULL,
  `DIRECTOR` varchar(45) NOT NULL,
  `ESTUDIO` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peliculas`
--

INSERT INTO `peliculas` (`ID`, `TITULO`, `DURACION`, `DESCRIPCION`, `GÉNERO`, `EDAD`, `FOTO`, `TRAILER`, `VERSIÓN`, `FECHA_ESTRENO`, `ACTOR`, `DIRECTOR`, `ESTUDIO`) VALUES
(1, 'Inception', 148, 'Un ladrón especializado en robar información a través de los sueños recibe el encargo de implantar una idea en la mente de una persona.', 'Thriller', 12, 'inception.jpg', 'https://n9.cl/fvutd', 'Original', '2010-07-16', 'Leonardo DiCaprio', 'Christopher Nolan', 'Warner Bros'),
(4, 'Interstellar', 169, 'Un grupo de astronautas viaja a través de un agujero de gusano para encontrar un nuevo hogar para la humanidad.', 'Drama', 12, 'interstellar.jpg', 'https://n9.cl/x1fbb', 'Original', '2014-11-07', 'Matthew McConaughey', 'Christopher Nolan', 'Paramount Pictures'),
(5, 'El Señor de los Anillos: La Comunidad del Anillo', 178, 'Un hobbit emprende un peligroso viaje para destruir un anillo con un poder oscuro.', 'Fantasía', 12, 'señor de los anillos.jpeg', 'https://n9.cl/odr7t2', 'Original', '2001-12-19', 'Elijah Wood', 'Peter Jackson', 'New Line Cinema'),
(7, 'Gladiator', 155, 'Un general romano traicionado busca venganza como gladiador', 'Acción', 16, 'gladiator.jpg', 'https://n9.cl/q75mkl', 'Original', '2000-05-05', 'Russell Crowe', 'Ridley Scott', 'DreamWorks'),
(8, 'Titanic', 195, 'Historia de amor entre dos jóvenes de distintas clases sociales a bordo del Titanic.', 'Romance', 12, 'titanic.jpg', 'https://n9.cl/dv7dj', 'Original', '1997-12-19', 'Leonardo DiCaprio', 'James Cameron', '20th Century Fox'),
(9, 'Avatar', 162, 'Un exmarine se infiltra en un planeta alienígena y acaba defendiendo a su pueblo.', 'Aventuras', 12, 'avatar.jpg', 'https://n9.cl/hx9eul', 'Original', '2009-12-18', 'Sam Worthington', 'James Cameron', '20th Century Fox'),
(10, 'Joker', 122, 'El origen de uno de los villanos más icónicos del cine.', 'Thriller', 16, 'Joker.jpg', 'https://n9.cl/efpl1', 'Original', '2019-10-04', 'Joaquin Phoenix', 'Todd Phillips', 'Warner Bros'),
(11, 'Matrix', 136, 'Un hacker descubre que la realidad es una simulación creada por máquinas.', 'Acción', 16, 'Matrix.jpg', 'https://n9.cl/k18qmt', 'Original', '1999-03-31', 'Keanu Reeves', 'Lana y Lilly Wachowski', 'Warner Bros.'),
(12, 'Jurassic Park', 127, 'Un parque temático con dinosaurios clonados se vuelve incontrolable.', 'Aventuras', 7, 'Jurassic.jpg', 'https://n9.cl/51k7y', 'Original', '1993-06-11', 'Sam Neill', 'Steven Spielberg', 'Universal Pictures'),
(13, 'Forrest Gump', 142, 'La vida de un hombre sencillo que presencia momentos clave de la historia.', 'Drama', 7, 'ForrestGump.jpg\r\n', 'https://n9.cl/ym3anv', 'Original', '1994-07-06', 'Tom Hanks', 'Robert Zemeckis', 'Paramount Pictures'),
(14, 'The Dark Knight', 152, 'Batman se enfrenta al Joker, un villano que quiere sumir Gotham en el caos.', 'Acción', 12, 'Batman.jpg', 'https://n9.cl/11xgo', 'Original', '2008-07-18', 'Christian Bale', 'Christopher Nolan', 'Warner Bros'),
(15, 'Pulp Fiction', 154, 'Varias historias criminales se entrelazan en Los Ángeles.', 'Drama', 16, 'PulpFiction.jpg', 'https://n9.cl/lc776', 'Original', '1994-10-14', 'John Travolta', 'Quentin Tarantino', 'Miramax'),
(16, 'Star Wars: Una nueva esperanza', 121, 'Un joven granjero se une a la Rebelión para derrotar al Imperio.', 'Aventuras', 7, 'StarWars.jpg', 'https://n9.cl/kqbds', 'Original', '1977-05-25', 'Mark Hamill', 'George Lucas', 'Lucasfilm'),
(17, 'Harry Potter y la piedra filosofal', 152, 'Un niño descubre que es mago y comienza su aventura en Hogwarts.', 'Fantasía', 7, 'HarryPotter.jpg', 'https://n9.cl/nwz4p', 'Original', '2001-11-16', 'Daniel Radcliffe', 'Chris Columbus', 'Warner Bros'),
(18, 'La La Land', 128, 'Un músico y una actriz persiguen sus sueños en Los Ángeles.', 'Musical', 7, 'LaLaLand.jpg\r\n', 'https://n9.cl/dlpvv', 'Original', '2016-12-09', 'Ryan Gosling', 'Damien Chazelle', 'Lionsgate'),
(19, 'Shrek', 90, 'Un ogro solitario emprende una aventura para rescatar a una princesa', 'Comedia', 7, '', 'https://n9.cl/ajhxz3', 'Original', '2001-05-18', 'Mike Myers (voz)', 'Andrew Adamson', 'DreamWorks Animation'),
(20, 'El Rey León', 88, 'Un león joven debe asumir su destino como rey de la sabana.', 'Animación', 7, '', '', 'Original', '1994-06-15', 'Matthew Broderick (voz)', 'Roger Allers', 'Walt Disney Pictures'),
(21, 'Vengadores: Endgame', 181, 'Los Vengadores intentan revertir el chasquido de Thanos.', 'Acción', 12, '', '', 'Original', '2019-04-26', 'Robert Downey Jr.', 'Anthony y Joe Russo', 'Marvel Studios'),
(22, 'Rocky', 120, 'Un boxeador desconocido tiene la oportunidad de luchar por el título mundial.', 'Drama', 12, '', '', 'Original', '1976-12-03', 'Sylvester Stallone', 'John G. Avildsen', 'United Artists'),
(23, 'El Código Da Vinci', 149, 'Un profesor investiga un misterio religioso oculto durante siglos.', 'Thriller', 12, '', '', 'Original', '2006-05-19', 'Tom Hanks', 'Ron Howard', 'Columbia Pictures');

-- --------------------------------------------------------

--
-- Table structure for table `salas`
--

CREATE TABLE `salas` (
  `IDSALA` int(11) NOT NULL,
  `IDCINE` varchar(45) NOT NULL,
  `NUMERO_SALA` varchar(45) NOT NULL,
  `NOMBRE` varchar(45) DEFAULT NULL,
  `CAPACIDAD` int(11) DEFAULT NULL,
  `SIZESCREEN` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabla sobre la informacion basica de las salas internas de dicho cine';

-- --------------------------------------------------------

--
-- Table structure for table `salas_butacas`
--

CREATE TABLE `salas_butacas` (
  `IDSALA_BUTACA` int(11) NOT NULL,
  `IDSALA` int(11) NOT NULL,
  `IDBUTACA` int(11) NOT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA` varchar(45) DEFAULT NULL,
  `ESTADO` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabla con la informacion relacionada sobre las butacas y sus respectivas salas.';

-- --------------------------------------------------------

--
-- Table structure for table `salas_peliculas`
--

CREATE TABLE `salas_peliculas` (
  `IDSALA_PELICULA` int(11) NOT NULL,
  `IDSALA` varchar(5) NOT NULL,
  `IDPELICULA` varchar(5) NOT NULL,
  `FECHA` date DEFAULT NULL,
  `HORA_INICIO` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabla con informacion sobre las salas y sus respectivas peliculas aplicadas.';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `butacas`
--
ALTER TABLE `butacas`
  ADD PRIMARY KEY (`IDBUTACA`);

--
-- Indexes for table `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`IDCARRITO`);

--
-- Indexes for table `cines`
--
ALTER TABLE `cines`
  ADD PRIMARY KEY (`IDCINE`);

--
-- Indexes for table `datosusuarios`
--
ALTER TABLE `datosusuarios`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `detalle_carrito`
--
ALTER TABLE `detalle_carrito`
  ADD PRIMARY KEY (`IDDETALLE_CARRITO`);

--
-- Indexes for table `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indexes for table `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`IDSALA`);

--
-- Indexes for table `salas_butacas`
--
ALTER TABLE `salas_butacas`
  ADD PRIMARY KEY (`IDSALA_BUTACA`);

--
-- Indexes for table `salas_peliculas`
--
ALTER TABLE `salas_peliculas`
  ADD PRIMARY KEY (`IDSALA_PELICULA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datosusuarios`
--
ALTER TABLE `datosusuarios`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detalle_carrito`
--
ALTER TABLE `detalle_carrito`
  MODIFY `IDDETALLE_CARRITO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
