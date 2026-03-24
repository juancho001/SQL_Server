--
-- PostgreSQL database dump
--

-- Started on 2012-05-19 01:06:59

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = true;

--
-- TOC entry 1767 (class 1259 OID 31770)
-- Dependencies: 5
-- Name: municipio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE municipio (
    municipio_id integer NOT NULL,
    estado_id integer,
    nombre_municipio character varying(50) NOT NULL,
    color_municipio numeric(10,0),
    ult_mod date,
    usuario_id numeric(10,0),
    activo numeric(1,0)
);


ALTER TABLE public.municipio OWNER TO postgres;

--
-- TOC entry 1766 (class 1259 OID 31768)
-- Dependencies: 5 1767
-- Name: municipio_municipio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE municipio_municipio_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.municipio_municipio_id_seq OWNER TO postgres;

--
-- TOC entry 2281 (class 0 OID 0)
-- Dependencies: 1766
-- Name: municipio_municipio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE municipio_municipio_id_seq OWNED BY municipio.municipio_id;


--
-- TOC entry 2282 (class 0 OID 0)
-- Dependencies: 1766
-- Name: municipio_municipio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('municipio_municipio_id_seq', 24, true);


--
-- TOC entry 2273 (class 2604 OID 31772)
-- Dependencies: 1766 1767 1767
-- Name: municipio_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE municipio ALTER COLUMN municipio_id SET DEFAULT nextval('municipio_municipio_id_seq'::regclass);


--
-- TOC entry 2277 (class 0 OID 31770)
-- Dependencies: 1767
-- Data for Name: municipio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (6, 1, 'LA CAÑADA DE URDANETA', 250, '2006-02-15', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (5, 1, 'JESUS ENRIQUE LOSADA', 128, '2006-02-15', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (25, 1, 'MUNICIPIOS VARIOS', 0, '2006-08-09', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (21, 1, 'MIRANDA', 241, '2007-09-25', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (20, 1, 'SANTA RITA', 247, '2007-09-25', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (19, 1, 'SIMON BOLIVAR', 124, '2007-09-25', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (18, 1, 'BARALT', 15, '2007-09-25', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (17, 1, 'COLON', 60, '2007-09-25', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (16, 1, 'CATATUMBO', 240, '2007-09-25', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (15, 1, 'CABIMAS', 120, '2007-09-25', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (13, 1, 'LAGUNILLAS', 126, '2007-09-25', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (8, 1, 'SUCRE', 254, '2007-09-25', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (3, 1, 'MARA', 65, '2007-09-25', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (2, 1, 'PAEZ', 255, '2007-09-25', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (1, 1, 'MARACAIBO', 5, '2007-09-25', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (7, 1, 'SAN FRANCISCO', 64, '2007-09-25', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (4, 1, 'ALMIRANTE PADILLA', 10, '2006-02-15', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (9, 1, 'ROSARIO DE PERIJA', 127, '2006-02-15', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (14, 1, 'VALMORE RODRIGUEZ', 245, '2006-02-15', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (12, 1, 'FRANCISCO J. PULGAR', 11, '2006-02-15', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (10, 1, 'JESUS M. SEMPRUN', 6, '2006-02-15', 1, 1);
INSERT INTO municipio (municipio_id, estado_id, nombre_municipio, color_municipio, ult_mod, usuario_id, activo) VALUES (11, 1, 'MACHIQUES DE PERIJA', 253, '2006-02-15', 1, 1);


--
-- TOC entry 2275 (class 2606 OID 273939)
-- Dependencies: 1767 1767
-- Name: pk_municipio; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY municipio
    ADD CONSTRAINT pk_municipio PRIMARY KEY (municipio_id);


--
-- TOC entry 2276 (class 2606 OID 274122)
-- Dependencies: 1767 1706
-- Name: fk_municipio_estado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipio
    ADD CONSTRAINT fk_municipio_estado FOREIGN KEY (estado_id) REFERENCES estado(estado_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2280 (class 0 OID 0)
-- Dependencies: 1767
-- Name: municipio; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE municipio FROM PUBLIC;
REVOKE ALL ON TABLE municipio FROM postgres;
GRANT ALL ON TABLE municipio TO postgres;


--
-- TOC entry 2283 (class 0 OID 0)
-- Dependencies: 1766
-- Name: municipio_municipio_id_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE municipio_municipio_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE municipio_municipio_id_seq FROM postgres;
GRANT ALL ON SEQUENCE municipio_municipio_id_seq TO postgres;


-- Completed on 2012-05-19 01:06:59

--
-- PostgreSQL database dump complete
--

