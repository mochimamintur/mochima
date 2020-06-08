--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Ubuntu 12.2-2.pgdg18.04+1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-2.pgdg18.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: tciudades; Type: TABLE; Schema: public; Owner: getionador
--

CREATE TABLE public.tciudades (
    id_ciudad integer NOT NULL,
    nombre_ciudad character varying(150) NOT NULL,
    estado_id integer
);


ALTER TABLE public.tciudades OWNER TO getionador;

--
-- Name: tciudades_id_ciudad_seq; Type: SEQUENCE; Schema: public; Owner: getionador
--

CREATE SEQUENCE public.tciudades_id_ciudad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tciudades_id_ciudad_seq OWNER TO getionador;

--
-- Name: tciudades_id_ciudad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: getionador
--

ALTER SEQUENCE public.tciudades_id_ciudad_seq OWNED BY public.tciudades.id_ciudad;


--
-- Name: testados; Type: TABLE; Schema: public; Owner: getionador
--

CREATE TABLE public.testados (
    id_estado integer NOT NULL,
    nombre_estado character varying(150) NOT NULL
);


ALTER TABLE public.testados OWNER TO getionador;

--
-- Name: testados_id_estado_seq; Type: SEQUENCE; Schema: public; Owner: getionador
--

CREATE SEQUENCE public.testados_id_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.testados_id_estado_seq OWNER TO getionador;

--
-- Name: testados_id_estado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: getionador
--

ALTER SEQUENCE public.testados_id_estado_seq OWNED BY public.testados.id_estado;


--
-- Name: tgaleria; Type: TABLE; Schema: public; Owner: getionador
--

CREATE TABLE public.tgaleria (
    id_galeria integer NOT NULL,
    url character varying(150) NOT NULL,
    sitio_turistico_id integer
);


ALTER TABLE public.tgaleria OWNER TO getionador;

--
-- Name: tgaleria_id_galeria_seq; Type: SEQUENCE; Schema: public; Owner: getionador
--

CREATE SEQUENCE public.tgaleria_id_galeria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tgaleria_id_galeria_seq OWNER TO getionador;

--
-- Name: tgaleria_id_galeria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: getionador
--

ALTER SEQUENCE public.tgaleria_id_galeria_seq OWNED BY public.tgaleria.id_galeria;


--
-- Name: ticonos; Type: TABLE; Schema: public; Owner: getionador
--

CREATE TABLE public.ticonos (
    id_icono integer NOT NULL,
    nombre_icono character varying(80) NOT NULL,
    url_icono character varying(150) NOT NULL,
    galeria_id integer
);


ALTER TABLE public.ticonos OWNER TO getionador;

--
-- Name: ticonos_id_icono_seq; Type: SEQUENCE; Schema: public; Owner: getionador
--

CREATE SEQUENCE public.ticonos_id_icono_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticonos_id_icono_seq OWNER TO getionador;

--
-- Name: ticonos_id_icono_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: getionador
--

ALTER SEQUENCE public.ticonos_id_icono_seq OWNED BY public.ticonos.id_icono;


--
-- Name: tofertas; Type: TABLE; Schema: public; Owner: getionador
--

CREATE TABLE public.tofertas (
    id_oferta integer NOT NULL,
    nombre_oferta character varying(60) NOT NULL,
    descripcion character varying(150) NOT NULL,
    precio integer NOT NULL,
    sitio_turistico_id integer
);


ALTER TABLE public.tofertas OWNER TO getionador;

--
-- Name: tofertas_id_oferta_seq; Type: SEQUENCE; Schema: public; Owner: getionador
--

CREATE SEQUENCE public.tofertas_id_oferta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tofertas_id_oferta_seq OWNER TO getionador;

--
-- Name: tofertas_id_oferta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: getionador
--

ALTER SEQUENCE public.tofertas_id_oferta_seq OWNED BY public.tofertas.id_oferta;


--
-- Name: tservicios; Type: TABLE; Schema: public; Owner: getionador
--

CREATE TABLE public.tservicios (
    id_servicio integer NOT NULL,
    nombre_servicio character varying(80) NOT NULL,
    descripcion character varying(200) NOT NULL
);


ALTER TABLE public.tservicios OWNER TO getionador;

--
-- Name: tservicios_id_servicio_seq; Type: SEQUENCE; Schema: public; Owner: getionador
--

CREATE SEQUENCE public.tservicios_id_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tservicios_id_servicio_seq OWNER TO getionador;

--
-- Name: tservicios_id_servicio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: getionador
--

ALTER SEQUENCE public.tservicios_id_servicio_seq OWNED BY public.tservicios.id_servicio;


--
-- Name: tsitios_servicios; Type: TABLE; Schema: public; Owner: getionador
--

CREATE TABLE public.tsitios_servicios (
    id_sitios_servicios integer NOT NULL,
    sitio_id integer NOT NULL,
    servicio_id integer NOT NULL
);


ALTER TABLE public.tsitios_servicios OWNER TO getionador;

--
-- Name: tsitios_servicios_id_sitios_servicios_seq; Type: SEQUENCE; Schema: public; Owner: getionador
--

CREATE SEQUENCE public.tsitios_servicios_id_sitios_servicios_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tsitios_servicios_id_sitios_servicios_seq OWNER TO getionador;

--
-- Name: tsitios_servicios_id_sitios_servicios_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: getionador
--

ALTER SEQUENCE public.tsitios_servicios_id_sitios_servicios_seq OWNED BY public.tsitios_servicios.id_sitios_servicios;


--
-- Name: tsitios_turisticos; Type: TABLE; Schema: public; Owner: getionador
--

CREATE TABLE public.tsitios_turisticos (
    id_sitio integer NOT NULL,
    rtn character varying(20) NOT NULL,
    fecha_otorgamiento_rtn date NOT NULL,
    nombre_sitio character varying(50) NOT NULL,
    rif character varying(30) NOT NULL,
    direccion_sitio character varying(150) NOT NULL,
    telefono_sitio character varying(20) NOT NULL,
    email character varying(50) NOT NULL,
    facebook character varying(150),
    instagram character varying(150),
    sitioweb character varying(150),
    num_licencia character varying(30),
    num_habitacion integer,
    latitud character varying(50),
    longitud character varying(50),
    estado_id integer,
    ciudad_id integer,
    tipo_id integer,
    usuario_id integer,
    descripcion character varying(150),
    estatus character varying(20)
);


ALTER TABLE public.tsitios_turisticos OWNER TO getionador;

--
-- Name: tsitios_turisticos_id_sitio_seq; Type: SEQUENCE; Schema: public; Owner: getionador
--

CREATE SEQUENCE public.tsitios_turisticos_id_sitio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tsitios_turisticos_id_sitio_seq OWNER TO getionador;

--
-- Name: tsitios_turisticos_id_sitio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: getionador
--

ALTER SEQUENCE public.tsitios_turisticos_id_sitio_seq OWNED BY public.tsitios_turisticos.id_sitio;


--
-- Name: ttipos_sitios; Type: TABLE; Schema: public; Owner: getionador
--

CREATE TABLE public.ttipos_sitios (
    id_tipo integer NOT NULL,
    nombre_tipo character varying(150) NOT NULL
);


ALTER TABLE public.ttipos_sitios OWNER TO getionador;

--
-- Name: ttipos_sitios_id_tipo_seq; Type: SEQUENCE; Schema: public; Owner: getionador
--

CREATE SEQUENCE public.ttipos_sitios_id_tipo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ttipos_sitios_id_tipo_seq OWNER TO getionador;

--
-- Name: ttipos_sitios_id_tipo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: getionador
--

ALTER SEQUENCE public.ttipos_sitios_id_tipo_seq OWNED BY public.ttipos_sitios.id_tipo;


--
-- Name: tusuario; Type: TABLE; Schema: public; Owner: getionador
--

CREATE TABLE public.tusuario (
    id_usuario integer NOT NULL,
    nombre character varying(30) NOT NULL,
    apellido character varying(30) NOT NULL,
    usuario character varying(15) NOT NULL,
    password character varying(15) NOT NULL,
    telefono character varying(15) NOT NULL,
    direccion character varying(150) NOT NULL,
    correo character varying(50) NOT NULL,
    rol character varying(10) NOT NULL
);


ALTER TABLE public.tusuario OWNER TO getionador;

--
-- Name: tusuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: getionador
--

CREATE SEQUENCE public.tusuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tusuario_id_usuario_seq OWNER TO getionador;

--
-- Name: tusuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: getionador
--

ALTER SEQUENCE public.tusuario_id_usuario_seq OWNED BY public.tusuario.id_usuario;


--
-- Name: tciudades id_ciudad; Type: DEFAULT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tciudades ALTER COLUMN id_ciudad SET DEFAULT nextval('public.tciudades_id_ciudad_seq'::regclass);


--
-- Name: testados id_estado; Type: DEFAULT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.testados ALTER COLUMN id_estado SET DEFAULT nextval('public.testados_id_estado_seq'::regclass);


--
-- Name: tgaleria id_galeria; Type: DEFAULT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tgaleria ALTER COLUMN id_galeria SET DEFAULT nextval('public.tgaleria_id_galeria_seq'::regclass);


--
-- Name: ticonos id_icono; Type: DEFAULT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.ticonos ALTER COLUMN id_icono SET DEFAULT nextval('public.ticonos_id_icono_seq'::regclass);


--
-- Name: tofertas id_oferta; Type: DEFAULT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tofertas ALTER COLUMN id_oferta SET DEFAULT nextval('public.tofertas_id_oferta_seq'::regclass);


--
-- Name: tservicios id_servicio; Type: DEFAULT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tservicios ALTER COLUMN id_servicio SET DEFAULT nextval('public.tservicios_id_servicio_seq'::regclass);


--
-- Name: tsitios_servicios id_sitios_servicios; Type: DEFAULT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tsitios_servicios ALTER COLUMN id_sitios_servicios SET DEFAULT nextval('public.tsitios_servicios_id_sitios_servicios_seq'::regclass);


--
-- Name: tsitios_turisticos id_sitio; Type: DEFAULT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tsitios_turisticos ALTER COLUMN id_sitio SET DEFAULT nextval('public.tsitios_turisticos_id_sitio_seq'::regclass);


--
-- Name: ttipos_sitios id_tipo; Type: DEFAULT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.ttipos_sitios ALTER COLUMN id_tipo SET DEFAULT nextval('public.ttipos_sitios_id_tipo_seq'::regclass);


--
-- Name: tusuario id_usuario; Type: DEFAULT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tusuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.tusuario_id_usuario_seq'::regclass);


--
-- Data for Name: tciudades; Type: TABLE DATA; Schema: public; Owner: getionador
--

INSERT INTO public.tciudades VALUES (1, 'Maroa', 1);
INSERT INTO public.tciudades VALUES (2, 'Puerto Ayacucho', 1);
INSERT INTO public.tciudades VALUES (3, 'San Fernando de Atabapo', 1);
INSERT INTO public.tciudades VALUES (4, 'Anaco', 1);
INSERT INTO public.tciudades VALUES (5, 'Aragua de Barcelona', 2);
INSERT INTO public.tciudades VALUES (6, 'Barcelona', 2);
INSERT INTO public.tciudades VALUES (7, 'Boca de Uchire', 2);
INSERT INTO public.tciudades VALUES (8, 'Cantaura', 2);
INSERT INTO public.tciudades VALUES (9, 'Clarines', 2);
INSERT INTO public.tciudades VALUES (10, 'El Chaparro', 2);
INSERT INTO public.tciudades VALUES (11, 'El Pao Anzoátegui', 2);
INSERT INTO public.tciudades VALUES (12, 'El Tigre', 2);
INSERT INTO public.tciudades VALUES (13, 'El Tigrito', 2);
INSERT INTO public.tciudades VALUES (14, 'Guanape', 2);
INSERT INTO public.tciudades VALUES (15, 'Guanta', 2);
INSERT INTO public.tciudades VALUES (16, 'Lechería', 2);
INSERT INTO public.tciudades VALUES (17, 'Onoto', 2);
INSERT INTO public.tciudades VALUES (18, 'Pariaguán', 2);
INSERT INTO public.tciudades VALUES (19, 'Píritu', 2);
INSERT INTO public.tciudades VALUES (20, 'Puerto La Cruz', 2);
INSERT INTO public.tciudades VALUES (21, 'Puerto Píritu', 2);
INSERT INTO public.tciudades VALUES (22, 'Sabana de Uchire', 2);
INSERT INTO public.tciudades VALUES (23, 'San Mateo Anzoátegui', 2);
INSERT INTO public.tciudades VALUES (24, 'San Pablo Anzoátegui', 2);
INSERT INTO public.tciudades VALUES (25, 'San Tomé', 2);
INSERT INTO public.tciudades VALUES (26, 'Santa Ana de Anzoátegui', 2);
INSERT INTO public.tciudades VALUES (27, 'Santa Fe Anzoátegui', 2);
INSERT INTO public.tciudades VALUES (28, 'Santa Rosa', 2);
INSERT INTO public.tciudades VALUES (29, 'Soledad', 2);
INSERT INTO public.tciudades VALUES (30, 'Urica', 2);
INSERT INTO public.tciudades VALUES (31, 'Valle de Guanape', 2);
INSERT INTO public.tciudades VALUES (32, 'Achaguas', 3);
INSERT INTO public.tciudades VALUES (33, 'Biruaca', 3);
INSERT INTO public.tciudades VALUES (34, 'Bruzual', 3);
INSERT INTO public.tciudades VALUES (35, 'El Amparo', 3);
INSERT INTO public.tciudades VALUES (36, 'El Nula', 3);
INSERT INTO public.tciudades VALUES (37, 'Elorza', 3);
INSERT INTO public.tciudades VALUES (38, 'Guasdualito', 3);
INSERT INTO public.tciudades VALUES (39, 'Mantecal', 3);
INSERT INTO public.tciudades VALUES (40, 'Puerto Páez', 3);
INSERT INTO public.tciudades VALUES (41, 'San Fernando de Apure', 3);
INSERT INTO public.tciudades VALUES (42, 'San Juan de Payara', 3);
INSERT INTO public.tciudades VALUES (43, 'Barbacoas', 4);
INSERT INTO public.tciudades VALUES (44, 'Cagua', 4);
INSERT INTO public.tciudades VALUES (45, 'Camatagua', 4);
INSERT INTO public.tciudades VALUES (46, 'Choroní', 4);
INSERT INTO public.tciudades VALUES (47, 'Colonia Tovar', 4);
INSERT INTO public.tciudades VALUES (48, 'El Consejo', 4);
INSERT INTO public.tciudades VALUES (49, 'La Victoria', 4);
INSERT INTO public.tciudades VALUES (50, 'Las Tejerías', 4);
INSERT INTO public.tciudades VALUES (51, 'Magdaleno', 4);
INSERT INTO public.tciudades VALUES (52, 'Maracay', 4);
INSERT INTO public.tciudades VALUES (53, 'Ocumare de La Costa', 4);
INSERT INTO public.tciudades VALUES (54, 'Palo Negro', 4);
INSERT INTO public.tciudades VALUES (55, 'San Casimiro', 4);
INSERT INTO public.tciudades VALUES (56, 'San Mateo', 4);
INSERT INTO public.tciudades VALUES (57, 'San Sebastián', 4);
INSERT INTO public.tciudades VALUES (58, 'Santa Cruz de Aragua', 4);
INSERT INTO public.tciudades VALUES (59, 'Tocorón', 4);
INSERT INTO public.tciudades VALUES (60, 'Turmero', 4);
INSERT INTO public.tciudades VALUES (61, 'Villa de Cura', 4);
INSERT INTO public.tciudades VALUES (62, 'Zuata', 4);
INSERT INTO public.tciudades VALUES (63, 'Barinas', 5);
INSERT INTO public.tciudades VALUES (64, 'Barinitas', 5);
INSERT INTO public.tciudades VALUES (65, 'Barrancas', 5);
INSERT INTO public.tciudades VALUES (66, 'Calderas', 5);
INSERT INTO public.tciudades VALUES (67, 'Capitanejo', 5);
INSERT INTO public.tciudades VALUES (68, 'Ciudad Bolivia', 5);
INSERT INTO public.tciudades VALUES (69, 'El Cantón', 5);
INSERT INTO public.tciudades VALUES (70, 'Las Veguitas', 5);
INSERT INTO public.tciudades VALUES (71, 'Libertad de Barinas', 5);
INSERT INTO public.tciudades VALUES (72, 'Sabaneta', 5);
INSERT INTO public.tciudades VALUES (73, 'Santa Bárbara de Barinas', 5);
INSERT INTO public.tciudades VALUES (74, 'Socopó', 5);
INSERT INTO public.tciudades VALUES (75, 'Caicara del Orinoco', 6);
INSERT INTO public.tciudades VALUES (76, 'Canaima', 6);
INSERT INTO public.tciudades VALUES (77, 'Ciudad Bolívar', 6);
INSERT INTO public.tciudades VALUES (78, 'Ciudad Piar', 6);
INSERT INTO public.tciudades VALUES (79, 'El Callao', 6);
INSERT INTO public.tciudades VALUES (80, 'El Dorado', 6);
INSERT INTO public.tciudades VALUES (81, 'El Manteco', 6);
INSERT INTO public.tciudades VALUES (82, 'El Palmar', 6);
INSERT INTO public.tciudades VALUES (83, 'El Pao', 6);
INSERT INTO public.tciudades VALUES (84, 'Guasipati', 6);
INSERT INTO public.tciudades VALUES (85, 'Guri', 6);
INSERT INTO public.tciudades VALUES (86, 'La Paragua', 6);
INSERT INTO public.tciudades VALUES (87, 'Matanzas', 6);
INSERT INTO public.tciudades VALUES (88, 'Puerto Ordaz', 6);
INSERT INTO public.tciudades VALUES (89, 'San Félix', 6);
INSERT INTO public.tciudades VALUES (90, 'Santa Elena de Uairén', 6);
INSERT INTO public.tciudades VALUES (91, 'Tumeremo', 6);
INSERT INTO public.tciudades VALUES (92, 'Unare', 6);
INSERT INTO public.tciudades VALUES (93, 'Upata', 6);
INSERT INTO public.tciudades VALUES (94, 'Bejuma', 7);
INSERT INTO public.tciudades VALUES (95, 'Belén', 7);
INSERT INTO public.tciudades VALUES (96, 'Campo de Carabobo', 7);
INSERT INTO public.tciudades VALUES (97, 'Canoabo', 7);
INSERT INTO public.tciudades VALUES (98, 'Central Tacarigua', 7);
INSERT INTO public.tciudades VALUES (99, 'Chirgua', 7);
INSERT INTO public.tciudades VALUES (100, 'Ciudad Alianza', 7);
INSERT INTO public.tciudades VALUES (101, 'El Palito', 7);
INSERT INTO public.tciudades VALUES (102, 'Guacara', 7);
INSERT INTO public.tciudades VALUES (103, 'Guigue', 7);
INSERT INTO public.tciudades VALUES (104, 'Las Trincheras', 7);
INSERT INTO public.tciudades VALUES (105, 'Los Guayos', 7);
INSERT INTO public.tciudades VALUES (106, 'Mariara', 7);
INSERT INTO public.tciudades VALUES (107, 'Miranda', 7);
INSERT INTO public.tciudades VALUES (108, 'Montalbán', 7);
INSERT INTO public.tciudades VALUES (109, 'Morón', 7);
INSERT INTO public.tciudades VALUES (110, 'Naguanagua', 7);
INSERT INTO public.tciudades VALUES (111, 'Puerto Cabello', 7);
INSERT INTO public.tciudades VALUES (112, 'San Joaquín', 7);
INSERT INTO public.tciudades VALUES (113, 'Tocuyito', 7);
INSERT INTO public.tciudades VALUES (114, 'Urama', 7);
INSERT INTO public.tciudades VALUES (115, 'Valencia', 7);
INSERT INTO public.tciudades VALUES (116, 'Vigirimita', 7);
INSERT INTO public.tciudades VALUES (117, 'Aguirre', 8);
INSERT INTO public.tciudades VALUES (118, 'Apartaderos Cojedes', 8);
INSERT INTO public.tciudades VALUES (119, 'Arismendi', 8);
INSERT INTO public.tciudades VALUES (120, 'Camuriquito', 8);
INSERT INTO public.tciudades VALUES (121, 'El Baúl', 8);
INSERT INTO public.tciudades VALUES (122, 'El Limón', 8);
INSERT INTO public.tciudades VALUES (123, 'El Pao Cojedes', 8);
INSERT INTO public.tciudades VALUES (124, 'El Socorro', 8);
INSERT INTO public.tciudades VALUES (125, 'La Aguadita', 8);
INSERT INTO public.tciudades VALUES (126, 'Las Vegas', 8);
INSERT INTO public.tciudades VALUES (127, 'Libertad de Cojedes', 8);
INSERT INTO public.tciudades VALUES (128, 'Mapuey', 8);
INSERT INTO public.tciudades VALUES (129, 'Piñedo', 8);
INSERT INTO public.tciudades VALUES (130, 'Samancito', 8);
INSERT INTO public.tciudades VALUES (131, 'San Carlos', 8);
INSERT INTO public.tciudades VALUES (132, 'Sucre', 8);
INSERT INTO public.tciudades VALUES (133, 'Tinaco', 8);
INSERT INTO public.tciudades VALUES (134, 'Tinaquillo', 8);
INSERT INTO public.tciudades VALUES (135, 'Vallecito', 8);
INSERT INTO public.tciudades VALUES (136, 'Tucupita', 9);
INSERT INTO public.tciudades VALUES (137, 'Caracas', 24);
INSERT INTO public.tciudades VALUES (138, 'El Junquito', 24);
INSERT INTO public.tciudades VALUES (139, 'Adícora', 10);
INSERT INTO public.tciudades VALUES (140, 'Boca de Aroa', 10);
INSERT INTO public.tciudades VALUES (141, 'Cabure', 10);
INSERT INTO public.tciudades VALUES (142, 'Capadare', 10);
INSERT INTO public.tciudades VALUES (143, 'Capatárida', 10);
INSERT INTO public.tciudades VALUES (144, 'Chichiriviche', 10);
INSERT INTO public.tciudades VALUES (145, 'Churuguara', 10);
INSERT INTO public.tciudades VALUES (146, 'Coro', 10);
INSERT INTO public.tciudades VALUES (147, 'Cumarebo', 10);
INSERT INTO public.tciudades VALUES (148, 'Dabajuro', 10);
INSERT INTO public.tciudades VALUES (149, 'Judibana', 10);
INSERT INTO public.tciudades VALUES (150, 'La Cruz de Taratara', 10);
INSERT INTO public.tciudades VALUES (151, 'La Vela de Coro', 10);
INSERT INTO public.tciudades VALUES (152, 'Los Taques', 10);
INSERT INTO public.tciudades VALUES (153, 'Maparari', 10);
INSERT INTO public.tciudades VALUES (154, 'Mene de Mauroa', 10);
INSERT INTO public.tciudades VALUES (155, 'Mirimire', 10);
INSERT INTO public.tciudades VALUES (156, 'Pedregal', 10);
INSERT INTO public.tciudades VALUES (157, 'Píritu Falcón', 10);
INSERT INTO public.tciudades VALUES (158, 'Pueblo Nuevo Falcón', 10);
INSERT INTO public.tciudades VALUES (159, 'Puerto Cumarebo', 10);
INSERT INTO public.tciudades VALUES (160, 'Punta Cardón', 10);
INSERT INTO public.tciudades VALUES (161, 'Punto Fijo', 10);
INSERT INTO public.tciudades VALUES (162, 'San Juan de Los Cayos', 10);
INSERT INTO public.tciudades VALUES (163, 'San Luis', 10);
INSERT INTO public.tciudades VALUES (164, 'Santa Ana Falcón', 10);
INSERT INTO public.tciudades VALUES (165, 'Santa Cruz De Bucaral', 10);
INSERT INTO public.tciudades VALUES (166, 'Tocopero', 10);
INSERT INTO public.tciudades VALUES (167, 'Tocuyo de La Costa', 10);
INSERT INTO public.tciudades VALUES (168, 'Tucacas', 10);
INSERT INTO public.tciudades VALUES (169, 'Yaracal', 10);
INSERT INTO public.tciudades VALUES (170, 'Altagracia de Orituco', 11);
INSERT INTO public.tciudades VALUES (171, 'Cabruta', 11);
INSERT INTO public.tciudades VALUES (172, 'Calabozo', 11);
INSERT INTO public.tciudades VALUES (173, 'Camaguán', 11);
INSERT INTO public.tciudades VALUES (174, 'Chaguaramas Guárico', 11);
INSERT INTO public.tciudades VALUES (175, 'El Socorro', 11);
INSERT INTO public.tciudades VALUES (176, 'El Sombrero', 11);
INSERT INTO public.tciudades VALUES (177, 'Las Mercedes de Los Llanos', 11);
INSERT INTO public.tciudades VALUES (178, 'Lezama', 11);
INSERT INTO public.tciudades VALUES (179, 'Onoto', 11);
INSERT INTO public.tciudades VALUES (180, 'Ortíz', 11);
INSERT INTO public.tciudades VALUES (181, 'San José de Guaribe', 11);
INSERT INTO public.tciudades VALUES (182, 'San Juan de Los Morros', 11);
INSERT INTO public.tciudades VALUES (183, 'San Rafael de Laya', 11);
INSERT INTO public.tciudades VALUES (184, 'Santa María de Ipire', 11);
INSERT INTO public.tciudades VALUES (185, 'Tucupido', 11);
INSERT INTO public.tciudades VALUES (186, 'Valle de La Pascua', 11);
INSERT INTO public.tciudades VALUES (187, 'Zaraza', 11);
INSERT INTO public.tciudades VALUES (188, 'Aguada Grande', 12);
INSERT INTO public.tciudades VALUES (189, 'Atarigua', 12);
INSERT INTO public.tciudades VALUES (190, 'Barquisimeto', 12);
INSERT INTO public.tciudades VALUES (191, 'Bobare', 12);
INSERT INTO public.tciudades VALUES (192, 'Cabudare', 12);
INSERT INTO public.tciudades VALUES (193, 'Carora', 12);
INSERT INTO public.tciudades VALUES (194, 'Cubiro', 12);
INSERT INTO public.tciudades VALUES (195, 'Cují', 12);
INSERT INTO public.tciudades VALUES (196, 'Duaca', 12);
INSERT INTO public.tciudades VALUES (197, 'El Manzano', 12);
INSERT INTO public.tciudades VALUES (198, 'El Tocuyo', 12);
INSERT INTO public.tciudades VALUES (199, 'Guaríco', 12);
INSERT INTO public.tciudades VALUES (200, 'Humocaro Alto', 12);
INSERT INTO public.tciudades VALUES (201, 'Humocaro Bajo', 12);
INSERT INTO public.tciudades VALUES (202, 'La Miel', 12);
INSERT INTO public.tciudades VALUES (203, 'Moroturo', 12);
INSERT INTO public.tciudades VALUES (204, 'Quíbor', 12);
INSERT INTO public.tciudades VALUES (205, 'Río Claro', 12);
INSERT INTO public.tciudades VALUES (206, 'Sanare', 12);
INSERT INTO public.tciudades VALUES (207, 'Santa Inés', 12);
INSERT INTO public.tciudades VALUES (208, 'Sarare', 12);
INSERT INTO public.tciudades VALUES (209, 'Siquisique', 12);
INSERT INTO public.tciudades VALUES (210, 'Tintorero', 12);
INSERT INTO public.tciudades VALUES (211, 'Apartaderos Mérida', 13);
INSERT INTO public.tciudades VALUES (212, 'Arapuey', 13);
INSERT INTO public.tciudades VALUES (213, 'Bailadores', 13);
INSERT INTO public.tciudades VALUES (214, 'Caja Seca', 13);
INSERT INTO public.tciudades VALUES (215, 'Canaguá', 13);
INSERT INTO public.tciudades VALUES (216, 'Chachopo', 13);
INSERT INTO public.tciudades VALUES (217, 'Chiguara', 13);
INSERT INTO public.tciudades VALUES (218, 'Ejido', 13);
INSERT INTO public.tciudades VALUES (219, 'El Vigía', 13);
INSERT INTO public.tciudades VALUES (220, 'La Azulita', 13);
INSERT INTO public.tciudades VALUES (221, 'La Playa', 13);
INSERT INTO public.tciudades VALUES (222, 'Lagunillas Mérida', 13);
INSERT INTO public.tciudades VALUES (223, 'Mérida', 13);
INSERT INTO public.tciudades VALUES (224, 'Mesa de Bolívar', 13);
INSERT INTO public.tciudades VALUES (225, 'Mucuchíes', 13);
INSERT INTO public.tciudades VALUES (226, 'Mucujepe', 13);
INSERT INTO public.tciudades VALUES (227, 'Mucuruba', 13);
INSERT INTO public.tciudades VALUES (228, 'Nueva Bolivia', 13);
INSERT INTO public.tciudades VALUES (229, 'Palmarito', 13);
INSERT INTO public.tciudades VALUES (230, 'Pueblo Llano', 13);
INSERT INTO public.tciudades VALUES (231, 'Santa Cruz de Mora', 13);
INSERT INTO public.tciudades VALUES (232, 'Santa Elena de Arenales', 13);
INSERT INTO public.tciudades VALUES (233, 'Santo Domingo', 13);
INSERT INTO public.tciudades VALUES (234, 'Tabáy', 13);
INSERT INTO public.tciudades VALUES (235, 'Timotes', 13);
INSERT INTO public.tciudades VALUES (236, 'Torondoy', 13);
INSERT INTO public.tciudades VALUES (237, 'Tovar', 13);
INSERT INTO public.tciudades VALUES (238, 'Tucani', 13);
INSERT INTO public.tciudades VALUES (239, 'Zea', 13);
INSERT INTO public.tciudades VALUES (240, 'Araguita', 14);
INSERT INTO public.tciudades VALUES (241, 'Carrizal', 14);
INSERT INTO public.tciudades VALUES (242, 'Caucagua', 14);
INSERT INTO public.tciudades VALUES (243, 'Chaguaramas Miranda', 14);
INSERT INTO public.tciudades VALUES (244, 'Charallave', 14);
INSERT INTO public.tciudades VALUES (245, 'Chirimena', 14);
INSERT INTO public.tciudades VALUES (246, 'Chuspa', 14);
INSERT INTO public.tciudades VALUES (247, 'Cúa', 14);
INSERT INTO public.tciudades VALUES (248, 'Cupira', 14);
INSERT INTO public.tciudades VALUES (249, 'Curiepe', 14);
INSERT INTO public.tciudades VALUES (250, 'El Guapo', 14);
INSERT INTO public.tciudades VALUES (251, 'El Jarillo', 14);
INSERT INTO public.tciudades VALUES (252, 'Filas de Mariche', 14);
INSERT INTO public.tciudades VALUES (253, 'Guarenas', 14);
INSERT INTO public.tciudades VALUES (254, 'Guatire', 14);
INSERT INTO public.tciudades VALUES (255, 'Higuerote', 14);
INSERT INTO public.tciudades VALUES (256, 'Los Anaucos', 14);
INSERT INTO public.tciudades VALUES (257, 'Los Teques', 14);
INSERT INTO public.tciudades VALUES (258, 'Ocumare del Tuy', 14);
INSERT INTO public.tciudades VALUES (259, 'Panaquire', 14);
INSERT INTO public.tciudades VALUES (260, 'Paracotos', 14);
INSERT INTO public.tciudades VALUES (261, 'Río Chico', 14);
INSERT INTO public.tciudades VALUES (262, 'San Antonio de Los Altos', 14);
INSERT INTO public.tciudades VALUES (263, 'San Diego de Los Altos', 14);
INSERT INTO public.tciudades VALUES (264, 'San Fernando del Guapo', 14);
INSERT INTO public.tciudades VALUES (265, 'San Francisco de Yare', 14);
INSERT INTO public.tciudades VALUES (266, 'San José de Los Altos', 14);
INSERT INTO public.tciudades VALUES (267, 'San José de Río Chico', 14);
INSERT INTO public.tciudades VALUES (268, 'San Pedro de Los Altos', 14);
INSERT INTO public.tciudades VALUES (269, 'Santa Lucía', 14);
INSERT INTO public.tciudades VALUES (270, 'Santa Teresa', 14);
INSERT INTO public.tciudades VALUES (271, 'Tacarigua de La Laguna', 14);
INSERT INTO public.tciudades VALUES (272, 'Tacarigua de Mamporal', 14);
INSERT INTO public.tciudades VALUES (273, 'Tácata', 14);
INSERT INTO public.tciudades VALUES (274, 'Turumo', 14);
INSERT INTO public.tciudades VALUES (275, 'Aguasay', 15);
INSERT INTO public.tciudades VALUES (276, 'Aragua de Maturín', 15);
INSERT INTO public.tciudades VALUES (277, 'Barrancas del Orinoco', 15);
INSERT INTO public.tciudades VALUES (278, 'Caicara de Maturín', 15);
INSERT INTO public.tciudades VALUES (279, 'Caripe', 15);
INSERT INTO public.tciudades VALUES (280, 'Caripito', 15);
INSERT INTO public.tciudades VALUES (281, 'Chaguaramal', 15);
INSERT INTO public.tciudades VALUES (282, 'Chaguaramas Monagas', 15);
INSERT INTO public.tciudades VALUES (283, 'El Furrial', 15);
INSERT INTO public.tciudades VALUES (284, 'El Tejero', 15);
INSERT INTO public.tciudades VALUES (285, 'Jusepín', 15);
INSERT INTO public.tciudades VALUES (286, 'La Toscana', 15);
INSERT INTO public.tciudades VALUES (287, 'Maturín', 15);
INSERT INTO public.tciudades VALUES (288, 'Miraflores', 15);
INSERT INTO public.tciudades VALUES (289, 'Punta de Mata', 15);
INSERT INTO public.tciudades VALUES (290, 'Quiriquire', 15);
INSERT INTO public.tciudades VALUES (291, 'San Antonio de Maturín', 15);
INSERT INTO public.tciudades VALUES (292, 'San Vicente Monagas', 15);
INSERT INTO public.tciudades VALUES (293, 'Santa Bárbara', 15);
INSERT INTO public.tciudades VALUES (294, 'Temblador', 15);
INSERT INTO public.tciudades VALUES (295, 'Teresen', 15);
INSERT INTO public.tciudades VALUES (296, 'Uracoa', 15);
INSERT INTO public.tciudades VALUES (297, 'Altagracia', 16);
INSERT INTO public.tciudades VALUES (298, 'Boca de Pozo', 16);
INSERT INTO public.tciudades VALUES (299, 'Boca de Río', 16);
INSERT INTO public.tciudades VALUES (300, 'El Espinal', 16);
INSERT INTO public.tciudades VALUES (301, 'El Valle del Espíritu Santo', 16);
INSERT INTO public.tciudades VALUES (302, 'El Yaque', 16);
INSERT INTO public.tciudades VALUES (303, 'Juangriego', 16);
INSERT INTO public.tciudades VALUES (304, 'La Asunción', 16);
INSERT INTO public.tciudades VALUES (305, 'La Guardia', 16);
INSERT INTO public.tciudades VALUES (306, 'Pampatar', 16);
INSERT INTO public.tciudades VALUES (307, 'Porlamar', 16);
INSERT INTO public.tciudades VALUES (308, 'Puerto Fermín', 16);
INSERT INTO public.tciudades VALUES (309, 'Punta de Piedras', 16);
INSERT INTO public.tciudades VALUES (310, 'San Francisco de Macanao', 16);
INSERT INTO public.tciudades VALUES (311, 'San Juan Bautista', 16);
INSERT INTO public.tciudades VALUES (312, 'San Pedro de Coche', 16);
INSERT INTO public.tciudades VALUES (313, 'Santa Ana de Nueva Esparta', 16);
INSERT INTO public.tciudades VALUES (314, 'Villa Rosa', 16);
INSERT INTO public.tciudades VALUES (315, 'Acarigua', 17);
INSERT INTO public.tciudades VALUES (316, 'Agua Blanca', 17);
INSERT INTO public.tciudades VALUES (317, 'Araure', 17);
INSERT INTO public.tciudades VALUES (318, 'Biscucuy', 17);
INSERT INTO public.tciudades VALUES (319, 'Boconoito', 17);
INSERT INTO public.tciudades VALUES (320, 'Campo Elías', 17);
INSERT INTO public.tciudades VALUES (321, 'Chabasquén', 17);
INSERT INTO public.tciudades VALUES (322, 'Guanare', 17);
INSERT INTO public.tciudades VALUES (323, 'Guanarito', 17);
INSERT INTO public.tciudades VALUES (324, 'La Aparición', 17);
INSERT INTO public.tciudades VALUES (325, 'La Misión', 17);
INSERT INTO public.tciudades VALUES (326, 'Mesa de Cavacas', 17);
INSERT INTO public.tciudades VALUES (327, 'Ospino', 17);
INSERT INTO public.tciudades VALUES (328, 'Papelón', 17);
INSERT INTO public.tciudades VALUES (329, 'Payara', 17);
INSERT INTO public.tciudades VALUES (330, 'Pimpinela', 17);
INSERT INTO public.tciudades VALUES (331, 'Píritu de Portuguesa', 17);
INSERT INTO public.tciudades VALUES (332, 'San Rafael de Onoto', 17);
INSERT INTO public.tciudades VALUES (333, 'Santa Rosalía', 17);
INSERT INTO public.tciudades VALUES (334, 'Turén', 17);
INSERT INTO public.tciudades VALUES (335, 'Altos de Sucre', 18);
INSERT INTO public.tciudades VALUES (336, 'Araya', 18);
INSERT INTO public.tciudades VALUES (337, 'Cariaco', 18);
INSERT INTO public.tciudades VALUES (338, 'Carúpano', 18);
INSERT INTO public.tciudades VALUES (339, 'Casanay', 18);
INSERT INTO public.tciudades VALUES (340, 'Cumaná', 18);
INSERT INTO public.tciudades VALUES (341, 'Cumanacoa', 18);
INSERT INTO public.tciudades VALUES (342, 'El Morro Puerto Santo', 18);
INSERT INTO public.tciudades VALUES (343, 'El Pilar', 18);
INSERT INTO public.tciudades VALUES (344, 'El Poblado', 18);
INSERT INTO public.tciudades VALUES (345, 'Guaca', 18);
INSERT INTO public.tciudades VALUES (346, 'Guiria', 18);
INSERT INTO public.tciudades VALUES (347, 'Irapa', 18);
INSERT INTO public.tciudades VALUES (348, 'Manicuare', 18);
INSERT INTO public.tciudades VALUES (349, 'Mariguitar', 18);
INSERT INTO public.tciudades VALUES (350, 'Río Caribe', 18);
INSERT INTO public.tciudades VALUES (351, 'San Antonio del Golfo', 18);
INSERT INTO public.tciudades VALUES (352, 'San José de Aerocuar', 18);
INSERT INTO public.tciudades VALUES (353, 'San Vicente de Sucre', 18);
INSERT INTO public.tciudades VALUES (354, 'Santa Fe de Sucre', 18);
INSERT INTO public.tciudades VALUES (355, 'Tunapuy', 18);
INSERT INTO public.tciudades VALUES (356, 'Yaguaraparo', 18);
INSERT INTO public.tciudades VALUES (357, 'Yoco', 18);
INSERT INTO public.tciudades VALUES (358, 'Abejales', 19);
INSERT INTO public.tciudades VALUES (359, 'Borota', 19);
INSERT INTO public.tciudades VALUES (360, 'Bramon', 19);
INSERT INTO public.tciudades VALUES (361, 'Capacho', 19);
INSERT INTO public.tciudades VALUES (362, 'Colón', 19);
INSERT INTO public.tciudades VALUES (363, 'Coloncito', 19);
INSERT INTO public.tciudades VALUES (364, 'Cordero', 19);
INSERT INTO public.tciudades VALUES (365, 'El Cobre', 19);
INSERT INTO public.tciudades VALUES (366, 'El Pinal', 19);
INSERT INTO public.tciudades VALUES (367, 'Independencia', 19);
INSERT INTO public.tciudades VALUES (368, 'La Fría', 19);
INSERT INTO public.tciudades VALUES (369, 'La Grita', 19);
INSERT INTO public.tciudades VALUES (370, 'La Pedrera', 19);
INSERT INTO public.tciudades VALUES (371, 'La Tendida', 19);
INSERT INTO public.tciudades VALUES (372, 'Las Delicias', 19);
INSERT INTO public.tciudades VALUES (373, 'Las Hernández', 19);
INSERT INTO public.tciudades VALUES (374, 'Lobatera', 19);
INSERT INTO public.tciudades VALUES (375, 'Michelena', 19);
INSERT INTO public.tciudades VALUES (376, 'Palmira', 19);
INSERT INTO public.tciudades VALUES (377, 'Pregonero', 19);
INSERT INTO public.tciudades VALUES (378, 'Queniquea', 19);
INSERT INTO public.tciudades VALUES (379, 'Rubio', 19);
INSERT INTO public.tciudades VALUES (380, 'San Antonio del Tachira', 19);
INSERT INTO public.tciudades VALUES (381, 'San Cristobal', 19);
INSERT INTO public.tciudades VALUES (382, 'San José de Bolívar', 19);
INSERT INTO public.tciudades VALUES (383, 'San Josecito', 19);
INSERT INTO public.tciudades VALUES (384, 'San Pedro del Río', 19);
INSERT INTO public.tciudades VALUES (385, 'Santa Ana Táchira', 19);
INSERT INTO public.tciudades VALUES (386, 'Seboruco', 19);
INSERT INTO public.tciudades VALUES (387, 'Táriba', 19);
INSERT INTO public.tciudades VALUES (388, 'Umuquena', 19);
INSERT INTO public.tciudades VALUES (389, 'Ureña', 19);
INSERT INTO public.tciudades VALUES (390, 'Batatal', 20);
INSERT INTO public.tciudades VALUES (391, 'Betijoque', 20);
INSERT INTO public.tciudades VALUES (392, 'Boconó', 20);
INSERT INTO public.tciudades VALUES (393, 'Carache', 20);
INSERT INTO public.tciudades VALUES (394, 'Chejende', 20);
INSERT INTO public.tciudades VALUES (395, 'Cuicas', 20);
INSERT INTO public.tciudades VALUES (396, 'El Dividive', 20);
INSERT INTO public.tciudades VALUES (397, 'El Jaguito', 20);
INSERT INTO public.tciudades VALUES (398, 'Escuque', 20);
INSERT INTO public.tciudades VALUES (399, 'Isnotú', 20);
INSERT INTO public.tciudades VALUES (400, 'Jajó', 20);
INSERT INTO public.tciudades VALUES (401, 'La Ceiba', 20);
INSERT INTO public.tciudades VALUES (402, 'La Concepción de Trujllo', 20);
INSERT INTO public.tciudades VALUES (403, 'La Mesa de Esnujaque', 20);
INSERT INTO public.tciudades VALUES (404, 'La Puerta', 20);
INSERT INTO public.tciudades VALUES (405, 'La Quebrada', 20);
INSERT INTO public.tciudades VALUES (406, 'Mendoza Fría', 20);
INSERT INTO public.tciudades VALUES (407, 'Meseta de Chimpire', 20);
INSERT INTO public.tciudades VALUES (408, 'Monay', 20);
INSERT INTO public.tciudades VALUES (409, 'Motatán', 20);
INSERT INTO public.tciudades VALUES (410, 'Pampán', 20);
INSERT INTO public.tciudades VALUES (411, 'Pampanito', 20);
INSERT INTO public.tciudades VALUES (412, 'Sabana de Mendoza', 20);
INSERT INTO public.tciudades VALUES (413, 'San Lázaro', 20);
INSERT INTO public.tciudades VALUES (414, 'Santa Ana de Trujillo', 20);
INSERT INTO public.tciudades VALUES (415, 'Tostós', 20);
INSERT INTO public.tciudades VALUES (416, 'Trujillo', 20);
INSERT INTO public.tciudades VALUES (417, 'Valera', 20);
INSERT INTO public.tciudades VALUES (418, 'Carayaca', 21);
INSERT INTO public.tciudades VALUES (419, 'Litoral', 21);
INSERT INTO public.tciudades VALUES (420, 'Archipiélago Los Roques', 25);
INSERT INTO public.tciudades VALUES (421, 'Aroa', 22);
INSERT INTO public.tciudades VALUES (422, 'Boraure', 22);
INSERT INTO public.tciudades VALUES (423, 'Campo Elías de Yaracuy', 22);
INSERT INTO public.tciudades VALUES (424, 'Chivacoa', 22);
INSERT INTO public.tciudades VALUES (425, 'Cocorote', 22);
INSERT INTO public.tciudades VALUES (426, 'Farriar', 22);
INSERT INTO public.tciudades VALUES (427, 'Guama', 22);
INSERT INTO public.tciudades VALUES (428, 'Marín', 22);
INSERT INTO public.tciudades VALUES (429, 'Nirgua', 22);
INSERT INTO public.tciudades VALUES (430, 'Sabana de Parra', 22);
INSERT INTO public.tciudades VALUES (431, 'Salom', 22);
INSERT INTO public.tciudades VALUES (432, 'San Felipe', 22);
INSERT INTO public.tciudades VALUES (433, 'San Pablo de Yaracuy', 22);
INSERT INTO public.tciudades VALUES (434, 'Urachiche', 22);
INSERT INTO public.tciudades VALUES (435, 'Yaritagua', 22);
INSERT INTO public.tciudades VALUES (436, 'Yumare', 22);
INSERT INTO public.tciudades VALUES (437, 'Bachaquero', 23);
INSERT INTO public.tciudades VALUES (438, 'Bobures', 23);
INSERT INTO public.tciudades VALUES (439, 'Cabimas', 23);
INSERT INTO public.tciudades VALUES (440, 'Campo Concepción', 23);
INSERT INTO public.tciudades VALUES (441, 'Campo Mara', 23);
INSERT INTO public.tciudades VALUES (442, 'Campo Rojo', 23);
INSERT INTO public.tciudades VALUES (443, 'Carrasquero', 23);
INSERT INTO public.tciudades VALUES (444, 'Casigua', 23);
INSERT INTO public.tciudades VALUES (445, 'Chiquinquirá', 23);
INSERT INTO public.tciudades VALUES (446, 'Ciudad Ojeda', 23);
INSERT INTO public.tciudades VALUES (447, 'El Batey', 23);
INSERT INTO public.tciudades VALUES (448, 'El Carmelo', 23);
INSERT INTO public.tciudades VALUES (449, 'El Chivo', 23);
INSERT INTO public.tciudades VALUES (450, 'El Guayabo', 23);
INSERT INTO public.tciudades VALUES (451, 'El Mene', 23);
INSERT INTO public.tciudades VALUES (452, 'El Venado', 23);
INSERT INTO public.tciudades VALUES (453, 'Encontrados', 23);
INSERT INTO public.tciudades VALUES (454, 'Gibraltar', 23);
INSERT INTO public.tciudades VALUES (455, 'Isla de Toas', 23);
INSERT INTO public.tciudades VALUES (456, 'La Concepción del Zulia', 23);
INSERT INTO public.tciudades VALUES (457, 'La Paz', 23);
INSERT INTO public.tciudades VALUES (458, 'La Sierrita', 23);
INSERT INTO public.tciudades VALUES (459, 'Lagunillas del Zulia', 23);
INSERT INTO public.tciudades VALUES (460, 'Las Piedras de Perijá', 23);
INSERT INTO public.tciudades VALUES (461, 'Los Cortijos', 23);
INSERT INTO public.tciudades VALUES (462, 'Machiques', 23);
INSERT INTO public.tciudades VALUES (463, 'Maracaibo', 23);
INSERT INTO public.tciudades VALUES (464, 'Mene Grande', 23);
INSERT INTO public.tciudades VALUES (465, 'Palmarejo', 23);
INSERT INTO public.tciudades VALUES (466, 'Paraguaipoa', 23);
INSERT INTO public.tciudades VALUES (467, 'Potrerito', 23);
INSERT INTO public.tciudades VALUES (468, 'Pueblo Nuevo del Zulia', 23);
INSERT INTO public.tciudades VALUES (469, 'Puertos de Altagracia', 23);
INSERT INTO public.tciudades VALUES (470, 'Punta Gorda', 23);
INSERT INTO public.tciudades VALUES (471, 'Sabaneta de Palma', 23);
INSERT INTO public.tciudades VALUES (472, 'San Francisco', 23);
INSERT INTO public.tciudades VALUES (473, 'San José de Perijá', 23);
INSERT INTO public.tciudades VALUES (474, 'San Rafael del Moján', 23);
INSERT INTO public.tciudades VALUES (475, 'San Timoteo', 23);
INSERT INTO public.tciudades VALUES (476, 'Santa Bárbara Del Zulia', 23);
INSERT INTO public.tciudades VALUES (477, 'Santa Cruz de Mara', 23);
INSERT INTO public.tciudades VALUES (478, 'Santa Cruz del Zulia', 23);
INSERT INTO public.tciudades VALUES (479, 'Santa Rita', 23);
INSERT INTO public.tciudades VALUES (480, 'Sinamaica', 23);
INSERT INTO public.tciudades VALUES (481, 'Tamare', 23);
INSERT INTO public.tciudades VALUES (482, 'Tía Juana', 23);
INSERT INTO public.tciudades VALUES (483, 'Villa del Rosario', 23);
INSERT INTO public.tciudades VALUES (484, 'La Guaira', 21);
INSERT INTO public.tciudades VALUES (485, 'Catia La Mar', 21);
INSERT INTO public.tciudades VALUES (486, 'Macuto', 21);
INSERT INTO public.tciudades VALUES (487, 'Naiguatá', 21);
INSERT INTO public.tciudades VALUES (488, 'Archipiélago Los Monjes', 25);
INSERT INTO public.tciudades VALUES (489, 'Isla La Tortuga y Cayos adyacentes', 25);
INSERT INTO public.tciudades VALUES (490, 'Isla La Sola', 25);
INSERT INTO public.tciudades VALUES (491, 'Islas Los Testigos', 25);
INSERT INTO public.tciudades VALUES (492, 'Islas Los Frailes', 25);
INSERT INTO public.tciudades VALUES (493, 'Isla La Orchila', 25);
INSERT INTO public.tciudades VALUES (494, 'Archipiélago Las Aves', 25);
INSERT INTO public.tciudades VALUES (495, 'Isla de Aves', 25);
INSERT INTO public.tciudades VALUES (496, 'Isla La Blanquilla', 25);
INSERT INTO public.tciudades VALUES (497, 'Isla de Patos', 25);
INSERT INTO public.tciudades VALUES (498, 'Islas Los Hermanos', 25);


--
-- Data for Name: testados; Type: TABLE DATA; Schema: public; Owner: getionador
--

INSERT INTO public.testados VALUES (1, 'Amazonas');
INSERT INTO public.testados VALUES (2, 'Anzoátegui');
INSERT INTO public.testados VALUES (3, 'Apure');
INSERT INTO public.testados VALUES (4, 'Aragua');
INSERT INTO public.testados VALUES (5, 'Barinas');
INSERT INTO public.testados VALUES (6, 'Bolivar');
INSERT INTO public.testados VALUES (7, 'Carabobo');
INSERT INTO public.testados VALUES (8, 'Cojedes');
INSERT INTO public.testados VALUES (9, 'Delta Amacuro');
INSERT INTO public.testados VALUES (10, 'Falcón');
INSERT INTO public.testados VALUES (11, 'Guárico');
INSERT INTO public.testados VALUES (12, 'Lara');
INSERT INTO public.testados VALUES (13, 'Mérida');
INSERT INTO public.testados VALUES (14, 'Miranda');
INSERT INTO public.testados VALUES (15, 'Monagas');
INSERT INTO public.testados VALUES (16, 'Nueva Esparta ');
INSERT INTO public.testados VALUES (17, 'Portuguesa ');
INSERT INTO public.testados VALUES (18, 'Sucre  ');
INSERT INTO public.testados VALUES (19, 'Táchira ');
INSERT INTO public.testados VALUES (20, 'Trujillo ');
INSERT INTO public.testados VALUES (21, 'Vargas ');
INSERT INTO public.testados VALUES (22, 'Yaracuy ');
INSERT INTO public.testados VALUES (23, 'Zulia ');
INSERT INTO public.testados VALUES (24, 'Distrito Capital ');
INSERT INTO public.testados VALUES (25, 'Dependencias Federal');


--
-- Data for Name: tgaleria; Type: TABLE DATA; Schema: public; Owner: getionador
--



--
-- Data for Name: ticonos; Type: TABLE DATA; Schema: public; Owner: getionador
--



--
-- Data for Name: tofertas; Type: TABLE DATA; Schema: public; Owner: getionador
--

INSERT INTO public.tofertas VALUES (1, 'Camas', 'Comodidadas como a ti te gustan', 2222, 2);
INSERT INTO public.tofertas VALUES (2, 'Aguas', 'Agua limpia para bañar al perro', 4312, 2);


--
-- Data for Name: tservicios; Type: TABLE DATA; Schema: public; Owner: getionador
--

INSERT INTO public.tservicios VALUES (1, 'wifi', 'wifi bolivariano');
INSERT INTO public.tservicios VALUES (2, 'Restaurante', 'Arepa socialista');
INSERT INTO public.tservicios VALUES (3, 'Camas', 'Comodidad');


--
-- Data for Name: tsitios_servicios; Type: TABLE DATA; Schema: public; Owner: getionador
--



--
-- Data for Name: tsitios_turisticos; Type: TABLE DATA; Schema: public; Owner: getionador
--

INSERT INTO public.tsitios_turisticos VALUES (1, '7543', '2011-03-01', 'El canto de la Ballena', 'J023482342', 'mandrli', '041623495', 'mandril@gmail.com', 'facebook', 'instagram', 'asdasd.com', '4234', 9, '6546464', '654654654', 4, 6, 3, 1, 'hola ctm', 'publicado');
INSERT INTO public.tsitios_turisticos VALUES (2, '9283', '2001-03-05', 'TUTI FRUTI', 'J021234342', 'chancletax', '0416123495', 'lachancla@gmail.com', 'facebook', 'instagram', 'asdasd.com', '4234', 9, '6546464', '654654654', 4, 7, 3, 1, 'hola ctm', 'publicado');
INSERT INTO public.tsitios_turisticos VALUES (3, '2159', '2006-05-08', 'EL MARACUCHO', 'J091144242', 'uptaeb pasi', '0416967235', 'maracucho@gmail.com', 'facebook', 'instagram', 'asdasd.com', '088', 9, '6546464', '654654654', 7, 3, 3, 1, 'hola ctm', 'publicado');
INSERT INTO public.tsitios_turisticos VALUES (4, '77777', '2001-01-18', 'Posada El encanto', 'J34534242', 'CARORITA', '0416962235', 'maracucho@gmail.com', 'facebook', 'instagram', 'asdasd.com', '6', 9, '6546464', '654654654', 7, 52, 1, 1, 'hola ctm', 'publicado');


--
-- Data for Name: ttipos_sitios; Type: TABLE DATA; Schema: public; Owner: getionador
--

INSERT INTO public.ttipos_sitios VALUES (1, 'alojamiento');
INSERT INTO public.ttipos_sitios VALUES (2, 'recreacion');
INSERT INTO public.ttipos_sitios VALUES (3, 'alimentos y bebidas');


--
-- Data for Name: tusuario; Type: TABLE DATA; Schema: public; Owner: getionador
--

INSERT INTO public.tusuario VALUES (1, 'ely', 'rivas', 'admin', 'admin', '4165588', 'rastrojito', 'ely@admin.com', '1');
INSERT INTO public.tusuario VALUES (2, 'manal', 'saleh', 'manal', 'manal', '4165588', 'Sabila', 'manal@amanal.com', '2');


--
-- Name: tciudades_id_ciudad_seq; Type: SEQUENCE SET; Schema: public; Owner: getionador
--

SELECT pg_catalog.setval('public.tciudades_id_ciudad_seq', 1, false);


--
-- Name: testados_id_estado_seq; Type: SEQUENCE SET; Schema: public; Owner: getionador
--

SELECT pg_catalog.setval('public.testados_id_estado_seq', 1, false);


--
-- Name: tgaleria_id_galeria_seq; Type: SEQUENCE SET; Schema: public; Owner: getionador
--

SELECT pg_catalog.setval('public.tgaleria_id_galeria_seq', 1, false);


--
-- Name: ticonos_id_icono_seq; Type: SEQUENCE SET; Schema: public; Owner: getionador
--

SELECT pg_catalog.setval('public.ticonos_id_icono_seq', 1, false);


--
-- Name: tofertas_id_oferta_seq; Type: SEQUENCE SET; Schema: public; Owner: getionador
--

SELECT pg_catalog.setval('public.tofertas_id_oferta_seq', 2, true);


--
-- Name: tservicios_id_servicio_seq; Type: SEQUENCE SET; Schema: public; Owner: getionador
--

SELECT pg_catalog.setval('public.tservicios_id_servicio_seq', 3, true);


--
-- Name: tsitios_servicios_id_sitios_servicios_seq; Type: SEQUENCE SET; Schema: public; Owner: getionador
--

SELECT pg_catalog.setval('public.tsitios_servicios_id_sitios_servicios_seq', 1, false);


--
-- Name: tsitios_turisticos_id_sitio_seq; Type: SEQUENCE SET; Schema: public; Owner: getionador
--

SELECT pg_catalog.setval('public.tsitios_turisticos_id_sitio_seq', 4, true);


--
-- Name: ttipos_sitios_id_tipo_seq; Type: SEQUENCE SET; Schema: public; Owner: getionador
--

SELECT pg_catalog.setval('public.ttipos_sitios_id_tipo_seq', 3, true);


--
-- Name: tusuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: getionador
--

SELECT pg_catalog.setval('public.tusuario_id_usuario_seq', 2, true);


--
-- Name: tciudades tciudades_pkey; Type: CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tciudades
    ADD CONSTRAINT tciudades_pkey PRIMARY KEY (id_ciudad);


--
-- Name: testados testados_pkey; Type: CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.testados
    ADD CONSTRAINT testados_pkey PRIMARY KEY (id_estado);


--
-- Name: tgaleria tgaleria_pkey; Type: CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tgaleria
    ADD CONSTRAINT tgaleria_pkey PRIMARY KEY (id_galeria);


--
-- Name: ticonos ticonos_pkey; Type: CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.ticonos
    ADD CONSTRAINT ticonos_pkey PRIMARY KEY (id_icono);


--
-- Name: tofertas tofertas_pkey; Type: CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tofertas
    ADD CONSTRAINT tofertas_pkey PRIMARY KEY (id_oferta);


--
-- Name: tservicios tservicios_pkey; Type: CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tservicios
    ADD CONSTRAINT tservicios_pkey PRIMARY KEY (id_servicio);


--
-- Name: tsitios_servicios tsitios_servicios_pkey; Type: CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tsitios_servicios
    ADD CONSTRAINT tsitios_servicios_pkey PRIMARY KEY (id_sitios_servicios);


--
-- Name: tsitios_turisticos tsitios_turisticos_pkey; Type: CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tsitios_turisticos
    ADD CONSTRAINT tsitios_turisticos_pkey PRIMARY KEY (id_sitio);


--
-- Name: ttipos_sitios ttipos_sitios_pkey; Type: CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.ttipos_sitios
    ADD CONSTRAINT ttipos_sitios_pkey PRIMARY KEY (id_tipo);


--
-- Name: tusuario tusuario_pkey; Type: CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tusuario
    ADD CONSTRAINT tusuario_pkey PRIMARY KEY (id_usuario);


--
-- Name: tsitios_turisticos fk_ciudad_id; Type: FK CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tsitios_turisticos
    ADD CONSTRAINT fk_ciudad_id FOREIGN KEY (ciudad_id) REFERENCES public.tciudades(id_ciudad);


--
-- Name: tciudades fk_estado_id; Type: FK CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tciudades
    ADD CONSTRAINT fk_estado_id FOREIGN KEY (estado_id) REFERENCES public.testados(id_estado);


--
-- Name: tsitios_turisticos fk_estado_id; Type: FK CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tsitios_turisticos
    ADD CONSTRAINT fk_estado_id FOREIGN KEY (estado_id) REFERENCES public.testados(id_estado);


--
-- Name: ticonos fk_galeria_id; Type: FK CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.ticonos
    ADD CONSTRAINT fk_galeria_id FOREIGN KEY (galeria_id) REFERENCES public.tgaleria(id_galeria);


--
-- Name: tsitios_servicios fk_servicio_id; Type: FK CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tsitios_servicios
    ADD CONSTRAINT fk_servicio_id FOREIGN KEY (servicio_id) REFERENCES public.tservicios(id_servicio) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tsitios_servicios fk_sitio_id; Type: FK CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tsitios_servicios
    ADD CONSTRAINT fk_sitio_id FOREIGN KEY (sitio_id) REFERENCES public.tsitios_turisticos(id_sitio) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tofertas fk_sitio_turistico_id; Type: FK CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tofertas
    ADD CONSTRAINT fk_sitio_turistico_id FOREIGN KEY (sitio_turistico_id) REFERENCES public.tsitios_turisticos(id_sitio);


--
-- Name: tgaleria fk_sitio_turistico_id; Type: FK CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tgaleria
    ADD CONSTRAINT fk_sitio_turistico_id FOREIGN KEY (sitio_turistico_id) REFERENCES public.tsitios_turisticos(id_sitio);


--
-- Name: tsitios_turisticos fk_tipo_id; Type: FK CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tsitios_turisticos
    ADD CONSTRAINT fk_tipo_id FOREIGN KEY (tipo_id) REFERENCES public.ttipos_sitios(id_tipo);


--
-- Name: tsitios_turisticos fk_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: getionador
--

ALTER TABLE ONLY public.tsitios_turisticos
    ADD CONSTRAINT fk_usuario_id FOREIGN KEY (usuario_id) REFERENCES public.tusuario(id_usuario);


--
-- PostgreSQL database dump complete
--

