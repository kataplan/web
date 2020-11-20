-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2020 a las 00:38:15
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
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `categoria` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`categoria`, `id`) VALUES
('Nacional', 1),
('Internacional', 2),
('Deporte', 3),
('Entretención', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `autor` varchar(100) NOT NULL,
  `comentario` text NOT NULL,
  `idcomen` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`autor`, `comentario`, `idcomen`, `id`) VALUES
('alejandro', 'lkasfjnlkmlk', 2, 1),
('asf', 'fsafsfasfafa', 3, 2),
('', '', 5, 3),
('', '      eayheaheheaheaheh                        \r\n                     ', 5, 4),
('', '      eayheaheheaheaheh                        \r\n                     ', 5, 5),
('', '      eayheaheheaheaheh                        \r\n                     ', 5, 6),
('', '      eayheaheheaheaheh                        \r\n                     ', 5, 7),
('none', '      eayheaheheaheaheh                        \r\n                     ', 5, 8),
('none', '                              \r\n             edhedhdhdhdh       ', 5, 9),
('none', 'srysru                              \r\n      hsrujrsujsrj               ', 5, 10),
('', '                              \r\n   agegaegeageag                  ', 5, 11),
('', '                              \r\n   agegaegeageag                  ', 5, 12),
('', '                              \r\n                dxhdxh     hdhdhdagsd', 5, 13),
('', '                              \r\n                dxhdxh     hdhdhdagsd', 5, 14),
('', '                              \r\n                     ', 5, 15),
('', 'edhssdhdshjdsfhj                              \r\n                     ', 5, 16),
('', 'tgaweyaweyhaewherasheasrtwa                             \r\n                     ', 5, 17),
('none', 'tgaweyaweyhaewherasheasrtwa                             \r\n                     ', 5, 18),
('none', 'ghershsreh                              \r\n                     ', 5, 19),
('none', '                              \r\n           fhsdfhsrfdhfshbsrfhb          ', 0, 20),
('none', '                              \r\n    svdsbdzbnhdfznfzdx                 ', 0, 21),
('none', '             eyhserj                 \r\n       hsrjrjsrfxjn              ', 0, 22),
('none', '             eyhserj                 \r\n       hsrjrjsrfxjn              ', 0, 23),
('none', '                              \r\n             {ñl,k{        ', 0, 24),
('none', '       \r\n                     ', 0, 25),
('none', '       \r\n                     aegae', 0, 26),
('crilanselo', 'esto es un comentario\r\n                     ', 0, 27),
('crilanselo', '       \r\n     ashgaeheahe                ', 0, 28),
('crilanselo', '       \r\n     ashgaeheahe                ', 0, 29),
('crilanselo', '       wgaegeag\r\n                     ', 0, 30),
('crilanselo', '       afafaeea\r\n                     ', 0, 31),
('crilanselo', '       \r\n  afawfs                   ', 0, 32),
('crilanselo', 'awfawfawfwa       \r\n                     ', 0, 33),
('crilanselo', 'awfawfawfwa       \r\n                     ', 0, 34),
('crilanselo', '       afeafea\r\n                     ', 0, 35),
('Alejandro', '       aehgaehaeheahaehae\r\n                     ', 0, 36),
('Alejandro', '       aegeagaegae\r\n                     ', 3, 37),
('Alejandro', '       aegeagaegae\r\n                     ', 3, 38),
('Alejandro', 'Fwwgegrahrhrhrhahrheh       \r\n                     ', 3, 39),
('Alejandro', 'Fwwgegrahrhrhrhahrheh       \r\n                     ', 3, 40),
('Alejandro', ' eage      \r\n   eagaeg        aeeag      ', 3, 41),
('Alejandro', ' eage      \r\n   eagaeg        aeeag      ', 3, 42),
('Alejandro', ' eage      \r\n   eagaeg        aeeag      ', 3, 43),
('Alejandro', '       \r\n sgsgs                    ', 3, 44),
('crilanselo', '       \r\n              aeheahjeahe       ', 3, 45),
('crilanselo', '       \r\n              aeheahjeahe       ', 3, 46),
('crilanselo', '       \r\n              aeheahjeahe       ', 0, 47),
('crilanselo', '       ahgehehaeh\r\n                     ', 0, 48),
('crilanselo', '       ahgehehaeh\r\n                     ', 0, 49),
('crilanselo', '       aerhrah\r\n                     ', 0, 50),
('crilanselo', '       \r\n                     aeaehea', 0, 51),
('crilanselo', '       \r\n            srjrsjrsjsr         ', 0, 52),
('crilanselo', '       \r\n                     ehaheaheah', 0, 53),
('crilanselo', '       \r\n                     ehaheaheah', 0, 54),
('crilanselo', '       \r\n      rshjrjhrs               ', 0, 55),
('crilanselo', '       \r\n      rshjrjhrs               ', 0, 56),
('crilanselo', '       \r\n             aehgaehe      ', 0, 57),
('crilanselo', '       \r\n             aehgaehe      ', 0, 58),
('crilanselo', '       \r\n                     ', 0, 59),
('crilanselo', '       eaghershr\r\n                     ', 0, 60),
('crilanselo', '       \r\n                     srjhsrjr', 0, 61),
('crilanselo', '       \r\n              hrshrshrs       ', 6, 62),
('crilanselo', '       egaegegea\r\n                     ', 6, 63),
('crilanselo', '       \r\n             aeggaeaegagegae        ', 6, 64),
('crilanselo', '       \r\n         aegawegaegegaege            ', 6, 65),
('crilanselo', '  prueba1000\r\n     \r\n                     ', 6, 66),
('crilanselo', '       \r\n             aegheaheah        ', 6, 67),
('crilanselo', '       \r\n         aehheahe            ', 6, 68),
('crilanselo', '       \r\n                     aehgeahae', 6, 69),
('crilanselo', '       \r\n                     mngjkhgkujghiyu', 8, 70),
('crilanselo', 'wea fome       \r\n                ', 8, 71),
('crilanselo', '       ñ,m ñl,.ñl\r\n                ', 8, 72),
('crilanselo', '       \r\n                ', 8, 73),
('crilanselo', '       \r\n                ', 8, 74),
('crilanselo', '       \r\n                ', 8, 75),
('crilanselo', '´lmlñ{k,ñ´{l       \r\n                ', 8, 76),
('crilanselo', '       \r\n        ´lkllp        ', 8, 77),
('crilanselo', '       \r\n        ´lkllp        ', 8, 78),
('shiny_news@gmail.com', 'pico', 2, 79);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comentario` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`nombre`, `email`, `comentario`, `id`) VALUES
('Alejandro Esteban Lobos Arenas', 'ale_yo_lobos@hotmail.com', 'eaeggeageaggaegeag\r\n   age                  aeageagaegeag', 1),
('Alejandro Esteban Lobos Arenas', 'lobosalejandro9@gmail.com', '   haewheahgae  hae        ehe                 \r\n              awhgesah       ', 2),
('Nicolás', 'lobosalejandro9@gmail.com', '5', 3),
('Prueba Prueba Prueba Prueba', 'sasdflkas@gmail.com', '5', 4),
('Prueba Prueba Prueba Prueba', 'sasdflkas@gmail.com', 'aetagaegeahgaehae                              \r\n                     ', 5),
('Nicolás', 'ale_yo_lobos@hotmail.com', '     aegaehaeherahe                         \r\n                     ', 6),
('Nicolás', 'lobosalejandro9@gmail.com', '                              \r\nehaeheeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee                    ', 7),
('Alejandro Lobos', 'asf@gmail.com', 'wfawgeghegheh                              \r\n                     ', 8),
('Alejandro Lobos', 'asf@gmail.com', 'wfawgeghegheh                              \r\n                     ', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `valoracion` int(5) NOT NULL,
  `votostotales` int(10) NOT NULL,
  `sumapuntuacion` int(10) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `noticia` text NOT NULL,
  `estado` int(5) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`titulo`, `autor`, `valoracion`, `votostotales`, `sumapuntuacion`, `fecha`, `noticia`, `estado`, `categoria`, `id`) VALUES
('Politico Preso ', 'Michael Vilches', 4, 6, 25, '09/06/2020', 'Puesto que las opiniones o actitudes no suelen ser objeto de legislación, suele ser difícil determinar exactamente quiénes son prisioneros políticos a partir de los cargos que se les imputan; una excepción la constituyen los acusados de traición o espionaje, que sin embargo no se cuentan generalmente como presos políticos. La condición de preso político, por lo tanto, suele ser objeto de disputas; muchos de los prisioneros considerados políticos por grupos activistas son calificados por los gobiernos a los que se oponen de \"terroristas\" o \"subversivos\".\r\n\r\nEn consecuencia, rara vez una autoridad estatal admite la existencia de presos políticos; los críticos del gobierno aducen que los procedimientos legales empleados están solamente diseñados para ocultar la condición de preso político. Esto puede incluir la invención de cargos criminales, o la negativa de beneficios concedidos a otros presos en situación semejante, así como la aplicación de poderes especiales, como el estado de excepción.\r\n\r\nLa legislación actual considera, por lo general, que la prisión por motivos políticos es una violación a los derechos humanos de libertad de conciencia y expresión. Organizaciones internacionales, como Amnistía Internacional, se movilizan en todo el mundo solicitando un juicio justo para los presos políticos.\r\n\r\nAmnistía Internacional aboga solo por la liberación de los prisioneros de conciencia (PC), que son aquellas personas que son privadas de libertad por su procedencia étnica, tendencia sexual, creencia religiosa, origen nacional o social, u otras circunstancias, y no han utilizado la violencia ni abogado por ella.2​ Para los presos políticos que hayan propugnado o utilizado la violencia, AI pide juicios justos.3​\r\n\r\nGobiernos de toda tipología (comunistas, fascistas, teocráticos, populistas o democráticos liberales) han detenido a prisioneros políticos. En la Unión Soviética, usaron diagnósticos psicológicos dudosos para detener a prisioneros políticos. En la Alemania nazi, prisioneros de noche y niebla fueron las primeras víctimas de la opresión fascista. Los gobiernos mismos en general niegan la existencia de prisioneros políticos en su país. Por ejemplo, durante la Guerra de Vietnam, el gobierno de Vietnam del Sur negó que tuviera prisioneros políticos, a pesar de que aproximadamente 100.000 civiles estaban encarcelados en 41 complejos de detención. Estos incluyeron a miembros del Frente de Liberación Nacional (FLN), incluso a jefes de aldea, maestros, recaudadores de impuestos, carteros, personal médico, y muchos campesinos cuyos familiares eran miembros del FLN.\r\n\r\nLos prisioneros políticos a veces exponen sus biografías de las experiencias vividas. Algunas de estas se han transformado en textos políticos de referencia.\r\n\r\nEl concepto de \"preso político\" no debe confundirse con el de \"político preso\", cuando una persona que se dedica a la política comete un acto que viola la ley vigente, en cuyo caso pasa a estar preso por los delitos cometidos, y no por su forma de pensar.4​', 0, 'Internacional', 2),
('Star Wars', 'Jorge Lizana', 3, 2, 6, '15/05/2022', 'Star Wars (conocida también en español como La guerra de las galaxias)1​2​3​ es una franquicia compuesta primordialmente de una serie de películas concebidas por el cineasta estadounidense George Lucas en la década de 1970, y producidas y distribuidas por The Walt Disney Company a partir de 2012. Su trama describe las vivencias de un grupo de personajes que habitan en una galaxia ficticia e interactúan con elementos como «la Fuerza», un campo de energía metafísico y omnipresente4​ que posee un «lado oscuro» provocado por la ira, el miedo y el odio.5​\r\n\r\nLa primera película de la serie, Star Wars: Episodio IV - Una nueva esperanza (1977), contó con actores como Mark Hamill, Harrison Ford, Carrie Fisher, Alec Guinness, Anthony Daniels, Kenny Baker, Peter Mayhew y David Prowse. Aunque tuvo numerosas dificultades durante la producción, 20th Century Fox se encargó de su distribución y fue estrenada el 25 de mayo de 1977.6​ Se convirtió en un fenómeno de la cultura popular y su influencia ha sido reconocida por numerosos cineastas.7​8​ Su éxito hizo que Lucas financiara dos secuelas más, Star Wars: Episodio V - El Imperio contraataca y Star Wars: Episode VI - Return of the Jedi, que completaron la denominada «trilogía original» y a las que se incorporaron actores como Billy Dee Williams, Frank Oz e Ian McDiarmid.7​\r\n\r\nMás de una década después se estrenó Star Wars: Episodio I - La amenaza fantasma (1999), la primera cinta de una nueva trilogía de precuelas, completada por Star Wars: Episodio II - El ataque de los clones (2002) y Star Wars: Episodio III - La venganza de los Sith (2005) y centrada en los años previos a la anterior trilogía. Liam Neeson, Ewan McGregor, Natalie Portman, Hayden Christensen y Samuel L. Jackson fueron algunos de los actores que se sumaron al reparto, en el que también participaron algunos actores de la trilogía original. A finales de 2012 Disney adquirió Lucasfilm, productora de las seis películas anteriores,9​ y anunció la realización de una tercera trilogía cinematográfica integrada por Star Wars: Episodio VII - El despertar de la Fuerza (2015), Star Wars: Episodio VIII - Los últimos Jedi (2017) y Star Wars: Episodio IX - El ascenso de Skywalker (2019), en la que nuevamente participó parte del elenco original junto con actores como Daisy Ridley, Adam Driver, John Boyega y Oscar Isaac. El estudio es responsable también de la producción de un par de películas derivadas que abordan elementos del canon como son Rogue One (2016) y Han Solo (2018).\r\n\r\nAdemás del ámbito cinematográfico, la franquicia incluye una amplia variedad de productos tales como novelas, series de televisión, videojuegos, historietas, atracciones de parques temáticos, juegos de rol, de guerra o de miniaturas y juguetes, que componen una parte importante del conocido como «universo expandido» de Star Wars. Cada año la marca genera unos ingresos por la venta de sus productos en todo el mundo que ascienden a más de 24 mil millones USD,10​ lo que la convierte en una de las más exitosas de todos los tiempos, mientras que la recaudación de sus películas la posicionan como una de las series más taquilleras en la historia del cine.', 0, 'Entretencion', 3),
('Ibai Muere a Manos de Lionel Mesi', 'Michael Vilches', 5, 5, 25, '22/07/2025', 'Se inició en la locución en 2014, como comentarista de partidas en castellano del videojuego League of Legends junto a Ánder Cortés. Este tipo de locución, en el ámbito de los deportes electrónicos, se ha venido a denominar \"casteo\", por influencia del inglés cast, por lo que Llanos es conocido habitualmente como un \"caster\". Colaboró como locutor de partidas con la Liga de Videojuegos Profesional (LVP) desde 2014 hasta 2020.1​\r\n\r\nEn 2019 prestó su voz como locutor del nuevo modo de fútbol callejero Volta del videojuego FIFA 20.2​\r\n\r\nEl 5 de febrero de 2020, anunció, a través de la red social Twitter que fichaba por el club G2 Esports como creador de contenidos.\r\n\r\nEn marzo de 2020 organizó un torneo de FIFA con el objetivo de reunir fondos para la lucha contra el coronavirus, en el que participaron la mayoría de clubes de LaLiga Santander a través de sus futbolistas. Consiguió recaudar hasta 200 000 € en total.[cita requerida]', 0, 'Entretencion', 4),
('Prolongado Paro PUCV', 'Alejandro Lobos', 5, 1, 5, '01/06/2020', 'Su “rechazo categórico” manifestó la CUT ante el ataque a los trabajadores que expresó en un dictamen la Dirección del Trabajo, y es que es lo mínimo que podrían haber hecho ante un dictamen tan aberrante que permite el no pago de sueldos a trabajadores que no puedan asistir a sus puestos por problemas relacionados a la cuarentena por coronavirus. Hizo un llamado también a Mesa de Monitoreo de Abusos Laborales Tripartita (Gobierno, empleadores y trabajadores) que ya propuso a la ministra del Trabajo y Previsión Social, María José Zaldívar, en la reunión que sostuvieron el pasado martes, con el objeto de tomar medidas en conjunto que permitan tratar los temas de seguridad y trabajo. Es decir, la CUT sigue confiando en diálogos con el gobierno corrupto y pro empresarial de Piñera.', 0, 'Nacional', 6),
('Anonymus', 'Jorge Lizana', 5, 10, 50, '22/06/2018', 'Durante el 31 de mayo, el grupo hacker Anonymous causó un gran revuelo en Twitter tras revelar presuntos actos de corrupción por parte del gobierno de los Estados Unidos y, además, algunos crímenes como el que presuntamente habría sufrido la princesa Diana de Gales.Según la cuenta OpDeathEaters, que ha reaparecido durante estos días tras el asesinato de George Floyd, la exesposa del Príncipe Carlos habría sido asesinada por la realeza británica en agosto de 1997 y que no fue un accidente, tal y como afirmaron las autoridades.Anonymous relaciona la muerte de Lady Di con la realeza británicaDe acuerdo con lo detallado por Anonymous, la realeza habría decidido quitarle la vida a la princesa Diana para acallarla e impedir que está revelará los casos de corrupción y trafico sexual de niños que supuestamente involucran a la familia real.En el escrito de Anonymous, que fue borrado posteriormente aunque \'cazado\' y traducido por varios usuarios de la red social, se afirma que el Príncipe Carlos mantuvo a un ayudante real a su lado a pesar de ser consciente de varias de sus presuntas violaciones.', 0, 'Internacional', 7),
('Noticia NO Publica', 'Alejandro Lobos', 1, 1, 1, '22/07/2013', 'Esto es una prueba para ver si funcionan los estados de las noticias, donde el estado publico se permite ver por cualquier usario del blog, el estado no publico solo deja ver a los usuarios logeado y el estado privado solo lo porda ver el administrador del blog', 1, 'Internacional', 8),
('Privado', 'Jorge Lizana', 2, 2, 4, '05/04/200', 'Esto es una prueba para ver si funcionan los estados de las noticias, donde el estado publico se permite ver por cualquier usario del blog, el estado no publico solo deja ver a los usuarios logeado y el estado privado solo lo porda ver el administrador del blog', 2, 'Nacional', 9),
('Ultima Noticia Ingresada Priv', 'Michael Vilches', 4, 10, 40, '07/08/22', 'l grupo hacker Anonymous lanzó durante el día de ayer una amenaza directa al gobierno de los Estados Unidos tras el asesinato de George Floyd a manos de un policía, algo que ha desencadenado varias revueltas en todo el país.Horas después, hicieron pública una lista de personalidades que, presuntamente, habrían estado involucradas en la \'red Epstein\' de tráfico de menores. Algunas eran Donald Trump, Ivanka e Ivana Trump, Naomi Campbell, Tony Blair, Michael Bloomberg, Kevin Spacey o Mick Jagger.', 1, 'Deporte', 10),
('afsgafdga', 'dsfgsdfgsdfg', 0, 0, 0, '02/06/2020', 'sdfgsdfgsdgfsdfgdg', 0, 'Nacional', 26),
('afsgafdga', 'dsfgsdfgsdfg', 0, 0, 0, '02/06/2020', 'sdfgsdfgsdgfsdfgdg', 0, 'Nacional', 27),
('afsgafdga', 'dsfgsdfgsdfg', 0, 0, 0, '02/06/2020', 'sdfgsdfgsdgfsdfgdg', 0, 'Nacional', 28),
('afsgafdga', 'dsfgsdfgsdfg', 0, 0, 0, '02/06/2020', 'sdfgsdfgsdgfsdfgdg', 0, 'Nacional', 29),
('asdfasdfas', 'sdfsadfasdf', 0, 0, 0, '02/06/2020', 'sadfasdfasdfasd', 0, 'Deporte', 30),
('asdfasdfas', 'sdfsadfasdf', 0, 0, 0, '02/06/2020', 'sadfasdfasdfasd', 0, 'Deporte', 31),
('sdfsadfasd', 'sdfasfas', 0, 0, 0, '02/06/2020', 'sadfasdfasdfasfdas', 2, 'Internacional', 32),
('sdfsadfasd', 'sdfasfas', 0, 0, 0, '02/06/2020', 'sadfasdfasdfasfdas', 2, 'Internacional', 33),
('sthsghfghfdgh', 'gfhgfdhfdg', 0, 0, 0, '02/06/2020', 'gfhdfghfhfhdf', 1, 'Entretención', 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nombre`, `clave`, `id`) VALUES
('shiny_news@gmail.com', '1234', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
