toc.dat                                                                                             0000600 0004000 0002000 00000007366 14766322700 0014462 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP            8    
            }            postgres    15.1    15.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                     0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    5    postgres    DATABASE     ~   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE postgres;
                postgres    false                    0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3330                     2615    16398    tienda    SCHEMA        CREATE SCHEMA tienda;
    DROP SCHEMA tienda;
                postgres    false                    0    0    SCHEMA tienda    COMMENT     :   COMMENT ON SCHEMA tienda IS 'Gestion de tienda, Esquema';
                   postgres    false    7         �            1259    16426    usuario    TABLE       CREATE TABLE tienda.usuario (
    cod_usuario integer NOT NULL,
    nombre_usuario character varying(30),
    contrasena character varying(20),
    fecha_creacion timestamp without time zone,
    activo boolean,
    CONSTRAINT ck_contrasena CHECK ((contrasena IS NOT NULL))
);
    DROP TABLE tienda.usuario;
       tienda         heap    postgres    false    7         �            1259    16425    usuario_cod_usuario_seq    SEQUENCE     �   CREATE SEQUENCE tienda.usuario_cod_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE tienda.usuario_cod_usuario_seq;
       tienda          postgres    false    217    7                    0    0    usuario_cod_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE tienda.usuario_cod_usuario_seq OWNED BY tienda.usuario.cod_usuario;
          tienda          postgres    false    216         g           2604    16429    usuario cod_usuario    DEFAULT     z   ALTER TABLE ONLY tienda.usuario ALTER COLUMN cod_usuario SET DEFAULT nextval('tienda.usuario_cod_usuario_seq'::regclass);
 B   ALTER TABLE tienda.usuario ALTER COLUMN cod_usuario DROP DEFAULT;
       tienda          postgres    false    216    217    217         �          0    16426    usuario 
   TABLE DATA           b   COPY tienda.usuario (cod_usuario, nombre_usuario, contrasena, fecha_creacion, activo) FROM stdin;
    tienda          postgres    false    217       3324.dat            0    0    usuario_cod_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('tienda.usuario_cod_usuario_seq', 6, true);
          tienda          postgres    false    216         j           2606    16432    usuario pk_cod_usuario 
   CONSTRAINT     ]   ALTER TABLE ONLY tienda.usuario
    ADD CONSTRAINT pk_cod_usuario PRIMARY KEY (cod_usuario);
 @   ALTER TABLE ONLY tienda.usuario DROP CONSTRAINT pk_cod_usuario;
       tienda            postgres    false    217         l           2606    16434    usuario uc_nombre_usuario 
   CONSTRAINT     ^   ALTER TABLE ONLY tienda.usuario
    ADD CONSTRAINT uc_nombre_usuario UNIQUE (nombre_usuario);
 C   ALTER TABLE ONLY tienda.usuario DROP CONSTRAINT uc_nombre_usuario;
       tienda            postgres    false    217                                                                                                                                                                                                                                                                                  3324.dat                                                                                            0000600 0004000 0002000 00000000357 14766322700 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	MCARDENAS	NATALIA	2025-03-18 10:37:50	t
2	NCARDENAS	JUAN	2025-03-18 10:37:50	t
4	PGARCIA	PAULA	2025-03-18 10:39:30	t
5	DBERMUDEZ	DARWIN	2025-03-18 10:47:20	t
6	JPRADA	JORDY	2025-03-18 11:30:50	t
3	PCAMILA	1234	2025-03-18 10:37:50	f
\.


                                                                                                                                                                                                                                                                                 restore.sql                                                                                         0000600 0004000 0002000 00000007141 14766322700 0015376 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: tienda; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tienda;


ALTER SCHEMA tienda OWNER TO postgres;

--
-- Name: SCHEMA tienda; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA tienda IS 'Gestion de tienda, Esquema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: usuario; Type: TABLE; Schema: tienda; Owner: postgres
--

CREATE TABLE tienda.usuario (
    cod_usuario integer NOT NULL,
    nombre_usuario character varying(30),
    contrasena character varying(20),
    fecha_creacion timestamp without time zone,
    activo boolean,
    CONSTRAINT ck_contrasena CHECK ((contrasena IS NOT NULL))
);


ALTER TABLE tienda.usuario OWNER TO postgres;

--
-- Name: usuario_cod_usuario_seq; Type: SEQUENCE; Schema: tienda; Owner: postgres
--

CREATE SEQUENCE tienda.usuario_cod_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tienda.usuario_cod_usuario_seq OWNER TO postgres;

--
-- Name: usuario_cod_usuario_seq; Type: SEQUENCE OWNED BY; Schema: tienda; Owner: postgres
--

ALTER SEQUENCE tienda.usuario_cod_usuario_seq OWNED BY tienda.usuario.cod_usuario;


--
-- Name: usuario cod_usuario; Type: DEFAULT; Schema: tienda; Owner: postgres
--

ALTER TABLE ONLY tienda.usuario ALTER COLUMN cod_usuario SET DEFAULT nextval('tienda.usuario_cod_usuario_seq'::regclass);


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: tienda; Owner: postgres
--

COPY tienda.usuario (cod_usuario, nombre_usuario, contrasena, fecha_creacion, activo) FROM stdin;
\.
COPY tienda.usuario (cod_usuario, nombre_usuario, contrasena, fecha_creacion, activo) FROM '$$PATH$$/3324.dat';

--
-- Name: usuario_cod_usuario_seq; Type: SEQUENCE SET; Schema: tienda; Owner: postgres
--

SELECT pg_catalog.setval('tienda.usuario_cod_usuario_seq', 6, true);


--
-- Name: usuario pk_cod_usuario; Type: CONSTRAINT; Schema: tienda; Owner: postgres
--

ALTER TABLE ONLY tienda.usuario
    ADD CONSTRAINT pk_cod_usuario PRIMARY KEY (cod_usuario);


--
-- Name: usuario uc_nombre_usuario; Type: CONSTRAINT; Schema: tienda; Owner: postgres
--

ALTER TABLE ONLY tienda.usuario
    ADD CONSTRAINT uc_nombre_usuario UNIQUE (nombre_usuario);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               