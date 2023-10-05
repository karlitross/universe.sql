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

codeally@fbb4be756b76:~/project$ type universe.sql 
bash: type: universe.sql: not found
codeally@fbb4be756b76:~/project$ echo "$(cat universe.sql)"
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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    distance_from_earth_in_light_years integer,
    description text,
    age_in_million_years integer,
    apparent_magnitude numeric(3,1),
    catalog_name character varying(30)
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
    description text,
    distance_from_earth_in_light_years numeric(12,4),
    diameter_in_km integer,
    cycle_duration_in_days integer,
    is_orbit_eliptic boolean,
    has_water boolean,
    only_moon_in_planet boolean,
    orbital_speed_in_km_per_hour integer,
    has_atmosphere boolean,
    average_temperature_in_kelvin integer,
    average_distance_from_planet_in_km integer,
    age_in_millions_of_years integer,
    own_planet_origin boolean,
    another_moon_in_same_orbit boolean,
    has_oxygen boolean,
    is_spherical boolean,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL
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
    name character varying(30) NOT NULL,
    has_life boolean,
    distance_from_earth_in_light_years numeric(12,4),
    description text,
    age_in_million_of_years integer,
    is_spherical boolean,
    has_atmoshere boolean,
    has_oxygen boolean,
    diameter_in_km integer,
    has_moon boolean,
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
-- Name: planet_types_by_mass; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types_by_mass (
    name character varying(30) NOT NULL,
    description text,
    planet_types_by_mass_id integer NOT NULL
);


ALTER TABLE public.planet_types_by_mass OWNER TO freecodecamp;

--
-- Name: planet_types_by_mass_planet_type_by_mass_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_by_mass_planet_type_by_mass_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_by_mass_planet_type_by_mass_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_by_mass_planet_type_by_mass_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_by_mass_planet_type_by_mass_id_seq OWNED BY public.planet_types_by_mass.planet_types_by_mass_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_active boolean,
    distance_from_earth_in_light_years double precision,
    description text,
    age_in_million_years integer,
    is_spherical boolean,
    galaxy_id integer NOT NULL,
    mass double precision,
    gliese_catalog_name character varying(30)
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types_by_mass planet_types_by_mass_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types_by_mass ALTER COLUMN planet_types_by_mass_id SET DEFAULT nextval('public.planet_types_by_mass_planet_type_by_mass_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', NULL, 2500000, NULL, NULL, 3.4, 'M31, NGC224');
INSERT INTO public.galaxy VALUES (2, 'Triangulum Galaxy', NULL, 2900000, NULL, NULL, 5.7, 'M33, NGC568');
INSERT INTO public.galaxy VALUES (3, 'Centaurus A', NULL, 13700000, NULL, NULL, 6.8, 'NGC5128');
INSERT INTO public.galaxy VALUES (4, 'Bodes Galaxy', NULL, 12000000, NULL, NULL, 6.9, 'M81, NGC3031');
INSERT INTO public.galaxy VALUES (5, 'Backward Galaxy', NULL, 200000000, NULL, NULL, 12.6, 'NGC 4622');
INSERT INTO public.galaxy VALUES (6, 'Milky Way', NULL, 0, NULL, NULL, 5.1, 'NGC 104');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Io');
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Europa');
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Ganymede');
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Callisto');
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Mimas');
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Enceladus');
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Tethys');
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Dione');
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Rhea');
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Titan');
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Hyperion');
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Iapetus');
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Phoebe');
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Puck');
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Miranda');
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Ariel');
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Umbriel');
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Titania');
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Oberon');
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Proteus');
INSERT INTO public.moon VALUES (21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Trito');
INSERT INTO public.moon VALUES (22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Nereid');
INSERT INTO public.moon VALUES (23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'Moon');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Jupiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69911, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Saturn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58232, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Uranus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25362, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Neptune', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24622, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Earth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6371, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Venus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6052, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Mars', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3390, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Mercury', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2440, NULL, 1);
INSERT INTO public.planet VALUES (9, 'TRAPPIST-1-b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6700, NULL, 7);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1-c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6700, NULL, 7);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1-d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6700, NULL, 7);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1-e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6700, NULL, 7);
INSERT INTO public.planet VALUES (13, 'TRAPPIST-1-f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6700, NULL, 7);
INSERT INTO public.planet VALUES (14, 'TRAPPIST-1-g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6700, NULL, 7);
INSERT INTO public.planet VALUES (15, 'TRAPPIST-1-h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6700, NULL, 7);
INSERT INTO public.planet VALUES (16, 'Proxima Centauri b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4000, NULL, 2);
INSERT INTO public.planet VALUES (17, 'Proxima Centauri c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, NULL, 2);
INSERT INTO public.planet VALUES (18, 'Proxima Centauri d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3000, NULL, 2);


--
-- Data for Name: planet_types_by_mass; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types_by_mass VALUES ('Giant planet', NULL, 1);
INSERT INTO public.planet_types_by_mass VALUES ('Ice giant', NULL, 2);
INSERT INTO public.planet_types_by_mass VALUES ('Mini-Neptune', NULL, 3);
INSERT INTO public.planet_types_by_mass VALUES ('Super-Earth', NULL, 4);
INSERT INTO public.planet_types_by_mass VALUES ('Super-Jupiter', NULL, 5);
INSERT INTO public.planet_types_by_mass VALUES ('Sub-Earth', NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Proxima Centauri', NULL, 4.2465, NULL, NULL, NULL, 6, 0.122, 'GJ 551');
INSERT INTO public.star VALUES (3, 'Rigil Kentaurus', NULL, 4.3441, NULL, NULL, NULL, 6, 1.079, 'Gliese 559');
INSERT INTO public.star VALUES (4, 'Toliman', NULL, 4.3441, NULL, NULL, NULL, 6, 0.909, 'HR 5459');
INSERT INTO public.star VALUES (5, 'Barnards Star', NULL, 5.9629, NULL, NULL, NULL, 6, 0.144, 'GJ 699');
INSERT INTO public.star VALUES (6, 'Luhman 16', NULL, 6.5029, NULL, NULL, NULL, 6, 0.032, 'GJ 11551');
INSERT INTO public.star VALUES (1, 'Sun', NULL, 1.58e-05, NULL, NULL, NULL, 6, 1, 'Sun');
INSERT INTO public.star VALUES (7, 'TRAPPIST-1', NULL, 40.66, NULL, NULL, NULL, 6, 0.0898, '2MUDC');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: planet_types_by_mass_planet_type_by_mass_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_by_mass_planet_type_by_mass_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_catalog_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_catalog_name_key UNIQUE (catalog_name);


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
-- Name: planet_types_by_mass planet_types_by_mass_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types_by_mass
    ADD CONSTRAINT planet_types_by_mass_pkey PRIMARY KEY (planet_types_by_mass_id);


--
-- Name: planet_types_by_mass planet_types_by_mass_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types_by_mass
    ADD CONSTRAINT planet_types_by_mass_type_name_key UNIQUE (name);


--
-- Name: star star_gliese_catalog_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_gliese_catalog_name_key UNIQUE (gliese_catalog_name);


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