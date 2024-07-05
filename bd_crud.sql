--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-07-04 16:41:42

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
-- TOC entry 216 (class 1259 OID 16400)
-- Name: estudiantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estudiantes (
    id integer NOT NULL,
    nombres character varying(100),
    apellidos character varying(100),
    codigo character varying(20),
    ep character varying(100)
);


ALTER TABLE public.estudiantes OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16399)
-- Name: estudiantes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estudiantes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estudiantes_id_seq OWNER TO postgres;

--
-- TOC entry 4841 (class 0 OID 0)
-- Dependencies: 215
-- Name: estudiantes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estudiantes_id_seq OWNED BY public.estudiantes.id;


--
-- TOC entry 4688 (class 2604 OID 16403)
-- Name: estudiantes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiantes ALTER COLUMN id SET DEFAULT nextval('public.estudiantes_id_seq'::regclass);


--
-- TOC entry 4835 (class 0 OID 16400)
-- Dependencies: 216
-- Data for Name: estudiantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estudiantes (id, nombres, apellidos, codigo, ep) FROM stdin;
1	MAYENKA	FERNANDEZ CHAMBI	872354	Ingeniería de Sistemas
2	SERGIO RAUL	CHOQUE CORMILLUNI	691457	Ingeniería de Sistemas
3	ROY CRISTIAN	PUMA APAZA	523691	Ingeniería de Sistemas
4	GAREN NICOLE	LIMACHE MAMANI	137542	Ingeniería de Sistemas
5	EMERSON RUBEN	HUACASI CCAMA	425319	Ingeniería de Sistemas
6	WILLEBELDO FERMIN	QUISPE SONCCO	936127	Ingeniería de Sistemas
7	HERBERT	CONDORI QUITO	719638	Ingeniería de Sistemas
8	ELDER ADISON	MAGUIÑA CUTIPA	583964	Ingeniería de Sistemas
9	YOEL BRAYAN	APAZA LLANOS	819764	Ingeniería de Sistemas
10	RONALDO	PERALES PERALES	463872	Ingeniería de Sistemas
11	JHON ALEX	CHUQUIMAMANI SUCASAIRE	285197	Ingeniería de Sistemas
12	JOSE MANUEL	ANCCO GARCIA	617524	Ingeniería de Sistemas
13	LUIS ANTONIO	MAGUIÑA CUTIPA	392615	Ingeniería de Sistemas
14	YENNYBEL ROCIO	HANCCO VILCA	641283	Ingeniería de Sistemas
15	FIORELA MARYORI	VILCHEZ COPA	794125	Ingeniería de Sistemas
16	FRANCO ABONDANSHIERI	ARELA MAMANI	351968	Ingeniería de Sistemas
17	YONY ROYER	CCOSI APAZA	824135	Ingeniería de Sistemas
18	YONATHAN	MURIEL MAYTA	279615	Ingeniería de Sistemas
19	ALEX FRANCO	CHURA TUNI	536198	Ingeniería de Sistemas
20	MIRIAN LUCERO	CENTENO MAMANI	912457	Ingeniería de Sistemas
21	JHOSEMY BRISSETT	COLQUEHUANCA COLQUEHUANCA	148962	Ingeniería de Sistemas
22	SADITH LEIDY	MAMANI APAZA	719385	Ingeniería de Sistemas
31	dsa	cristian	123444	 mecanica
23	BRAYAN ANDRES	COLLANQUI LARICO	538916	Ingeniería de Sistemas
\.


--
-- TOC entry 4842 (class 0 OID 0)
-- Dependencies: 215
-- Name: estudiantes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estudiantes_id_seq', 31, true);


--
-- TOC entry 4690 (class 2606 OID 16405)
-- Name: estudiantes estudiantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_pkey PRIMARY KEY (id);


-- Completed on 2024-07-04 16:41:42

--
-- PostgreSQL database dump complete
--

