--
-- PostgreSQL database dump
--

-- Started on 2012-05-19 01:06:24

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = true;

--
-- TOC entry 1706 (class 1259 OID 31528)
-- Dependencies: 5
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE estado (
    estado_id integer NOT NULL,
    nombre_estado character varying(100) NOT NULL,
    ult_mod date,
    activo numeric(1,0),
    usuario_id numeric(10,0)
);


ALTER TABLE public.estado OWNER TO postgres;

--
-- TOC entry 1705 (class 1259 OID 31526)
-- Dependencies: 5 1706
-- Name: estado_estado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE estado_estado_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.estado_estado_id_seq OWNER TO postgres;

--
-- TOC entry 2280 (class 0 OID 0)
-- Dependencies: 1705
-- Name: estado_estado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE estado_estado_id_seq OWNED BY estado.estado_id;


--
-- TOC entry 2281 (class 0 OID 0)
-- Dependencies: 1705
-- Name: estado_estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('estado_estado_id_seq', 27, true);


--
-- TOC entry 2273 (class 2604 OID 31530)
-- Dependencies: 1706 1705 1706
-- Name: estado_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE estado ALTER COLUMN estado_id SET DEFAULT nextval('estado_estado_id_seq'::regclass);


--
-- TOC entry 2276 (class 0 OID 31528)
-- Dependencies: 1706
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO estado (estado_id, nombre_estado, ult_mod, activo, usuario_id) VALUES (1, 'Zulia', NULL, 1, NULL);


--
-- TOC entry 2275 (class 2606 OID 273883)
-- Dependencies: 1706 1706
-- Name: pk_estado; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estado
    ADD CONSTRAINT pk_estado PRIMARY KEY (estado_id);


--
-- TOC entry 2279 (class 0 OID 0)
-- Dependencies: 1706
-- Name: estado; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE estado FROM PUBLIC;
REVOKE ALL ON TABLE estado FROM postgres;
GRANT ALL ON TABLE estado TO postgres;


--
-- TOC entry 2282 (class 0 OID 0)
-- Dependencies: 1705
-- Name: estado_estado_id_seq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON SEQUENCE estado_estado_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE estado_estado_id_seq FROM postgres;
GRANT ALL ON SEQUENCE estado_estado_id_seq TO postgres;


-- Completed on 2012-05-19 01:06:24

--
-- PostgreSQL database dump complete
--

