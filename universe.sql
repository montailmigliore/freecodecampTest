--test
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    description text,
    density integer NOT NULL,
    quinta_col integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    distance_from_planet integer,
    is_spherical boolean,
    not_null integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    distance_from_earth integer,
    iis_spherical boolean,
    not_null integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    diam_in_km numeric(4,1),
    galaxy_id integer,
    not_null integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: types_star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.types_star (
    name character varying(30) NOT NULL,
    types_star_id integer NOT NULL,
    describe text,
    not_null integer NOT NULL
);


ALTER TABLE public.types_star OWNER TO freecodecamp;

--
-- Name: types_star_type_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.types_star_type_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_star_type_star_id_seq OWNER TO freecodecamp;

--
-- Name: types_star_type_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.types_star_type_star_id_seq OWNED BY public.types_star.types_star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: types_star types_star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_star ALTER COLUMN types_star_id SET DEFAULT nextval('public.types_star_type_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'G1', NULL, 1, NULL);
INSERT INTO public.galaxy VALUES (2, 'G2', NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (3, 'G3', NULL, 1, NULL);
INSERT INTO public.galaxy VALUES (4, 'G4', NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (5, 'G5', NULL, 1, NULL);
INSERT INTO public.galaxy VALUES (6, 'G6', NULL, 2, NULL);
INSERT INTO public.galaxy VALUES (7, 'G7', NULL, 1, NULL);
INSERT INTO public.galaxy VALUES (8, 'G8', NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (9, 'G9', NULL, 1, NULL);
INSERT INTO public.galaxy VALUES (10, 'G10', NULL, 2, NULL);
INSERT INTO public.galaxy VALUES (11, 'G11', NULL, 1, NULL);
INSERT INTO public.galaxy VALUES (12, 'G12', NULL, 3, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M1', NULL, NULL, 5);
INSERT INTO public.moon VALUES (2, 'M2', NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'M3', NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'M4', NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'M5', NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'M11', NULL, NULL, 5);
INSERT INTO public.moon VALUES (7, 'M22', NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'M33', NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'M44', NULL, NULL, 2);
INSERT INTO public.moon VALUES (10, 'M55', NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'M111', NULL, NULL, 5);
INSERT INTO public.moon VALUES (12, 'M222', NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, 'M333', NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'M444', NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'M555', NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'M1111', NULL, NULL, 5);
INSERT INTO public.moon VALUES (17, 'M2222', NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, 'M3333', NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, 'M4444', NULL, NULL, 2);
INSERT INTO public.moon VALUES (20, 'M5555', NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'P1', NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'P2', NULL, NULL, 3);
INSERT INTO public.planet VALUES (3, 'P3', NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'P4', NULL, NULL, 2);
INSERT INTO public.planet VALUES (6, 'P5', NULL, NULL, 5);
INSERT INTO public.planet VALUES (7, 'P6', NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'P7', NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'P8', NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'P9', NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'P10', NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'P11', NULL, NULL, 1);
INSERT INTO public.planet VALUES (13, 'P12', NULL, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'S1', NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'S2', NULL, NULL, 3);
INSERT INTO public.star VALUES (3, 'S3', NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'S4', NULL, NULL, 3);
INSERT INTO public.star VALUES (5, 'S5', NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'S6', NULL, NULL, 3);


--
-- Data for Name: types_star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.types_star VALUES ('acqua', 1, NULL, 5);
INSERT INTO public.types_star VALUES ('fuoco', 2, NULL, 1);
INSERT INTO public.types_star VALUES ('vento', 3, NULL, 1);
INSERT INTO public.types_star VALUES ('terra', 4, NULL, 2);
INSERT INTO public.types_star VALUES ('anima', 5, NULL, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: types_star_type_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.types_star_type_star_id_seq', 5, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: types_star types_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_star
    ADD CONSTRAINT types_star_name_key UNIQUE (name);


--
-- Name: types_star types_star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_star
    ADD CONSTRAINT types_star_pkey PRIMARY KEY (types_star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

