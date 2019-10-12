PGDMP         (            	    w           testdb    12.0    12.0     X           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            [           1262    16393    testdb    DATABASE     d   CREATE DATABASE testdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE testdb;
                postgres    false            �            1259    16415    appointment    TABLE     �  CREATE TABLE public.appointment (
    id integer NOT NULL,
    day character varying(20),
    "time" character varying(20),
    discount integer,
    name character varying(20),
    age integer,
    language character varying(30),
    allergies character varying(30),
    symptoms character varying(30),
    medication character varying(30),
    extra_comments character varying(50),
    daycare character varying(40),
    user_name character varying(30)
);
    DROP TABLE public.appointment;
       public         heap    postgres    false            �            1259    16413    appointment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.appointment_id_seq;
       public          postgres    false    207            \           0    0    appointment_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.appointment_id_seq OWNED BY public.appointment.id;
          public          postgres    false    206            �            1259    16404    daycares    TABLE     �  CREATE TABLE public.daycares (
    id integer NOT NULL,
    rating integer,
    capaciy integer,
    insurance text,
    photos text,
    cost text,
    phone text,
    languages text,
    licensed boolean,
    doctor_rate boolean,
    ca boolean,
    ta boolean,
    ma boolean,
    lpn boolean,
    rn boolean,
    pa boolean,
    hours character varying(30),
    name character varying(30),
    description character varying(80)
);
    DROP TABLE public.daycares;
       public         heap    postgres    false            �            1259    16402    daycares_id_seq    SEQUENCE     �   CREATE SEQUENCE public.daycares_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.daycares_id_seq;
       public          postgres    false    205            ]           0    0    daycares_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.daycares_id_seq OWNED BY public.daycares.id;
          public          postgres    false    204            �            1259    16396    users    TABLE     x   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(30),
    email character varying(30)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16394    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    203            ^           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    202            �           2604    16418    appointment id    DEFAULT     p   ALTER TABLE ONLY public.appointment ALTER COLUMN id SET DEFAULT nextval('public.appointment_id_seq'::regclass);
 =   ALTER TABLE public.appointment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �           2604    16407    daycares id    DEFAULT     j   ALTER TABLE ONLY public.daycares ALTER COLUMN id SET DEFAULT nextval('public.daycares_id_seq'::regclass);
 :   ALTER TABLE public.daycares ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �           2604    16399    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            U          0    16415    appointment 
   TABLE DATA           �   COPY public.appointment (id, day, "time", discount, name, age, language, allergies, symptoms, medication, extra_comments, daycare, user_name) FROM stdin;
    public          postgres    false    207   +       S          0    16404    daycares 
   TABLE DATA           �   COPY public.daycares (id, rating, capaciy, insurance, photos, cost, phone, languages, licensed, doctor_rate, ca, ta, ma, lpn, rn, pa, hours, name, description) FROM stdin;
    public          postgres    false    205   �       Q          0    16396    users 
   TABLE DATA           0   COPY public.users (id, name, email) FROM stdin;
    public          postgres    false    203   C       _           0    0    appointment_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.appointment_id_seq', 4, true);
          public          postgres    false    206            `           0    0    daycares_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.daycares_id_seq', 2, true);
          public          postgres    false    204            a           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          postgres    false    202            �           2606    16420    appointment appointment_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.appointment DROP CONSTRAINT appointment_pkey;
       public            postgres    false    207            �           2606    16412    daycares daycares_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.daycares
    ADD CONSTRAINT daycares_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.daycares DROP CONSTRAINT daycares_pkey;
       public            postgres    false    205            �           2606    16401    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    203            U   �   x�3�44�74�720��TH��9��R\�S9M9]��9\�BC8��}\t�|B9}�Js<�KsQ��E9�
A��y
.��ɉE��^�EE�\F��PhOPfrFn~^
������T�=... [�;;      S   x   x�3�4�45�t�tq�	欨,�TQQ�4661�t�s�,�4 ��,J�,8J�
rR�3�\+��R9}�Rs�=�Ks��8MAƺ�x��L�0��e&g���`53F��� a=.�      Q   0   x�3��J-*����鹉�9z���\F���E驜�`
I&F��� D�     