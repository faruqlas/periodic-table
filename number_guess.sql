--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 255);
INSERT INTO public.games VALUES (2, 1, 384);
INSERT INTO public.games VALUES (3, 2, 510);
INSERT INTO public.games VALUES (4, 2, 458);
INSERT INTO public.games VALUES (5, 1, 664);
INSERT INTO public.games VALUES (6, 1, 583);
INSERT INTO public.games VALUES (7, 1, 956);
INSERT INTO public.games VALUES (8, 3, 446);
INSERT INTO public.games VALUES (9, 3, 588);
INSERT INTO public.games VALUES (10, 4, 735);
INSERT INTO public.games VALUES (11, 4, 190);
INSERT INTO public.games VALUES (12, 3, 673);
INSERT INTO public.games VALUES (13, 3, 599);
INSERT INTO public.games VALUES (14, 3, 213);
INSERT INTO public.games VALUES (15, 40, 170);
INSERT INTO public.games VALUES (16, 40, 147);
INSERT INTO public.games VALUES (17, 41, 233);
INSERT INTO public.games VALUES (18, 41, 464);
INSERT INTO public.games VALUES (19, 40, 885);
INSERT INTO public.games VALUES (20, 40, 266);
INSERT INTO public.games VALUES (21, 40, 665);
INSERT INTO public.games VALUES (22, 42, 390);
INSERT INTO public.games VALUES (23, 42, 817);
INSERT INTO public.games VALUES (24, 43, 553);
INSERT INTO public.games VALUES (25, 43, 823);
INSERT INTO public.games VALUES (26, 42, 938);
INSERT INTO public.games VALUES (27, 42, 383);
INSERT INTO public.games VALUES (28, 42, 225);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1790085388737');
INSERT INTO public.users VALUES (2, 'user_1790085388736');
INSERT INTO public.users VALUES (3, 'user_1790085523958');
INSERT INTO public.users VALUES (4, 'user_1790085523957');
INSERT INTO public.users VALUES (5, 'user_1790085719130');
INSERT INTO public.users VALUES (7, 'user_1790085719129');
INSERT INTO public.users VALUES (12, 'user_1790085813786');
INSERT INTO public.users VALUES (14, 'user_1790085813785');
INSERT INTO public.users VALUES (19, 'user_1790085904117');
INSERT INTO public.users VALUES (21, 'user_1790085904116');
INSERT INTO public.users VALUES (26, 'user_1790085991720');
INSERT INTO public.users VALUES (28, 'user_1790085991719');
INSERT INTO public.users VALUES (33, 'user_1790086059409');
INSERT INTO public.users VALUES (35, 'user_1790086059408');
INSERT INTO public.users VALUES (40, 'user_1790086100898');
INSERT INTO public.users VALUES (41, 'user_1790086100897');
INSERT INTO public.users VALUES (42, 'user_1790086178779');
INSERT INTO public.users VALUES (43, 'user_1790086178778');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 28, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 43, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

