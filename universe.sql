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
-- Name: faction; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.faction (
    faction_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_evil boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.faction OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type text,
    has_life boolean NOT NULL,
    age integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_sperical boolean NOT NULL,
    orbital_distance integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_rings boolean NOT NULL,
    temperature numeric(4,1),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color text,
    temperature numeric(4,1),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: faction; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.faction VALUES (1, 'Grosso', true, 1);
INSERT INTO public.faction VALUES (2, 'Humans', false, 2);
INSERT INTO public.faction VALUES (3, 'Grisando', true, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Solar System', 'peacefull', true, 60000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Evil', false, 84000);
INSERT INTO public.galaxy VALUES (3, 'Sirius', 'Neutral', false, 40005);
INSERT INTO public.galaxy VALUES (4, 'Cygnus', 'Chaotic', true, 674626);
INSERT INTO public.galaxy VALUES (5, 'Canis', 'Good', true, 544343);
INSERT INTO public.galaxy VALUES (6, 'Virgo', 'Evil', false, 2341);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Io', true, 55, 5);
INSERT INTO public.moon VALUES (2, 'Europa', true, 421, 5);
INSERT INTO public.moon VALUES (3, 'Moon', true, 3421, 3);
INSERT INTO public.moon VALUES (4, 'Kato', false, 341, 7);
INSERT INTO public.moon VALUES (5, 'Safa', false, 356, 8);
INSERT INTO public.moon VALUES (6, 'Lala', true, 551, 8);
INSERT INTO public.moon VALUES (7, 'Loki', true, 223, 9);
INSERT INTO public.moon VALUES (8, 'Via', true, 322, 11);
INSERT INTO public.moon VALUES (9, 'Sciseron', false, 1341, 12);
INSERT INTO public.moon VALUES (10, 'Kalimante', false, 864, 12);
INSERT INTO public.moon VALUES (11, 'Luzern', false, 51234, 1);
INSERT INTO public.moon VALUES (12, 'Olia', false, 1223, 9);
INSERT INTO public.moon VALUES (13, 'Kalto', true, 12355, 7);
INSERT INTO public.moon VALUES (14, 'Sci', true, 1341, 11);
INSERT INTO public.moon VALUES (15, 'Uzifa', false, 1234, 7);
INSERT INTO public.moon VALUES (16, 'Kalmi', true, 51, 8);
INSERT INTO public.moon VALUES (17, 'Lokaso', false, 23, 5);
INSERT INTO public.moon VALUES (18, 'Nazzar', false, 155, 9);
INSERT INTO public.moon VALUES (19, 'Psi', true, 131, 10);
INSERT INTO public.moon VALUES (20, 'Yota', false, 121, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, 432.3, 1);
INSERT INTO public.planet VALUES (3, 'Earth', false, 25.1, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', false, 100.1, 1);
INSERT INTO public.planet VALUES (5, 'Uranus', true, 140.1, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', true, 432.1, 1);
INSERT INTO public.planet VALUES (7, 'Sirsius', true, 421.2, 2);
INSERT INTO public.planet VALUES (8, 'Arkandum', false, 454.5, 3);
INSERT INTO public.planet VALUES (9, 'Nocturne', true, 436.1, 4);
INSERT INTO public.planet VALUES (10, 'Lasoo', false, 766.1, 5);
INSERT INTO public.planet VALUES (11, 'Kiera', true, 22.1, 6);
INSERT INTO public.planet VALUES (12, 'Lotus', false, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'yellow', 453.2, 1);
INSERT INTO public.star VALUES (2, 'Sira', 'blue', 345.2, 2);
INSERT INTO public.star VALUES (3, 'Sirus', 'red', 225.2, 3);
INSERT INTO public.star VALUES (4, 'Casada', 'red', 443.2, 4);
INSERT INTO public.star VALUES (5, 'Dwarfy', 'blue', 321.2, 5);
INSERT INTO public.star VALUES (6, 'Calisandra', 'Red', 543.2, 6);


--
-- Name: faction faction_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.faction
    ADD CONSTRAINT faction_name_key UNIQUE (name);


--
-- Name: faction faction_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.faction
    ADD CONSTRAINT faction_pkey PRIMARY KEY (faction_id);


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
-- Name: faction faction_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.faction
    ADD CONSTRAINT faction_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

