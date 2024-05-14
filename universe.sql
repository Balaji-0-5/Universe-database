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
    name character varying(30) NOT NULL,
    description text,
    galaxy_types_id integer NOT NULL,
    distance_from_earth_in_mly numeric
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
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
    name character varying(30) NOT NULL,
    description text,
    planet_types_id integer NOT NULL,
    has_life boolean,
    no_of_moons integer,
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    star_types_id integer NOT NULL,
    no_of_planets integer,
    age_in_millions_of_years numeric,
    distance_from_earth_in_ly numeric,
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
-- Name: star_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_types (
    star_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.star_types OWNER TO freecodecamp;

--
-- Name: star_types_star_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_types_star_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_types_star_types_id_seq OWNER TO freecodecamp;

--
-- Name: star_types_star_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_types_star_types_id_seq OWNED BY public.star_types.star_types_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_types star_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_types ALTER COLUMN star_types_id SET DEFAULT nextval('public.star_types_star_types_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our own galaxy. It is said to look like a band of light. The Milky Way''s name comes from a Greek myth about the goddess Hera spraying milk across the sky.', 1, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'In mythology, Andromeda is the daughter of the kings of Ethiopia and is said to be more beautiful than the Nereids. She becomes queen of Greece when she marries Perseus.', 1, 2.53);
INSERT INTO public.galaxy VALUES (3, 'M87', 'A giant galaxy in the Virgo cluster with many globular clusters that appear as bright spots around its center. The Event Horizon Telescope first imaged its supermassive black hole.', 2, 53.49);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 'The Whirlpool Galaxy, also known as Messier 51 or NGC 5194, in the constellation Canes Venatici is one of the brighest galaxies in the sky.Its spiral arms are made up of gas, dust, and long lanes of stars that look like a spiral staircase. These arms are where new stars form.', 1, 31);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 'Named after Ferdinand Magellan,is a dwarf galaxy and satellite galaxy of the Milky Way.', 3, 0.163);
INSERT INTO public.galaxy VALUES (6, 'NGC 6946', 'The galaxy NGC 6946 is nothing short of spectacular. In the last century alone, NGC 6946 has experienced 10 observed supernovae, earning its nickname as the Fireworks Galaxy.', 1, 22.5);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral galaxy', 'These galaxies have spiral arms that are created by differential rotation as the galaxy rotates. The Milky Way is an example of a spiral galaxy.');
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical galaxy', 'These galaxies have an ellipsoidal shape and have less star formation than spiral galaxies. They are made up of low mass stars and appear yellow-red in color.');
INSERT INTO public.galaxy_types VALUES (3, 'Irregular galaxy', 'These galaxies do not have a distinct regular shape and are among the smallest galaxies. They are full of gas and dust, which means they have a lot of star formation.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'The Moon is Earth''s only natural satellite. It orbits at an average distance of 384,400 km , about 30 times the diameter of Earth.', true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Phobos is the innermost and larger of the two natural satellites of Mars. It is named after Phobos, the Greek god of fear and panic, who is the son of Mars.', false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Deimos is the smaller and outer of the two natural satellites of Mars, the other being Phobos.', false, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Io, or Jupiter I, is the innermost and second-smallest of the four Galilean moons of the planet Jupiter.', true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Europa, or Jupiter II, is the smallest of the four Galilean moons orbiting Jupiter, and the sixth-closest to the planet of all the 96 known moons of Jupiter. It is also the sixth-largest moon in the Solar System.', true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Ganymede, or Jupiter III, is the largest and most massive natural satellite of Jupiter and in the Solar System.', true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Callisto, or Jupiter IV, is the second-largest moon of Jupiter, after Ganymede. In the Solar System it is the third-largest moon.', true, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 'Amalthea is a moon of Jupiter. It has the third closest orbit around Jupiter among known moons and was the fifth moon of Jupiter to be discovered, so it is also known as Jupiter V.', false, 5);
INSERT INTO public.moon VALUES (9, 'Mimas', 'Mimas, also designated Saturn I, is the seventh-largest natural satellite of Saturn.', true, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'Enceladus is the sixth-largest moon of Saturn and the 19th-largest in the Solar System.', true, 6);
INSERT INTO public.moon VALUES (11, 'Tethys', 'Tethys, or Saturn III, is the fifth-largest moon of Saturn, measuring about 1,060 km across.', true, 6);
INSERT INTO public.moon VALUES (12, 'Dione', 'Dione, also designated Saturn IV, is the fourth-largest moon of Saturn.', true, 6);
INSERT INTO public.moon VALUES (13, 'Rhea', 'Rhea is the second-largest moon of Saturn and the ninth-largest moon in the Solar System, with a surface area that is comparable to the area of Australia.', true, 6);
INSERT INTO public.moon VALUES (14, 'Titan', 'Titan is the largest moon of Saturn and the second-largest in the Solar System. It is the only moon known to have an atmosphere denser than the Earth''s, and is the only known object in space other than Earth on which clear evidence of stable bodies of surface liquid has been found.', true, 6);
INSERT INTO public.moon VALUES (15, 'Hyperion', 'Hyperion, also known as Saturn VII, is the eighth-largest moon of Saturn. It distinguished by its highly irregular shape, chaotic rotation, low density, and its unusual sponge-like appearance.', false, 6);
INSERT INTO public.moon VALUES (16, 'Ariel', 'Ariel is the fourth-largest moon of Uranus. Ariel orbits and rotates in the equatorial plane of Uranus, which is almost perpendicular to the orbit of Uranus and so has an extreme seasonal cycle.', true, 7);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'Umbriel is the third-largest moon of Uranus.', true, 7);
INSERT INTO public.moon VALUES (18, 'Tritania', 'Titania, also designated Uranus III, is the largest of the moons of Uranus.', true, 7);
INSERT INTO public.moon VALUES (19, 'Oberon', 'Oberon, also designated Uranus IV, is the outermost and second-largest major moon of the planet Uranus. It is the second-most massive of the Uranian moons, and the tenth-most massive moon in the Solar System.', true, 7);
INSERT INTO public.moon VALUES (20, 'Miranda', 'Miranda, also designated Uranus V, is the smallest and innermost of Uranus''s five round satellites.', true, 7);
INSERT INTO public.moon VALUES (21, 'Triton', 'Triton is the largest natural satellite of the planet Neptune. It is the only moon of Neptune massive enough to be rounded under its own gravity and hosts a thin but well-structured atmosphere.', true, 8);
INSERT INTO public.moon VALUES (22, 'Despina', 'Despina, also known as Neptune V, is the third-closest inner moon of Neptune. It is named after Greek mythological character Despoina, a nymph who was a daughter of Poseidon and Demeter.', false, 8);
INSERT INTO public.moon VALUES (23, 'Charon', 'Charon, known as Pluto I, is the largest of the five known natural satellites of the dwarf planet Pluto.', true, 9);
INSERT INTO public.moon VALUES (24, 'Nix', 'Nix is a natural satellite of Pluto, with a diameter of 49.8 km across its longest dimension.It was named after Nyx, the Greek goddess of the night.', false, 9);
INSERT INTO public.moon VALUES (25, 'Hydra', 'Hydra is a natural satellite of Pluto, with a diameter of approximately 51 km across its longest dimension.It was named after the Hydra, the nine-headed underworld serpent in Greek mythology.', false, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'It is the smallest planet in the Solar System. Its surface is greyish, with an expansive cliffs system generated from thrust faults and bright ray systems formed by impact event remnants.', 2, false, 0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'It has a reflective, whitish atmosphere that is mainly composed of carbon dioxide. At the surface, the atmospheric pressure is ninety times as dense as on Earth''s sea level. Venus is the hottest planet, with surface temperatures over 400 °C', 2, false, 0, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'It is the only place in the universe where life and surface liquid water are known to exist. Earth''s atmosphere contains 78% nitrogen and 21% oxygen, which is the result of the presence of life.', 2, true, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'It has a radius about half of that of Earth. Most of the planet is red due to iron oxide in Martian soil, and the polar regions are covered in white ice caps made of water and carbon dioxide.', 2, false, 2, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'It is the biggest and most massive planet in the Solar System. On the surface, there are orange-brown and white cloud bands moving via the law of atmospheric circulation, with giant storms swirling on the surface such as the Great Red Spot and various white ''ovals''.', 3, false, 95, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'It has a distinctive visible ring system orbiting around its equator, which is composed of small ice and rock particles. Like Jupiter, it is mostly made of hydrogen and helium.', 3, false, 146, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'It uniquely among the planets, orbits the Sun on its side as its axial tilt is >90°. This gives the planet extreme seasonal variation as each pole points toward and then away from the Sun.', 3, false, 28, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'It is the furthest planet known in the Solar System. Its outer atmosphere has a slightly muted cyan color, with occasional storms on the surface that looks like dark spots.', 3, false, 16, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'It  is the largest known object in the Kuiper belt. Pluto has a relatively eccentric orbit, inclined 17 degrees to the ecliptic plane. Pluto has a 2:3 resonance with Neptune, meaning that Pluto orbits twice round the Sun for every three Neptunian orbits.', 1, false, 5, 1);
INSERT INTO public.planet VALUES (10, 'HR 8799 b', '', 4, false, 0, 6);
INSERT INTO public.planet VALUES (11, 'HR 8799 c', '', 4, false, 0, 6);
INSERT INTO public.planet VALUES (12, 'HR 8799 d', '', 4, false, 0, 6);
INSERT INTO public.planet VALUES (13, 'HR 8799 e', '', 4, false, 0, 6);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Dwarf planets', 'Pluto was considered the ninth planet in our solar system until 2006, when the Astronomical Union reclassified it as a dwarf planet.');
INSERT INTO public.planet_types VALUES (2, 'Terrestrial planet', 'A terrestrial planet, telluric planet, or rocky planet, is a planet that is composed primarily of silicate, rocks or metals.');
INSERT INTO public.planet_types VALUES (3, 'Gaseous planets', 'Gaseous planets, also known as gas giants, are large planets that are made up of mostly hydrogen and helium and have swirling gases above a solid core. They are different from rocky planets, which are made up of mostly rock, because they do not have a well-defined surface.');
INSERT INTO public.planet_types VALUES (4, 'Exoplanets', 'An exoplanet is a planet which orbits a star that is not our Sun. The name exoplanet comes from ''extra-solar planet''.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Proxima Centauri is a red dwarf star and the closest star to Earth, other than the sun, located in the constellation Centaurus. Its name means ''nearest to Centaurus'' in Latin.', 7, 2, 4850, 4.24, 1);
INSERT INTO public.star VALUES (3, 'Rigel', 'Rigel is a blue supergiant star in the constellation Orion, and is the brightest star in the constellation.Rigel is the brightest and most massive component of a star system that appears as a single blue-white point of light to the naked eye.', 2, 4, 8, 863, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Betelgeuse is a red supergiant star in the constellation of Orion. It is usually the tenth-brightest star in the night sky and, after Rigel, the second-brightest in its constellation', 7, 0, 10.01, 700, 1);
INSERT INTO public.star VALUES (5, 'Sirirus', 'Sirius is the brightest star in Earth''s night sky, and is also known as the Dog Star or Sirius A. It''s located in the constellation Canis Major, which is Latin for ''the greater dog''. ', 3, 0, 230, 8.611, 1);
INSERT INTO public.star VALUES (6, 'HR 8799', 'HR 8799 is in the constellation of Pegasus. It has four planets ,these along with Fomalhaut b, were the first exoplanets whose orbital motion was confirmed by direct imaging.', 3, 4, 30, 133.3, 1);
INSERT INTO public.star VALUES (1, 'Sun', 'The Sun is the star at the center of the Solar System. It is a massive, hot ball of plasma, inflated and heated by energy produced by nuclear fusion reactions in its core', 5, 9, 4600, 0, 1);


--
-- Data for Name: star_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_types VALUES (1, 'O', 'Temperature(in Kelvin) : 30000 - 50000, Color : Blue, Example : Alnitak');
INSERT INTO public.star_types VALUES (2, 'B', 'Temperature(in Kelvin) : 10000 - 30000, Color : Blue-White, Example : Rigel');
INSERT INTO public.star_types VALUES (3, 'A', 'Temperature(in Kelvin) : 7500 - 10000, Color : White, Example : Vega');
INSERT INTO public.star_types VALUES (4, 'F', 'Temperature(in Kelvin) : 6000 - 7500, Color : Yellow-White, Example : Procyon');
INSERT INTO public.star_types VALUES (5, 'G', 'Temperature(in Kelvin) : 5200 - 6000, Color : Yellow, Example : The Sun');
INSERT INTO public.star_types VALUES (6, 'K', 'Temperature(in Kelvin) : 3700 - 5200, Color : Orange, Example : Pollux');
INSERT INTO public.star_types VALUES (7, 'M', 'Temperature(in Kelvin) : < 3700, Color : Red, Example : Betelgeuse');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: star_types_star_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_types_star_types_id_seq', 7, true);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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
-- Name: star_types star_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_types
    ADD CONSTRAINT star_types_name_key UNIQUE (name);


--
-- Name: star_types star_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_types
    ADD CONSTRAINT star_types_pkey PRIMARY KEY (star_types_id);


--
-- Name: galaxy galaxy_galaxy_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_types_id_fkey FOREIGN KEY (planet_types_id) REFERENCES public.planet_types(planet_types_id);


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
-- Name: star star_star_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_types_id_fkey FOREIGN KEY (star_types_id) REFERENCES public.star_types(star_types_id);


--
-- PostgreSQL database dump complete
--

