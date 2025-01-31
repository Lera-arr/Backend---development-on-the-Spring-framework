PGDMP     7    .                {         	   Domovenok    15.2    15.2 5    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            @           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            A           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            B           1262    24759 	   Domovenok    DATABASE     m   CREATE DATABASE "Domovenok" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "Domovenok";
                postgres    false            �            1259    24761    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    24760    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            C           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    24768    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    24767    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            D           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    24870    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    24869    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    225            E           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    224            �            1259    24775    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    24774    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    219            F           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    218            �            1259    24784    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    24853    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    24852    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    223            G           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    222            �            1259    24783    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    221            H           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    220            �           2604    24764    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    24771    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    24873 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    24778 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    24787 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    24856    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            2          0    24761    category 
   TABLE DATA                 public          postgres    false    215   s9       4          0    24768    image 
   TABLE DATA                 public          postgres    false    217   :       <          0    24870    orders 
   TABLE DATA                 public          postgres    false    225   �@       6          0    24775    person 
   TABLE DATA                 public          postgres    false    219   B       8          0    24784    product 
   TABLE DATA                 public          postgres    false    221   @C       :          0    24853    product_cart 
   TABLE DATA                 public          postgres    false    223   rz       I           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 4, true);
          public          postgres    false    214            J           0    0    image_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.image_id_seq', 130, true);
          public          postgres    false    216            K           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 8, true);
          public          postgres    false    224            L           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 5, true);
          public          postgres    false    218            M           0    0    product_cart_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_cart_id_seq', 17, true);
          public          postgres    false    222            N           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 27, true);
          public          postgres    false    220            �           2606    24766    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    24773    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    24875    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    225            �           2606    24782    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    219            �           2606    24858    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    223            �           2606    24792    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    221            �           2606    24794 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    221            �           2606    24876 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    225    3476            �           2606    24800 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    215    3472    221            �           2606    24881 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    221    225    3478            �           2606    24795 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    221    3478    217            �           2606    24864 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    221    223    3478            �           2606    24859 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    223    3476    219            2   �   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0��.6]�w���{�[]Ӛ˓4��AM���b������lU �/6�e�!ȴ��]�|a��v��T0�d�Z�9�.��=xL�� �>�      4   �  x��X=�l��߯��m�qAJ�R�p��b'�!J�q�y����Iq՟�,v�Y�3á�������ˏ?�������x�����o��������G��?�}�Ͽ�㿿�������_���Oo�6���M�Ъ�A���.�TkQ�<�p��m�������7�ߤ}��O_n����/�5i������������F���I3	s ��Ts����m��
���\�e�T�$��T�������J����7��j��
u�l��Pj.�^�A���ks�RHKISTӮԂK֦���- �g�(�2f
"U�E-b�ٓ�1?�� h�3E�:R��+�4G$�fd�-61�}����+wϑ�t:9���!V��͡���H�A�?��6OMO�oʋ�7!oI��1[�`��ۓ8J�����`vt��kV؆��*�}�mJ<��b�,�c�,J�(�������P�+�>�>q>l�@�T]!�'�� ���-��-ڢ�
:f�f�S�1,V�W�@ݾ����5��E��Gj�-�6eTs�wlz u��2y����I;����^�[(�6����$��)�2P+��^*u��c��'���i�Qe�5t-�7��-oc�m�%�I���V�G�@�zEKu)wtx�MC�o��p.��yt8�G�z�A����JB��7��K1�K�>�������ᄚ��������4)3s} u�� yP�վ����r��$������^G�:�6P�JD�q�iHǦ[���M�QåWi�e�ܵ�F�K�\rNa%U.G��>j��{���ԭ�\{!�%��Y��!���V�s:䢫8pt��f�/��)��� �� F��8��ZyA���[�^�N�`�kRV���t:�X*�- ->���UY,э�
�]�f"v���ֶ��C��rIۃ\�ʱ�����b\3e8��\IE��&�{��"�ZB�G���j�ֲ��� �v�nqA��������N�'�1O�A�u����%��} l���>S����3e-:�dヰ��-� hl��.�ed�!���T���ޥ���՚#z��^l�Ё�4J9�Y�s����cq��eh��A��pf4�s�����A�b�XJ#d���i�fUWM�0��#6�����%�+�bA�{H�N۫M0x/D�V�j����+��0���� ��s6��R�u��>���#�����L縩 "!���]�����:frG�r�a�:,�`��ɣ�����:��`G��O��:c�Hb	�n���Hz���Vvb�����|�Ҭ�s�܋��H�A�9���Vx_�	�̪
s��L�fqO�"�-�fj��ac;�L���� �֏� �6@��q$�B���\x�Ygp��|�t4^ �a���Xo{�9��0P:s�i���-�їB3�q@�%oGJ�R�8Z�*�|����"���<��$t���,7\7ɋ��ͷA˵�%�_J�ཎ-����+e��!������+#�4¥��$��N��'/_�Μttgm1`� ���90X�:Xr�~�*#�{�^K|�$Z�eZ��6[D�[��|���[�+"�,��������q\��8���A��Y�^�;�glX���8N5æ�V��>�A����36J�5w������2:���q�>��L����,��H��"�a��qM�t�>�v$�US q�~XW\6X�+�\p[p�|.����� �e�?      <     x���;k�0 �=�B[��I:=Ν:d0���k�+`h��������RB�=�v�}Y�?�����X�C���6]�X���T��|��K��u��<T�6t����y,i鯧e�6�i�S�o�������6�b�bk	Rq@.�	Ք��V��u���ƒҜ<GԂ�g�����'�}�,/n_V�s��`!5J"M��%�����$N����P�P���-���3�G�k�n��d�z1�HJ��Hǳu�+ܣ
�E�����\����H��V�H�z      6     x���KO�@�}�,Hh�ո� ��G�т3�X�Pʯ�nL���9��䳽�"`{��>�ʜoPKI�e���\ʚ�t$���B+pҜ��R� K��@u��'#AF\3V#ê���=bh��X�v/&}�+�&�,{2��$I�����o�bWO�O2i������#���i�&�IT0�|ý~F���A|4�z��s��A�T���.q��ŵ��\I4�kw�X��x<���T�3t�wD�n�ڮ�2\�T��J���K3\ۻ����      8      x��}[oו� ��_,-��yy� �� � �Ιǁ���D�,#�/�(��i�Nb�"Y�I2�A��n��7>�?P�旜��u�kWU��3�13"�dWW��{�u�ַ���_���x#����Q��w���.���������Z�[o޻���n��V���;?�{��n��y+����?{���oߺ���ݾ�v���o޽��w�}'������s�W�x��W������{�g�;�V�������Yq^��V�+�E^�^)^�⸘�bZd�i�hR˽�Wn������~q�}�yXnf������=�����~�d��[�;�b��/���§���^��IV����0����=nD��1a<�A+���&}���n_�_�r;�"�u�>�gᛳ0�c\�G>
��o�7�Gớ���w��n1(w��z�W��>�aR�g���p儆�������)ߓ/w0��I^��B�G�kY�A�n������s﵅�9
_~��ɬ��]���y��^n�8���w�Ga�t�4E4y���>��G�ܗ+h0��0/f�&2c�&�^�^a�=i��]�0��Y��nn�IShˍ��t������&�5<��f.|i��5{4`�r�Èf�8����;���Ax#������&F�~�À�6,[xݼE�B�'x�0/N!f���~����m�0�I��ړ0��|�ۑ�7��6�)\.k��į,fŗ�7tm/(v�QX�M~l#��(,JA�r<��m숞n�%̉J,o�I"�|s^���9�}$�o�n�)���,1���IV��}��}��q�_�S�;q���iK��G�Fg�J� �۬JX	�>�$�]d΃0>�v��a�/��Qቋ���"<}��� O��g���0�1��Iup�[@_?Hx�·�U2l��a���X y�YЩ?D$�P��J�n�[6��#�[�^��;��Eo1���>�7#��8|$�8�q�����Uk��ǢrYlf6�V�"G�$��'��ayO�y��i+j�>-�L
I��*����y}��t� �NFg��g�4� �����J��,l�?х��5���$�|҂��$��m��Z~�#6;T>���Œ��{1,6�>��X�^"�G<�4P�L���O"�4PL��t+�kњ.��?�N#6��<'c��~��v̯O�1l������&�V�؈���i������Ne��o���rGd�96'�i
	��TF�g�C4e�^�ٰ+d�{�vD��\>:Ta"�r�B����m˘)�ꗈT.K��'~i�!Ġ|B��� �`7[&�u����E����>��Yա�۫W:�vj���-�ꨗ3L<�zH8�$�}��S�e�1�r4���G����Y�oz�`+u�
]�9�ۈEm��li�}�ݾ�ڦU�dS�F�^\���ǯ�����2y�� G���_/:W��B��Cea�����t�D�C�FqKN�mؑ�@��6�e��I���Z	��߮|���/��t�ݥ���n�Y�X�nt��W:ᯯ4����ͻ��l�y.��9M����x7����d:%���$|�(��N���lYSb4Ϗ��(�a?��藁)U1d�}������T�OR��R;f�$Q~�rr�'5~8�P�ۏ��X���;�~8�-���xN�U�� �К���)]D&�|����n���/wyA1qS<h�%��:�΂�����M�c��2�{lX��َ�+w�4���a�8h���	�� ��w~��]�z�r�MN�;@������S���-�օ*8�F�lP�������?����X�d�2���W��p��b�����L �ú�Ͱ#��I�rѣ;����_G�F��Y�w&�
���� &��	�j� Ef1�>��T��1��Ͱag�ù\uJ;��%��c��{��"y��O����M�S=��^�>})I�kо�ꮴ�ӿ�.�7C+7�j����|���!-+:u���b[�F2r�ܶ�L	��!�,��K���}3�g�"`�i1d勩�q4� ш^�և��X����>[�İN7h+����t+��M9�;E @�bL�;�S*Nn�l�����&v�՞�1;�}c�Ac�ć�as������a)L�����8��9E�t,���9A	ryp���@��� ؎�9���Jt���A�z@z0
�9�;�Ʃ�w�~�8l���"��^��[���0Oо��ʓ�l�H��5�o=����K��qp�+���N(=~�L3n�`țQݖp뭇O��
сbW[�&�Hy5����T 3�C2`�8k�p"5`�D`A2t,�9�_�Z�g����s�E`F�	= 	1Zm~#4P	�`7|�L�)�_b�a1��*��Ņ$���<U7�0$�{ϲ�1tY�1v/�;"Glm�(n��7� ����Ǧ>LJ��Py�U�C�<��X���3Ȧ�C�=��(���sD�N@Ovr�P�fNć��2sC�aRG�Gv�bH͘ޓ�����e��8������-_EG��1:d1�����ĠsV��ؾdHL������K�{L�Q1
�`3i�G,;
���Z�W�PrB\�"��֢7��16���mH�5%?y;��:[}��Y˞�-Ee���|'����U�m�㑋+L��/=b�t
q*�Sq�.�7���yGR/:{�#6�
P��15H�>&�m(0��)>��^tfЀc��1������N�i���@�68}@���g:18��
�f9!���*��B�*���͐�I�{'��drZ��퓠H�'�z���ꩵ#9�0W,�|�o�)&�:�8|�^D�+��A�6��w�Y�x���Ŕ������8J<�D���F�茍㮘P�C��D�$�����<6;�6�cV"~����1'�Z8z
P{<�%�@]�.��oN(A���pB��M��l3XU�9�XZ���'��z!�i:I ]�gt�@�hTE�m�ta��l�>D�n����Z��t;+��tW��#���QV�I�w|��G�%���#Z��EKxq(�&iࠓ��#Cg�X86�{�ϖ��Q��EQ�[�Mt^��s�;�m���,��K��\����("�@�� ��R-�
~∼�t!v�L����!�x��p$~r�A�f���g��o�ґ%ܨ�C�%م�E���K��h�<��Hwцd�<7�`�6)U�� ς^�9�yi}���"�i� Ϡ��Z��g��&�y�f ���~O�f�倞�p�f��Q\z�1��ܶ'�n�G��'�����$<��CdC�y�)Ƈdn��Ǫ�q!��	X�hK��h�M�5�݋ _�|to���k-�S.܆�'~�������nnޘ��pwl)�BX
��I��������j�)WgA��+3��P�4�=o��s���#��p��|x'����9�~.���lB�f��`_>��ߩ�SJ!c��r3B;YYH�6?���4�g��M+RXN ���Ί?�x��<T(,p�0�x��������T������t��9�V�e~M'\��O,�'��ך����3���%8���>� �n�j�õ�f�����w�S�\	#��9'p�����	��,>�#@��t�x���v/���5���3��2�~�)Ռ��A�ٗ�؊*�a��!��;��_h��o�l�^d�?��Q���m��j��U�� [(�qVx���ico��"����4L����Z�[Ap���H?6o�&fg�5�+�O_!m5��=��vhPx��hs�)J�Г�Y3�2�
ICl�/x+�\r�⋺��j�Z��¿IMހ����яX���:��Q�_�N%�<g���%Lw*$q���p�c��M�2�Jϫ�T�|�uQCŨ�L�t�h�85q�ǅ�!̑�n�ӵ-�Ebޒ y�*K�\8J�B�HЌ+���ș��:7���O�R��-��a%�(��v�1d��l��8�[�3W���c ���Q���
U��2�aO��E�/�	�$���
�kfp�-���Lv�� �"'�6@��    .#�U���e�b���=�[��G�x��j�����9��-QB�1~-�B�Cz~_2�7E &���;�q�ɕd˞�	{�
�@4�tBEo���Yq�.���v����\�Q#Y��y{9�3���F9oWѩ�hn�K�:������<�~tp�,������^��1)H������sA^���+�?f��Ыp���e�@H��i^&������ʈ��	X��p\F�H3��+ �tJ��2�>&���#�APp���@�*D|g#���!,?&�H!�#����c�xlU#B�Oo����.r&��޹��v�ib���g��J�k&���m�HՃ�8S����_�^��+T�������
9z�Z���8#��2sC�J��J�_�tYr��þ�F�a����;��;ru�I�~�֝��	x��y�>'�e{���m�s"4ޚ��5C���VmC',C�]ۚG�*=�@���[S�bk�},vMՏ�\{�~���A$_U��"0�b{��|��C��HX�c�dS���t:y!4�]]�O�n6��n.m��d���ƝZ����6�pm�Vr��E�ʗ1�S�˚���(C.dS28;����<�k�d���CX��7�U�}77��ݵ��zw��d,D�%zh�8�����1H�@�Ip9��O=y�r2���J8��!^CRHɄ	4��zX�X�(�s�\0�����1�T*�n�Y�8�aT%3��l{G�;sʖ6�	�I�6��R��.~W�I�U�S� ��Cg�p�_L5>cO$H��Y�:2�a�0K�∂�X'�������V���J�eH{}
:� <2<�@��ؒ�@	汢d[Q�}�Dd�N <S)	!`z�!?��T�ɔ�����|���h0j*L��1*o�c�JRS�l���B�1�lJR7�꩗����?�6O<J�� d�Imژ�&�\u�P�����uG��=����rx�_e'kXK)�ǚy��e; ��g���@l�Y7��Ј�ѯ���qԂ�5y�H�\��lj�",��'��ɆḴ���ĩt���(%��?�b��+5�h�:�y�
�!�
�\0B���g1/)mf{>E��S�6�<�P�y�e"a����e�ZS��p�s+'᠖9���3Q���"��aK>#����pF�����A:�/�<��sÁ��+�Bo�P�c��55Vf��v߇� 4�6�\v���+r�KY���Zc�eE������a �^aR���|6�DHT-��s��V�!���^�Uzwd�s¥��Ǚ�}����3}���
#R�1�b�o�� �Z�I`^�AJ�+oF	�$2���<�M~a9�S�&k؅CƵ���Z�&�Ӛ���sv��BNډ�<�����_C{M�<�T�8d�:�R��q� ��L�#ޤ(�}��O��uV�~ �LZ+[�s�fx^�P+V�\j\n�bޤ��+}Lʘ7�������H�)���NZ��l��G�����>�Wky֠R�����@����u���*萁�a�[f�Qȇ���nBCx?Y�0�-�����c�} ?Xd����>N���s`."S��jk�z�<Y�kՒP�ޚ�wuض�IG��������2z$�`�ůQ��v�Ÿ^�cѰ�{Z(! �bN"|�i�p�Mhu�9s��0�0:_��g
^},Je��-�����9�&�)8��,�6@�B���@ƒ���&Z)8��C20j�M���cikeo���C̯��:f'��������Ŵ�4jמ���dN�Q��;`��Tsu�̖vh��I��?#a������E\=[���=}ksl���c	�t�V�}#�O}m�MJ���Hx6P`O��k�KF����:1��M�����<e��t 7��h�.�������!j�,	�NE���\%�
f�%ILN������Ǣ�����6K�UH�_\�믠�����h��	�=~�*���XD=j����:�>+�}��i�_1��P),$hR7/�jjy��lBk�M31�T&���Zn1�X{�Y��pj�h�%�������Q�P\D��3I�|��Q[,s�9=��o��ibʷR;���T�:юQ]�U��DEX��+�3�9��fNH4S��Hӛ�u�X�Íƈm�"O�[Enۗ�xe�r�bi0y���[�-{Fo:x���k|E�w .�����W���|�ݒ2�:Ϲ��;��w��D�S,��g�i�v���c�GA���+��ʹp1�.!F��jQ�#8�i���Io�i±(�����g��L����Jw���.�Yv�:��sL����a)���W�,�����g�h?�snR�\�aэc�AWs�_��s}���"c:�>*8_T���.��7�9�qO�z�� \���pI��߽ڐ�aR���]G���W�CB��e8�K�WW���	�����?ON��ٛ.z�$c�9��D�cɖ�,���.&R�� f�Wz̊�[�w���! ;ή��1���_��gp��Zgiiciyqi}���,��O��%&�� ܞdB������Ɲ��2�� 㚯��#D��1PCb7A��砨��o���8�e��r�k���[Ґ(��p�w9 Hv��P+3������kH��ߑ�VH�o��.N�;�P�d,�߭��q88�3x�<B� �� ���r!z!��z�{�b�ɼ�t�p՞s�c2�(�
�C�ϓ��O�$Gp���`CuN�;���Vay���ػxƩ ݖ2GE��c��*%@�����\������H����;�����������޹�N��ߑ�)�=Χسm��,M�(� _��>e�"���7a�go��孻��'�F7��(���hb�+���� ��C��/�K���Zg 5��.�%�_(�I�P{��T���R(�piJ���v0<C�3��zZg�0T����*XfL���,�����b4�h㾖>KLVM]�����^ˡ.�0�N4�+|�-;z�8������W��;�B&�@�`F�d|�Xg3��3Dԑ��k�w-��>n,�;
�����-�kyvI�]wi��>R��!���Mƥ�@�؉/���Q�f�pKΑKD3��K�)� �Tyb��kw�Xo��.�ﯬ4���'��u	����%4�k�k�q�>U��G�V'0Ou�Ѕ���P�|9SU�^�����'���\�N�Z\�WV�n���2Ov�c�4SN��
,H;'��#Q�� ���p�����}G����U/�uL+׷�$C��.�n-b݈��)z�ӝ��Wl�P|�����'�;`�v�
���*�rS��^��/n�z�V5��7���w�h톫��C�^�����0 dRH��7����F�@eqL�C�\�1T�ҹ2�Ƹ`��Y�7����~E�K�P�{�I�ڄ����{A�ﾣД���0鈩����jE���+�kb}'�~����8gI�Vq�.����s����ʼBrq�K)�P+)��|�PV&~V������Ȇ�rUX��u_�k��q����O�M�$�E��%�����ZL]H�6qb_�)�TO8�O��4�S�gO�h�Gf�b�a1R��﨎����O�)�ua^Cn�W���M��`��M&څ�w�TF~KC�yt�N�k90�4j̴Q��6����_����0N�B��J��G��1>�g=f3f�f�"8���a%�22%��J�F������Iv �m#�˰Mܫ'�@�|b��&1�Cf1p���rT�&����SB#�p�9j�%�p�
mO����8@Nq$\�gMv%\s�\��F��9������`>Y�>��#r��J�h3���J����F�M/�1�*g/UV�+�Qg�J��?�Wj��;�x�5�)�F��9.���y�Pཧ�8�<i�"�W����ʾ�<��C6jM�9\�[m��l+7V��d���.�����**Ǫ�cʢ�m2�Gq��J
f���#Uze!t�y��k�%�0���ɢ��o���n�zwH��Y�    r�a� q�(�[��caQ��sʘ8�� �or�9c�q�U�1�z!HK�/&L8J�Ag�)��PL�n䍉����[�i?�V1�d�|s�m�L{����R�����,�L}��O�L!�ԟ�)�����)�\��}�m�[�����ǉ/P�6��]P�޺8���\�S�=��L��v[�*�5Ah�ZM�+�:�[I7I�N�J׋�ųW[ڲ�I��PF/�3��#vڒ�l�#x�w���A�b�[�IG�\l5!E�z�s|�4��8�a�\�?��JD���AI|h=�^���k��G��8KIf�@�P��W�*��x�3��D
ҕS2�c=��j�q|�5֮v��LJ��T2�Zq<n��
�ȉ<�I�r�RV�P�<�	E�M����TK�8B�Sq������}&:���ٵ��I��� ��Ǭ�]_��|^�W���4����u�ʏ����+L�`���\�6I�
E�"�f����+��]Z�������yb�ÁF�Z+^39�Ō-׭`�j-HϜ����ʬ��Lw�X�,�h��t�0�Z�F�U4�,(�u\3k�b")5�l�:��R6�M�X�t������ u�-I�3������~��LQAq��>�,_�@NS(]W�S�q���.�,�^,¤�9"�W�G↺�h�\�9�"묂{1�%��I�m��6�C�
�0LnS�#�i:ϧ�ĸ2Q�h��S0��r���#ί��>zq����{>.���T��CYa�]�nG'm�ʽ+��OX��d��VO|Q#���v�����ձ\�$��E�=����	�����J�4��Т�e��}��2��X˘$(��2^ĥ��=]�Eb��il�C"�uRth���C�9�/&m�Hݼ����p5-ul�u�i������X{��#Q��������8�Fזam�
�}u��94~��5�ԟ���OKf�#�S�cjj�Ʉ��g���Z� �ز���.)j��$-��ӹbw!!}�]txTt��E�3�%�ވr}��c={��x�j�zs,��$vu'�EB�>q#���K/�j�?ӞU��%#��ܝ��+�b�HsI�OGv�G�y�sPj�����Su��}�ܕ�.,q)��:��J�Ys�O��J���X�%�D�'T)Fi*hRDܖ+��ܖrCk�k��k51��(�P(�YN�-��?�)j��֥��K�1��Ri�|�I��f�Uz{c�Φ��(�Y�.��U��e]�|P���jCA��s4S2��\�����)''G�o�'En3J�S���[��)w�L�����}3���0)-�MٟS#A���~����{������swnwq���s�y���u.�9,/�_]��R_W=��A�Ԁn¥�6\��\�Ɣ����0_4T�W��o�����߾�]��]_�g�o���[?�~���eח>x�~Dh���S�S�ghg�}?����4�7:�����%ȳ��������F6�Ҽ��2f�R&���͸K_���dL("���^ێM �gN��p@��h�:HI�Jb:�����]�F�M�_�(կ�bA��L
�9�nm�:����k2rN�̽h��ח���26"_�KKA�&	\|��-���.�W�Kk�s���T+��}����A4����n%M�z�V��/��r+.�HȾ:��a���b�M��氃I3N�*t�7{�_�16��k\���B����x�h��5�}�p�̝��M�G@���.������#�v�I��1k)��:ǰ
��R7;C���Z��LG;��IE[&��e�n���W(Λk�qh���h�
�US|QOdcWh�sխ���N��rLO-��Z#CO���T������He�p�sW�(��a%�� ��q���V�IGEC+�ꨘ$f��$���X%���
7�b���&�a��9��zwW��F\ �T��X���@��tR�! �[ � �Vsu�a��z,�فA�3�v��԰�(5�N��bҥ��)�w~�H��M眬�Tm[�%�F\�k��9R�
�fzf%n��hj��x2H)s�d�m�`�s�g��ѬG0C�<j�R��ϻ�[F�k{wR��]{�d�CJʐs9kH��J����A��6.ys��8�`����H�î�LKWόA�L�ۉ�D�Pf�R�F"��99�[�e�Lc0�VkF� �����R����&��'�I
m+vh����o[}ۢ��Eٷ-��mQT|ۢ��f[}ۤ�?@���2m��mR�m����&E�p�"�����U��#�8��Os�
�\�5B:���H@5tx�������S@/���hX�x>���cOC�����4՜�C��W�8�����)���G�GR~�#�d ��_A��|��F�����
H��[�����V����
zx����z�TӒI��JQR����ˊ���z��q>/��R�.�O\�Cۖ�9���zS舛�!�O���_��}ʻ�흟��W�?ܹ��[�d_
d|��R�bkA{�89�I�uj���Սn{����^��>�����wF��!����-��>^F
}��"�wh�9�7R�60�D����%ǂO+�����Հ��:})��C�����L����*��=��R��qꂭ`+ͬ������T��USJ���_t3��	��:��a6��1`�D����⼆�Ȳk���ǥ��V�[ �)v�u����`c��W$�VV����F�f3�##r"�W���Y�C���.e&.*�퇠�@�'-������}S��a[ir�|��Fonj�#�4��g�
�/���A������jﶰQ�m���PZ8!��č��iQ�_��67���c�!���Gb�ڝ���@�Zs���<o�^2)ü�̞
L����͵+��z�~Z�T�[�-2[3%���.�%~���D��8��^Վzu���C�ڂa��.��<u������S����a��G��!����&Q}��YN(��~t��YZ�[�����ٖ�h�JsO��RġEL��=&z	��pjd��k��gȥG�	s��0VIA�\�=�n���R3HwAӥ�p��"9�YF���`����X�<�f�����ә -C� ia�U>�I�2i)��D��oR���+��b&���-�A7��G��`X�B���`E�|3��ƌ�p┡���T��ģ|Lix��=�2KOÀ2��$�K�����@��X�������4�p-̌U��DZpD:���͛V���X�����z��J#�6��kY[��>S�D{�Ӷ�ṃBO���0�c�gE��9O�Vr����U��_>������mK�3��E��k��vjg7Ͻ��\$de*���^�nA]����gޢJN[$�U�O�=�EHb̪�1��Q�|�	,.O�]�'��I�Q��!Z�Uԫt䫢��wx\�(�NR5�(�����k��:��Cx�&��j��KV�)#չ>�(H�C޶
���U0��(]�:e�ȁWNW�5�Pz�6��X��w=38R��R��V͘(X��b&���
}7��UL��s�C�Y�����t��{��4�rZ]6�����HG�G��郬�Q��c) ��~L��V_���`�`��\�KD��-�*�E�0�8��)�j���I��-�@���_"��%��$���1�d����5l��G�6��e��U[r���4:!�{�rZpM_�ՉPU$�Rʉ��qiU�f��E�hrݾ��&12u�"�Uw����1/�#J���K�ė�$�nc���Yj�N�^�x��E/�FɗH�~2U��D��D垭k)���^;a�TT�U�"Ug��VR_7P��Z����r����_%9"!���Ǣ���ޜ���rINTÝ��P9�S�"��<��V�2�=
uh1�b�NI=c>K2�����\�`z�f��>g��~Z�<$2���/`��ْ����"�2)� �D[ҰVt7<��u�O�8�Q�J���݉N�~1�y)G�\�,�ػ�K1���0&_H�F��k���\�C^���<�F�PVd��tk/�d��(�"�O��=�~p�Q[V�ä�   6���S˿W�V)����7�7��M.�F�����E����0�d���*^T=`��h崺�Y3�_�[�
�\����v}��j�t�
y�Y?��X��֤�H�Ct$�eݓ�ʹF������G����ͣ͒���L�X�CqQX�-��`Y�3)j�e�����j�Rښ9
s��<��~�v5�Y���ul2��a�W[n���OiY���ldj0^��\�ٵ!���4f���L��$��4�_�@�ʶ[p{��Cd[��R8��ŗ�5���>�/ρ���u>#祾�E!ըJ)H3^xΊ+�m2��n�Q�\�D��1��($�����5�$�^�U��q�Wg܅5v�2�?�dV�їͮ.Q>�R��T��\q{q}y��x/k�½������H�����S��Ò9��Τ�����1n�P�,����38C+�o�xw�~���Fguq}��ܾ��@����(�^)���кt(vq�Dq`$pe������ğVt	�Jݣ��.zc}TIL2�e�I�X�K���YQ�*8S:>G_ˈn�1��?�M.�< �o\���J�>i�����҅Z�<ei҄U���$
0��̕Q�P�f���;Lz�9�h{�:�	�覆TER�{�)�ڡlj��*=��˦(�Z�������?����d5W+kX9q#��{-�
�j�L�x����QJ�N@Z|5�#s��h�7�n�G��K��{D%���o��2����1���S�PR�����!4�)g�Ϙ/�A��o�Uz����a�j�X{2Q� ؄�H�B��ui�R�&)
sG�q��_0/12�K�?.�r_���0k��u`��T����d-���L���~�	�A2�<F�J)��%$��*3^e@ZCU_�}V�����/�|F��Je͙��l��<��Tق���9�Xx��]�g��zX��ܤ5i�|�*���?��%]h#f��:v�u:�J��\���5Qק����)1ɽq)E��,M�*�'�b,Y͖�$i�u)>S��b�}]s����8q�۸<�Y�aZی,�ĊI����=7J�&�.&�.-��[��G�Ym�_���6G�ɕ��v�/Ho�SmW�^l���Q�Ԝ��{����f5��en�s�ʢk��%i�����;��}?���e��h|�F�~3��tbˑ/�Uc;J����,�}���v�v�&*8�ɝG�Gn�Θ�������g�5�o���������"���I��!N��a=�����=3C�d��z1��Q�r�7�(��g˚��'����x����ЂnM����� Rר�I�>4F�`�6�I�	?� }�2l��Tj�>;�1!4v�j��W�9|��X"�0�O >l)ϴ�r!ts٩�(��Gh�'�!ؿ�:�E܁�8}�҂Fer������m�y�3���C%:)j�[�Hq�=�)ʢm�_d ����uw�E
�EhLM�	�I˾9�,ZB�<����ƣ!\�Tپ��>������OJsw����EO��[
W�äT�j���L_��� J��:�IK��v~��G;Yw��x�DK+UqF]��=D+�Ҟۉ�$�~�b�
�ׂ�3@s,����Nf�W��M�'��\���y�	"y��*�#Ta�
����:A؀�
��@L��r�Y^��'XY-wo�{5f��k�D�Sk���`i��+nb��w~v�w~���ܽSݸW/s�z�r����'���`�ݰ`���G��<��u�6P���n�/u�i�t�o�����+�V,�      :   
   x���         