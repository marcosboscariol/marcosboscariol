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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight numeric(12,2),
    description text,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight numeric(12,2),
    description text,
    has_life boolean,
    is_spherical boolean
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
    name character varying(60) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight numeric(12,2),
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
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
    name character varying(60) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight numeric(12,2),
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer
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
    name character varying(60) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight numeric(12,2),
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ateroid 1', 12, 1231322, 87597.20, 'Description Asterid 1', false, true);
INSERT INTO public.asteroid VALUES (2, 'Ateroid 2', 23, 354651345, 123977.30, 'Description Asterid 2', false, true);
INSERT INTO public.asteroid VALUES (3, 'Ateroid 3', 51, 154567, 84235238.90, 'Description Asterid 3', false, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', 168484, 15, 1256148.20, 'Description Galaxy 1', true, false);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 196848, 1848, 54984.70, 'Description Galaxy 2', false, false);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 48496, 15161, 465.40, 'Description Galaxy 3', false, false);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 848946, 564, 3515641.20, 'Description Galaxy 4', false, false);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', 484, 18486, 15.20, 'Description Galaxy 5', false, false);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', 1256874, 21494, 651481.90, 'Description Galaxy 6', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 485, 1, 0.54, 'Description Moon 1', false, true, 1);
INSERT INTO public.moon VALUES (2, 'Moon 2', 2657, 48, 0.14, 'Description Moon 2', false, true, 12);
INSERT INTO public.moon VALUES (3, 'Moon 3', 129, 4598, 0.19, 'Description Moon 3', false, true, 5);
INSERT INTO public.moon VALUES (4, 'Moon 4', 6457, 3, 0.54, 'Description Moon 4', false, true, 7);
INSERT INTO public.moon VALUES (5, 'Moon 5', 2168, 498, 0.50, 'Description Moon 5', false, true, 5);
INSERT INTO public.moon VALUES (6, 'Moon 6', 26, 497, 0.70, 'Description Moon 6', false, true, 1);
INSERT INTO public.moon VALUES (7, 'Moon 7', 5, 45, 0.15, 'Description Moon 7', false, true, 6);
INSERT INTO public.moon VALUES (8, 'Moon 8', 49, 9, 0.30, 'Description Moon 8', false, true, 4);
INSERT INTO public.moon VALUES (9, 'Moon 9', 349, 54983, 0.25, 'Description Moon 9', false, true, 5);
INSERT INTO public.moon VALUES (10, 'Moon 10', 4598, 89, 0.10, 'Description Moon 10', false, true, 6);
INSERT INTO public.moon VALUES (11, 'Moon 11', 3659, 873, 0.40, 'Description Moon 11', false, true, 5);
INSERT INTO public.moon VALUES (12, 'Moon 12', 789, 48, 0.78, 'Description Moon 12', false, true, 4);
INSERT INTO public.moon VALUES (13, 'Moon 13', 126, 7, 0.20, 'Description Moon 13', false, true, 2);
INSERT INTO public.moon VALUES (14, 'Moon 14', 98, 98, 0.35, 'Description Moon 14', false, true, 11);
INSERT INTO public.moon VALUES (15, 'Moon 15', 459, 4978, 0.20, 'Description Moon 15', false, true, 10);
INSERT INTO public.moon VALUES (16, 'Moon 16', 598, 96, 0.50, 'Description Moon 16', false, true, 10);
INSERT INTO public.moon VALUES (17, 'Moon 17', 65, 859, 0.09, 'Description Moon 17', false, true, 9);
INSERT INTO public.moon VALUES (18, 'Moon 18', 218, 68, 25.00, 'Description Moon 18', false, true, 8);
INSERT INTO public.moon VALUES (19, 'Moon 19', 4978, 49, 23.80, 'Description Moon 19', false, true, 7);
INSERT INTO public.moon VALUES (20, 'Moon 20', 419, 59, 5.00, 'Description Moon 20', false, true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet 1', 256, 10, 32.50, 'Description Planet 1', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Planet 2', 64, 14, 54.70, 'Description Planet 2', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Planet 3', 94, 17, 54.89, 'Description Planet 3', false, true, 2);
INSERT INTO public.planet VALUES (4, 'Planet 4', 2, 25, 63.50, 'Description Planet 4', false, true, 3);
INSERT INTO public.planet VALUES (5, 'Planet 5', 4984, 3, 7.10, 'Description Planet 5', false, true, 5);
INSERT INTO public.planet VALUES (6, 'Planet 6', 12, 2589, 0.45, 'Description Planet 6', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Planet 7', 89, 145, 258.63, 'Description Planet 7', false, true, 6);
INSERT INTO public.planet VALUES (8, 'Planet 8', 39, 258, 585.60, 'Description Planet 8', false, true, 4);
INSERT INTO public.planet VALUES (9, 'Planet 9', 79, 14, 52586.50, 'Description Planet 9', false, true, 5);
INSERT INTO public.planet VALUES (10, 'Planet 10', 667, 6558, 2.50, 'Description Planet 10', false, true, 1);
INSERT INTO public.planet VALUES (11, 'Planet 11', 4486, 58, 256.30, 'Description Planet 11', false, false, 2);
INSERT INTO public.planet VALUES (12, 'Planet 12', 4852, 2, 325.50, 'Description Planet 12', true, true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 1', 181981, 148, 189.50, 'Description Star 1', false, true, 1);
INSERT INTO public.star VALUES (2, 'Star 2', 1848, 418478, 6518.20, 'Description Star 2', false, true, 1);
INSERT INTO public.star VALUES (3, 'Star 3', 18814, 248, 49887.20, 'Description Star 3', false, true, 2);
INSERT INTO public.star VALUES (4, 'Star 4', 12168, 21654874, 659.70, 'Description Star 4', false, true, 3);
INSERT INTO public.star VALUES (5, 'Star 5', 18496, 189, 5684.35, 'Description Star 5', false, true, 5);
INSERT INTO public.star VALUES (6, 'Star 6', 6984, 1548, 654.36, 'Description Star 6', false, true, 1);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


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
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_moon_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_fk_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_fk_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_star_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_fk_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

