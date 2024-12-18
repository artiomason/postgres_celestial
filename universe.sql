--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer,
    num_stars integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    constellation_id integer,
    icon text,
    distance numeric
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
    name character varying(100) NOT NULL,
    planet_id integer,
    colour text,
    alt_name text
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
    name character varying(100) NOT NULL,
    star_id integer,
    moons boolean,
    size_jup numeric,
    size_sol numeric,
    size_earth numeric,
    num_moons integer
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
    name character varying(100) NOT NULL,
    constellation_id integer,
    alt_name text,
    planets boolean,
    galaxy_id integer,
    num_planets integer
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (6, 'Ursa Major', 4, 7);
INSERT INTO public.constellation VALUES (5, 'Cetus', 6, 14);
INSERT INTO public.constellation VALUES (4, 'Corvus', 1, 4);
INSERT INTO public.constellation VALUES (3, 'Canes Venatici', 3, 2);
INSERT INTO public.constellation VALUES (2, 'Hydra', 5, 17);
INSERT INTO public.constellation VALUES (1, 'Lynx', 2, 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Antennae Galaxies', 4, 'Insect antennae', 45);
INSERT INTO public.galaxy VALUES (2, 'Bear Paw Galaxy', 1, 'Bear paw', 40);
INSERT INTO public.galaxy VALUES (3, 'Eye of Sauron', 3, 'Eye of Sauron from "Lord of the Rings" films by Peter Jackson.', 15.8);
INSERT INTO public.galaxy VALUES (4, 'Medusa Merger', 6, 'Like the head of snakes from the mythical creature, a Gorgon, named Medusa.', 128);
INSERT INTO public.galaxy VALUES (5, 'Porpoise Galaxy', 2, 'Appearance of porpoise or dolphin; sometimes, likened to a penguin leaping from the water; a behaviour called porpoising.', 352);
INSERT INTO public.galaxy VALUES (6, 'Wolf-Lundmark-Melotte', 5, 'Named after the 3 supposed discoverers.', 3.04);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'HIP 65407 b 1', 11, 'red', 'Ajan Kloss');
INSERT INTO public.moon VALUES (2, 'HIP 65407 b 2', 11, 'turquoise', 'Iego');
INSERT INTO public.moon VALUES (3, 'HIP 65407 b 3', 11, 'gold', 'Millius Prime');
INSERT INTO public.moon VALUES (4, 'HIP 65407 b 4', 11, 'red', 'Jedha');
INSERT INTO public.moon VALUES (5, 'HIP 65407 b 5', 11, 'green', 'Endor');
INSERT INTO public.moon VALUES (6, 'HIP 65407 b 6', 11, 'taupe', 'Kef Bir');
INSERT INTO public.moon VALUES (7, 'HIP 65407 b 7', 11, 'gold', 'Raada');
INSERT INTO public.moon VALUES (8, 'HIP 65407 b 8', 11, 'green', 'Rugosa');
INSERT INTO public.moon VALUES (9, 'HIP 65407 b 9', 11, 'vermillion', 'Yavin 4');
INSERT INTO public.moon VALUES (10, 'HIP 65407 b 10', 11, 'orange', 'Da Soocha V');
INSERT INTO public.moon VALUES (11, 'HIP 65407 b 11', 11, 'fushcia', 'Dxun');
INSERT INTO public.moon VALUES (12, 'HIP 65407 b 12', 11, 'turquoise', 'Nur');
INSERT INTO public.moon VALUES (13, 'HD 82943 c 1', 3, 'lilac', 'Naboo');
INSERT INTO public.moon VALUES (14, 'HD 82943 c 2', 3, 'chartreuse', 'Dagobah');
INSERT INTO public.moon VALUES (15, 'HD 82943 c X', 3, 'gold', 'Death Star');
INSERT INTO public.moon VALUES (16, 'Taphao Thong 1', 1, 'mustard', 'Tattooine');
INSERT INTO public.moon VALUES (17, 'Taphao Thong 2', 1, 'red', 'Nar Shaddaa');
INSERT INTO public.moon VALUES (18, 'Tau Ceti c 1', 6, 'gold', 'Miranda');
INSERT INTO public.moon VALUES (19, 'Tau Ceti c 3', 6, 'raspberry', 'Inara');
INSERT INTO public.moon VALUES (20, 'Tau Ceti c 2', 6, 'turquoise', 'Concordia');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Taphao Thong', 1, true, 2.5, NULL, NULL, 2);
INSERT INTO public.planet VALUES (2, 'GJ 3634 b', 6, true, NULL, NULL, 8.4, 2);
INSERT INTO public.planet VALUES (3, 'HD 82943 c', 5, true, 14.39, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'HD 82943 d', 5, true, 0, 0.29, NULL, 2);
INSERT INTO public.planet VALUES (5, 'HD 82943 b', 5, true, 14.5, NULL, NULL, 2);
INSERT INTO public.planet VALUES (6, 'Tau Ceti c', 3, true, NULL, NULL, 3.1, 3);
INSERT INTO public.planet VALUES (7, 'Tau Ceti d', 3, true, NULL, NULL, 3.6, 2);
INSERT INTO public.planet VALUES (8, 'Tau Ceti e', 3, true, NULL, NULL, 3.93, 1);
INSERT INTO public.planet VALUES (9, 'Tau Ceti f', 3, true, NULL, NULL, 3.93, 3);
INSERT INTO public.planet VALUES (10, 'Tau Ceti g', 3, true, NULL, NULL, 1.75, 2);
INSERT INTO public.planet VALUES (11, 'HIP 65407 b', 4, true, NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES (12, 'Makropulos', 2, false, 1.059, NULL, NULL, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, '4 Ursae Majoris', 6, 'Muscida', false, 4, NULL);
INSERT INTO public.star VALUES (8, 'Zeta Corvi', 4, '', false, 1, NULL);
INSERT INTO public.star VALUES (9, '5 Canum Venaticorum', 3, 'Xiang', false, 3, NULL);
INSERT INTO public.star VALUES (2, 'XO-5', 1, 'Absolutno', true, 2, 1);
INSERT INTO public.star VALUES (4, 'HIP 65407', 3, '', true, 3, 2);
INSERT INTO public.star VALUES (5, 'HD 82943', 2, '', true, 5, 3);
INSERT INTO public.star VALUES (6, 'Gliese 357', 2, '', true, 5, 3);
INSERT INTO public.star VALUES (1, '47 Ursae Majoris', 6, 'Chalawan', true, 4, 3);
INSERT INTO public.star VALUES (3, 'Tau Ceti', 5, 'Thalath al Naamat', true, 6, 5);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation constellation_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy galaxy_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


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
-- Name: star star_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

