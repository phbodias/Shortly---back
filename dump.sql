PGDMP                                                              z                          d5omrhfvtq540f         14.4 (Ubuntu 14.4 -1.pgdg20.04 + 1)         14.4 (Ubuntu 14.4 -1.pgdg20.04 + 1)            �                         0          0          ENCODING          ENCODING                  
SET
    client_encoding = 'UTF8';

                                                         false                            �                         0          0         STDSTRINGS         STDSTRINGS           (
         
    SET
        standard_conforming_strings = 'on';

                                                         false                            �                         0          0         SEARCHPATH         SEARCHPATH            8      
SELECT
    pg_catalog.set_config('search_path', '', false);

                                                         false                            �                         1262          12671389          d5omrhfvtq540f          DATABASE            c       CREATE DATABASE d5omrhfvtq540f WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';

         DROP DATABASE d5omrhfvtq540f;

                                         qowxshtkfqavwa          false                            �                         0          0          DATABASE d5omrhfvtq540f          ACL            A       REVOKE CONNECT,
TEMPORARY ON DATABASE d5omrhfvtq540f
FROM
    PUBLIC;

                                                 qowxshtkfqavwa          false          4317                            �                         0          0          d5omrhfvtq540f          DATABASE PROPERTIES            R       ALTER DATABASE d5omrhfvtq540f
SET
    search_path TO '$user',
    'public',
    'heroku_ext';

                                                   qowxshtkfqavwa          false                                                      2615          12671520         heroku_ext          SCHEMA                   CREATE SCHEMA heroku_ext;

         DROP SCHEMA heroku_ext;

                                         u4g6urpsqjvms3          false                            �                         0          0          SCHEMA heroku_ext          ACL            4       GRANT USAGE ON SCHEMA heroku_ext TO qowxshtkfqavwa;

                                                 u4g6urpsqjvms3          false          6                            �                         0          0         SCHEMA public          ACL            �       REVOKE ALL ON SCHEMA public
FROM
    postgres;

REVOKE ALL ON SCHEMA public
FROM
    PUBLIC;

GRANT ALL ON SCHEMA public TO qowxshtkfqavwa;

GRANT ALL ON SCHEMA public TO PUBLIC;

                                                 qowxshtkfqavwa          false          5                            �                         0          0          LANGUAGE plpgsql          ACL            1       GRANT ALL ON LANGUAGE plpgsql TO qowxshtkfqavwa;

                                                 postgres          false          832                            �                          1259          12893609          urls          TABLE            �       CREATE TABLE public.urls (
    id integer NOT NULL,
    "userId" integer,
    "shortUrl" text NOT NULL,
    url text NOT NULL,
    "visitCount" integer DEFAULT 0 NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL
);

         DROP TABLE public.urls;

                 public                    heap          qowxshtkfqavwa          false                            �                          1259          12893608         urls_id_seq          SEQUENCE            �       CREATE SEQUENCE public.urls_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  "   DROP SEQUENCE public.urls_id_seq;
       public          qowxshtkfqavwa    false    213            �           0    0    urls_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.urls_id_seq OWNED BY public.urls.id;
          public          qowxshtkfqavwa    false    212            �            1259    12883559    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    " createdAt " timestamp with time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.users;
       public         heap    qowxshtkfqavwa    false            �            1259    12883558    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          qowxshtkfqavwa    false    211            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          qowxshtkfqavwa    false    210            ?           2604    12893612    urls id    DEFAULT     b   ALTER TABLE ONLY public.urls ALTER COLUMN id SET DEFAULT nextval('public.urls_id_seq'::regclass);
 6   ALTER TABLE public.urls ALTER COLUMN id DROP DEFAULT;
       public          qowxshtkfqavwa    false    213    212    213            =           2604    12883562    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          qowxshtkfqavwa    false    210    211    211            �          0    12893609    urls 
   TABLE DATA           X   COPY public.urls (id, " userId ", " shortUrl ", url, " visitCount ", " createdAt ") FROM stdin;
    public          qowxshtkfqavwa    false    213   p       �          0    12883559    users 
   TABLE DATA           G   COPY public.users (id, name, email, password, " createdAt ") FROM stdin;
    public          qowxshtkfqavwa    false    211   �       �           0    0    urls_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.urls_id_seq', 17, true);
          public          qowxshtkfqavwa    false    212            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 9, true);
          public          qowxshtkfqavwa    false    210            G           2606    12893618    urls urls_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.urls DROP CONSTRAINT urls_pkey;
       public            qowxshtkfqavwa    false    213            C           2606    12883569    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            qowxshtkfqavwa    false    211            E           2606    12883567    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            qowxshtkfqavwa    false    211            H           2606    12893619    urls urls_userId_fkey 
   FK CONSTRAINT     w   ALTER TABLE ONLY public.urls
    ADD CONSTRAINT " urls_userId_fkey " FOREIGN KEY (" userId ") REFERENCES public.users(id);
 A   ALTER TABLE ONLY public.urls DROP CONSTRAINT " urls_userId_fkey ";
       public          qowxshtkfqavwa    false    4165    211    213            �   %  x���[o�@�k�{�a�#3��u�B�V�M�8((ʯ/�d�ݘ��d��<�a^�	��$Ģ����3��a��]-.˼0�m_�2�|*�ER���^mV�ҧ�ڗ�gݲ�:�"  !  � �  ҕ ^ � � A � E ! ! �  i  b � CѼ   � � � �    f � '�-�h6�����)�������X�ݷh��nR�T
k4���j�u��Q��|�{Ep/
� c���hx3=�+{Y�ם��$O�:n�}4҄�ٔ��]4��X�9t#g�������LsQ�K�P�)"��nj8.��~[��l*zy���80i_9��̟��fd����x�"W�Фw7�PD�s�x�2�x28=��o����ɩ��a�2����m8���^2QZ�]����غ0��q�c �0���chT/p<z+S��j&;��a�嬓2>� PY;�}&^�o�����̙�<�T]E,�e���0�a-�R_�/��U��k"�&���9T8)`:"���v��29~#
 ���@�2��C�p�s�(�a��x��/[D7Z� 3�1���Z��R��`      �   z  x�m�ώ�P�5>E�k
�{��uUFt䏘n@.UAߨ����6i�IN���%�|�Y&qU0�#��ǐ�]qd^`��j���e�	Wΰ^�����5�^�:񒜜��O�t�[�T���}$L�~���|�����Y�@F_y~�ת9L��!�I�� �������l��<�T�λw�����X�����}��Ds��Ɛgy(>H��EX��)+�<���ʋ)F���q�I�O�=��n�Z=k�ebS��Kҗ�LK#�C	, ��CX���޼���-�����$���H���,���2
KZ�\aM�~�����!( V�2FOPd�mi�w
у���~E% �
��^̻�S�0�UW1;_7]����*V�]Q��@�<O���O�gAgqȸZ�7Rn��9� U�첊�ؓ<�]��븠:C����^�~C0y������_�L�b�����k�<��0)۷�f]�\�15-)��ל��\�� ە@?��' � � J  z � � ݺ �  �  O � i � r8QZ3ɑpzKV � T � � m  iKbE � �(
    � rCw � � z � � � �  C � 'J� |Z���sC���P����+''�/���w��h��˯�[J��l��.{0B?�LYS�����QT2�������`G��ض+     