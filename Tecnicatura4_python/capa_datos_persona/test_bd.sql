PGDMP     /                    {            test_bd    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16396    test_bd    DATABASE     z   CREATE DATABASE test_bd WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE test_bd;
                postgres    false            �            1259    16397    persona    TABLE     �   CREATE TABLE public.persona (
    id_persona integer NOT NULL,
    nombre character varying,
    apellido character varying,
    email character varying
);
    DROP TABLE public.persona;
       public         heap    postgres    false            �            1259    16400    persona_id_persona_seq    SEQUENCE     �   CREATE SEQUENCE public.persona_id_persona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.persona_id_persona_seq;
       public          postgres    false    214                       0    0    persona_id_persona_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.persona_id_persona_seq OWNED BY public.persona.id_persona;
          public          postgres    false    215            �            1259    16417    usuario    TABLE     �   CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    username character varying,
    password character varying
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16416    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public          postgres    false    217            	           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
          public          postgres    false    216            j           2604    16401    persona id_persona    DEFAULT     x   ALTER TABLE ONLY public.persona ALTER COLUMN id_persona SET DEFAULT nextval('public.persona_id_persona_seq'::regclass);
 A   ALTER TABLE public.persona ALTER COLUMN id_persona DROP DEFAULT;
       public          postgres    false    215    214            k           2604    16420    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    216    217    217            �          0    16397    persona 
   TABLE DATA           F   COPY public.persona (id_persona, nombre, apellido, email) FROM stdin;
    public          postgres    false    214   �                 0    16417    usuario 
   TABLE DATA           A   COPY public.usuario (id_usuario, username, password) FROM stdin;
    public          postgres    false    217   <       
           0    0    persona_id_persona_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.persona_id_persona_seq', 27, true);
          public          postgres    false    215                       0    0    usuario_id_usuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 1, true);
          public          postgres    false    216            m           2606    16408    persona persona_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id_persona);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public            postgres    false    214            o           2606    16424    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    217            �   �   x�M��
�0��F�`zuxd";��"��Qa���{�G����/I,o�)�`�@_Y���w��.Z������a�X�Z�����0�JHJ�broa��)t;�~m��f��_f+E8���ވ��Z��V_���"n�Rw�We����T�         *   x�3��*H-J��442�2��N,�IL��
�[Xr��qqq ��	?     