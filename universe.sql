--
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
-- Name: dummy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dummy (
    dummy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    faaltu character varying(10)
);


ALTER TABLE public.dummy OWNER TO freecodecamp;

--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dummy_dummy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dummy_dummy_id_seq OWNER TO freecodecamp;

--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dummy_dummy_id_seq OWNED BY public.dummy.dummy_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    rotation_speed integer,
    gravity numeric(3,2),
    description text,
    active boolean,
    destroyed boolean
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
    name character varying(20) NOT NULL,
    age integer,
    rotation_speed integer,
    gravity numeric(3,2),
    description text,
    active boolean,
    destroyed boolean,
    planet_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    age integer,
    rotation_speed integer,
    gravity numeric(3,2),
    description text,
    active boolean,
    destroyed boolean,
    star_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    age integer,
    rotation_speed integer,
    gravity numeric(3,2),
    description text,
    active boolean,
    destroyed boolean,
    galaxy_id integer NOT NULL
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
-- Name: dummy dummy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy ALTER COLUMN dummy_id SET DEFAULT nextval('public.dummy_dummy_id_seq'::regclass);


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
-- Data for Name: dummy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dummy VALUES (1, 'haha', 'kuch bhi');
INSERT INTO public.dummy VALUES (2, 'naam', 'kuch bhi');
INSERT INTO public.dummy VALUES (3, 'naam bkwaas', 'kuch bhi');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 45, 850, NULL, 'Galaxy containrs multiple stars', true, false);
INSERT INTO public.galaxy VALUES (2, 'Messier 81', 55, 950, NULL, 'Noithing much', true, false);
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 55, 950, NULL, 'Kaali aansh', true, false);
INSERT INTO public.galaxy VALUES (4, 'Messier 82', 82, 1000, 7.50, 'nkwaas', true, false);
INSERT INTO public.galaxy VALUES (5, 'Messier 83', 82, 1000, 7.50, 'g34g3g34nkwaas', true, false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 82, 1000, 7.50, 'gggrgwgwgwr34g3g34nkwaas', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 55, 950, 0.60, 'Lovely moon looks like cheese', true, false, 1);
INSERT INTO public.moon VALUES (2, 'Callisto', 190, 600, 3.60, 'Shukra ka chaand 1', true, false, 2);
INSERT INTO public.moon VALUES (3, 'Europa', 600, 900, 8.60, 'Shukra ka chaand 2', true, false, 3);
INSERT INTO public.moon VALUES (4, 'Test Moon 1', 82, 1000, 7.50, 'Dummy Moon', false, false, 1);
INSERT INTO public.moon VALUES (5, 'Test Moon 2', 82, 1000, 7.50, 'Dummy Moon', false, false, 2);
INSERT INTO public.moon VALUES (6, 'Test Moon 3', 82, 1000, 7.50, 'Dummy Moon', false, false, 3);
INSERT INTO public.moon VALUES (7, 'Test Moon 4', 82, 1000, 7.50, 'Dummy Moon', false, false, 4);
INSERT INTO public.moon VALUES (8, 'Test Moon 5', 82, 1000, 7.50, 'Dummy Moon', false, false, 5);
INSERT INTO public.moon VALUES (9, 'Test Moon 6', 82, 1000, 7.50, 'Dummy Moon', false, false, 6);
INSERT INTO public.moon VALUES (10, 'Test Moon 7', 82, 1000, 7.50, 'Dummy Moon', false, false, 7);
INSERT INTO public.moon VALUES (11, 'Test Moon 8', 82, 1000, 7.50, 'Dummy Moon', false, false, 8);
INSERT INTO public.moon VALUES (12, 'Test Moon 9', 82, 1000, 7.50, 'Dummy Moon', false, false, 9);
INSERT INTO public.moon VALUES (13, 'Test Moon 10', 82, 1000, 7.50, 'Dummy Moon', false, false, 10);
INSERT INTO public.moon VALUES (14, 'Test Moon 11', 82, 1000, 7.50, 'Dummy Moon', false, false, 11);
INSERT INTO public.moon VALUES (15, 'Test Moon 12', 82, 1000, 7.50, 'Dummy Moon', false, false, 12);
INSERT INTO public.moon VALUES (16, 'Test Moon 13', 82, 1000, 7.50, 'Dummy Moon', false, false, 1);
INSERT INTO public.moon VALUES (17, 'Test Moon 14', 82, 1000, 7.50, 'Dummy Moon', false, false, 2);
INSERT INTO public.moon VALUES (18, 'Test Moon 15', 82, 1000, 7.50, 'Dummy Moon', false, false, 3);
INSERT INTO public.moon VALUES (19, 'Test Moon 16', 82, 1000, 7.50, 'Dummy Moon', false, false, 4);
INSERT INTO public.moon VALUES (20, 'Test Moon 17', 82, 1000, 7.50, 'Dummy Moon', false, false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 55, 950, 9.80, 'Lovely planet', true, false, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 110, 500, 9.60, 'Mangal', true, false, 2);
INSERT INTO public.planet VALUES (3, 'Saturn', 190, 600, 3.60, 'Shukra', true, false, 3);
INSERT INTO public.planet VALUES (4, 'Planet Test 1', 82, 1000, 7.50, 'Dummy planet', false, false, 4);
INSERT INTO public.planet VALUES (5, 'Planet Test 2', 82, 1000, 7.50, 'Dummy planet', false, false, 5);
INSERT INTO public.planet VALUES (6, 'Planet Test 3', 82, 1000, 7.50, 'Dummy planet', false, false, 6);
INSERT INTO public.planet VALUES (7, 'Planet Test 4', 82, 1000, 7.50, 'Dummy planet', false, false, 1);
INSERT INTO public.planet VALUES (8, 'Planet Test 5', 82, 1000, 7.50, 'Dummy planet', false, false, 2);
INSERT INTO public.planet VALUES (9, 'Planet Test 6', 82, 1000, 7.50, 'Dummy planet', false, false, 3);
INSERT INTO public.planet VALUES (10, 'Planet Test 7', 82, 1000, 7.50, 'Dummy planet', false, false, 4);
INSERT INTO public.planet VALUES (11, 'Planet Test 8', 82, 1000, 7.50, 'Dummy planet', false, false, 5);
INSERT INTO public.planet VALUES (12, 'Planet Test 9', 82, 1000, 7.50, 'Dummy planet', false, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 55, 950, NULL, 'Noithing much', true, false, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 60, 800, 7.90, 'Taara', true, false, 2);
INSERT INTO public.star VALUES (3, 'Alpha test star', 90, 860, 6.90, 'Taara test', true, false, 3);
INSERT INTO public.star VALUES (4, 'Star 82', 82, 1000, 7.50, 'nakli taara', true, false, 4);
INSERT INTO public.star VALUES (5, 'Star 83', 82, 1000, 7.50, 'nakli taara aur bhi jyada', true, false, 5);
INSERT INTO public.star VALUES (6, 'Star f', 82, 1000, 7.50, 'fakli taaraa', true, false, 6);


--
-- Name: dummy_dummy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dummy_dummy_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dummy dummy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_name_key UNIQUE (name);


--
-- Name: dummy dummy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_pkey PRIMARY KEY (dummy_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

