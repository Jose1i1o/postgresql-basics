PGDMP                         {           pill    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    26859    pill    DATABASE     f   CREATE DATABASE pill WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE pill;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    26897    car    TABLE     �   CREATE TABLE public.car (
    id bigint NOT NULL,
    client_id integer NOT NULL,
    make character varying(50) NOT NULL,
    model character varying(50) NOT NULL
);
    DROP TABLE public.car;
       public         heap    postgres    false    4            �            1259    26896 
   car_id_seq    SEQUENCE     s   CREATE SEQUENCE public.car_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.car_id_seq;
       public          postgres    false    4    217                       0    0 
   car_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.car_id_seq OWNED BY public.car.id;
          public          postgres    false    216            �            1259    26861    clients    TABLE     �   CREATE TABLE public.clients (
    id bigint NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(50) NOT NULL
);
    DROP TABLE public.clients;
       public         heap    postgres    false    4            �            1259    26860    clients_id_seq    SEQUENCE     w   CREATE SEQUENCE public.clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.clients_id_seq;
       public          postgres    false    4    215                       0    0    clients_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;
          public          postgres    false    214            u           2604    26900    car id    DEFAULT     `   ALTER TABLE ONLY public.car ALTER COLUMN id SET DEFAULT nextval('public.car_id_seq'::regclass);
 5   ALTER TABLE public.car ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            t           2604    26864 
   clients id    DEFAULT     h   ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);
 9   ALTER TABLE public.clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215                      0    26897    car 
   TABLE DATA           9   COPY public.car (id, client_id, make, model) FROM stdin;
    public          postgres    false    217   a       
          0    26861    clients 
   TABLE DATA           C   COPY public.clients (id, first_name, last_name, email) FROM stdin;
    public          postgres    false    215   �                  0    0 
   car_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.car_id_seq', 1, false);
          public          postgres    false    216                       0    0    clients_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.clients_id_seq', 1, false);
          public          postgres    false    214            y           2606    26902    car car_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    217            w           2606    26866    clients clients_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    215            z           2606    26903    car fk_client    FK CONSTRAINT     �   ALTER TABLE ONLY public.car
    ADD CONSTRAINT fk_client FOREIGN KEY (client_id) REFERENCES public.clients(id) ON DELETE CASCADE;
 7   ALTER TABLE ONLY public.car DROP CONSTRAINT fk_client;
       public          postgres    false    217    215    3447               J  x�mUMw�8<w�
���}|#�	q��ggf�7��^d�$z��+ ���΄x��P�]�U�O�O7�V��ͣ�P�у�w�|T޽rH������Q&h!�[c�t��Z�mm8v������:��:rBq@�eo%�N)M�v�Sa��������5����~�M�E�[��Tܱ���4uCk���ri��)M)���kYR�..������[+�j��;i%�!��i�Ղ������ڽ��Zѕ�ϲ½�D2Nt�����f�N�M�7?�U�$��9�cw�&����������G'v�F<J�ie�*����5@� peXƳ�"�sHAD��z��V�}���--�(�/��� sZ�_�(�ժ� q_�ֲ�=NR
=��u��\5]o���]�d�%�g�m����neM��(MbZ*6�����>�>-u��[�>��˦Û��8b�C�Cl"���f��0�0�8����e�f�͚���KG�@yB�74W�j/�T�F��"�e�r�R���"0�� 3�S�@? ��ڝa?b�M���l���������e���(���E��8
)���T�
��:芣���������"��&�_�`�(!���kڶ3�e��>|���F��im���8�5�� �a��lɱG�^H��\h�蘛�XY��C�Yö1pğ.�dh	�\�W�|Q0O�Q]�By�eg���Ļwn��h��I@���.8��t�W�.7`h�u�aD�w&���є�u:��^�����ㆿ$w�4���"1 �V�;p�$����܏��w��Nm�x�͞R �`|�w��$C��g���ޱ�.�&�V����I#����ۇ[OX���WF�����=I�A�LuhXN���{�1.��a��Y�����1��^��l��a/�c�	�����6����`����L���}�c9�}�6��o`=	�f>�H�HC�b}=;� �"��*�mo��a1�d�Q.�V�;�"�Ǯ��E̙O�4ĳ�ĉ�K�D��4��0�n�[i{��[��H��QR�r�]Aƚ����;g�C8ɉ׃Um;�&`�'ۖO
���H�I�/xݯ0�=Z������:f      
   �  x�mW�rܺ]�|�wYyj�y�%ۑ��*�HbH� @�h��s P�7���>*�xt�>���[��V�>Xߊ��44�pU������>
���V5�2��)2^ե(�hK�vh��G9X�}�o��庱ϫ}A`w�qZ��1l��ҥM�t�V�Bז�t����aǫ�ZWbu�oR8-�����Զ	BwN�ʦ��t=;k�Z�T����f�Z�N�����[��H��|�zH�骗t'���N���s�62�؆�/a$]��I�+c8�^�1����K��F:��7��A4ҧ�XA��'^}/�FP٧X��� r��n�ƺ	U+C��]P�9)���*��ӈ�
C�)���B˵���ӣ�f�$���;(��$G�^���aTF>��wb�XWS�3��^ �ˊ!���G�Z����C-w;ѝ25]�6'��x�-Q}�ԏ��Fx)s�J\Q�T���r�wņ��f����\(�����vt�\[׬
F�"�1ף�D�S_��/��i����{��M+|��Th�G=�U[��S�jZlDnz�=�����W��u|���;Y��������7��g霢Ǫ5������� ��V<���Zc�Rx?�AT�^G��=�܌���ߟh6/R7'��Ϩ��j����g�C��҃,�r�������톮�m�V<����Z���C+{	�HR�l}��n������8r/z?.��F����`�0Qn\ϼ��/n��һ��C���!�!����/u��v���ѽՑ�t�3��e�����vO��{���q��_��Q�
���C�.5ӵ�G�����ʾ���/��MCLL%��/�m�y���^?��	�E�>D)3�|�c|h�Zt������c`����#w��P*���+=d���Z�R!��
����`���+(�ԧ�v�W~�!oX�U�W��qT�t�L�]�s��W&/��?F)v}��o�K������"+�-8kb��e��%c:;�v��O��>J��Гπ��0��p�����u#}q�z�����|��;�7\
��{k�A����O1���Z�N�#����HS�+�W��%�j�3�e�i�|���V���XŃ�In��m轒��뱁�]�X����&o�g�b�ak_Qۙd,��$���\��Q�nG�㫫:v�|���[��H+A�'B'�Ƞ���Kvq/��U�����X�'����L
x'ڙ@�vf�����f?��Q5P��b�D?d���Q��9�?B��G���u\�a:��	���.�z�)��4o�A�et�=)*�h��Y��'�i�=2/p���d1}�hѧ��#j���>0d �L��K.Zf�,���z��ա�7���-:	š���A�Χn�m�A��C�ˀ��uuH����x��X�gU)���|k�XfJ�t?Ã!"�nӻ�簵a���p��	��95����Y�.��˕:�֐d���#Q��F��X�(��D7�u���{r�
��Ğ�J�YӒ3��~_�9v������S�7�e;�sc�G�ӂدWǵ�b\Y>��K׌��˂،M��x���X��Y+4ʇ\�v����;�d��q�t�j��̓�*��ȶI-�I���۱�54�u�x1��>ͮ���Z;A,���\6�����ԕnf2������x���`LM�T�]Ƞ�qa�/�w:�W����'�f�Ş;��}�t���-�	��+,ܔ��O�y,���%��+,�h�>
z�:14��)�A5Kڄ�fT��$Kc�|��#Q�a�Q��+<3���%����촍�0���*NG����Xp!��*��wڡ�V�Jcf�����Mധ;|����`R�k�
��� ��v���t�P�(_=��"mȨ�y5���~��r:҇t���%5��.��pBi0�X�����1�1�uH;��L`��f���E���-���+cC_����|��E����3l/�4��%���)�Bq?�Ѧs.ΰmW�'w���N�/���'�M'�,��m��˨Y(آ:*���/>��;����G?�z�
�W�x�cnA�@�1��TM=�-���Y�|@��ގ5�o���!��pVl�:�,�9���iL|�#M���<�|�cHz�׿�Y(�L��a�91�
��Qޣ�K�1#�{Fdd6�m6�v�w�U�A�"���^ǰ��W��=ZL     