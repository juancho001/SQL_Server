--
-- PostgreSQL database dump
--

-- Started on 2012-05-19 01:07:28

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = true;

--
-- TOC entry 1799 (class 1259 OID 31909)
-- Dependencies: 5
-- Name: parroquia; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE parroquia (
    parroquia_id integer NOT NULL,
    municipio_id integer NOT NULL,
    nombre_parroquia character varying(70) NOT NULL,
    color_parroquia numeric(10,0) NOT NULL,
    usuario_id numeric(10,0),
    ult_mod date,
    activo numeric(1,0)
);


ALTER TABLE public.parroquia OWNER TO postgres;

--
-- TOC entry 1798 (class 1259 OID 31907)
-- Dependencies: 1799 5
-- Name: parroquia_parroquia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE parroquia_parroquia_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.parroquia_parroquia_id_seq OWNER TO postgres;

--
-- TOC entry 2281 (class 0 OID 0)
-- Dependencies: 1798
-- Name: parroquia_parroquia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE parroquia_parroquia_id_seq OWNED BY parroquia.parroquia_id;


--
-- TOC entry 2282 (class 0 OID 0)
-- Dependencies: 1798
-- Name: parroquia_parroquia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('parroquia_parroquia_id_seq', 409, true);


--
-- TOC entry 2273 (class 2604 OID 31911)
-- Dependencies: 1798 1799 1799
-- Name: parroquia_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE parroquia ALTER COLUMN parroquia_id SET DEFAULT nextval('parroquia_parroquia_id_seq'::regclass);


--
-- TOC entry 2277 (class 0 OID 31909)
-- Dependencies: 1799
-- Data for Name: parroquia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (1, 1, 'CRISTO DE ARANZA', 100, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (3, 1, 'ANTONIO BORJAS ROMERO', 102, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (5, 1, 'VENANCIO PULGAR', 104, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (8, 1, 'CECILIO ACOSTA', 107, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (9, 1, 'MANUEL DAGNINO', 108, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (10, 1, 'CACIQUE MARA', 109, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (11, 1, 'IDELFONSO VASQUEZ', 110, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (12, 1, 'COQUIVACOA', 111, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (13, 1, 'OLEGARIO VILLALOBOS', 112, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (18, 1, 'SAN ISIDRO', 117, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (17, 1, 'SANTA LUCIA', 116, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (14, 1, 'CHIQUINQUIRA', 113, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (7, 1, 'JUANA DE AVILA', 106, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (6, 1, 'RAUL LEONI', 105, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (15, 1, 'BOLIVAR', 114, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (2, 1, 'FRANCISCO EUGENIO BUSTAMANTE', 101, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (4, 1, 'LUIS HURTADO HIGUERA', 103, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (25, 1, 'VARIAS', 0, 1, '2006-01-01', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (23, 1, 'DESCONOCIDA', 0, 1, '2006-01-01', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (16, 1, 'CARRACCIOLO PARRA PEREZ', 115, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (45, 7, 'VARIAS', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (74, 5, 'JOSE RAMON YEPEZ', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (75, 5, 'LA CONCEPCION', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (76, 5, 'SAN JOSE', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (81, 5, 'MARIANO PARRA LEON', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (84, 5, 'JESUS MARIA SEMPRUN', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (77, 6, 'ANDRES BELLO', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (78, 6, 'CONCEPCION', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (79, 6, 'EL CARMELO', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (80, 6, 'CHIQUINQUIRA', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (82, 6, 'PARROQUIAS VARIAS', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (86, 6, 'EL BAJO', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (87, 6, 'LA CONCEPCION', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (88, 5, 'DESCONOCIDA', 0, 1, '2006-01-01', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (89, 6, 'DESCONOCIDA', 0, 1, '2006-01-01', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (90, 5, 'JOSÉ RAMÓN YÉPEZ', 0, 1, '2006-01-01', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (91, 5, 'LA CONCEPCIÓN', 0, 1, '2006-01-01', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (92, 7, 'DESCONOCIDA', 0, 1, '2006-01-01', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (93, 6, 'CARMELO', 0, 1, '2006-01-01', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (94, 6, 'CONCEPCIÓN', 0, 1, '2006-01-01', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (103, 21, 'ALTAGRACIA', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (106, 15, 'VARIAS', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (108, 20, 'SANTA RITA', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (109, 21, 'SAN ANTONIO', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (110, 21, 'SAN JOSE', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (114, 20, 'EL MENE', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (116, 20, 'PEDRO LUCAS URRIBARRI', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (118, 20, 'JOSE CENOVIO URRIBARRI', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (119, 21, 'VARIAS', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (120, 20, 'VARIOS', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (121, 21, 'FARÍA', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (122, 21, 'ANA MARIA CAMPOS', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (131, 15, 'DESCONOCIDA', 0, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (132, 21, 'DESCONOCIDA', 0, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (133, 20, 'DESCONOCIDA', 0, NULL, NULL, NULL);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (137, 13, 'ALONSO DE OJEDA', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (139, 13, 'ELEAZAR LÓPEZ CONTRERAS', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (140, 13, 'VENEZUELA', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (141, 13, 'LIBERTAD', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (149, 13, 'CAMPO LARA', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (150, 13, 'LAGUNILLAS', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (153, 13, 'VARIOS', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (142, 19, 'MANUEL MANRIQUE', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (143, 19, 'RAFAEL MARIA BARALT', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (155, 19, 'RAFAEL URDANETA', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (144, 14, 'LA VICTORIA', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (145, 14, 'RAUL CUENCA', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (147, 14, 'VARIAS', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (148, 14, 'RAFAEL URDANETA', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (157, 14, 'VARIOS', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (138, 13, 'DESCONOCIDA', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (158, 18, 'LIBERTADOR', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (159, 18, 'DESCONOCIDA', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (160, 18, 'MANUEL GUANIPA MATOS', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (161, 18, 'PUEBLO NUEVO', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (162, 18, 'MARCELINO BRICEÑO', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (163, 18, 'SAN TIMOTEO', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (165, 18, 'GENERAL RAFAEL URDANETA', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (166, 18, 'MENE GRANDE', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (167, 18, 'VARIAS', 0, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (169, 18, 'PUEBLO NUEVO Y LIBERTADOR', 0, 1, '2006-07-31', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (170, 14, 'DESCONOCIDA', 0, 1, '2006-07-31', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (171, 19, 'DESCONOCIDA', 0, 1, '2006-07-31', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (239, 4, 'ISLA DE TOAS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (240, 16, 'ENCONTRADOS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (250, 3, 'LAS PARCELAS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (251, 3, 'LUIS DE VICENTE', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (252, 3, 'LA SIERRITA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (253, 3, 'RICAURTE', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (254, 3, 'SAN RAFAEL DEL MOJAN', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (255, 3, 'VARIAS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (257, 2, 'GUAJIRA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (258, 2, 'ALTA GUAJIRA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (267, 8, 'BOBURES', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (270, 4, 'MONAGAS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (275, 3, 'MARCOS SERGIO GODOY', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (277, 2, 'SINAMAICA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (278, 2, 'ELIAS SANCHEZ RUBIO', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (287, 8, 'ROMULO GALLEGOS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (288, 8, 'EL BATEY', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (291, 8, 'VARIAS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (292, 16, 'UDON PEREZ', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (293, 16, 'VARIAS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (299, 3, 'TAMARE', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (309, 8, 'MONSEÑOR ARTURO CELESTINO ALVAREZ', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (310, 8, 'HERAS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (328, 8, 'GIBRALTAR', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (360, 8, 'SANTA MARIA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (361, 4, 'LIBERTADOR', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (364, 3, 'SAN RAFAEL', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (371, 3, 'SECTORES VARIOS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (372, 2, 'VARIOS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (241, 17, 'SANTA BARBARA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (242, 17, 'URRIBARRI', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (243, 17, 'SAN CARLOS DEL ZULIA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (244, 17, 'MORALITO', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (272, 17, 'SANTA CRUZ DEL ZULIA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (314, 17, 'VARIAS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (246, 12, 'CARLOS QUEVEDO', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (247, 12, 'FRANCISCO JAVIER PULGAR', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (248, 12, 'SIMON RODRIGUEZ', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (315, 12, 'VARIAS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (362, 12, 'BARI', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (274, 11, 'LIBERTAD', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (295, 11, 'SAN JOSE DE PERIJA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (297, 11, 'RIO NEGRO', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (298, 11, 'BARTOLOME DE LAS CASAS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (329, 11, 'VARIAS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (363, 11, 'MACHIQUES', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (259, 9, 'DONALDO GARCIA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (260, 9, 'EL ROSARIO', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (308, 9, 'BARRANQUITA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (368, 9, 'VARIOS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (249, 10, 'JESUS MARIA SEMPRUN', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (311, 10, 'BARI', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (312, 10, 'VIA ALTERNA A CASIGUA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (370, 10, 'CASIGUA EL CUBO', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (176, 10, 'VARIAS', 0, 1, '2006-08-11', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (39, 7, 'DOMITILA FLORES', 64, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (40, 7, 'SAN FRANCISCO', 62, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (41, 7, 'FRANCISCO OCHOA', 63, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (42, 7, 'EL BAJO', 61, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (43, 7, 'LOS CORTIJOS', 65, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (44, 7, 'MARCIAL HERNANDEZ', 66, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (177, 25, 'VARIAS', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (245, 17, 'DESCONOCIDA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (294, 12, 'DESCONOCIDA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (300, 2, 'DESCONOCIDA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (256, 3, 'DESCONOCIDA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (375, 4, 'DESCONOCIDA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (268, 8, 'DESCONOCIDA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (303, 9, 'DESCONOCIDA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (313, 10, 'DESCONOCIDA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (296, 11, 'DESCONOCIDA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (271, 16, 'DESCONOCIDA', 0, 1, '2006-08-09', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (409, 9, 'SIXTO ZAMBRANO', 0, 1, '2006-09-13', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (410, 9, 'LA VILLA DEL ROSARIO', 0, 1, '2006-09-13', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (95, 15, 'AMBROSIO', 118, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (96, 15, 'JORGE HERNANDEZ', 119, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (97, 15, 'GERMAN RIOS LINARES', 120, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (98, 15, 'CARMEN HERRERA', 121, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (99, 15, 'ARISTIDES CALVANI', 122, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (100, 15, 'LA ROSA', 123, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (101, 15, 'SAN BENITO', 124, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (104, 15, 'ROMULO BETANCOURT', 125, 1, '2006-05-18', 1);
INSERT INTO parroquia (parroquia_id, municipio_id, nombre_parroquia, color_parroquia, usuario_id, ult_mod, activo) VALUES (105, 15, 'PUNTA GORDA', 126, 1, '2006-05-18', 1);


--
-- TOC entry 2275 (class 2606 OID 273953)
-- Dependencies: 1799 1799
-- Name: pk_parroquia; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY parroquia
    ADD CONSTRAINT pk_parroquia PRIMARY KEY (parroquia_id);


--
-- TOC entry 2276 (class 2606 OID 274177)
-- Dependencies: 1767 1799
-- Name: fk_parroqui_parroquia_municipi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parroquia
    ADD CONSTRAINT fk_parroqui_parroquia_municipi FOREIGN KEY (municipio_id) REFERENCES municipio(municipio_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2280 (class 0 OID 0)
-- Dependencies: 1799
-- Name: parroquia; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE parroquia FROM PUBLIC;
REVOKE ALL ON TABLE parroquia FROM postgres;
GRANT ALL ON TABLE parroquia TO postgres;


--
-- TOC entry 2283 (class 0 OID 0)
-- Dependencies: 1798
-- Name: parroquia_parroquia_id_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE parroquia_parroquia_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE parroquia_parroquia_id_seq FROM postgres;
GRANT ALL ON SEQUENCE parroquia_parroquia_id_seq TO postgres;


-- Completed on 2012-05-19 01:07:28

--
-- PostgreSQL database dump complete
--

