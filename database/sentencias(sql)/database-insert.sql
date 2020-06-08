-- INSERT TABLA TIPO DE SITIOS

INSERT INTO public.ttipos_sitios(
             nombre_tipo)
    VALUES ('alojamiento');

INSERT INTO public.ttipos_sitios(
             nombre_tipo)
    VALUES ('recreacion');
    
INSERT INTO public.ttipos_sitios(
             nombre_tipo)
    VALUES ('alimentos y bebidas');


--INSERT DE LA TABLA ESTADOS 

INSERT INTO testados (id_estado, nombre_estado) VALUES
(1, 'Amazonas'),
(2, 'Anzoátegui'),
(3, 'Apure'),
(4, 'Aragua'),
(5, 'Barinas'),
(6, 'Bolivar'),
(7, 'Carabobo'),
(8, 'Cojedes'),
(9, 'Delta Amacuro'),
(10, 'Falcón'),
(11, 'Guárico'),
(12, 'Lara'),
(13, 'Mérida'),
(14, 'Miranda'),
(15, 'Monagas'),
(16, 'Nueva Esparta '),
(17, 'Portuguesa '),
(18, 'Sucre  '),
(19, 'Táchira '),
(20, 'Trujillo '),
(21, 'Vargas '),
(22, 'Yaracuy '),
(23, 'Zulia '),
(24, 'Distrito Capital '),
(25, 'Dependencias Federal');

--INSERT DE LA TABLA CIUDADES

INSERT INTO tciudades (id_ciudad, estado_id, nombre_ciudad) VALUES
(1, 1, 'Maroa'),
(2, 1, 'Puerto Ayacucho'),
(3, 1, 'San Fernando de Atabapo'),
(4, 1, 'Anaco'),
(5, 2, 'Aragua de Barcelona'),
(6, 2, 'Barcelona'),
(7, 2, 'Boca de Uchire'),
(8, 2, 'Cantaura'),
(9, 2, 'Clarines'),
(10, 2, 'El Chaparro'),
(11, 2, 'El Pao Anzoátegui'),
(12, 2, 'El Tigre'),
(13, 2, 'El Tigrito'),
(14, 2, 'Guanape'),
(15, 2, 'Guanta'),
(16, 2, 'Lechería'),
(17, 2, 'Onoto'),
(18, 2, 'Pariaguán'),
(19, 2, 'Píritu'),
(20, 2, 'Puerto La Cruz'),
(21, 2, 'Puerto Píritu'),
(22, 2, 'Sabana de Uchire'),
(23, 2, 'San Mateo Anzoátegui'),
(24, 2, 'San Pablo Anzoátegui'),
(25, 2, 'San Tomé'),
(26, 2, 'Santa Ana de Anzoátegui'),
(27, 2, 'Santa Fe Anzoátegui'),
(28, 2, 'Santa Rosa'),
(29, 2, 'Soledad'),
(30, 2, 'Urica'),
(31, 2, 'Valle de Guanape'),
(32, 3, 'Achaguas'),
(33, 3, 'Biruaca'),
(34, 3, 'Bruzual'),
(35, 3, 'El Amparo'),
(36, 3, 'El Nula'),
(37, 3, 'Elorza'),
(38, 3, 'Guasdualito'),
(39, 3, 'Mantecal'),
(40, 3, 'Puerto Páez'),
(41, 3, 'San Fernando de Apure'),
(42, 3, 'San Juan de Payara'),
(43, 4, 'Barbacoas'),
(44, 4, 'Cagua'),
(45, 4, 'Camatagua'),
(46, 4, 'Choroní'),
(47, 4, 'Colonia Tovar'),
(48, 4, 'El Consejo'),
(49, 4, 'La Victoria'),
(50, 4, 'Las Tejerías'),
(51, 4, 'Magdaleno'),
(52, 4, 'Maracay'),
(53, 4, 'Ocumare de La Costa'),
(54, 4, 'Palo Negro'),
(55, 4, 'San Casimiro'),
(56, 4, 'San Mateo'),
(57, 4, 'San Sebastián'),
(58, 4, 'Santa Cruz de Aragua'),
(59, 4, 'Tocorón'),
(60, 4, 'Turmero'),
(61, 4, 'Villa de Cura'),
(62, 4, 'Zuata'),
(63, 5, 'Barinas'),
(64, 5, 'Barinitas'),
(65, 5, 'Barrancas'),
(66, 5, 'Calderas'),
(67, 5, 'Capitanejo'),
(68, 5, 'Ciudad Bolivia'),
(69, 5, 'El Cantón'),
(70, 5, 'Las Veguitas'),
(71, 5, 'Libertad de Barinas'),
(72, 5, 'Sabaneta'),
(73, 5, 'Santa Bárbara de Barinas'),
(74, 5, 'Socopó'),
(75, 6, 'Caicara del Orinoco'),
(76, 6, 'Canaima'),
(77, 6, 'Ciudad Bolívar'),
(78, 6, 'Ciudad Piar'),
(79, 6, 'El Callao'),
(80, 6, 'El Dorado'),
(81, 6, 'El Manteco'),
(82, 6, 'El Palmar'),
(83, 6, 'El Pao'),
(84, 6, 'Guasipati'),
(85, 6, 'Guri'),
(86, 6, 'La Paragua'),
(87, 6, 'Matanzas'),
(88, 6, 'Puerto Ordaz'),
(89, 6, 'San Félix'),
(90, 6, 'Santa Elena de Uairén'),
(91, 6, 'Tumeremo'),
(92, 6, 'Unare'),
(93, 6, 'Upata'),
(94, 7, 'Bejuma'),
(95, 7, 'Belén'),
(96, 7, 'Campo de Carabobo'),
(97, 7, 'Canoabo'),
(98, 7, 'Central Tacarigua'),
(99, 7, 'Chirgua'),
(100, 7, 'Ciudad Alianza'),
(101, 7, 'El Palito'),
(102, 7, 'Guacara'),
(103, 7, 'Guigue'),
(104, 7, 'Las Trincheras'),
(105, 7, 'Los Guayos'),
(106, 7, 'Mariara'),
(107, 7, 'Miranda'),
(108, 7, 'Montalbán'),
(109, 7, 'Morón'),
(110, 7, 'Naguanagua'),
(111, 7, 'Puerto Cabello'),
(112, 7, 'San Joaquín'),
(113, 7, 'Tocuyito'),
(114, 7, 'Urama'),
(115, 7, 'Valencia'),
(116, 7, 'Vigirimita'),
(117, 8, 'Aguirre'),
(118, 8, 'Apartaderos Cojedes'),
(119, 8, 'Arismendi'),
(120, 8, 'Camuriquito'),
(121, 8, 'El Baúl'),
(122, 8, 'El Limón'),
(123, 8, 'El Pao Cojedes'),
(124, 8, 'El Socorro'),
(125, 8, 'La Aguadita'),
(126, 8, 'Las Vegas'),
(127, 8, 'Libertad de Cojedes'),
(128, 8, 'Mapuey'),
(129, 8, 'Piñedo'),
(130, 8, 'Samancito'),
(131, 8, 'San Carlos'),
(132, 8, 'Sucre'),
(133, 8, 'Tinaco'),
(134, 8, 'Tinaquillo'),
(135, 8, 'Vallecito'),
(136, 9, 'Tucupita'),
(137, 24, 'Caracas'),
(138, 24, 'El Junquito'),
(139, 10, 'Adícora'),
(140, 10, 'Boca de Aroa'),
(141, 10, 'Cabure'),
(142, 10, 'Capadare'),
(143, 10, 'Capatárida'),
(144, 10, 'Chichiriviche'),
(145, 10, 'Churuguara'),
(146, 10, 'Coro'),
(147, 10, 'Cumarebo'),
(148, 10, 'Dabajuro'),
(149, 10, 'Judibana'),
(150, 10, 'La Cruz de Taratara'),
(151, 10, 'La Vela de Coro'),
(152, 10, 'Los Taques'),
(153, 10, 'Maparari'),
(154, 10, 'Mene de Mauroa'),
(155, 10, 'Mirimire'),
(156, 10, 'Pedregal'),
(157, 10, 'Píritu Falcón'),
(158, 10, 'Pueblo Nuevo Falcón'),
(159, 10, 'Puerto Cumarebo'),
(160, 10, 'Punta Cardón'),
(161, 10, 'Punto Fijo'),
(162, 10, 'San Juan de Los Cayos'),
(163, 10, 'San Luis'),
(164, 10, 'Santa Ana Falcón'),
(165, 10, 'Santa Cruz De Bucaral'),
(166, 10, 'Tocopero'),
(167, 10, 'Tocuyo de La Costa'),
(168, 10, 'Tucacas'),
(169, 10, 'Yaracal'),
(170, 11, 'Altagracia de Orituco'),
(171, 11, 'Cabruta'),
(172, 11, 'Calabozo'),
(173, 11, 'Camaguán'),
(174, 11, 'Chaguaramas Guárico'),
(175, 11, 'El Socorro'),
(176, 11, 'El Sombrero'),
(177, 11, 'Las Mercedes de Los Llanos'),
(178, 11, 'Lezama'),
(179, 11, 'Onoto'),
(180, 11, 'Ortíz'),
(181, 11, 'San José de Guaribe'),
(182, 11, 'San Juan de Los Morros'),
(183, 11, 'San Rafael de Laya'),
(184, 11, 'Santa María de Ipire'),
(185, 11, 'Tucupido'),
(186, 11, 'Valle de La Pascua'),
(187, 11, 'Zaraza'),
(188, 12, 'Aguada Grande'),
(189, 12, 'Atarigua'),
(190, 12, 'Barquisimeto'),
(191, 12, 'Bobare'),
(192, 12, 'Cabudare'),
(193, 12, 'Carora'),
(194, 12, 'Cubiro'),
(195, 12, 'Cují'),
(196, 12, 'Duaca'),
(197, 12, 'El Manzano'),
(198, 12, 'El Tocuyo'),
(199, 12, 'Guaríco'),
(200, 12, 'Humocaro Alto'),
(201, 12, 'Humocaro Bajo'),
(202, 12, 'La Miel'),
(203, 12, 'Moroturo'),
(204, 12, 'Quíbor'),
(205, 12, 'Río Claro'),
(206, 12, 'Sanare'),
(207, 12, 'Santa Inés'),
(208, 12, 'Sarare'),
(209, 12, 'Siquisique'),
(210, 12, 'Tintorero'),
(211, 13, 'Apartaderos Mérida'),
(212, 13, 'Arapuey'),
(213, 13, 'Bailadores'),
(214, 13, 'Caja Seca'),
(215, 13, 'Canaguá'),
(216, 13, 'Chachopo'),
(217, 13, 'Chiguara'),
(218, 13, 'Ejido'),
(219, 13, 'El Vigía'),
(220, 13, 'La Azulita'),
(221, 13, 'La Playa'),
(222, 13, 'Lagunillas Mérida'),
(223, 13, 'Mérida'),
(224, 13, 'Mesa de Bolívar'),
(225, 13, 'Mucuchíes'),
(226, 13, 'Mucujepe'),
(227, 13, 'Mucuruba'),
(228, 13, 'Nueva Bolivia'),
(229, 13, 'Palmarito'),
(230, 13, 'Pueblo Llano'),
(231, 13, 'Santa Cruz de Mora'),
(232, 13, 'Santa Elena de Arenales'),
(233, 13, 'Santo Domingo'),
(234, 13, 'Tabáy'),
(235, 13, 'Timotes'),
(236, 13, 'Torondoy'),
(237, 13, 'Tovar'),
(238, 13, 'Tucani'),
(239, 13, 'Zea'),
(240, 14, 'Araguita'),
(241, 14, 'Carrizal'),
(242, 14, 'Caucagua'),
(243, 14, 'Chaguaramas Miranda'),
(244, 14, 'Charallave'),
(245, 14, 'Chirimena'),
(246, 14, 'Chuspa'),
(247, 14, 'Cúa'),
(248, 14, 'Cupira'),
(249, 14, 'Curiepe'),
(250, 14, 'El Guapo'),
(251, 14, 'El Jarillo'),
(252, 14, 'Filas de Mariche'),
(253, 14, 'Guarenas'),
(254, 14, 'Guatire'),
(255, 14, 'Higuerote'),
(256, 14, 'Los Anaucos'),
(257, 14, 'Los Teques'),
(258, 14, 'Ocumare del Tuy'),
(259, 14, 'Panaquire'),
(260, 14, 'Paracotos'),
(261, 14, 'Río Chico'),
(262, 14, 'San Antonio de Los Altos'),
(263, 14, 'San Diego de Los Altos'),
(264, 14, 'San Fernando del Guapo'),
(265, 14, 'San Francisco de Yare'),
(266, 14, 'San José de Los Altos'),
(267, 14, 'San José de Río Chico'),
(268, 14, 'San Pedro de Los Altos'),
(269, 14, 'Santa Lucía'),
(270, 14, 'Santa Teresa'),
(271, 14, 'Tacarigua de La Laguna'),
(272, 14, 'Tacarigua de Mamporal'),
(273, 14, 'Tácata'),
(274, 14, 'Turumo'),
(275, 15, 'Aguasay'),
(276, 15, 'Aragua de Maturín'),
(277, 15, 'Barrancas del Orinoco'),
(278, 15, 'Caicara de Maturín'),
(279, 15, 'Caripe'),
(280, 15, 'Caripito'),
(281, 15, 'Chaguaramal'),
(282, 15, 'Chaguaramas Monagas'),
(283, 15, 'El Furrial'),
(284, 15, 'El Tejero'),
(285, 15, 'Jusepín'),
(286, 15, 'La Toscana'),
(287, 15, 'Maturín'),
(288, 15, 'Miraflores'),
(289, 15, 'Punta de Mata'),
(290, 15, 'Quiriquire'),
(291, 15, 'San Antonio de Maturín'),
(292, 15, 'San Vicente Monagas'),
(293, 15, 'Santa Bárbara'),
(294, 15, 'Temblador'),
(295, 15, 'Teresen'),
(296, 15, 'Uracoa'),
(297, 16, 'Altagracia'),
(298, 16, 'Boca de Pozo'),
(299, 16, 'Boca de Río'),
(300, 16, 'El Espinal'),
(301, 16, 'El Valle del Espíritu Santo'),
(302, 16, 'El Yaque'),
(303, 16, 'Juangriego'),
(304, 16, 'La Asunción'),
(305, 16, 'La Guardia'),
(306, 16, 'Pampatar'),
(307, 16, 'Porlamar'),
(308, 16, 'Puerto Fermín'),
(309, 16, 'Punta de Piedras'),
(310, 16, 'San Francisco de Macanao'),
(311, 16, 'San Juan Bautista'),
(312, 16, 'San Pedro de Coche'),
(313, 16, 'Santa Ana de Nueva Esparta'),
(314, 16, 'Villa Rosa'),
(315, 17, 'Acarigua'),
(316, 17, 'Agua Blanca'),
(317, 17, 'Araure'),
(318, 17, 'Biscucuy'),
(319, 17, 'Boconoito'),
(320, 17, 'Campo Elías'),
(321, 17, 'Chabasquén'),
(322, 17, 'Guanare'),
(323, 17, 'Guanarito'),
(324, 17, 'La Aparición'),
(325, 17, 'La Misión'),
(326, 17, 'Mesa de Cavacas'),
(327, 17, 'Ospino'),
(328, 17, 'Papelón'),
(329, 17, 'Payara'),
(330, 17, 'Pimpinela'),
(331, 17, 'Píritu de Portuguesa'),
(332, 17, 'San Rafael de Onoto'),
(333, 17, 'Santa Rosalía'),
(334, 17, 'Turén'),
(335, 18, 'Altos de Sucre'),
(336, 18, 'Araya'),
(337, 18, 'Cariaco'),
(338, 18, 'Carúpano'),
(339, 18, 'Casanay'),
(340, 18, 'Cumaná'),
(341, 18, 'Cumanacoa'),
(342, 18, 'El Morro Puerto Santo'),
(343, 18, 'El Pilar'),
(344, 18, 'El Poblado'),
(345, 18, 'Guaca'),
(346, 18, 'Guiria'),
(347, 18, 'Irapa'),
(348, 18, 'Manicuare'),
(349, 18, 'Mariguitar'),
(350, 18, 'Río Caribe'),
(351, 18, 'San Antonio del Golfo'),
(352, 18, 'San José de Aerocuar'),
(353, 18, 'San Vicente de Sucre'),
(354, 18, 'Santa Fe de Sucre'),
(355, 18, 'Tunapuy'),
(356, 18, 'Yaguaraparo'),
(357, 18, 'Yoco'),
(358, 19, 'Abejales'),
(359, 19, 'Borota'),
(360, 19, 'Bramon'),
(361, 19, 'Capacho'),
(362, 19, 'Colón'),
(363, 19, 'Coloncito'),
(364, 19, 'Cordero'),
(365, 19, 'El Cobre'),
(366, 19, 'El Pinal'),
(367, 19, 'Independencia'),
(368, 19, 'La Fría'),
(369, 19, 'La Grita'),
(370, 19, 'La Pedrera'),
(371, 19, 'La Tendida'),
(372, 19, 'Las Delicias'),
(373, 19, 'Las Hernández'),
(374, 19, 'Lobatera'),
(375, 19, 'Michelena'),
(376, 19, 'Palmira'),
(377, 19, 'Pregonero'),
(378, 19, 'Queniquea'),
(379, 19, 'Rubio'),
(380, 19, 'San Antonio del Tachira'),
(381, 19, 'San Cristobal'),
(382, 19, 'San José de Bolívar'),
(383, 19, 'San Josecito'),
(384, 19, 'San Pedro del Río'),
(385, 19, 'Santa Ana Táchira'),
(386, 19, 'Seboruco'),
(387, 19, 'Táriba'),
(388, 19, 'Umuquena'),
(389, 19, 'Ureña'),
(390, 20, 'Batatal'),
(391, 20, 'Betijoque'),
(392, 20, 'Boconó'),
(393, 20, 'Carache'),
(394, 20, 'Chejende'),
(395, 20, 'Cuicas'),
(396, 20, 'El Dividive'),
(397, 20, 'El Jaguito'),
(398, 20, 'Escuque'),
(399, 20, 'Isnotú'),
(400, 20, 'Jajó'),
(401, 20, 'La Ceiba'),
(402, 20, 'La Concepción de Trujllo'),
(403, 20, 'La Mesa de Esnujaque'),
(404, 20, 'La Puerta'),
(405, 20, 'La Quebrada'),
(406, 20, 'Mendoza Fría'),
(407, 20, 'Meseta de Chimpire'),
(408, 20, 'Monay'),
(409, 20, 'Motatán'),
(410, 20, 'Pampán'),
(411, 20, 'Pampanito'),
(412, 20, 'Sabana de Mendoza'),
(413, 20, 'San Lázaro'),
(414, 20, 'Santa Ana de Trujillo'),
(415, 20, 'Tostós'),
(416, 20, 'Trujillo'),
(417, 20, 'Valera'),
(418, 21, 'Carayaca'),
(419, 21, 'Litoral'),
(420, 25, 'Archipiélago Los Roques'),
(421, 22, 'Aroa'),
(422, 22, 'Boraure'),
(423, 22, 'Campo Elías de Yaracuy'),
(424, 22, 'Chivacoa'),
(425, 22, 'Cocorote'),
(426, 22, 'Farriar'),
(427, 22, 'Guama'),
(428, 22, 'Marín'),
(429, 22, 'Nirgua'),
(430, 22, 'Sabana de Parra'),
(431, 22, 'Salom'),
(432, 22, 'San Felipe'),
(433, 22, 'San Pablo de Yaracuy'),
(434, 22, 'Urachiche'),
(435, 22, 'Yaritagua'),
(436, 22, 'Yumare'),
(437, 23, 'Bachaquero'),
(438, 23, 'Bobures'),
(439, 23, 'Cabimas'),
(440, 23, 'Campo Concepción'),
(441, 23, 'Campo Mara'),
(442, 23, 'Campo Rojo'),
(443, 23, 'Carrasquero'),
(444, 23, 'Casigua'),
(445, 23, 'Chiquinquirá'),
(446, 23, 'Ciudad Ojeda'),
(447, 23, 'El Batey'),
(448, 23, 'El Carmelo'),
(449, 23, 'El Chivo'),
(450, 23, 'El Guayabo'),
(451, 23, 'El Mene'),
(452, 23, 'El Venado'),
(453, 23, 'Encontrados'),
(454, 23, 'Gibraltar'),
(455, 23, 'Isla de Toas'),
(456, 23, 'La Concepción del Zulia'),
(457, 23, 'La Paz'),
(458, 23, 'La Sierrita'),
(459, 23, 'Lagunillas del Zulia'),
(460, 23, 'Las Piedras de Perijá'),
(461, 23, 'Los Cortijos'),
(462, 23, 'Machiques'),
(463, 23, 'Maracaibo'),
(464, 23, 'Mene Grande'),
(465, 23, 'Palmarejo'),
(466, 23, 'Paraguaipoa'),
(467, 23, 'Potrerito'),
(468, 23, 'Pueblo Nuevo del Zulia'),
(469, 23, 'Puertos de Altagracia'),
(470, 23, 'Punta Gorda'),
(471, 23, 'Sabaneta de Palma'),
(472, 23, 'San Francisco'),
(473, 23, 'San José de Perijá'),
(474, 23, 'San Rafael del Moján'),
(475, 23, 'San Timoteo'),
(476, 23, 'Santa Bárbara Del Zulia'),
(477, 23, 'Santa Cruz de Mara'),
(478, 23, 'Santa Cruz del Zulia'),
(479, 23, 'Santa Rita'),
(480, 23, 'Sinamaica'),
(481, 23, 'Tamare'),
(482, 23, 'Tía Juana'),
(483, 23, 'Villa del Rosario'),
(484, 21, 'La Guaira'),
(485, 21, 'Catia La Mar'),
(486, 21, 'Macuto'),
(487, 21, 'Naiguatá'),
(488, 25, 'Archipiélago Los Monjes'),
(489, 25, 'Isla La Tortuga y Cayos adyacentes'),
(490, 25, 'Isla La Sola'),
(491, 25, 'Islas Los Testigos'),
(492, 25, 'Islas Los Frailes'),
(493, 25, 'Isla La Orchila'),
(494, 25, 'Archipiélago Las Aves'),
(495, 25, 'Isla de Aves'),
(496, 25, 'Isla La Blanquilla'),
(497, 25, 'Isla de Patos'),
(498, 25, 'Islas Los Hermanos');


--ESTOS SON INSERT PARA LA TABLA USUARIOS}

INSERT INTO tusuario(
 nombre, apellido, usuario, password, telefono, direccion, correo, rol)
VALUES ( 'ely', 'rivas', 'admin', 'admin', 04165588, 'rastrojito', 'ely@admin.com','1');

INSERT INTO tusuario(
 nombre, apellido, usuario, password, telefono, direccion, correo, rol)
VALUES ( 'manal', 'saleh', 'manal', 'manal', 04165588, 'Sabila', 'manal@amanal.com','2');


-- INSERT SITIO

INSERT INTO tsitios_turisticos(
    rtn, fecha_otorgamiento_rtn, nombre_sitio, rif, direccion_sitio, telefono_sitio, email, facebook, instagram, sitioweb, num_licencia, num_habitacion, latitud, longitud, estado_id, ciudad_id, tipo_id, usuario_id, descripcion, estatus)
VALUES ('7543', '01/03/2011', 'El canto de la Ballena', 'J023482342', 'mandrli', '041623495', 'mandril@gmail.com','facebook', 'instagram', 'asdasd.com', 4234, '9', '6546464', '654654654', '4', '6', '3','1','hola ctm','publicado');

INSERT INTO tsitios_turisticos(
    rtn, fecha_otorgamiento_rtn, nombre_sitio, rif, direccion_sitio, telefono_sitio, email, facebook, instagram, sitioweb, num_licencia, num_habitacion, latitud, longitud, estado_id, ciudad_id, tipo_id, usuario_id, descripcion, estatus)
VALUES ('9283', '05/03/2001', 'TUTI FRUTI', 'J021234342', 'chancletax', '0416123495', 'lachancla@gmail.com','facebook', 'instagram', 'asdasd.com', 4234, '9', '6546464', '654654654', '4', '7', '3','1','hola ctm','publicado');

INSERT INTO tsitios_turisticos(
    rtn, fecha_otorgamiento_rtn, nombre_sitio, rif, direccion_sitio, telefono_sitio, email, facebook, instagram, sitioweb, num_licencia, num_habitacion, latitud, longitud, estado_id, ciudad_id, tipo_id, usuario_id, descripcion, estatus)
VALUES ('2159', '08/05/2006', 'EL MARACUCHO', 'J091144242', 'uptaeb pasi', '0416967235', 'maracucho@gmail.com','facebook', 'instagram', 'asdasd.com', '088', '9', '6546464', '654654654', '7', '3', '3','1','hola ctm','publicado');

INSERT INTO tsitios_turisticos(
    rtn, fecha_otorgamiento_rtn, nombre_sitio, rif, direccion_sitio, telefono_sitio, email, facebook, instagram, sitioweb, num_licencia, num_habitacion, latitud, longitud, estado_id, ciudad_id, tipo_id, usuario_id, descripcion, estatus)
VALUES ('77777', '18/01/2001', 'Posada El encanto', 'J34534242', 'CARORITA', '0416962235', 'maracucho@gmail.com','facebook', 'instagram', 'asdasd.com', '6', '9', '6546464', '654654654', '7', '52', '1','1','hola ctm','publicado');


--INSERT PARA TABLA SERVICIOS

INSERT INTO tservicios(
    nombre_servicio, descripcion)
    VALUES ( 'wifi', 'wifi bolivariano');

INSERT INTO tservicios(
    nombre_servicio, descripcion)
    VALUES ( 'Restaurante', 'Arepa socialista');

INSERT INTO tservicios(
    nombre_servicio, descripcion)
    VALUES ( 'Camas', 'Comodidad');

--INSERT PARA TABLA OFERTAS 

INSERT INTO tofertas(
    nombre_oferta, descripcion, precio, sitio_turistico_id)
    VALUES ( 'Camas', 'Comodidadas como a ti te gustan', 2222, 2);

INSERT INTO tofertas(
    nombre_oferta, descripcion, precio, sitio_turistico_id)
    VALUES ( 'Aguas', 'Agua limpia para bañar al perro', 4312, 2);