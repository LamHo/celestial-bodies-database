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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight_in_millions_of_tons numeric(2,2),
    description text NOT NULL,
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
-- Name: guardian; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guardian (
    guardian_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.guardian OWNER TO freecodecamp;

--
-- Name: guardian_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guardian_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guardian_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: guardian_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guardian_galaxy_id_seq OWNED BY public.guardian.galaxy_id;


--
-- Name: guardian_guardian_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guardian_guardian_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guardian_guardian_seq OWNER TO freecodecamp;

--
-- Name: guardian_guardian_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guardian_guardian_seq OWNED BY public.guardian.guardian_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight_in_millions_of_tons numeric(2,2),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight_in_millions_of_tons numeric(2,2),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    weight_in_millions_of_tons numeric(2,2),
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: guardian guardian_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guardian ALTER COLUMN guardian_id SET DEFAULT nextval('public.guardian_guardian_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, 'Our home galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL, 'Nearest spiral galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', NULL, NULL, NULL, 'Small spiral galaxy in the Local Group', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', NULL, NULL, NULL, 'Bright galaxy in Ursa Major', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', NULL, NULL, NULL, 'Galaxy with well-defined spiral arms', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', NULL, NULL, NULL, 'Galaxy with bright nucleus and large bulge', NULL, NULL);


--
-- Data for Name: guardian; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guardian VALUES (1, 'Aether', 1);
INSERT INTO public.guardian VALUES (2, 'Chronos', 2);
INSERT INTO public.guardian VALUES (3, 'Nyx', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, NULL, NULL, 'The only natural satellite of Earth', NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Selene', NULL, NULL, NULL, 'Mythical second moon of Earth', NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'Artemis', NULL, NULL, NULL, 'Hypothetical moon from future missions', NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'Phobos', NULL, NULL, NULL, 'Larger moon of Mars', NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'Deimos', NULL, NULL, NULL, 'Smaller moon of Mars', NULL, NULL, 2);
INSERT INTO public.moon VALUES (6, 'Mariner', NULL, NULL, NULL, 'Fictional captured asteroid moon', NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, 'Proxima Alpha', NULL, NULL, NULL, 'First moon orbiting Proxima b', NULL, NULL, 3);
INSERT INTO public.moon VALUES (8, 'Proxima Beta', NULL, NULL, NULL, 'Second moon of Proxima b', NULL, NULL, 3);
INSERT INTO public.moon VALUES (9, 'Proxima Gamma', NULL, NULL, NULL, 'Small icy moon of Proxima c', NULL, NULL, 4);
INSERT INTO public.moon VALUES (10, 'Proxima Delta', NULL, NULL, NULL, 'Volcanic moon orbiting Proxima c', NULL, NULL, 4);
INSERT INTO public.moon VALUES (11, 'Vega Moon I', NULL, NULL, NULL, 'Main moon of Vega I', NULL, NULL, 5);
INSERT INTO public.moon VALUES (12, 'Vega Moon II', NULL, NULL, NULL, 'Second natural satellite of Vega I', NULL, NULL, 5);
INSERT INTO public.moon VALUES (13, 'Vega Ice', NULL, NULL, NULL, 'Frozen moon in outer orbit', NULL, NULL, 6);
INSERT INTO public.moon VALUES (14, 'Vega Cloud', NULL, NULL, NULL, 'Thick atmospheric moon', NULL, NULL, 6);
INSERT INTO public.moon VALUES (15, 'Betel Minor', NULL, NULL, NULL, 'Tiny rock moon of Betel I', NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'Betel Dust', NULL, NULL, NULL, 'Moon with dusty surface', NULL, NULL, 7);
INSERT INTO public.moon VALUES (17, 'Sirius Alpha', NULL, NULL, NULL, 'Main satellite of Sirius A-1', NULL, NULL, 9);
INSERT INTO public.moon VALUES (18, 'Sirius Echo', NULL, NULL, NULL, 'Radio-reflective moon', NULL, NULL, 9);
INSERT INTO public.moon VALUES (19, 'Rigel A', NULL, NULL, NULL, 'Massive cratered moon', NULL, NULL, 11);
INSERT INTO public.moon VALUES (20, 'Rigel B', NULL, NULL, NULL, 'Moon with magnetic anomalies', NULL, NULL, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, 'Home to humans and known life', NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Mars', NULL, NULL, NULL, 'The red planet with potential for life', NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Proxima b', NULL, NULL, NULL, 'Potentially habitable exoplanet', NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'Proxima c', NULL, NULL, NULL, 'Gas giant orbiting Proxima Centauri', NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'Vega I', NULL, NULL, NULL, 'Fictional rocky planet orbiting Vega', NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'Vega II', NULL, NULL, NULL, 'Hypothetical gas planet in Vega system', NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'Betel I', NULL, NULL, NULL, 'Inner planet near Betelgeuse', NULL, NULL, 4);
INSERT INTO public.planet VALUES (8, 'Betel II', NULL, NULL, NULL, 'Outer planet with thick atmosphere', NULL, NULL, 4);
INSERT INTO public.planet VALUES (9, 'Sirius A-1', NULL, NULL, NULL, 'First planet of the Sirius A system', NULL, NULL, 5);
INSERT INTO public.planet VALUES (10, 'Sirius A-2', NULL, NULL, NULL, 'Second planet of the Sirius A system', NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'Rigel Prime', NULL, NULL, NULL, 'Main planet in the Rigel system', NULL, NULL, 6);
INSERT INTO public.planet VALUES (12, 'Rigel Minor', NULL, NULL, NULL, 'Cold dwarf planet orbiting Rigel', NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, NULL, 'The star at the center of the Solar System', NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', NULL, NULL, NULL, 'Closest star to the Sun', NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'Vega', NULL, NULL, NULL, 'Bright star in the Lyra constellation', NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'Betelgeuse', NULL, NULL, NULL, 'Red supergiant in Orion', NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'Sirius', NULL, NULL, NULL, 'Brightest star in the night sky', NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'Rigel', NULL, NULL, NULL, 'Blue supergiant in Orion', NULL, NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: guardian_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guardian_galaxy_id_seq', 1, false);


--
-- Name: guardian_guardian_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guardian_guardian_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: guardian guardian_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guardian
    ADD CONSTRAINT guardian_name_key UNIQUE (name);


--
-- Name: guardian guardian_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guardian
    ADD CONSTRAINT guardian_pkey PRIMARY KEY (guardian_id);


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
-- Name: guardian guardian_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guardian
    ADD CONSTRAINT guardian_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

