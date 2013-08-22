-- --
-- -- PostgreSQL database dump
-- --

-- SET statement_timeout = 0;
-- SET client_encoding = 'UTF8';
-- SET standard_conforming_strings = on;
-- SET check_function_bodies = false;
-- SET client_min_messages = warning;

-- --
-- -- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
-- --

-- CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


-- --
-- -- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
-- --

-- COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


-- SET search_path = public, pg_catalog;

-- SET default_tablespace = '';

-- SET default_with_oids = false;

-- --
-- -- Name: articles; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
-- --

-- CREATE TABLE articles (
--     id integer NOT NULL,
--     title character varying(255),
--     description text,
--     url character varying(255),
--     category character varying(255),
--     tags character varying(255)
-- );


-- ALTER TABLE public.articles OWNER TO apprentice;

-- --
-- -- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
-- --

-- CREATE SEQUENCE articles_id_seq
--     START WITH 1
--     INCREMENT BY 1
--     NO MINVALUE
--     NO MAXVALUE
--     CACHE 1;


-- ALTER TABLE public.articles_id_seq OWNER TO apprentice;

-- --
-- -- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
-- --

-- ALTER SEQUENCE articles_id_seq OWNED BY articles.id;


-- --
-- -- Name: schema_migrations; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
-- --

-- CREATE TABLE schema_migrations (
--     version character varying(255) NOT NULL
-- );


-- ALTER TABLE public.schema_migrations OWNER TO apprentice;

-- --
-- -- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
-- --

-- ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


-- --
-- -- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: apprentice
-- --

COPY articles (id, title, description, url, category, tags) FROM stdin;
1	eos odit dolorum	Aperiam molestias et dolorem ut dignissimos. Voluptatem pariatur aliquid labore doloribus est repellat. Corporis iste perspiciatis est doloremque ducimus. Maiores et harum cum quam.	articles/6/11/2013/eos-odit-dolorum	business	tech, ruby
2	aperiam vero cupiditate	Explicabo doloremque a voluptas quo. Iusto ut magni. Explicabo inventore accusamus neque aut non nihil sapiente. Molestiae repudiandae tenetur veniam est doloribus. Rerum natus dolor est odit voluptas et.	articles/6/11/2013/aperiam-vero-cupiditate	sport	computer, widget
3	unde culpa qui	Qui commodi hic. Sit accusamus porro. Qui harum iusto dolorum suscipit rem in. Quam qui qui aut magni accusamus veritatis.	articles/6/11/2013/unde-culpa-qui	computer world	cloud
4	quae dolorem rerum	Enim unde veniam harum. Quis sit provident. Laboriosam voluptatibus autem. Ea atque nobis illum. Dolorem quibusdam sed earum dolor voluptatum qui.	articles/6/11/2013/quae-dolorem-rerum	HEALTH	random-tags, jquery
5	id adipisci numquam	Consectetur dignissimos non. Amet non molestiae nemo quia iste odit. Dolor qui deleniti facilis possimus qui. Eos mollitia ullam. Sed et necessitatibus qui et qui omnis officiis.	articles/6/11/2013/id-adipisci-numquam	HEALTH	widget, tech, love
6	et et voluptatem	Sit quae cupiditate. Qui nihil accusamus tempore ratione quia quis. Earum explicabo eum esse ut ex quia suscipit. Reiciendis labore eos autem. Exercitationem in quisquam corporis vel ipsam tenetur.	articles/6/11/2013/et-et-voluptatem	business	
7	atque in voluptas	Dolorem earum vero dolores exercitationem veritatis velit. Doloremque non sunt repellat quasi consequatur deserunt mollitia. Et voluptatum ipsum et quia harum aut quis.	articles/6/11/2013/atque-in-voluptas	business	love, cloud, widget
8	et consequuntur reprehenderit	Officia consectetur excepturi omnis voluptas odio eos animi. Ratione molestiae laborum rerum amet voluptates dignissimos rerum. Officiis molestiae minus ipsam. Eum consequuntur dicta et alias facere sed.	articles/6/11/2013/et-consequuntur-reprehenderit	HEALTH	ruby, jquery, random-tags
9	maiores culpa consectetur	Alias deleniti eos rerum dolor. Pariatur nostrum est. Similique pariatur aliquam et aut excepturi. Qui adipisci omnis velit ab eaque dolor. Et ipsa eligendi dolor quae quibusdam assumenda quos.	articles/6/11/2013/maiores-culpa-consectetur	Business	
10	maiores velit facilis	Quis eligendi deleniti voluptas. Sit odio aperiam quas deleniti eveniet veritatis itaque. Illo quis fugiat error.	articles/6/11/2013/maiores-velit-facilis	computer world	cloud, ruby, love
11	dolorum aperiam reiciendis	Veniam impedit aut in iusto eius. Id illo possimus doloremque dolores at. Molestiae esse voluptates aperiam. Beatae sit aut accusamus.	articles/6/11/2013/dolorum-aperiam-reiciendis	sport	
12	dicta aut quo	Quaerat aperiam aut voluptate eaque. Dolorum odio laborum. Similique voluptatem molestias quam.	articles/6/11/2013/dicta-aut-quo	sport	rails, random
13	voluptas molestias dolores	Est pariatur repellendus sit animi debitis. At enim exercitationem quidem quos voluptates. Et qui illo sint dolores quod. Labore saepe nihil occaecati tempore ut.	articles/6/11/2013/voluptas-molestias-dolores	programming	music, computer, random-tags
14	et mollitia iusto	Ratione ipsum distinctio est quisquam. Doloremque et ex corporis dolore animi minus. A sunt eum perspiciatis molestiae aspernatur. Quia eligendi tempora.	articles/6/11/2013/et-mollitia-iusto	computer world	computer, widget, tech
15	architecto consequuntur mollitia	Et expedita modi. Ullam nisi voluptates qui. Laboriosam quia aut. Quas sint officiis explicabo rerum illum maiores rem.	articles/6/11/2013/architecto-consequuntur-mollitia	programming	
16	et iusto quaerat	Inventore impedit quaerat odio aut in pariatur magni. Est aut ipsa qui et laborum. Rerum sit qui.	articles/6/11/2013/et-iusto-quaerat	business	computer
17	et quo labore	Consequatur nam cum qui esse voluptatum dolor. Iure aut libero necessitatibus veritatis. Cum et laborum amet odit qui nemo dicta. Nihil optio velit occaecati. Labore non sunt quos voluptas.	articles/6/11/2013/et-quo-labore	computer-world	ruby
18	dolor consequatur commodi	Quas corporis ut ipsa consequatur maiores sed sunt. Dolorem possimus voluptatem soluta vitae nihil quisquam. Est fuga eligendi. Earum maiores quo laborum aut.	articles/6/11/2013/dolor-consequatur-commodi	HEALTH	
19	enim officiis maxime	Exercitationem rerum laudantium amet sequi. Sunt incidunt sit dolores laborum. Ipsam consectetur error saepe vitae natus neque.	articles/6/11/2013/enim-officiis-maxime	business	tech, random, medicine
20	vitae numquam unde	Ut impedit at vel. Ullam beatae iure ut commodi. Facilis qui et accusamus. Eligendi voluptatum ut. Nostrum ut voluptatem doloremque.	articles/6/11/2013/vitae-numquam-unde	computer-world	art, hate
21	est vero quia	Aut sit sed et dolorem velit aut. Culpa sint molestiae aut deleniti nesciunt id voluptatem. Voluptatum occaecati dolor vitae iure. Ipsa consequatur eum explicabo molestias consequatur nisi quia. Quis voluptas accusantium.	articles/6/11/2013/est-vero-quia	computer-world	rails, random-tags, random
22	ea recusandae quis	Unde vel tempore qui. Quis sequi corrupti error sit. Ducimus non nulla accusamus est ratione maxime. Id sed veritatis perferendis dolorem dolore architecto. Sit asperiores ipsum officiis omnis.	articles/6/11/2013/ea-recusandae-quis	Sports	jquery
23	laborum sed ab	Et consequuntur amet unde tempore numquam et. Voluptatem assumenda rerum voluptatem ex et sapiente sequi. Est sunt quaerat rerum consectetur delectus repellendus velit. Maxime totam officia. Aliquam nulla illum iure atque.	articles/6/11/2013/laborum-sed-ab	sport	
24	impedit aut et	Temporibus ipsa et aut quia et minus. Voluptas aut ipsam fuga ut qui eos veniam. Illum sed occaecati quo temporibus. Deleniti totam quis voluptas ut eligendi. Corporis molestiae vero maiores illo occaecati dolores suscipit.	articles/6/11/2013/impedit-aut-et	Sports	music
25	dignissimos voluptatum quam	A culpa fugit nihil quia quae quis vitae. Aut optio magnam praesentium qui velit illo reprehenderit. Nemo et sint nulla quia.	articles/6/11/2013/dignissimos-voluptatum-quam	Business	tech, music, art
26	distinctio repellat dolor	Dolore omnis sed in voluptatem libero fuga. Dolor eum reiciendis accusamus est beatae omnis aperiam. Placeat ipsum aperiam dolorem non omnis eius cum. Consequatur ducimus praesentium.	articles/6/11/2013/distinctio-repellat-dolor	sport	cloud, widget
27	et eum omnis	Culpa fugiat omnis. Veritatis quasi ipsa qui expedita ducimus. Libero magni quidem harum similique. Quis dolores sunt aut qui error.	articles/6/11/2013/et-eum-omnis	Sports	rails, ruby, tech
28	ducimus qui possimus	Autem est veritatis. Mollitia voluptatem et est distinctio omnis. Laboriosam magni quaerat.	articles/6/11/2013/ducimus-qui-possimus	business	computer
29	eaque magnam nulla	Ipsam et qui alias odio maiores suscipit ratione. Non facere est ea. Soluta eaque eius enim ducimus. Perferendis consequatur qui eligendi voluptates nesciunt. Nostrum tempora repellendus dolorum qui.	articles/6/11/2013/eaque-magnam-nulla	computer-world	music
30	exercitationem mollitia veniam	Quia et occaecati id et harum aut. Omnis aperiam nulla aut magni corrupti quisquam nostrum. Odit et dolorum sequi beatae et. Earum est minus eius similique vel modi enim. Eos tenetur ullam est magni adipisci sed.	articles/6/11/2013/exercitationem-mollitia-veniam	computer-world	widget
31	cumque doloribus quia	Eos autem ducimus est facilis non nobis ad. Quas ut at eligendi tempore nobis rerum deserunt. Voluptatum et quas voluptatem odio.	articles/6/11/2013/cumque-doloribus-quia	Sports	tech, widget
32	rerum et et	Consequatur veniam fugiat veritatis porro omnis neque et. Necessitatibus ipsum ut illum vel molestias. Quae tenetur ratione at nemo et dolores debitis. Quia ex est. Exercitationem est delectus voluptas in.	articles/6/11/2013/rerum-et-et	business	cloud, love
33	sapiente perferendis provident	Est dolore eum. Dolor itaque eos aut et aut possimus. Amet quis enim quidem velit consequatur voluptate. Aut quae modi et architecto dolores sint voluptatem.	articles/6/11/2013/sapiente-perferendis-provident	computer world	medicine, random-tags, hate
34	laudantium ea consectetur	Dolores nemo non suscipit. Eaque sit aperiam eius incidunt. Similique deserunt facere voluptatem et sequi. Vitae vero voluptatibus qui officiis laboriosam sequi minima.	articles/6/11/2013/laudantium-ea-consectetur	programming	cloud
35	qui non earum	Fuga ipsa assumenda et. Et repudiandae quam qui. Beatae illo consequatur quia libero facere qui facilis.	articles/6/11/2013/qui-non-earum	sport	
36	architecto et animi	Excepturi iusto beatae vero. Totam et facilis dolorem. Ut ex nihil aut et nulla.	articles/6/11/2013/architecto-et-animi	HEALTH	
37	aut repellat suscipit	Iure iste doloremque. Debitis voluptas ipsa tenetur sed. Nam consequatur fugiat. Est maiores alias nostrum facilis voluptatem.	articles/6/11/2013/aut-repellat-suscipit	HEALTH	medicine, art, computer
38	sint minima praesentium	Sunt nisi aut nihil qui dicta. Est beatae voluptate maxime non. Cupiditate reiciendis praesentium et sint. Fugiat qui repellendus aut est accusamus nihil expedita.	articles/6/11/2013/sint-minima-praesentium	business	medicine, love, cloud
39	autem ipsa saepe	Possimus omnis dolor cumque odit. Dolor delectus rerum alias rerum. Non sed ipsa quibusdam ut possimus. Rem suscipit minus. Iste mollitia ea rem perspiciatis nemo.	articles/6/11/2013/autem-ipsa-saepe	HEALTH	music, art, rails
40	dolor non non	Deleniti temporibus non enim voluptatem soluta voluptatem quasi. Et amet ut. Voluptatem voluptatem eveniet quo debitis consequatur dolores.	articles/6/11/2013/dolor-non-non	business	ruby, jquery, random-tags
41	voluptatem unde voluptas	Illum molestias atque culpa quibusdam et fugit. Id in dolor voluptas voluptas. Fuga quibusdam et quasi et harum necessitatibus. Et temporibus numquam qui eum et distinctio. Rem earum voluptatem excepturi in eius.	articles/6/11/2013/voluptatem-unde-voluptas	sport	
42	aut ducimus laudantium	Architecto vero ipsum autem ut et a dolores. Minima officiis dolor inventore quaerat sunt expedita pariatur. Omnis corrupti accusantium est voluptatem.	articles/6/11/2013/aut-ducimus-laudantium	programming	art, tech, computer
43	et doloribus voluptates	Eaque iste consequatur. Similique aliquid voluptatem vel non harum quidem. Sint sunt doloribus voluptatem nam aspernatur. Voluptatibus quam maiores odit. Sapiente minus qui animi non.	articles/6/11/2013/et-doloribus-voluptates	business	cloud
44	ipsa ipsam hic	Aut necessitatibus sit quia molestias. Blanditiis fugit porro ipsam. Aut aliquid at sed eaque qui numquam facilis. Ab assumenda enim id sed ea et. Ut sint eos alias iste.	articles/6/11/2013/ipsa-ipsam-hic	HEALTH	
45	est molestiae earum	Error non doloremque blanditiis cum sint. Omnis corrupti ut aliquam. Culpa veniam quisquam aut distinctio qui minima. Necessitatibus non quis quidem omnis. Voluptas aut facilis rerum ipsam.	articles/6/11/2013/est-molestiae-earum	business	
46	perspiciatis ut fugit	Autem iste voluptates repellat veritatis. Autem esse et pariatur ratione. Est assumenda omnis quae occaecati velit. Magni sapiente deserunt. Aliquid odit voluptatem nemo itaque.	articles/6/11/2013/perspiciatis-ut-fugit	computer world	medicine, cloud
47	in vel tempora	Quo est sed at est culpa dignissimos. Non possimus cupiditate recusandae quam temporibus illum. Consequatur aperiam officiis ut cumque aut. Voluptas iusto animi cumque omnis quam.	articles/6/11/2013/in-vel-tempora	sport	widget
48	sequi facilis illum	Esse aut quos minima sint quis. Ipsa et temporibus libero neque deleniti natus. Magni voluptatibus eligendi vel voluptate consequatur recusandae. Error reiciendis et. Praesentium facilis animi qui eveniet ad quidem.	articles/6/11/2013/sequi-facilis-illum	sport	medicine, cloud
49	culpa labore consectetur	Omnis nulla magni. Esse incidunt dolores. Consequuntur nam amet neque est temporibus. Perspiciatis nesciunt sed ullam sunt non et quidem. Placeat tempora ut itaque.	articles/6/11/2013/culpa-labore-consectetur	computer-world	
50	doloremque autem animi	Non quia illo quaerat et cupiditate. Vero ex explicabo quidem consectetur cumque. Voluptas laboriosam dignissimos est sunt. Qui magni omnis deleniti suscipit. Quis quibusdam deleniti nemo illum minus totam.	articles/6/11/2013/doloremque-autem-animi	HEALTH	rails, widget
51	rerum delectus quo	Quod sapiente quia iste facilis modi totam. Illum ipsam aliquid et corrupti quidem. Rem et aut quae sit. Magni excepturi qui alias reiciendis iste dolores. Repellendus dolorem at suscipit officiis.	articles/7/2/2013/rerum-delectus-quo	sport	tech, love
52	in eligendi rem	Et laborum eius excepturi culpa fugiat eligendi. Voluptatem veniam voluptate. Et error placeat maiores. Ut id in veritatis reiciendis.	articles/7/2/2013/in-eligendi-rem	sport	art, music, ruby
53	corrupti similique sequi	Labore consequatur et sunt officia molestiae. Id voluptate dolores vel et velit itaque est. Quis sint nemo possimus autem maxime delectus. Ab assumenda pariatur. Adipisci enim debitis vel officiis est maxime repellat.	articles/7/2/2013/corrupti-similique-sequi	Sports	music, widget, random
54	repellendus eum autem	Dolorum ea explicabo est omnis ut. Pariatur vel ab. Et rerum qui inventore quo expedita.	articles/7/2/2013/repellendus-eum-autem	Sports	rails
55	esse quod in	Ut harum corrupti atque. Molestiae eveniet voluptas a dolorem. Ut non illum. Eveniet itaque voluptatem iure. Culpa omnis illum.	articles/7/2/2013/esse-quod-in	computer-world	widget
56	quia reiciendis veritatis	Eos ducimus nesciunt illo qui. Est et officia tempore nemo ut saepe. Ut distinctio harum labore.	articles/7/2/2013/quia-reiciendis-veritatis	business	jquery, music, cloud
57	reiciendis saepe qui	Illum rerum dolorem qui quas vitae ea. Numquam sit quia. Ut animi fuga facilis est illum aut eveniet. In quia magni id minus.	articles/7/2/2013/reiciendis-saepe-qui	computer world	rails, tech, jquery
58	aspernatur aliquam dignissimos	Veritatis ut earum. Quo inventore animi dolores repudiandae aut. Nihil nisi et esse tempora dolor sit hic. Quibusdam aspernatur cumque dignissimos ab officia facilis ipsam.	articles/7/2/2013/aspernatur-aliquam-dignissimos	sport	widget, music
59	enim non magni	Est sint modi. Architecto quos iusto eius. In sit quidem qui consequuntur. Est consequatur ab veritatis.	articles/7/2/2013/enim-non-magni	HEALTH	medicine, rails
60	et animi voluptas	Qui dolorem dolor et eos ut. Voluptatibus minima beatae. Quo eos et.	articles/7/2/2013/et-animi-voluptas	Business	
61	amet alias ut	Neque est velit molestias voluptas molestiae eum architecto. Rem tempore vero fugit alias quas. Pariatur impedit voluptatem est facilis nihil quia voluptatem. Velit sed consequatur.	articles/7/2/2013/amet-alias-ut	Business	music, hate
62	sunt ut sint	Quae porro nobis hic sit. Molestiae officiis et corrupti et sed. Amet quisquam deserunt. Totam pariatur labore et. Hic aperiam incidunt est nostrum amet.	articles/7/2/2013/sunt-ut-sint	business	cloud, random-tags, rails
63	consequuntur ipsum et	Magni ex sint. Quis voluptatem ipsa. Ut velit qui dolor inventore. Optio est illo.	articles/7/2/2013/consequuntur-ipsum-et	HEALTH	rails, hate, cloud
64	doloremque sed temporibus	Repellat officiis ipsa. Cumque et aliquid dolorum incidunt unde quaerat. Non perferendis ea ea esse dolor. Voluptates architecto mollitia dolores aliquid dicta est. Beatae consequatur tenetur aut nulla in ut.	articles/7/2/2013/doloremque-sed-temporibus	programming	hate
65	voluptas illo voluptas	Reiciendis tenetur sapiente ab dolorem ea vero voluptas. Sint velit quis vel natus. Ab eaque nobis ut laboriosam consectetur aut aut. Beatae neque ea aut cupiditate. Aspernatur nam corporis enim commodi a.	articles/7/2/2013/voluptas-illo-voluptas	programming	hate, rails, random
66	soluta ipsa quo	Molestiae vel explicabo non neque. Dicta repudiandae quo reprehenderit sint ut corrupti consequatur. Ea voluptatem asperiores.	articles/7/2/2013/soluta-ipsa-quo	computer-world	music
67	magni qui dolorem	Quis mollitia aut provident pariatur. Aspernatur enim assumenda dolores odio tenetur. Error incidunt quo. Est ipsa eos.	articles/7/2/2013/magni-qui-dolorem	Sports	rails, widget, music
68	optio veniam quae	Aut quo illum autem dolores et. Quae autem sed qui excepturi quis accusantium neque. Et itaque quisquam maxime eveniet. Voluptatem eos est maxime omnis sed.	articles/7/2/2013/optio-veniam-quae	business	tech, jquery
69	illo architecto unde	Dolorem voluptatem et commodi ex doloremque. Tenetur nemo perferendis et corporis reprehenderit. Repudiandae consequatur hic sapiente quia vitae quam ducimus.	articles/7/2/2013/illo-architecto-unde	computer world	cloud
70	eos fugiat omnis	Voluptas aut officiis fugit dolor dolorem voluptatem est. Itaque ab molestias eius. Sit laboriosam facilis ratione aliquam vel et.	articles/7/2/2013/eos-fugiat-omnis	Sports	
71	quas ipsam omnis	Explicabo quia ut non molestiae quos. Eum debitis qui. Consequatur vero est laborum accusamus natus aspernatur. Adipisci dolorum cumque eos numquam.	articles/7/2/2013/quas-ipsam-omnis	Sports	cloud, computer
72	ducimus voluptate pariatur	Facilis nemo quia delectus laboriosam veniam. Minima consequatur iusto quos. Nesciunt deserunt soluta. Soluta iusto ipsam et. Totam excepturi sit velit doloremque.	articles/7/2/2013/ducimus-voluptate-pariatur	programming	random-tags, widget, jquery
73	occaecati voluptas iste	In id qui ab possimus delectus. Illo sed vel. Expedita temporibus sed. Voluptatem ut harum ad error illum earum id.	articles/7/2/2013/occaecati-voluptas-iste	HEALTH	random, rails
74	rem dolorum maiores	Quia commodi esse necessitatibus cupiditate. Nam fugiat et eos. Modi adipisci esse. Nam eum ipsum.	articles/7/2/2013/rem-dolorum-maiores	programming	love
75	neque quas ut	Qui omnis ullam quas at velit est. Maiores rerum dolorum. Voluptas tempora nesciunt repudiandae cumque in. Voluptatem aut aliquam quos pariatur. Ut voluptatem voluptatem dolorem est necessitatibus incidunt.	articles/7/2/2013/neque-quas-ut	computer world	
76	veritatis voluptatem labore	Veniam quam quaerat. Illum recusandae in ducimus omnis praesentium illo. Et adipisci eum magnam est dolor assumenda aliquam. Necessitatibus consequuntur similique incidunt magnam. Officiis corrupti sapiente officia.	articles/7/2/2013/veritatis-voluptatem-labore	sport	random-tags
77	in error ducimus	Est autem aut aut quae voluptate illo. Sequi neque reprehenderit debitis hic enim. Sequi est qui.	articles/7/2/2013/in-error-ducimus	Business	jquery, widget, ruby
78	itaque necessitatibus veritatis	Rerum tempora quis officiis dolorem a mollitia. Occaecati ipsum nisi repellat cupiditate sunt nemo tempore. Architecto magni voluptatem ratione. Quos necessitatibus nam fuga alias dolore at dolorem.	articles/7/2/2013/itaque-necessitatibus-veritatis	computer-world	random, widget
79	quidem repellat eum	Architecto eius dolorem rem accusantium ea quam non. A ut laboriosam dolor commodi. Quis beatae quas ipsa fugiat. Fugit vel enim excepturi ut. Omnis possimus et saepe ut.	articles/7/2/2013/quidem-repellat-eum	Sports	
80	qui adipisci dolores	Minus dignissimos inventore pariatur. Expedita culpa repellat nihil. Sit blanditiis minus ut.	articles/7/2/2013/qui-adipisci-dolores	business	cloud, hate
81	et aut ipsa	Magni ut et voluptas soluta nemo. Ut omnis voluptatem asperiores esse. Esse aut autem. Deleniti quia modi nemo praesentium et. At enim officia et suscipit.	articles/7/2/2013/et-aut-ipsa	programming	computer, hate, cloud
82	cum vel ducimus	Quasi rerum veniam. Quae eius quo maxime quis atque. Consequatur id rerum doloribus aliquid. Fuga laboriosam eos sint porro unde. Perspiciatis aut consectetur modi ut minima non illo.	articles/7/2/2013/cum-vel-ducimus	HEALTH	
83	doloremque magni ut	Sint repudiandae ut ducimus magni tempora culpa. Voluptate laudantium ut quod magni consequatur. Alias est molestias dolore qui. Odio qui atque molestias nam. Voluptatem amet soluta sed voluptatibus.	articles/7/2/2013/doloremque-magni-ut	business	hate, tech
84	quos fuga laborum	Possimus quia nihil. Quia fuga impedit ut dolor blanditiis. Aperiam temporibus sint numquam maxime dolore sunt officia.	articles/7/2/2013/quos-fuga-laborum	business	art, computer, rails
85	consequatur quia voluptas	Molestiae et quo illo. Non quibusdam molestiae. Nobis occaecati ea voluptatem iste est id.	articles/7/2/2013/consequatur-quia-voluptas	programming	medicine, tech, hate
86	sint facere eos	Et eveniet voluptas. Et minima et quis. Ipsam molestiae architecto non. Quas quisquam impedit corporis similique qui iste.	articles/7/2/2013/sint-facere-eos	sport	widget, music
87	iure dolores vero	Vitae ea qui porro amet libero saepe aut. Odit ut id at assumenda distinctio voluptatem nemo. Et voluptas quo ducimus.	articles/7/2/2013/iure-dolores-vero	programming	widget, medicine
88	alias est expedita	Molestiae et omnis culpa ut corrupti veniam inventore. Sit et est distinctio dignissimos. Dolorem odit ut non dolore soluta voluptatem.	articles/7/2/2013/alias-est-expedita	business	rails, jquery, medicine
89	minus delectus perferendis	Deserunt excepturi numquam et. Suscipit dolores explicabo incidunt. Qui libero quos a et laborum.	articles/7/2/2013/minus-delectus-perferendis	Business	
90	ut non sunt	Autem est et vero et. Facilis modi nihil omnis iure optio voluptate qui. Non optio et. Corporis provident animi similique quis alias voluptatem rerum. Quia quis ratione enim.	articles/7/2/2013/ut-non-sunt	Sports	hate
91	voluptas earum autem	Aut enim ducimus tempora et assumenda. Dolorem nulla aut sed odit. Nihil nobis provident minus esse nemo consequatur architecto.	articles/7/2/2013/voluptas-earum-autem	programming	music
92	alias eligendi laborum	Adipisci dicta dolore tempora tempore omnis asperiores dolor. Sequi ab fuga distinctio excepturi. Voluptas alias impedit omnis cumque voluptas vel odit. Dolorem et nesciunt adipisci. Doloremque perferendis tempora sapiente.	articles/7/2/2013/alias-eligendi-laborum	computer-world	rails, art
93	velit numquam dignissimos	Deserunt et voluptates excepturi quibusdam sit recusandae et. In voluptatem eos exercitationem. Omnis earum et ipsa voluptatem error repellendus.	articles/7/2/2013/velit-numquam-dignissimos	computer world	medicine, random
94	aut possimus similique	Omnis natus quas dicta iusto quaerat aut. Aut vitae vero ut quis consequuntur. Officia numquam est.	articles/7/2/2013/aut-possimus-similique	Business	
95	et possimus culpa	Velit quia deleniti molestiae earum ut est. Non perspiciatis maxime officiis non. Officia ea doloremque possimus quis. Quaerat vitae placeat. Dignissimos iste et.	articles/7/2/2013/et-possimus-culpa	Sports	medicine
96	illo quo magni	Iste accusamus non qui dignissimos. Aut illo debitis qui rem voluptatem nam autem. Dolorem qui at qui sit eveniet facere. Odit consequatur libero magni necessitatibus alias temporibus maiores.	articles/7/2/2013/illo-quo-magni	business	random-tags
97	voluptatem et sit	Quisquam blanditiis iusto. Dolor non blanditiis quos doloremque. Ut porro ducimus dolorem ipsam. Iste nostrum optio vel dolores dolor qui.	articles/7/2/2013/voluptatem-et-sit	computer-world	random-tags
98	hic quibusdam et	Sint vitae molestias saepe repellat. Temporibus consequatur commodi error nulla. Blanditiis placeat earum suscipit aut quam maiores atque. Consequatur provident vel. Sint porro sapiente aut qui architecto esse et.	articles/7/2/2013/hic-quibusdam-et	computer-world	rails
99	blanditiis eaque rerum	Molestiae ullam consequatur odio ut quas. Exercitationem voluptas error accusantium. Quia quisquam ipsum maxime voluptas.	articles/7/2/2013/blanditiis-eaque-rerum	computer world	
100	omnis modi et	Exercitationem necessitatibus corrupti quia voluptas assumenda. Omnis qui ipsa voluptas cumque. Adipisci et ab quia. Suscipit enim atque eum consectetur ipsa consequatur. Ut distinctio aspernatur.	articles/7/2/2013/omnis-modi-et	Business	
\.


-- --
-- -- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
-- --

-- SELECT pg_catalog.setval('articles_id_seq', 100, true);


-- --
-- -- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: apprentice
-- --

-- COPY schema_migrations (version) FROM stdin;
-- 20130311183138
-- \.


-- --
-- -- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
-- --

-- ALTER TABLE ONLY articles
--     ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


-- --
-- -- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: apprentice; Tablespace: 
-- --

-- CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


-- --
-- -- Name: public; Type: ACL; Schema: -; Owner: apprentice
-- --

-- REVOKE ALL ON SCHEMA public FROM PUBLIC;
-- REVOKE ALL ON SCHEMA public FROM apprentice;
-- GRANT ALL ON SCHEMA public TO apprentice;
-- GRANT ALL ON SCHEMA public TO PUBLIC;


-- --
-- -- PostgreSQL database dump complete
-- --

