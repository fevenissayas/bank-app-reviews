--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)

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
-- Name: banks; Type: TABLE; Schema: public; Owner: kifiya
--

CREATE TABLE public.banks (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.banks OWNER TO kifiya;

--
-- Name: banks_id_seq; Type: SEQUENCE; Schema: public; Owner: kifiya
--

CREATE SEQUENCE public.banks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.banks_id_seq OWNER TO kifiya;

--
-- Name: banks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kifiya
--

ALTER SEQUENCE public.banks_id_seq OWNED BY public.banks.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: kifiya
--

CREATE TABLE public.reviews (
    id integer NOT NULL,
    review_text text,
    rating double precision,
    review_date date,
    sentiment_label character varying(20),
    sentiment_neg double precision,
    sentiment_neu double precision,
    sentiment_pos double precision,
    sentiment_compound double precision,
    identified_themes text,
    bank_id integer
);


ALTER TABLE public.reviews OWNER TO kifiya;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: kifiya
--

CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reviews_id_seq OWNER TO kifiya;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kifiya
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: banks id; Type: DEFAULT; Schema: public; Owner: kifiya
--

ALTER TABLE ONLY public.banks ALTER COLUMN id SET DEFAULT nextval('public.banks_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: kifiya
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Data for Name: banks; Type: TABLE DATA; Schema: public; Owner: kifiya
--

COPY public.banks (id, name) FROM stdin;
3	CBE
4	Dashen
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: kifiya
--

COPY public.reviews (id, review_text, rating, review_date, sentiment_label, sentiment_neg, sentiment_neu, sentiment_pos, sentiment_compound, identified_themes, bank_id) FROM stdin;
1	A great app. It's like carrying a bank in your pocket.	4	2025-06-07	positive	0	0.577	0.423	0.765	User Interface & Experience	3
2	More than garrantty bank EBC.	4	2025-06-07	neutral	0	1	0	0	Other	3
3	really am happy to this app it is Siple to use everything	5	2025-06-07	positive	0	0.734	0.266	0.6096	User Interface & Experience	3
4	I liked this app. But the User interface is very basic and not attractive at all.	2	2025-06-07	negative	0.164	0.736	0.1	-0.298	User Interface & Experience	3
5	"Why don’t your ATMs support account-to-account transfers like other countries( Kenya, Nigeria , South africa)"	4	2025-06-06	positive	0	0.714	0.286	0.6369	Account Access Issues, Transaction Performance, Customer Support	3
6	what is this app problem???	1	2025-06-05	negative	0.448	0.552	0	-0.5007	User Interface & Experience	3
7	the app is proactive and a good connections.	5	2025-06-05	positive	0	0.513	0.487	0.6908	User Interface & Experience	3
8	I cannot send to cbebirr app. through this app.	3	2025-06-05	neutral	0	1	0	0	Transaction Performance, User Interface & Experience	3
9	good	4	2025-06-05	positive	0	0	1	0.4404	Other	3
10	not functional	1	2025-06-05	neutral	0	1	0	0	Other	3
11	everytime you uninstall the app you have to reach them out physically. very oldy! if that's one of security layer, they'd check for fraud attempt via app source directly(source:- app store, play store ... etc) implicitly ! we are in 2025, physical presence for every app install is traditional(traditionally very rare).	1	2025-06-04	positive	0.066	0.82	0.113	0.1739	User Interface & Experience, Customer Support	3
12	አካውንት የምናስገባበት ቦታ ስም ጽፈን ነው ከዚህ በፊት የላክንባቸውን አካዉንቶች የምንፈልገዉ ነገር ግን አዲስ አካውንቶች mr ብለዉ የሚጀምሩ በዝተዋል ግን አፕልኬሽኑ space ስንጽፍ አይቀበልም ቢስተካከል	4	2025-06-04	neutral	0	1	0	0	Other	3
13	best	5	2025-06-04	positive	0	0	1	0.6369	Other	3
14	bezabih	5	2025-06-04	neutral	0	1	0	0	Other	3
15	Best Mobile Banking app ever	5	2025-06-04	positive	0	0.488	0.512	0.6369	User Interface & Experience	3
16	good	5	2025-06-04	positive	0	0	1	0.4404	Other	3
17	it was good app but it have some issues like it doesnt give me the right amount that I have in the bank and have some issues in transferring	2	2025-06-04	positive	0	0.839	0.161	0.6369	Transaction Performance, User Interface & Experience	3
18	good	5	2025-06-04	positive	0	0	1	0.4404	Other	3
19	Good	5	2025-06-04	positive	0	0	1	0.4404	Other	3
20	👌👍	5	2025-06-04	positive	0	0.246	0.754	0.7297	Other	3
21	very niec	5	2025-06-04	neutral	0	1	0	0	Other	3
22	best app of finance	5	2025-06-04	positive	0	0.417	0.583	0.6369	User Interface & Experience	3
23	yetemeta	1	2025-06-03	neutral	0	1	0	0	Other	3
24	Engida Kebede Fetera	5	2025-06-03	neutral	0	1	0	0	Other	3
25	good	5	2025-06-03	positive	0	0	1	0.4404	Other	3
26	it is not safety	1	2025-06-03	negative	0.437	0.563	0	-0.3252	Other	3
27	NICE bank	5	2025-06-03	positive	0	0.221	0.779	0.5473	Other	3
28	it is like a childish app make it better the worst I have ever seen	1	2025-06-02	negative	0.278	0.485	0.238	-0.2263	User Interface & Experience	3
29	It's a problem solver application, go ahead CBE, I love so much.	5	2025-06-02	positive	0.16	0.592	0.249	0.3612	User Interface & Experience	3
30	It's good but try to make it facilitate for your client	4	2025-06-02	positive	0	0.837	0.163	0.2382	Other	3
31	best app	5	2025-06-01	positive	0	0.192	0.808	0.6369	User Interface & Experience	3
32	Awesome bank	5	2025-06-01	positive	0	0.196	0.804	0.6249	Other	3
33	this app has developed in a very good ways but there are some comments I need to make 1- preventing the screenshot likely not good for someone like me coz I need to make screenshot for quicker evidence. 2-it would be good if you make us to access recent transaction histories for 30 days coz we don't have to go to the Bank's in person to see old transactions or add colander category so user can easily access old transactions through colanders.	5	2025-05-31	positive	0.046	0.818	0.137	0.8567	Account Access Issues, Transaction Performance, User Interface & Experience, Feature Requests	3
34	Masha alla	5	2025-05-31	neutral	0	1	0	0	Other	3
35	Recently there is big problem when sending to safaricom, telebir, and even to cbebirr wallet could anybody who is responsible fix it, it's very frustrating it's been 5 days and my money hasn't been returned it takes it out of my account but doesn't send it to my mpesa update- they have just corrected it and sent me back the money but still I'm afraid now to send again	2	2025-05-31	negative	0.055	0.922	0.023	-0.3174	Account Access Issues, Transaction Performance, Feature Requests	3
36	better service	5	2025-05-31	positive	0	0.256	0.744	0.4404	Customer Support	3
37	it,s good app and time manager 👍	5	2025-05-30	positive	0	0.707	0.293	0.4404	User Interface & Experience	3
38	malkaamuu Jiidhaa Namoo	5	2025-05-30	neutral	0	1	0	0	Other	3
39	lower system everything	3	2025-05-30	negative	0.524	0.476	0	-0.296	Other	3
40	Nice!	5	2025-05-30	positive	0	0	1	0.4753	Other	3
41	Keep it up My CBE	5	2025-05-29	neutral	0	1	0	0	Other	3
42	yes good	5	2025-05-28	positive	0	0	1	0.6808	Other	3
43	I was using this app for the last two years with no problems. It stopped working about 3 months ago. when I tried to transfer funds it gives me error "can't do this transaction. inactive account."	4	2025-05-27	negative	0.115	0.828	0.057	-0.3274	Account Access Issues, Transaction Performance, User Interface & Experience	3
44	i like everything of this app	5	2025-05-27	positive	0	0.667	0.333	0.3612	User Interface & Experience	3
45	good	5	2025-05-27	positive	0	0	1	0.4404	Other	3
46	🤬🤬🤬🤬 network 🛜	1	2025-05-26	neutral	0	1	0	0	Other	3
47	Best	5	2025-05-26	positive	0	0	1	0.6369	Other	3
48	CBE is the best financial application and and very dimple to use. I would like to say thank you so much for the developer of application. I really appreciate this app.	5	2025-05-26	positive	0	0.689	0.311	0.9041	User Interface & Experience	3
49	nice	5	2025-05-26	positive	0	0	1	0.4215	Other	3
50	good job	5	2025-05-26	positive	0	0.256	0.744	0.4404	Other	3
51	Good	5	2025-05-25	positive	0	0	1	0.4404	Other	3
52	it's awesome!!	5	2025-05-25	positive	0	0.176	0.824	0.6892	Other	3
53	best	5	2025-05-25	positive	0	0	1	0.6369	Other	3
54	thankyou every one	5	2025-05-25	neutral	0	1	0	0	Other	3
55	best app	5	2025-05-25	positive	0	0.192	0.808	0.6369	User Interface & Experience	3
56	Ronaldo 🇵🇹 🥇	5	2025-05-25	positive	0	0.563	0.437	0.4767	Other	3
57	this app is absolutely fantastic I love it and I enjoying to it ,let us support this foundation together .	5	2025-05-25	positive	0	0.525	0.475	0.9377	User Interface & Experience, Customer Support	3
58	The CBE app has been highly unreliable in recent weeks. It frequently fails to work properly on both Ethio Telecom and Safaricom networks, whether using Wi-Fi or mobile data. This week, the system was down entirely for extended periods, making it very difficult to access banking services. The app only functions intermittently, and the lack of consistency is frustrating. I hope the issues are addressed soon, and that any non-technical influences are removed from such essential services.	2	2025-05-25	negative	0.126	0.84	0.034	-0.7841	Account Access Issues, User Interface & Experience, Customer Support, Feature Requests	3
59	mortuary app	5	2025-05-25	neutral	0	1	0	0	User Interface & Experience	3
60	it is smart app but it has stoped after some period of time on my device with out any reason .	5	2025-05-25	positive	0	0.915	0.085	0.2144	User Interface & Experience	3
61	amazing app I am used this app for one year	4	2025-05-24	positive	0	0.703	0.297	0.5859	User Interface & Experience	3
62	👍	5	2025-05-24	neutral	0	1	0	0	Other	3
63	good app	5	2025-05-24	positive	0	0.256	0.744	0.4404	User Interface & Experience	3
64	i love it 😍😘	5	2025-05-24	positive	0	0.444	0.556	0.875	Other	3
65	It makes life easy!👌	5	2025-05-24	positive	0	0.243	0.757	0.8528	Other	3
66	its not fast	1	2025-05-24	neutral	0	1	0	0	Other	3
67	wow	4	2025-05-24	positive	0	0	1	0.5859	Other	3
68	it is sooo good	5	2025-05-24	positive	0	0.508	0.492	0.4404	Other	3
69	excellent	5	2025-05-24	positive	0	0	1	0.5719	Other	3
70	ok	1	2025-05-24	positive	0	0	1	0.296	Other	3
71	Fantastic	5	2025-05-23	positive	0	0	1	0.5574	Other	3
72	accessible to using	5	2025-05-23	neutral	0	1	0	0	Account Access Issues	3
73	I like it	4	2025-05-23	positive	0	0.444	0.556	0.3612	Other	3
74	good	5	2025-05-23	positive	0	0	1	0.4404	Other	3
75	why you change default network?	5	2025-05-23	neutral	0	1	0	0	Other	3
76	very nice 👍	5	2025-05-23	positive	0	0.492	0.508	0.4754	Other	3
77	good	5	2025-05-23	positive	0	0	1	0.4404	Other	3
78	nice fast app	5	2025-05-23	positive	0	0.417	0.583	0.4215	User Interface & Experience	3
79	good	5	2025-05-23	positive	0	0	1	0.4404	Other	3
80	best	5	2025-05-23	positive	0	0	1	0.6369	Other	3
81	how to I get my money	5	2025-05-23	neutral	0	1	0	0	Other	3
82	Very bad, can't even load they need to improve their services.	1	2025-05-22	negative	0.242	0.574	0.185	-0.2247	Customer Support, Feature Requests	3
83	Very good app, but please make it reliable . it crashes sometimes .	4	2025-05-22	positive	0	0.686	0.314	0.6183	User Interface & Experience	3
84	very busy I don't know why... I prefer 889	3	2025-05-22	neutral	0	1	0	0	Other	3
85	Sometimes it has a nasty lag for several hour fix that , the rest is 👌	4	2025-05-22	neutral	0.239	0.517	0.244	0.0343	Other	3
86	the most boring Mobil banking application in ethiopia.Please use alternative private banks mobile banking apps	1	2025-05-22	negative	0.156	0.844	0	-0.3804	User Interface & Experience	3
87	hojii bonsaadha	5	2025-05-22	neutral	0	1	0	0	Other	3
88	ok	5	2025-05-22	positive	0	0	1	0.296	Other	3
89	ok	5	2025-05-22	positive	0	0	1	0.296	Other	3
90	user-friendly apps.because this app is easy.	5	2025-05-22	positive	0	0.633	0.367	0.4404	User Interface & Experience	3
91	Awosome!!!	5	2025-05-22	neutral	0	1	0	0	Other	3
92	Very good app,	5	2025-05-22	positive	0	0.385	0.615	0.4927	User Interface & Experience	3
93	sync problem may 22 2025 but the date stack on may 8 2025 help pls	5	2025-05-22	positive	0.098	0.637	0.265	0.4854	Customer Support	3
94	ይህ መተግበሪያ በጣም ጥሩ ነው. this app is very nice	5	2025-05-22	positive	0	0.744	0.256	0.4754	User Interface & Experience	3
95	I hate this app 😒	1	2025-05-22	negative	0.425	0.575	0	-0.5719	User Interface & Experience	3
96	trustful	5	2025-05-22	positive	0	0	1	0.4767	Other	3
97	I like	5	2025-05-22	positive	0	0.286	0.714	0.3612	Other	3
98	update issue	4	2025-05-22	neutral	0	1	0	0	Feature Requests	3
99	its not working over safari network	1	2025-05-22	neutral	0	1	0	0	Other	3
100	oldie	1	2025-05-22	neutral	0	1	0	0	Other	3
101	it doesn't work	1	2025-05-21	neutral	0	1	0	0	Other	3
102	best	5	2025-05-21	positive	0	0	1	0.6369	Other	3
103	This app is good, and we are using it well	1	2025-05-21	positive	0	0.615	0.385	0.6124	User Interface & Experience	3
104	ok	5	2025-05-21	positive	0	0	1	0.296	Other	3
105	best app	5	2025-05-21	positive	0	0.192	0.808	0.6369	User Interface & Experience	3
106	best	5	2025-05-21	positive	0	0	1	0.6369	Other	3
107	very nice 👌 app for android phone	5	2025-05-21	positive	0	0.339	0.661	0.8679	User Interface & Experience	3
108	good app	5	2025-05-21	positive	0	0.256	0.744	0.4404	User Interface & Experience	3
109	Yes Yes	5	2025-05-21	positive	0	0	1	0.6597	Other	3
110	በጣም ከርፋፋ	1	2025-05-21	neutral	0	1	0	0	Other	3
111	easy to use helpful in my life	5	2025-05-21	positive	0	0.467	0.533	0.6908	Customer Support	3
112	good 👍	4	2025-05-21	positive	0	0.408	0.592	0.4404	Other	3
113	the best mobile banking app	5	2025-05-21	positive	0	0.488	0.512	0.6369	User Interface & Experience	3
114	this app is very useful app,it saves time,and it is secure	4	2025-05-21	positive	0	0.617	0.383	0.6801	User Interface & Experience	3
115	ok	2	2025-05-21	positive	0	0	1	0.296	Other	3
116	it's a good application 👍	5	2025-05-21	positive	0	0.633	0.367	0.4404	User Interface & Experience	3
117	the screenshot and the reffresh options are so annoying that makes transaction so delaying activity !	2	2025-05-21	negative	0.201	0.799	0	-0.5836	Transaction Performance, Feature Requests	3
118	poor service	1	2025-05-21	negative	0.756	0.244	0	-0.4767	Customer Support	3
119	amazing	5	2025-05-20	positive	0	0	1	0.5859	Other	3
120	it is reliable and easy to use.	5	2025-05-20	positive	0	0.674	0.326	0.4404	Other	3
121	the most annoying mobile banking app I've ever seen	1	2025-05-20	negative	0.272	0.728	0	-0.4576	User Interface & Experience	3
122	Cbe mobile banking	5	2025-05-20	neutral	0	1	0	0	Other	3
123	i can't make Screenshout in this app, please made modification	5	2025-05-20	positive	0	0.796	0.204	0.3182	User Interface & Experience	3
124	Best app I loved it	5	2025-05-19	positive	0	0.27	0.73	0.8442	User Interface & Experience	3
125	nice app	5	2025-05-19	positive	0	0.263	0.737	0.4215	User Interface & Experience	3
126	wow	5	2025-05-18	positive	0	0	1	0.5859	Other	3
127	Amazing applicatiom sometimes doesnt work!	5	2025-05-18	positive	0	0.494	0.506	0.6239	User Interface & Experience	3
128	well satisfied with this beautiful app	5	2025-05-18	positive	0	0.254	0.746	0.8316	User Interface & Experience	3
129	very good	4	2025-05-17	positive	0	0.238	0.762	0.4927	Other	3
130	best app.	5	2025-05-17	positive	0	0.192	0.808	0.6369	User Interface & Experience	3
131	good	5	2025-05-17	positive	0	0	1	0.4404	Other	3
132	not working,why???	5	2025-05-17	neutral	0	1	0	0	Other	3
133	Great impact but why Developer option turnoff if you fix 🙏 🙏 🙏	5	2025-05-17	positive	0	0.855	0.145	0.3716	Feature Requests	3
134	excellent	5	2025-05-17	positive	0	0	1	0.5719	Other	3
135	always disappointing ! especially the iOS one !! some similar local applications are extremely superior to this application!! Really disappointing!	1	2025-05-17	negative	0.274	0.593	0.132	-0.6209	User Interface & Experience	3
136	woxe harimo ribiso	5	2025-05-17	neutral	0	1	0	0	Other	3
137	good	5	2025-05-16	positive	0	0	1	0.4404	Other	3
138	Good ,easy to use	5	2025-05-16	positive	0	0.256	0.744	0.7003	Other	3
139	Good app	5	2025-05-15	positive	0	0.256	0.744	0.4404	User Interface & Experience	3
140	Good job👍	5	2025-05-14	positive	0	0.508	0.492	0.4404	Other	3
141	good	5	2025-05-14	positive	0	0	1	0.4404	Other	3
142	nice	5	2025-05-14	positive	0	0	1	0.4215	Other	3
143	Please kindly ask to update the app and allow us to screenshot, it's convenient and efficient as long as you add security to the access there is no reason to block us from screenshooting our screen.	2	2025-05-14	positive	0.109	0.621	0.27	0.7579	Account Access Issues, User Interface & Experience, Feature Requests	3
144	I have using the CBE mobile banking app. and overall i appreciate its Feuteres However i.ve Notticed that when i turn on the Developer options on my divice the App.Stop Functioning prorerly It.Would Be Great If You could look into This issue as l often need to access Developer setting for Otter Application ThankYou For Your attention to This Matter	4	2025-05-13	positive	0	0.837	0.163	0.8728	Account Access Issues, User Interface & Experience, Feature Requests	3
145	customer service is bad nothing is good about this bank	1	2025-05-13	negative	0.425	0.575	0	-0.7101	Customer Support	3
146	It is Amazing Mobile Banking App....But why the screenshot of the receipt doesnt work	5	2025-05-13	positive	0	0.774	0.226	0.5859	User Interface & Experience	3
147	fast and simple easy to use 👌	5	2025-05-12	positive	0	0.356	0.644	0.8415	Other	3
148	The fastest transferring app I ever had its so reliable	5	2025-05-11	neutral	0	1	0	0	Transaction Performance, User Interface & Experience	3
149	Funds transferred from the same bank do not reflect in the account, even though a confirmation text message was received.	3	2025-05-11	neutral	0	1	0	0	Account Access Issues, Transaction Performance	3
150	it's easy and fast	5	2025-05-10	positive	0	0.508	0.492	0.4404	Other	3
151	This app don't have self activation only you have to look near cbe branch that's disgusting	1	2025-05-10	negative	0.185	0.815	0	-0.5267	User Interface & Experience	3
152	hello dearest CBE office personnel make some benefits for those using interest free accounts thanks for your help	5	2025-05-09	positive	0	0.399	0.601	0.9524	Account Access Issues, Customer Support	3
153	wow best application ever	5	2025-05-09	positive	0	0.2	0.8	0.8402	User Interface & Experience	3
154	good	5	2025-05-09	positive	0	0	1	0.4404	Other	3
155	Am sorry but what does developer mode do to the application ? hack it ? are you sure you are developer or are you stupid, doesnt makes sense,	1	2025-05-08	negative	0.179	0.734	0.087	-0.4871	User Interface & Experience	3
156	Best	4	2025-05-08	positive	0	0	1	0.6369	Other	3
157	the pride of Ethiopian bank 🏦	5	2025-05-08	positive	0	0.676	0.324	0.34	Other	3
158	why the app telling me to turn of developer options please fix it.	1	2025-05-07	positive	0	0.839	0.161	0.3182	User Interface & Experience, Feature Requests	3
159	good	5	2025-05-07	positive	0	0	1	0.4404	Other	3
160	ok	5	2025-05-07	positive	0	0	1	0.296	Other	3
161	i am very happy . i have small prob. after i transfer i cant put the transfer cashe bil to my dic.	5	2025-05-07	positive	0	0.84	0.16	0.6115	Transaction Performance, User Interface & Experience	3
162	ok	5	2025-05-07	positive	0	0	1	0.296	Other	3
163	good	3	2025-05-06	positive	0	0	1	0.4404	Other	3
164	amazing apps	5	2025-05-06	positive	0	0.208	0.792	0.5859	User Interface & Experience	3
165	All service of Mobile Banking	5	2025-05-06	neutral	0	1	0	0	Customer Support	3
166	needs improvement	1	2025-05-06	positive	0	0.25	0.75	0.4588	Feature Requests	3
167	i miss the old one i couldn't send my mony to other bank..	1	2025-05-06	negative	0.118	0.882	0	-0.1531	Transaction Performance	3
168	the app is recently crushing each time you open and try to make transfers...it used to be good. take lessons from the Dashen Super app or ethiotelecom. it is not befitting of your experience and glory. inv3st in making it more friendly and convenient. I am considering leaving CBE for good.	2	2025-05-06	positive	0.039	0.701	0.26	0.9348	Transaction Performance, User Interface & Experience	3
169	good	5	2025-05-06	positive	0	0	1	0.4404	Other	3
170	good but these week not oky	4	2025-05-06	positive	0	0.719	0.281	0.2382	Other	3
171	well designed! Fixing bugs & two step verification with biometric... simply it's great!	5	2025-05-06	positive	0	0.619	0.381	0.7772	User Interface & Experience	3
172	Good app	5	2025-05-06	positive	0	0.256	0.744	0.4404	User Interface & Experience	3
173	If any developer is reading this please fix the screenshot functionality or at least the download button should work flawlessly without me touching it twenty times.	1	2025-05-05	positive	0	0.844	0.156	0.5307	Other	3
174	it's a great job.but one more thing, it hasn't been placed for transfer to other banks on face like mobile charge card place	5	2025-05-05	positive	0	0.761	0.239	0.765	Transaction Performance	3
175	CBE mobilr bankg	5	2025-05-05	neutral	0	1	0	0	Other	3
176	wow	1	2025-05-05	positive	0	0	1	0.5859	Other	3
177	verygood	3	2025-05-05	neutral	0	1	0	0	Other	3
178	ممتاز جدا	5	2025-05-04	neutral	0	1	0	0	Other	3
179	it's very low quality application	1	2025-05-04	negative	0.374	0.626	0	-0.3384	User Interface & Experience	3
180	Very Amazing Apps	5	2025-05-04	positive	0	0.328	0.672	0.624	User Interface & Experience	3
181	አዛ	1	2025-05-04	neutral	0	1	0	0	Other	3
182	wow simple life	5	2025-05-04	positive	0	0.345	0.655	0.5859	Other	3
183	it's nice	5	2025-05-03	positive	0	0.263	0.737	0.4215	Other	3
184	Why stacked sometimes	5	2025-05-03	neutral	0	1	0	0	Other	3
185	good app	5	2025-05-03	positive	0	0.256	0.744	0.4404	User Interface & Experience	3
186	nice	5	2025-05-03	positive	0	0	1	0.4215	Other	3
187	okay 👍 but sometimes busy	1	2025-05-03	positive	0	0.775	0.225	0.1154	Other	3
188	the worst commercial company that fails to do even the most normal things again and and again.	1	2025-05-03	negative	0.315	0.685	0	-0.7845	Other	3
189	nice	5	2025-05-03	positive	0	0	1	0.4215	Other	3
190	Very good app. but disappointed by general cessation of system.	5	2025-05-02	negative	0.291	0.562	0.147	-0.4684	User Interface & Experience	3
191	excellent	5	2025-05-02	positive	0	0	1	0.5719	Other	3
192	good	5	2025-05-02	positive	0	0	1	0.4404	Other	3
193	good	5	2025-05-02	positive	0	0	1	0.4404	Other	3
194	Good and fast	5	2025-05-02	positive	0	0.408	0.592	0.4404	Other	3
195	Unreliable!	1	2025-05-02	neutral	0	1	0	0	Other	3
196	Best the best fast	5	2025-05-02	positive	0	0.192	0.808	0.8555	Other	3
197	good app	5	2025-05-02	positive	0	0.256	0.744	0.4404	User Interface & Experience	3
198	happy	5	2025-05-02	positive	0	0	1	0.5719	User Interface & Experience	3
199	fast and reliable	5	2025-05-02	neutral	0	1	0	0	Other	3
200	network errorrrrrr	2	2025-05-02	neutral	0	1	0	0	Other	3
201	Best app but there is some problem I can't send money to telebirr or mpesa so if you can add that it could be use full	4	2025-05-02	negative	0.118	0.796	0.086	-0.2382	Transaction Performance, User Interface & Experience, Feature Requests	3
202	its good and simple to use	5	2025-05-02	positive	0	0.633	0.367	0.4404	Other	3
203	worest app like that bank for security and network access	1	2025-05-02	positive	0	0.62	0.38	0.5994	Account Access Issues, User Interface & Experience	3
204	it's the best app i	5	2025-05-02	positive	0	0.488	0.512	0.6369	User Interface & Experience	3
205	not bad not good	1	2025-05-02	positive	0	0.29	0.71	0.5981	Other	3
206	its very nice	5	2025-05-02	positive	0	0.393	0.607	0.4754	Other	3
207	do not work this week	3	2025-04-30	neutral	0	1	0	0	Other	3
208	It crashes frequently	4	2025-04-30	neutral	0	1	0	0	User Interface & Experience	3
209	the best	5	2025-04-28	positive	0	0.192	0.808	0.6369	Other	3
210	I can simply describe this app as "Making all your work easier".	5	2025-04-28	positive	0	0.797	0.203	0.4215	User Interface & Experience	3
211	goid	5	2025-04-28	neutral	0	1	0	0	Other	3
212	best appearance	5	2025-04-27	positive	0	0.192	0.808	0.6369	User Interface & Experience	3
213	it's very good 👍 app	5	2025-04-27	positive	0	0.61	0.39	0.4927	User Interface & Experience	3
214	I need support you	5	2025-04-27	positive	0	0.526	0.474	0.4019	Customer Support	3
215	the worst Mobile banking i have ever seen in my life	1	2025-04-26	negative	0.291	0.709	0	-0.6249	Other	3
216	super	5	2025-04-26	positive	0	0	1	0.5994	Other	3
217	ጠጀጨገጀ።ጀገ	5	2025-04-26	neutral	0	1	0	0	Other	3
218	i like the app	5	2025-04-26	positive	0	0.545	0.455	0.3612	User Interface & Experience	3
219	the Best	1	2025-04-26	positive	0	0.192	0.808	0.6369	Other	3
220	nice	5	2025-04-26	positive	0	0	1	0.4215	Other	3
221	good	5	2025-04-26	positive	0	0	1	0.4404	Other	3
222	good	5	2025-04-25	positive	0	0	1	0.4404	Other	3
223	to other bank is bad	1	2025-04-25	negative	0.467	0.533	0	-0.5423	Other	3
224	tank's	5	2025-04-25	neutral	0	1	0	0	Other	3
225	its good but add more features such like. bank statement showing	5	2025-04-24	positive	0	0.617	0.383	0.6804	Feature Requests	3
226	it is so nice	5	2025-04-24	positive	0	0.453	0.547	0.5598	Other	3
227	good	5	2025-04-21	positive	0	0	1	0.4404	Other	3
228	Very Good👍	5	2025-04-21	positive	0	0.484	0.516	0.4927	Other	3
229	my first frequent experience of cbe app is critical-time failure such as suspending payment on air for 2-5 days with zero explanation, deducting from sender account without depositing to the receiver act. Another fatal error by the banking company as a whole (not the app itself though) is forced-banking with corporations without consent of employers-users of the corresponding corporations	2	2025-04-21	negative	0.169	0.831	0	-0.8797	Account Access Issues, Transaction Performance, User Interface & Experience	3
230	wow, amazing app	5	2025-04-21	positive	0	0.116	0.884	0.8225	User Interface & Experience	3
231	use ful	5	2025-04-21	neutral	0	1	0	0	Other	3
232	Great app	5	2025-04-21	positive	0	0.196	0.804	0.6249	User Interface & Experience	3
233	well app	5	2025-04-20	positive	0	0.323	0.677	0.2732	User Interface & Experience	3
234	Actually it is inactive	4	2025-04-19	neutral	0	1	0	0	Other	3
235	good	4	2025-04-19	positive	0	0	1	0.4404	Other	3
236	ok	2	2025-04-19	positive	0	0	1	0.296	Other	3
237	best app	5	2025-04-19	positive	0	0.192	0.808	0.6369	User Interface & Experience	3
238	amazing	1	2025-04-19	positive	0	0	1	0.5859	Other	3
239	good	5	2025-04-19	positive	0	0	1	0.4404	Other	3
240	I like	5	2025-04-19	positive	0	0.286	0.714	0.3612	Other	3
241	slow, only one account is used	2	2025-04-19	neutral	0	1	0	0	Account Access Issues, Transaction Performance, User Interface & Experience	3
242	ok	5	2025-04-19	positive	0	0	1	0.296	Other	3
243	always CBE is the leading Commercial Bank💪💪💪	5	2025-04-18	neutral	0	1	0	0	Other	3
244	i like it	5	2025-04-18	positive	0	0.444	0.556	0.3612	Other	3
245	why removing screenshot feature why?	1	2025-04-18	neutral	0	1	0	0	Feature Requests	3
246	nice apps where network is good in connection	5	2025-04-18	positive	0	0.513	0.487	0.6908	User Interface & Experience	3
247	Thank you!!!	5	2025-04-18	positive	0	0.229	0.771	0.5229	Other	3
248	i can't take screenshot	1	2025-04-18	neutral	0	1	0	0	Other	3
249	every update was made the system better and better until the March 19th, 2025 update, not allowing us to screenshot. you guys didn't understand how much it's a really quick and significant thing. You add extra steps to us, which makes the process draw back	3	2025-04-18	positive	0	0.842	0.158	0.7823	User Interface & Experience, Feature Requests	3
250	perfectly special	5	2025-04-18	positive	0	0	1	0.7845	Other	3
251	Fast and Reliable	5	2025-04-18	neutral	0	1	0	0	Other	3
252	good	5	2025-04-17	positive	0	0	1	0.4404	Other	3
253	The best application I have ever seen in Ethiopia banking industry.	5	2025-04-17	positive	0	0.704	0.296	0.6369	User Interface & Experience	3
254	great app!!!	5	2025-04-17	positive	0	0.167	0.833	0.7163	User Interface & Experience	3
255	because sometimes it doesn't working it load too much	3	2025-04-17	neutral	0	1	0	0	Other	3
256	Absolutely the best app! It works flawlessly, anytime and anywhere.	5	2025-04-17	positive	0	0.549	0.451	0.7629	User Interface & Experience	3
257	ok	3	2025-04-16	positive	0	0	1	0.296	Other	3
258	very nice app ever!!!	5	2025-04-16	positive	0	0.43	0.57	0.6084	User Interface & Experience	3
259	the best app	5	2025-04-16	positive	0	0.323	0.677	0.6369	User Interface & Experience	3
260	Biometric security for mobile banking is not available	5	2025-04-16	positive	0	0.745	0.255	0.34	Other	3
261	great	5	2025-04-15	positive	0	0	1	0.6249	Other	3
262	Nice service	5	2025-04-15	positive	0	0.263	0.737	0.4215	Customer Support	3
263	great app	5	2025-04-15	positive	0	0.196	0.804	0.6249	User Interface & Experience	3
264	it's special apps	5	2025-04-15	positive	0	0.426	0.574	0.4019	User Interface & Experience	3
265	In the updated version of the app, it takes more time to download the receipt.	3	2025-04-15	neutral	0	1	0	0	User Interface & Experience, Feature Requests	3
266	ለምንድነው ትራንዛክሽን ትንሽ ብቻ የሚያሳየው ?	3	2025-04-14	neutral	0	1	0	0	Other	3
267	Good 🔥	5	2025-04-14	positive	0.453	0	0.547	0.128	Other	3
268	very interesting app i am using every day fantastic	5	2025-04-14	positive	0	0.515	0.485	0.7645	User Interface & Experience	3
269	lebaa bank	5	2025-04-14	neutral	0	1	0	0	Other	3
270	Can't scan/recognize other banks' Interoperable QR Codes	1	2025-04-13	neutral	0	1	0	0	Other	3
271	OK	5	2025-04-13	positive	0	0	1	0.296	Other	3
272	grateful app	5	2025-04-13	positive	0	0.25	0.75	0.4588	User Interface & Experience	3
273	100% ❤️❤️❤️🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏	5	2025-04-13	neutral	0	1	0	0	Other	3
274	everthing wellbeok	3	2025-04-13	neutral	0	1	0	0	Other	3
275	"This mobile banking app is fast and user-friendly, but the only issue I encountered is that I can't access my bank statement within the app. I kindly request that this feature be added, similar to what is offered by other private bank mobile banking apps.	4	2025-04-13	positive	0	0.911	0.089	0.6486	Account Access Issues, User Interface & Experience, Feature Requests	3
276	nice app 👌	5	2025-04-12	positive	0	0.101	0.899	0.8374	User Interface & Experience	3
277	why did this app is not screenshot	5	2025-04-12	neutral	0	1	0	0	User Interface & Experience	3
278	it so good app	5	2025-04-12	positive	0	0.484	0.516	0.4927	User Interface & Experience	3
279	the best app	3	2025-04-12	positive	0	0.323	0.677	0.6369	User Interface & Experience	3
280	جميل	5	2025-04-11	neutral	0	1	0	0	Other	3
281	less network, specially to make fee for utility purpose	1	2025-04-11	neutral	0	1	0	0	Other	3
282	nice	5	2025-04-11	positive	0	0	1	0.4215	Other	3
283	simply for used	4	2025-04-11	neutral	0	1	0	0	Other	3
284	wow keep up	5	2025-04-10	positive	0	0.345	0.655	0.5859	Other	3
285	its great app but when updating we can't take screen shot please try to fix it	3	2025-04-10	positive	0	0.718	0.282	0.6705	User Interface & Experience	3
286	good one	5	2025-04-10	positive	0	0.256	0.744	0.4404	Other	3
287	best app.	5	2025-04-10	positive	0	0.192	0.808	0.6369	User Interface & Experience	3
288	everything is easy thank you cebe	5	2025-04-10	positive	0	0.426	0.574	0.6597	Other	3
289	ፈጣን ቀልጣፋ	5	2025-04-10	neutral	0	1	0	0	Other	3
290	good	5	2025-04-10	positive	0	0	1	0.4404	Other	3
291	ok	5	2025-04-10	positive	0	0	1	0.296	Other	3
292	ጎበዝ	5	2025-04-09	neutral	0	1	0	0	Other	3
293	good app	5	2025-04-09	positive	0	0.256	0.744	0.4404	User Interface & Experience	3
294	but this app says can't sync	5	2025-04-09	neutral	0	1	0	0	User Interface & Experience	3
295	waw	5	2025-04-09	neutral	0	1	0	0	Other	3
296	to slow	3	2025-04-09	neutral	0	1	0	0	Transaction Performance, User Interface & Experience	3
297	work on screen shot system	4	2025-04-08	neutral	0	1	0	0	Other	3
298	very very nice aplication	1	2025-04-08	positive	0	0.471	0.529	0.5222	Other	3
299	Good	5	2025-04-08	positive	0	0	1	0.4404	Other	3
300	wonder full and it is easy to use	5	2025-04-08	positive	0	0.707	0.293	0.4404	Other	3
301	easy and reliable	2	2025-04-08	positive	0	0.408	0.592	0.4404	Other	3
302	good	5	2025-04-08	positive	0	0	1	0.4404	Other	3
303	it is Very Useful app 👍	5	2025-04-07	positive	0	0.653	0.347	0.4927	User Interface & Experience	3
304	very good	5	2025-04-07	positive	0	0.238	0.762	0.4927	Other	3
305	perfect app	5	2025-04-07	positive	0	0.213	0.787	0.5719	User Interface & Experience	3
306	I like it.	5	2025-04-07	positive	0	0.444	0.556	0.3612	Other	3
307	bugs	3	2025-04-07	neutral	0	1	0	0	User Interface & Experience	3
308	commerial Bank	5	2025-04-06	neutral	0	1	0	0	Other	3
309	Genat biru	2	2025-04-06	neutral	0	1	0	0	Other	3
310	🙏	5	2025-04-06	neutral	0	1	0	0	Other	3
311	it is good but it doesn't allow screen shot	4	2025-04-06	neutral	0.183	0.639	0.178	-0.0127	Other	3
312	the best one	5	2025-04-06	positive	0	0.323	0.677	0.6369	Other	3
313	You need to copy many things from other bank apps like Amole(Dashen)	2	2025-04-06	positive	0	0.815	0.185	0.3612	User Interface & Experience	3
314	bring back the screenshot feature.	1	2025-04-05	neutral	0	1	0	0	Feature Requests	3
315	Good!👍	3	2025-04-05	positive	0	0.385	0.615	0.4926	Other	3
316	best app to experience him that to smooth transaction among the customers	1	2025-04-05	positive	0	0.724	0.276	0.6369	Transaction Performance, User Interface & Experience, Customer Support	3
317	good	5	2025-04-05	positive	0	0	1	0.4404	Other	3
318	nice app suitable to use it. the only weak side is it need data connections and hoping will be fixed to offline i gave 4 rate	4	2025-04-05	positive	0.138	0.688	0.175	0.296	User Interface & Experience	3
319	easy to use	5	2025-04-05	positive	0	0.408	0.592	0.4404	Other	3
320	Good job to the CBE team on this mobile app! It's designed in a way that's simple and intuitive to navigate, which is great for everyone. It effectively handles the essential banking tasks I need to perform regularly. It's a practical and reliable tool that makes everyday banking much more convenient. Thank you for this useful application.	5	2025-04-04	positive	0	0.761	0.239	0.9464	User Interface & Experience	3
321	ለኔ በጣም ምርጥ ነው ግን screenshot ማረግ ቢቻል ምርጥ ነበር	5	2025-04-04	neutral	0	1	0	0	Other	3
322	before it was smooth and good. this time after the new update in 2025 i can not make screenshot of my recite. even the downlod button is very delayed in putting my recite in my gallery for simple proof. please fix this i am unable to show proof of payment to my clients. thankyou.	3	2025-04-04	positive	0.038	0.873	0.089	0.4601	Transaction Performance, Feature Requests	3
323	cool ❤	4	2025-04-04	positive	0	0.133	0.867	0.7579	Other	3
324	Best app	5	2025-04-04	positive	0	0.192	0.808	0.6369	User Interface & Experience	3
325	great app	5	2025-04-03	positive	0	0.196	0.804	0.6249	User Interface & Experience	3
326	best banking App	4	2025-04-03	positive	0	0.323	0.677	0.6369	User Interface & Experience	3
327	satisfied	5	2025-04-03	positive	0	0	1	0.4215	Other	3
328	this app is very necessary app many people found it	5	2025-04-03	neutral	0	1	0	0	User Interface & Experience	3
329	cbe very active Bank I'm using CBE app very very satisfaction	5	2025-04-03	positive	0	0.582	0.418	0.7554	User Interface & Experience	3
330	It made life alot easier. I cant even imagine having to make all those transactions in person. So this app was crucial for me. Very good app. well done.	5	2025-04-03	positive	0	0.757	0.243	0.8104	Transaction Performance, User Interface & Experience	3
331	excellent	5	2025-04-03	positive	0	0	1	0.5719	Other	3
332	perfect	5	2025-04-03	positive	0	0	1	0.5719	Other	3
333	thankyou	5	2025-04-02	neutral	0	1	0	0	Other	3
334	I Like it	5	2025-04-02	positive	0	0.444	0.556	0.3612	Other	3
335	ok	5	2025-04-02	positive	0	0	1	0.296	Other	3
336	I don't understand the reason, why I need to disable developer options to access the app, it has no security risks nor does it hinder the app's functionalities. This goes out to the dev, I hope your life is filled with inconveniences.	1	2025-04-02	positive	0.045	0.852	0.103	0.3975	Account Access Issues, User Interface & Experience, Feature Requests	3
337	smart app	5	2025-04-02	positive	0	0.27	0.73	0.4019	User Interface & Experience	3
338	isin ga'a	2	2025-04-02	neutral	0	1	0	0	Other	3
339	easy to use	5	2025-04-02	positive	0	0.408	0.592	0.4404	Other	3
340	it's great	5	2025-04-02	positive	0	0.196	0.804	0.6249	Other	3
341	very good app and stars faction with work	5	2025-04-02	positive	0	0.687	0.313	0.4927	User Interface & Experience	3
342	It is excelent	5	2025-04-01	neutral	0	1	0	0	Other	3
343	Smart	5	2025-04-01	positive	0	0	1	0.4019	Other	3
344	በየወሩ አፕደት እየጠየቀኝ ነው ለነገሩ ብር ስሌለኝ ይሆናል እና ምን ለማለት ፈልገ መሰላቹ ወላህ ቼግሮኛል 🥺🥺🥺	3	2025-04-01	neutral	0	1	0	0	Other	3
345	very interesting app	5	2025-04-01	positive	0	0.401	0.599	0.4576	User Interface & Experience	3
346	i like it	5	2025-04-01	positive	0	0.444	0.556	0.3612	Other	3
347	wow.......cbe.....keep it up.....!!!!!!	5	2025-04-01	neutral	0	1	0	0	Other	3
348	ጊዜን ቆጣቢ እና ህይወትን ቀለል ከሚያደርጉ ኢትዬጲያ ካሉ ፋይናንስ አፕልኬሽኖች ሁሉ ይሄ ይለያል	5	2025-04-01	neutral	0	1	0	0	Other	3
349	Excellent🙏app	5	2025-04-01	positive	0	0.351	0.649	0.5719	User Interface & Experience	3
350	the most useful	5	2025-04-01	positive	0	0.385	0.615	0.4927	Other	3
351	I am more satisfied in this app . More sure you have to secure.	4	2025-04-01	positive	0	0.576	0.424	0.7956	User Interface & Experience	3
352	Easy to use	5	2025-04-01	positive	0	0.408	0.592	0.4404	Other	3
353	very good, but sometimes NUR CBE comes without my consent. even if I choose locked, it appears	4	2025-04-01	neutral	0.105	0.786	0.11	0.0252	Account Access Issues, User Interface & Experience	3
354	Excellent !!!	5	2025-04-01	positive	0	0.179	0.821	0.6784	Other	3
355	always we relay on	5	2025-04-01	neutral	0	1	0	0	Other	3
356	I'm lucky to have this🙏 thank you CBE.	5	2025-04-01	positive	0	0.602	0.398	0.6486	Other	3
357	it's need more improvement like Tellbirr.	4	2025-04-01	positive	0	0.397	0.603	0.7245	Feature Requests	3
358	goode app	5	2025-04-01	neutral	0	1	0	0	User Interface & Experience	3
359	a very nice app.👍👍👍	5	2025-04-01	positive	0	0.744	0.256	0.4754	User Interface & Experience	3
360	safe easy & fast	5	2025-04-01	positive	0	0.256	0.744	0.7003	Other	3
361	perfect	5	2025-04-01	positive	0	0	1	0.5719	Other	3
362	it's good app	5	2025-04-01	positive	0	0.408	0.592	0.4404	User Interface & Experience	3
363	nice	5	2025-04-01	positive	0	0	1	0.4215	Other	3
364	good app	5	2025-04-01	positive	0	0.256	0.744	0.4404	User Interface & Experience	3
365	It is veary useful app but screen shout was impossible .solve this problem	5	2025-04-01	negative	0.228	0.545	0.226	-0.2588	User Interface & Experience	3
366	ጥሩ ነው	5	2025-04-01	neutral	0	1	0	0	Other	3
367	እጅግ በጣም ጥሩ አፕ	5	2025-04-01	neutral	0	1	0	0	Other	3
368	good	5	2025-04-01	positive	0	0	1	0.4404	Other	3
369	በጣም ሃሪፍ ነው ግን ብር በሚተላለፍበት ወቅት ተቀንሷል ይላል እላፊ መልክቱ ይደርሳል ግን አይቀንስም	5	2025-04-01	neutral	0	1	0	0	Other	3
370	suitable app	4	2025-04-01	neutral	0	1	0	0	User Interface & Experience	3
371	Dear cbe this app is not comparable with 21century and pls try to solve it.💀💀💀	1	2025-04-01	positive	0	0.725	0.275	0.5719	User Interface & Experience	3
372	Good	5	2025-04-01	positive	0	0	1	0.4404	Other	3
373	nice app	5	2025-04-01	positive	0	0.263	0.737	0.4215	User Interface & Experience	3
374	best transaction method of financial	5	2025-04-01	positive	0	0.488	0.512	0.6369	Transaction Performance	3
375	#CBE is Now going to on the right Pathway/track/!! Thank you CBE one step ahead on payment platform app!!	5	2025-04-01	positive	0	0.831	0.169	0.5673	Transaction Performance, User Interface & Experience	3
376	It literarily don't work at all	4	2025-04-01	neutral	0	1	0	0	Other	3
377	good give us plus	5	2025-04-01	positive	0	0.508	0.492	0.4404	Other	3
378	Very good application. However, I have one functionality recommendation. What if you let the app transfer money to any telebirr account as for MPESA? By the way, I am not the only one to ask this. Thank you!	4	2025-04-01	positive	0	0.85	0.15	0.7476	Account Access Issues, Transaction Performance, User Interface & Experience	3
379	before update it was able to screenshot while after update I can't able to screenshot the transfere details	4	2025-04-01	neutral	0	1	0	0	Transaction Performance, Feature Requests	3
380	Tnc Cbe	5	2025-04-01	neutral	0	1	0	0	Other	3
381	it is good app. But you have integrate cbe with cbe birr. to allow cardless withdrawal directly from our accout!	4	2025-03-31	positive	0	0.748	0.252	0.5778	User Interface & Experience	3
382	great apps	5	2025-03-31	positive	0	0.196	0.804	0.6249	User Interface & Experience	3
383	Excellent	5	2025-03-31	positive	0	0	1	0.5719	Other	3
384	Great app!	4	2025-03-31	positive	0	0.185	0.815	0.6588	User Interface & Experience	3
385	nice	5	2025-03-31	positive	0	0	1	0.4215	Other	3
386	CBE	5	2025-03-31	neutral	0	1	0	0	Other	3
387	very good 👍 👏	5	2025-03-31	positive	0	0.61	0.39	0.4927	Other	3
388	great when it works	5	2025-03-31	positive	0	0.423	0.577	0.6249	Other	3
389	the app is very good, but why screenshots is impossible?	5	2025-03-31	positive	0	0.811	0.189	0.2724	User Interface & Experience	3
390	excellent match application	5	2025-03-31	positive	0	0.351	0.649	0.5719	User Interface & Experience	3
391	very good	5	2025-03-31	positive	0	0.238	0.762	0.4927	Other	3
392	best app	5	2025-03-31	positive	0	0.192	0.808	0.6369	User Interface & Experience	3
393	The Best app😍😍😍	5	2025-03-31	positive	0	0.455	0.545	0.9217	User Interface & Experience	3
394	excellent app	5	2025-03-31	positive	0	0.213	0.787	0.5719	User Interface & Experience	3
395	easy to use and user friendly	5	2025-03-31	positive	0	0.396	0.604	0.7269	Other	3
396	good	5	2025-03-31	positive	0	0	1	0.4404	Other	3
397	very nice	5	2025-03-31	positive	0	0.244	0.756	0.4754	Other	3
398	አሪፍ ነው በተለይ የአሻራ ደህነቱ መረጋገጡ ተመችቶኛል	3	2025-03-31	neutral	0	1	0	0	Other	3
399	well software	5	2025-03-31	positive	0	0.323	0.677	0.2732	Other	3
400	ጥሩ ነው አንዳንዴ ስታክ ቢያደርግም	4	2025-03-31	neutral	0	1	0	0	Other	3
401	I like this mobile banking app very much. Overall user interface and navigation is awesome. But it lacks instant response when someone deposit or withdraw money.	2	2025-06-07	positive	0	0.848	0.152	0.5106	User Interface & Experience, Customer Support	4
402	love	3	2025-06-06	positive	0	0	1	0.6369	Other	4
403	መቸሸጠ	5	2025-06-03	neutral	0	1	0	0	Other	4
404	wow	5	2025-06-03	positive	0	0	1	0.5859	Other	4
405	gadaa	5	2025-06-01	neutral	0	1	0	0	Other	4
406	Massive upgrade from the Amole app.	5	2025-05-31	neutral	0	1	0	0	User Interface & Experience	4
407	good	4	2025-05-31	positive	0	0	1	0.4404	Other	4
408	very good for this app	5	2025-05-31	positive	0	0.556	0.444	0.4927	User Interface & Experience	4
409	top	5	2025-05-31	positive	0	0	1	0.2023	Other	4
410	this app better than Amole . but the biometric on new update doesn't work	4	2025-05-31	positive	0	0.87	0.13	0.2382	User Interface & Experience, Feature Requests	4
411	Wow	5	2025-05-30	positive	0	0	1	0.5859	Other	4
412	good	5	2025-05-30	positive	0	0	1	0.4404	Other	4
413	wow to it saff and this app	5	2025-05-30	positive	0	0.612	0.388	0.5859	User Interface & Experience	4
414	it too slow	3	2025-05-29	neutral	0	1	0	0	Transaction Performance, User Interface & Experience	4
415	ዳሽን ባንክ ይለያል	4	2025-05-28	neutral	0	1	0	0	Other	4
416	real life changer	5	2025-05-28	neutral	0	1	0	0	Other	4
417	👍👍👍	5	2025-05-28	neutral	0	1	0	0	Other	4
418	good	5	2025-05-28	positive	0	0	1	0.4404	Other	4
419	nice application	5	2025-05-27	positive	0	0.263	0.737	0.4215	User Interface & Experience	4
420	good	5	2025-05-27	positive	0	0	1	0.4404	Other	4
421	wow	5	2025-05-27	positive	0	0	1	0.5859	Other	4
422	useless app ever loading take long	1	2025-05-27	negative	0.359	0.641	0	-0.4215	User Interface & Experience	4
423	Game changer app! Dashen Bank Super App is fast, secure, and easy to use. The three-click payment makes sending money super quick, and the QR code payment is perfect for cashless shopping. I also love the biometric login and easy airtime and bill payments. Everything I need is in one place. Dashen Bank has really raised the bar for digital banking in Ethiopia. Highly recommended!	5	2025-05-26	positive	0	0.682	0.318	0.979	Account Access Issues, Transaction Performance, User Interface & Experience	4
424	very useful App	1	2025-05-26	positive	0	0.385	0.615	0.4927	User Interface & Experience	4
425	Simple, robust features? Yes, please! But the endless loading screen killed the fun—I couldn’t use it for days. Fix the glitch, and I’ll yeet a higher rating!	2	2025-05-26	negative	0.195	0.657	0.148	-0.6842	Feature Requests	4
426	Wawww	5	2025-05-24	neutral	0	1	0	0	Other	4
427	it is good but some times says duplicate transaction why?	5	2025-05-24	positive	0	0.822	0.178	0.2382	Transaction Performance	4
428	very Nice	5	2025-05-23	positive	0	0.244	0.756	0.4754	Other	4
429	its best	5	2025-05-23	positive	0	0.192	0.808	0.6369	Other	4
430	it is not as good as to the other mobile bank app.	1	2025-05-22	negative	0.179	0.821	0	-0.3412	User Interface & Experience	4
431	The best of best is now arrived **Empowering Your Financial Freedom** "Experience seamless banking at your fingertips with Dashen Bank. Empowering your financial freedom, anytime, anywhere!" **Innovation Meets Convenience** "Dashen Bank Mobile Banking: Where innovation meets convenience. **Secure and Reliable** "Bank with confidence	5	2025-05-22	positive	0	0.556	0.444	0.9817	Other	4
432	wow	5	2025-05-20	positive	0	0	1	0.5859	Other	4
433	Nothing is changed in the updated version. You have been collecting comments but where is the feed back you improved in this version. superapp is mot functioning today.	4	2025-05-20	positive	0	0.867	0.133	0.631	User Interface & Experience, Feature Requests	4
434	good	5	2025-05-20	positive	0	0	1	0.4404	Other	4
435	its best	5	2025-05-19	positive	0	0.192	0.808	0.6369	Other	4
436	The best app ever in finance sector	5	2025-05-18	positive	0	0.588	0.412	0.6369	User Interface & Experience	4
437	Its good app than other compitators but it confuse when we transfer it needs OTP and PIN most user inter their pin instead of OTP we know the litrecy level of our society so if it is device based i dont know the needs of OTP so please try to fix	3	2025-05-18	positive	0.042	0.853	0.105	0.5554	Transaction Performance, User Interface & Experience	4
438	dashen bank or dashen super app?	1	2025-05-17	positive	0	0.562	0.438	0.5994	User Interface & Experience	4
439	wowwwe app	5	2025-05-17	neutral	0	1	0	0	User Interface & Experience	4
440	Transferring to other bank accounts is a hastle and inconvenient .Get used to seeing " please try again "	2	2025-05-17	neutral	0.111	0.783	0.106	-0.0258	Account Access Issues, Transaction Performance	4
441	good	5	2025-05-16	positive	0	0	1	0.4404	Other	4
442	always lagging	1	2025-05-16	negative	0.677	0.323	0	-0.2732	Other	4
443	Amazing Application...	5	2025-05-16	positive	0	0.208	0.792	0.5859	User Interface & Experience	4
444	Fantastic	5	2025-05-16	positive	0	0	1	0.5574	Other	4
445	Dashen bank app is very good, but sometimes it is not working well	5	2025-05-15	neutral	0.145	0.718	0.137	-0.0321	User Interface & Experience	4
446	its my choice	5	2025-05-15	neutral	0	1	0	0	Other	4
447	wow apo	5	2025-05-15	positive	0	0.208	0.792	0.5859	Other	4
448	awesome app keep going	5	2025-05-14	positive	0	0.423	0.577	0.6249	User Interface & Experience	4
449	wow	5	2025-05-14	positive	0	0	1	0.5859	Other	4
450	👍	5	2025-05-14	neutral	0	1	0	0	Other	4
451	It grows ethiopian digital banking step ahead.All fetures in one,simple fast and convince.	5	2025-05-14	positive	0	0.857	0.143	0.25	Other	4
452	Game changer	5	2025-05-13	neutral	0	1	0	0	Other	4
453	Totally amazing	5	2025-05-13	positive	0	0.196	0.804	0.624	Other	4
454	super 😎	5	2025-05-13	positive	0	0.303	0.697	0.7845	Other	4
455	what a helpful app!!!!	5	2025-05-13	positive	0	0.431	0.569	0.6083	User Interface & Experience, Customer Support	4
456	Good	4	2025-05-13	positive	0	0	1	0.4404	Other	4
457	nice	5	2025-05-13	positive	0	0	1	0.4215	Other	4
458	wow	5	2025-05-13	positive	0	0	1	0.5859	Other	4
459	To be honest, best banking and lifestyle app in Ethiopia.	5	2025-05-12	positive	0	0.516	0.484	0.8176	User Interface & Experience	4
460	fast	5	2025-05-12	neutral	0	1	0	0	Other	4
507	its features are so dynamic	5	2025-04-22	positive	0	0.543	0.457	0.5214	Feature Requests	4
461	A must have, seamless, all in one digital platform "DB Superapp"! Keep living your motto "Always one step ahead"	5	2025-05-12	neutral	0	1	0	0	User Interface & Experience	4
462	This App makes digital banking effortless and convenient. User-friendly interface, secure transactions, and excellent features for managing finances efficiently.	4	2025-05-10	positive	0	0.645	0.355	0.8316	Transaction Performance, User Interface & Experience, Feature Requests	4
463	good	5	2025-05-09	positive	0	0	1	0.4404	Other	4
464	Amazing app super easy to use and best design. loved it.	5	2025-05-09	positive	0	0.243	0.757	0.9623	User Interface & Experience	4
465	its the best ever	5	2025-05-09	positive	0	0.417	0.583	0.6369	Other	4
466	nice	5	2025-05-08	positive	0	0	1	0.4215	Other	4
467	excellent game changer App	5	2025-05-08	positive	0	0.448	0.552	0.5719	User Interface & Experience	4
468	I am highly excited by using this application and it is the most favorable as well as preferrable mobile app.	5	2025-05-03	positive	0	0.668	0.332	0.8151	User Interface & Experience	4
469	it seems me logging out within minutes	1	2025-05-03	neutral	0	1	0	0	Other	4
470	nice app especially GUI and I have got some error when you send within dashen bank the receipter is not get SMS notification	4	2025-05-03	neutral	0.102	0.792	0.106	0.0258	Transaction Performance, User Interface & Experience	4
471	yes i want dashen super open	5	2025-05-02	positive	0	0.275	0.725	0.7845	Other	4
472	Best App	5	2025-05-02	positive	0	0.192	0.808	0.6369	User Interface & Experience	4
473	faster than this version	5	2025-05-01	neutral	0	1	0	0	Other	4
474	Best UI mobile banking app, props to design team	5	2025-04-30	positive	0	0.656	0.344	0.6369	User Interface & Experience	4
475	thank you	4	2025-04-30	positive	0	0.286	0.714	0.3612	Other	4
476	great app	5	2025-04-30	positive	0	0.196	0.804	0.6249	User Interface & Experience	4
477	bad.	1	2025-04-30	negative	1	0	0	-0.5423	Other	4
478	Dashen bank always one step ahead	5	2025-04-30	neutral	0	1	0	0	Other	4
479	dashen super app is secure band very easy	5	2025-04-29	positive	0	0.345	0.655	0.8588	User Interface & Experience	4
480	It is very fast and secured mobile banking app! I like this app!	5	2025-04-29	positive	0	0.645	0.355	0.7225	User Interface & Experience	4
481	best app I have ever seen	5	2025-04-29	positive	0	0.543	0.457	0.6369	User Interface & Experience	4
482	best of best	5	2025-04-29	positive	0	0.106	0.894	0.8555	Other	4
483	waw	5	2025-04-28	neutral	0	1	0	0	Other	4
484	best app	5	2025-04-28	positive	0	0.192	0.808	0.6369	User Interface & Experience	4
485	Its slow when i try to see the Recent Transaction and stucked	1	2025-04-28	neutral	0	1	0	0	Transaction Performance, User Interface & Experience	4
486	wowslnwoooo wowwww amazing !!!!!!!!	5	2025-04-28	positive	0	0.377	0.623	0.7156	Other	4
487	wow appl	5	2025-04-28	positive	0	0.208	0.792	0.5859	User Interface & Experience	4
488	why do i have to change a pin number i use my finger print so dummy	1	2025-04-27	positive	0	0.92	0.08	0.0772	Other	4
489	very nice	5	2025-04-26	positive	0	0.244	0.756	0.4754	Other	4
490	great	4	2025-04-26	positive	0	0	1	0.6249	Other	4
491	It is very slow and it lacks many features to be a super app. High rating is given by their employees, not by the customers.	1	2025-04-25	positive	0	0.86	0.14	0.5994	Transaction Performance, User Interface & Experience, Customer Support, Feature Requests	4
492	Smooth and secure experience transfers, bill payments, and tracking expenses are all effortless. The intuitive design makes banking on the go.	5	2025-04-24	positive	0	0.893	0.107	0.34	Transaction Performance, User Interface & Experience	4
493	Very easy and Fast.	5	2025-04-24	positive	0	0.484	0.516	0.4927	Other	4
494	Incomparably user-friendly and fast app for mobile banking.	5	2025-04-24	neutral	0	1	0	0	User Interface & Experience	4
495	there is nothing super about this app, repeatedly failed transaction and wastes customer valuable time. if you have to do system upgrade do it at a time when there is less traffic demand. your Technical difficulty should not be reflected on customer.	2	2025-04-24	negative	0.201	0.738	0.062	-0.7156	Transaction Performance, User Interface & Experience, Customer Support	4
496	execellent	5	2025-04-24	neutral	0	1	0	0	Other	4
497	This super app is a total game-changer—fast, reliable, and packed with everything I need in one place. It’s seamless and super convenient. Love it!"	5	2025-04-23	positive	0	0.631	0.369	0.923	User Interface & Experience	4
498	All in One ✍️secure ✍️reliable ✍️convenient. Digital banking game changer!!	5	2025-04-23	neutral	0	1	0	0	Other	4
499	it is incredible product.	5	2025-04-23	neutral	0	1	0	0	Other	4
500	I'm really impressed with this app! It’s user-friendly, runs smoothly, and has all the features I need. Makes my tasks so much easier and saves me a lot of time. Highly recommended!	5	2025-04-23	positive	0	0.76	0.24	0.8461	User Interface & Experience, Feature Requests	4
501	best app	5	2025-04-23	positive	0	0.192	0.808	0.6369	User Interface & Experience	4
502	ok	5	2025-04-23	positive	0	0	1	0.296	Other	4
503	It's an amazing app, experience it!!	5	2025-04-23	positive	0	0.533	0.467	0.658	User Interface & Experience	4
504	This is the best banking app ever. I recommend everyone to use it.	5	2025-04-23	positive	0	0.621	0.379	0.7717	User Interface & Experience	4
505	It is the best application!!!	5	2025-04-22	positive	0	0.441	0.559	0.7249	User Interface & Experience	4
506	Exceptional digital experience, SupperApp will bring new paradigm shift in the banking business. Bravo Dashen keep it up!!!!	5	2025-04-22	neutral	0	1	0	0	User Interface & Experience	4
508	fast &Friendly user Application.	5	2025-04-22	positive	0	0.484	0.516	0.4939	User Interface & Experience	4
509	Fast, Reliable and User Friendly. Keep it Up	5	2025-04-22	positive	0	0.686	0.314	0.4939	Other	4
510	#dashen super app is easy to use, secure & fast transaction😍	5	2025-04-22	positive	0	0.474	0.526	0.9042	Transaction Performance, User Interface & Experience	4
511	i love this app esp 3 click that make e-commerce easier and convinient.	5	2025-04-22	positive	0	0.611	0.389	0.7906	User Interface & Experience	4
512	Dashen Super App contains extended selections for customers and can be easily accessible and also friendly to use.	5	2025-04-22	positive	0	0.612	0.388	0.8591	Account Access Issues, User Interface & Experience, Customer Support	4
513	Great for everyday banking and payments on the go	5	2025-04-22	positive	0	0.661	0.339	0.6249	Transaction Performance	4
514	"Dashen Super App'' is impressive with its focus on simplicity, speed, and quality. The user interface is clean and easy to understand. Transactions process quickly, and the overall quality of the app is top-notch. A must-have for Dashen Bank customers. ዳሸን ባንክ አንድ እርምጃ ቀዳሚ።	5	2025-04-22	positive	0	0.762	0.238	0.9153	Transaction Performance, User Interface & Experience, Customer Support	4
515	making transactions has never been easier. the new update is just amazing	5	2025-04-22	positive	0.145	0.62	0.236	0.3544	Transaction Performance, Feature Requests	4
516	The app has various usefull functions, which make easy the payment system. Also, it will connect with sellers having reasonable prices.	5	2025-04-22	positive	0	0.873	0.127	0.4404	Transaction Performance, User Interface & Experience	4
517	The app has great user interface with comprehensive payments and E-commerce platforms. And also it includes unique features such as chat Banking and budget.	5	2025-04-22	positive	0	0.783	0.217	0.7269	Transaction Performance, User Interface & Experience, Feature Requests	4
518	betam mirt Ena betam le atikakem kelel Yale Ena michu application nw	5	2025-04-22	neutral	0	1	0	0	User Interface & Experience	4
519	Convenient!	5	2025-04-22	neutral	0	1	0	0	Other	4
520	It is an amazing application that meets the needs of customers.	5	2025-04-22	positive	0	0.725	0.275	0.5859	User Interface & Experience, Customer Support	4
521	Effecting payment via the app has created convenience to the recipients in easily confirming the payments received!	5	2025-04-22	positive	0	0.762	0.238	0.5707	Transaction Performance, User Interface & Experience	4
522	the best Supper App ever	5	2025-04-22	positive	0	0.488	0.512	0.6369	User Interface & Experience	4
523	This is the best app ever, when is it planned to include digital lending and gasification?	5	2025-04-22	positive	0	0.781	0.219	0.6369	User Interface & Experience	4
524	A powerful, local solution that rivals any global app. I love how easy it is to explore services and products.	5	2025-04-22	positive	0	0.567	0.433	0.9042	User Interface & Experience, Customer Support	4
525	Dashen bank is my number one choice	5	2025-04-22	positive	0	0.822	0.178	0.0772	Other	4
526	Assefa Genetu = Dashen superup is the latest and inclussive .I am happy with this super up.	5	2025-04-22	positive	0	0.664	0.336	0.8225	User Interface & Experience	4
527	The App is incredibly user-friendly and brings multiple services into one place. It's fast, intuitive, and makes daily tasks super convenient. A true all-in-one solution!	5	2025-04-21	positive	0	0.703	0.297	0.8516	User Interface & Experience, Customer Support	4
528	Proudly made in Ethiopia, this innovation delivers more than promised. The marketplace is a major boost for local commerce	5	2025-04-21	positive	0	0.548	0.452	0.9076	Other	4
529	it so fanrastic and user friendly app. Bravo Dashen bank thanks.	5	2025-04-21	positive	0	0.596	0.404	0.7269	User Interface & Experience	4
530	one of the best digital platforms I've used! from smooth transactions to a seamless shopping experience, highly recommended.	5	2025-04-21	positive	0	0.708	0.292	0.7639	Transaction Performance	4
531	A proudly Ethiopia innovation that delivers beyond expectations. The marketplace feature is a big win for local shoppers bnd sellers	5	2025-04-21	positive	0	0.63	0.37	0.875	Feature Requests	4
532	Dashen Super App is a game-changer! It’s fast, user-friendly, and packed with features that make everyday banking and transactions super convenient. I love how everything I need from mobile banking to utility payments is all in one place. The interface is clean, and everything works smoothly. Definitely one of the best apps out there. Highly recommended!	5	2025-04-21	positive	0	0.669	0.331	0.9758	Transaction Performance, User Interface & Experience, Feature Requests	4
533	Easy to use and has many options. It is the best financial app I have ever used.	5	2025-04-21	positive	0	0.679	0.321	0.7964	User Interface & Experience, Feature Requests	4
534	Highly impressed! Dash Bank really nailed it with this app. Secure, reliable, and packed with features I use daily	5	2025-04-21	positive	0	0.736	0.264	0.7257	User Interface & Experience, Feature Requests	4
535	One of the best digital platforms I’ve used! From smooth transactions to a seamless shopping experience, Highly recommended	5	2025-04-21	positive	0	0.708	0.292	0.7639	Transaction Performance	4
536	This app has everything I was looking for, dashen is becoming a grandmaster.	5	2025-04-21	neutral	0	1	0	0	User Interface & Experience	4
537	Very convenient	5	2025-04-21	neutral	0	1	0	0	Other	4
538	The user experience is seamless, and everything just works perfectly right out of the box. I can’t believe how much time and effort it saves me every day.	5	2025-04-21	positive	0	0.865	0.135	0.6369	Other	4
539	wawwwww what nice super app !!keep it up dashen bank !!	5	2025-04-21	positive	0	0.534	0.466	0.8346	User Interface & Experience	4
540	Dashen SuperApp the ultimate all-in-one solution! From banking and shopping to bill payments, everything you need is right at your fingertips. Life just got a whole lot easier!	5	2025-04-21	positive	0	0.821	0.179	0.6892	Transaction Performance, User Interface & Experience	4
626	Superb	5	2025-04-21	positive	0	0	1	0.6249	Other	4
627	amazing features, faster and easy to use	5	2025-04-21	positive	0	0.427	0.573	0.7717	Feature Requests	4
541	It is,really super because of its unique offerings to individuals and businesses.It is a secure UX first app intended to cater comprehensive digital meeds.I am also happy to know that Dashen is considering to make the app more inclusive by lowering the mobile version requirements .	5	2025-04-21	positive	0.041	0.742	0.217	0.8669	User Interface & Experience	4
542	the very easy, secured, fast and multifunctional dashen supper application I ever seen. dashen really one steps ahead!!!	5	2025-04-21	positive	0	0.694	0.306	0.7934	User Interface & Experience	4
543	One app for everything! I can shop, manage my bank account , and do so much more . Truly a super app	5	2025-04-21	positive	0	0.731	0.269	0.8111	Account Access Issues, User Interface & Experience	4
544	one of the best digital platforms I’ve used! From smooth transactions to a seamless shopping experie	5	2025-04-21	positive	0	0.77	0.23	0.6696	Transaction Performance	4
545	Dashen Bank super App is the most suitable, reliable, and fast digital banking system.	5	2025-04-21	positive	0	0.769	0.231	0.5994	User Interface & Experience	4
546	Excellent app.	5	2025-04-21	positive	0	0.213	0.787	0.5719	User Interface & Experience	4
547	This is what we call banking app. As professional I want banking app as simple as this and an app rich of features that align with my lifestyle.	5	2025-04-21	positive	0	0.841	0.159	0.5994	User Interface & Experience, Customer Support, Feature Requests	4
548	thanks again	5	2025-04-21	positive	0	0.256	0.744	0.4404	Other	4
549	Super Easy To Use and Fast Transaction.	5	2025-04-21	positive	0	0.424	0.576	0.7783	Transaction Performance	4
550	I have an incredible experience with Dashen super app, what an amazing platform is it?. keep pioneering in technological advancement 👏👏👏	5	2025-04-21	positive	0	0.757	0.243	0.8271	User Interface & Experience	4
551	i can't recommend the Dashen Super App enough! This app is truly a game changer for anyone looking for a seamless and efficient way to manage their daily life. It combines multiple essential services into one easy-to-use platform, saving time and simplifying tasks The user interface is modern, intuitive, and super responsive, making navigation a breeze. Whether it's banking, payment services, or accessing lifestyle features, everything is just a few clicks away!!	5	2025-04-21	positive	0.025	0.777	0.199	0.941	Account Access Issues, Transaction Performance, User Interface & Experience, Customer Support, Feature Requests	4
552	The app is incredibly handy for managing multiple financial tasks, from bill payments to managing budgets. It’s saved me a lot of time and made banking way more convenient. Definitely worth checking out!	5	2025-04-21	positive	0	0.785	0.215	0.8039	Transaction Performance, User Interface & Experience	4
553	what an App	5	2025-04-21	neutral	0	1	0	0	User Interface & Experience	4
554	The new e-commerce feature is incredibly amazing and user friendly.	5	2025-04-21	positive	0	0.523	0.477	0.807	Feature Requests	4
555	dashen bank supper app is the most easy to use and have high speed,quality and I like features like chat,budget,fuel payment, and security for my opinion this product is techonolgy edge,this international standard thanks for product oweners (dashen bank)	3	2025-04-21	positive	0	0.716	0.284	0.9099	Transaction Performance, User Interface & Experience, Feature Requests	4
556	The Dashen supperapp is a revolutionary advancement in digital banking, combining exceptional usability, an intuitive interface and a seamless user experience. among its standout features are the integration of QR codes, account statement, transaction advise, chat, transaction authentication for limit thresholds, budgeting and different app in a single dashboard. Truly ahead of the curve ..... keep up the excellent work 🤝👏	5	2025-04-21	positive	0	0.902	0.098	0.765	Account Access Issues, Transaction Performance, User Interface & Experience, Feature Requests	4
557	A proudly Ethiopian innovation that delivers beyond expectations. The marketplace feature is a big win for local shoppers and sellers. Very impressed with the new updates, The e-commerce section is smooth and supports Ethiopian merchants!	5	2025-04-21	positive	0	0.65	0.35	0.945	Customer Support, Feature Requests	4
558	Very impressed with the new updates, The e-commerce section is smooth and supports Ethiopian merchants.	5	2025-04-21	positive	0	0.688	0.312	0.7089	Customer Support, Feature Requests	4
559	Dashen Bank Super App is fast, reliable, and super easy to use. All my banking needs are handled smoothly in one place. Clean design and seamless experience – highly recommended!	5	2025-04-21	positive	0	0.613	0.387	0.9412	User Interface & Experience	4
560	Db sup app is A platform or an application that can grasp more satisfactions through fastest mode of operation which means for budget planning, to use QR code(scan, pay, go) chat with staff, acc to acc other bank ft, merchant payment, and easly. I addition to i satisfied and i invite everyone to use those platform!!.	5	2025-04-21	positive	0.023	0.842	0.136	0.7892	Transaction Performance, User Interface & Experience, Feature Requests	4
561	the chat banking and unique and only app that alow money request!!	5	2025-04-21	neutral	0	1	0	0	User Interface & Experience, Feature Requests	4
562	Better and inclusive app!	5	2025-04-21	positive	0	0.484	0.516	0.4926	User Interface & Experience	4
563	Amazing Application	5	2025-04-21	positive	0	0.208	0.792	0.5859	User Interface & Experience	4
564	It keep my time to pay my bills and I generate my satment easily	5	2025-04-21	positive	0.089	0.759	0.152	0.25	Other	4
565	It's an amazing app that is up-to-date with the times, wow wow	5	2025-04-21	positive	0	0.441	0.559	0.9081	User Interface & Experience	4
566	A game-changing Ethiopian innovation—where shopping meets opportunity. The marketplace feature connects buyers and sellers like never before.	5	2025-04-21	positive	0	0.739	0.261	0.6486	Feature Requests	4
567	Dashen Super App isn’t just an app — it’s an experience. Effortless, powerful, and built for the future	5	2025-04-21	positive	0	0.705	0.295	0.7717	User Interface & Experience	4
568	This Is An Amazing App with Uniqe Quality,Easy And Fast Mobile Banking App.	5	2025-04-21	positive	0	0.759	0.241	0.5859	User Interface & Experience	4
569	Dashen SuperApp is a lifesaver! Banking, shopping, and bills in one super easy app. The new e-commerce feature is awesome and supports local merchants. Fast, secure, and proudly Ethiopian.Download it now—you won’t regret it!	5	2025-04-21	positive	0.053	0.494	0.452	0.9682	User Interface & Experience, Customer Support, Feature Requests	4
570	Dashen SuperApp blends finance, shopping, and daily services effortlessly. The new e-commerce feature is smooth and supports local merchants—proud to back an Ethiopian-made solution!	5	2025-04-21	positive	0	0.812	0.188	0.6239	User Interface & Experience, Customer Support, Feature Requests	4
571	A solid step forward by Dashen Bank. The SuperApp combines essential banking features with lifestyle services, making everything accessible in one place. The interface is smooth, and transactions are quick and reliable. It’s clear a lot of thought went into the design and functionality. Great job!	5	2025-04-21	positive	0	0.833	0.167	0.8221	Account Access Issues, Transaction Performance, User Interface & Experience, Customer Support, Feature Requests	4
572	Dashen bank super app is the crucial and convenient app in Ethiopia. there is no other app to compare with Dashen bank super app	5	2025-04-21	positive	0.071	0.677	0.252	0.765	User Interface & Experience	4
573	All-in-one finance & e-commerce super app! Pay, save, shop seamlessly. Fast, secure. #BankAndShop	5	2025-04-21	positive	0.069	0.446	0.485	0.8553	User Interface & Experience	4
574	it's a hestorical app. in the bank industry.	5	2025-04-21	neutral	0	1	0	0	User Interface & Experience	4
575	A game changer in Ethiopian digital banking fast, secure, and packed with services. Everything you need, all in one powerful app. A true leap toward financial convenience and innovation!	4	2025-04-21	positive	0	0.697	0.303	0.8718	User Interface & Experience, Customer Support	4
576	easy &,simple to use	5	2025-04-21	positive	0	0.508	0.492	0.4404	Other	4
577	Banking, but make it smart. Local solutions, all in one place. Smooth, fast, and actually saving time. Feels like the future. Love it!	5	2025-04-21	positive	0	0.56	0.44	0.9427	Other	4
578	All in one, that is it 👌	5	2025-04-21	positive	0	0.495	0.505	0.7297	Other	4
579	, Dashen Bank Supper App is multipurpose, convenient, very attractive and Make life easier	5	2025-04-21	positive	0	0.667	0.333	0.7178	User Interface & Experience	4
580	very easy and flexible app.	5	2025-04-21	positive	0	0.359	0.641	0.6549	User Interface & Experience	4
581	I choose Dashen Bank Super Up since, it is easy to use & it has attractive features !	5	2025-04-21	positive	0	0.6	0.4	0.8748	Feature Requests	4
582	dashen super app is simple faster and reliable.	5	2025-04-21	positive	0	0.642	0.358	0.5994	User Interface & Experience	4
583	Dashen Bank Super App is a game-changer! The user-friendly design, wide range of services, and smooth performance make it incredibly convenient for everyday banking. It’s fast, secure, and truly reflects the bank’s commitment to digital excellence. Highly recommended!	5	2025-04-21	positive	0	0.633	0.367	0.9557	User Interface & Experience, Customer Support	4
584	The app keeps getting better with every update! Smooth performance, great UI, and top-notch security. Thank you for making banking so convenient!"	5	2025-04-21	positive	0	0.59	0.41	0.9097	User Interface & Experience, Feature Requests	4
585	this app is the most simply to use and secure safe i love it to use for any bank transaction	5	2025-04-21	positive	0	0.642	0.358	0.8591	Transaction Performance, User Interface & Experience	4
586	After i download the app recently had a smooth expriance, its user friendly, fast, and everything works as expected. keep up the good work.	5	2025-04-21	positive	0	0.783	0.217	0.7269	User Interface & Experience	4
587	An app with High performance and advanced features!	5	2025-04-21	positive	0	0.753	0.247	0.3164	User Interface & Experience, Feature Requests	4
588	It is a very user friendly, attractive user interface, full of useful features. I really encourage everyone to give it a try.	5	2025-04-21	positive	0	0.578	0.422	0.9207	User Interface & Experience, Feature Requests	4
589	Good actually , but it have to WORK when developer option is on 🙏	5	2025-04-21	positive	0	0.878	0.122	0.2382	Feature Requests	4
590	All-in-one convenience, From managing accounts to paying bills and shopping online and the chat banking is game changer, this app does it all seamlessly.	5	2025-04-21	neutral	0	1	0	0	Account Access Issues, User Interface & Experience	4
591	I appreciate that Dashen Bank takes lifestyle services into account.	5	2025-04-21	positive	0	0.769	0.231	0.4019	Account Access Issues, User Interface & Experience, Customer Support	4
592	keep it up!	5	2025-04-21	neutral	0	1	0	0	Other	4
593	amazing app really i loved it .that's why we say dashen bank is one stap ahead. It's the best mobile application that should be on every phone.	5	2025-04-21	positive	0	0.663	0.337	0.9213	User Interface & Experience	4
594	very comfortable app keep it	5	2025-04-21	positive	0	0.527	0.473	0.5563	User Interface & Experience	4
595	it has clear detail information about the application so it helps customer how to use the app. and it is very easy to use and also app is secure.	5	2025-04-21	positive	0	0.693	0.307	0.8771	User Interface & Experience, Customer Support	4
596	I have been using the Dashen Supper app mobile banking app , and overall, I appreciate its features.However,I’ve noticed that when I turn on the developer options on my device, the app stops functioning properly. It would be great if you could look into this issue, as I often need to access developer settings for other applications . Thank you for your attention to this matter!	5	2025-04-21	positive	0.022	0.832	0.146	0.8449	Account Access Issues, User Interface & Experience, Feature Requests	4
597	easiness to use with fast response time	5	2025-04-21	positive	0	0.698	0.302	0.3818	Customer Support	4
598	The new mobile banking application is a major upgrade! It’s incredibly user-friendly, with a clean and modern design that makes navigation simple and intuitive. I really appreciate how fast it loads and how smooth the overall experience is. All essential services like balance checks, transfers, and bill payments are eas y to find and use. The added security features give me peace of mind, and the app runs reliably without crashes or glitches. It’s clear a lot of thought went into the user experi	5	2025-04-21	positive	0	0.821	0.179	0.9431	Transaction Performance, User Interface & Experience, Customer Support, Feature Requests	4
628	The Dashen Super App offers a modern, user-friendly experience that leverages the latest technological advancements to deliver a seamless e-commerce platform	5	2025-04-21	positive	0	0.837	0.163	0.5994	User Interface & Experience	4
599	As an Internal Customer, Dashen Bank SuperApp has greatly simplified my online banking experience. It's easy to use, allowing me to quickly check balances, transfer money and pay Bills. The app's advanced security features are highly secure, ensuring my data is well protected. The Three click, Chat Banking and IPS features have also given me a smarter experience. In deed Dashen Bank is always steping ahead!	5	2025-04-21	positive	0.018	0.721	0.261	0.9536	Transaction Performance, User Interface & Experience, Customer Support, Feature Requests	4
600	A truly impressive app — user-friendly and a game-changer in Ethiopian banking. The Dashen Super App stands out as one of the most innovative and convenient digital banking solutions in Ethiopia’s financial history. Smooth navigation, seamless features, and a wide range of services all in one place. Well done!	5	2025-04-21	positive	0	0.712	0.288	0.9467	User Interface & Experience, Customer Support, Feature Requests	4
601	dashen bank super up has very fast and convenience and also it has contain more things on one app .I am very interesting to use dashen bank super up	5	2025-04-21	positive	0	0.707	0.293	0.8955	User Interface & Experience	4
602	The Dashen Bank Super App has truly elevated my mobile banking experience. It's fast, user-friendly, and packed with all the essential features. The interface is clean and intuitive, making navigation easy even for first-time users. I also appreciate the added security features that give me peace of mind while banking on the go. Dashen Bank has done an amazing job with this app—it’s reliable, efficient, and always improving. Highly recommended for anyone looking for seamless digital banking!	5	2025-04-21	positive	0	0.668	0.332	0.9846	User Interface & Experience, Feature Requests	4
603	A fantastic product!! keep the good work.	5	2025-04-21	positive	0	0.414	0.586	0.7955	Other	4
604	I am very impressed with the Dashen super app. It is user-friendly and operates efficiently. The budget and chatbot features are impressive, and all items can be purchased with just three clicks.	5	2025-04-21	positive	0	0.678	0.322	0.923	User Interface & Experience, Feature Requests	4
605	The Dashen Super App offers a quick and user-friendly experience, bringing together a variety of services, like budgeting, payments, airtime recharges, and more, all in one convenient platform. Its sleek design and intuitive navigation ensure effortless transactions. It's evident that Dashen Bank has carefully crafted the app to make everyday financial activities easier. A great choice for anyone aiming to streamline their digital routines!	5	2025-04-21	positive	0	0.766	0.234	0.9493	Transaction Performance, User Interface & Experience, Customer Support	4
606	Dashen supper App is the most useful app for our customers	5	2025-04-21	positive	0	0.758	0.242	0.4927	User Interface & Experience, Customer Support	4
607	it is the most amazing mobile app	5	2025-04-21	positive	0	0.594	0.406	0.624	User Interface & Experience	4
608	A Good and fast supper app thanks for dashen bank	5	2025-04-21	positive	0	0.58	0.42	0.7003	User Interface & Experience	4
609	Dear Users of the Dashen Bank Super App,I have been using the Dashen Bank Super App for a while now, and I must say—it’s truly a game-changer! The app is incredibly fast and reliable; I’ve never encountered any delays with my transactions. One feature I absolutely love is Chat Banking. It makes everyday tasks like checking my balance or transferring money as simple as sending a quick message. Also, the budgeting tool has been a huge help in tracking my spending and giving me a clearer	5	2025-04-21	positive	0	0.733	0.267	0.9798	Transaction Performance, User Interface & Experience, Customer Support, Feature Requests	4
610	Too best	1	2025-04-21	positive	0	0.192	0.808	0.6369	Other	4
611	Dashen Bank Super Up,use the app and makes your easy,fast,convinent.	5	2025-04-21	positive	0	0.698	0.302	0.5994	User Interface & Experience	4
612	To join digital world use supper app and make your life easy	5	2025-04-21	positive	0	0.662	0.338	0.6249	User Interface & Experience	4
613	best mobile banking application	5	2025-04-21	positive	0	0.417	0.583	0.6369	User Interface & Experience	4
614	This banking superapp is incredibly well designed. The design and appearance of the app and the overall experience I have when using the app is fantastic. The app is packed with features from banking to e-commerce all in one place.It even has a budget setting option which is super useful for managing my money. Everything runs smoothly and I love how convenient it has made my daily life. Huge Kudos to Dashen Bank. You are truly living up to the motto ''Always one step ahead." Keep it up!	5	2025-04-21	positive	0	0.756	0.244	0.9771	User Interface & Experience, Feature Requests	4
615	best mobile banking application	5	2025-04-21	positive	0	0.417	0.583	0.6369	User Interface & Experience	4
616	I was really amazed by the idea of an e-commerce service on a banking app. This is what it means to be one step ahead. Please include all kinds of products in there as soon as possible.	5	2025-04-21	positive	0	0.858	0.142	0.6997	User Interface & Experience, Customer Support	4
617	this is what we expect to get service Dashen Bank always like his slogan	5	2025-04-21	positive	0	0.839	0.161	0.3612	Customer Support	4
618	Dashen SupApp is the most contemporary application, offering a great experience by enabling users to perform multiple tasks through a single platform—such as chatting with friends, transferring money, paying bills, and more. It is the first app of its kind in the Ethiopian banking industry, making it a remarkable opportunity for entrepreneurs working in app-based sales and software marketing. Good job, Dashen Bank!	5	2025-04-21	positive	0	0.738	0.262	0.9647	Transaction Performance, User Interface & Experience	4
619	Dashen Super App gives me an amazing convenience and makes life easy.	5	2025-04-21	positive	0	0.459	0.541	0.891	User Interface & Experience	4
620	excellent mobile banking app	5	2025-04-21	positive	0	0.448	0.552	0.5719	User Interface & Experience	4
621	Wow! like his name Super App...	5	2025-04-21	positive	0	0.222	0.778	0.8883	User Interface & Experience	4
622	Dashen supper app is the most special. ይምቾቱ ይለያያል!!!!	5	2025-04-21	positive	0	0.658	0.342	0.6323	User Interface & Experience	4
623	convenient and fast	5	2025-04-21	neutral	0	1	0	0	Other	4
624	Best- in-class app.	5	2025-04-21	positive	0	0.323	0.677	0.6369	User Interface & Experience	4
625	I really like this amazing application and Dashen Supper app that has made my life easier.	5	2025-04-21	positive	0	0.555	0.445	0.8866	User Interface & Experience	4
629	Best App!	5	2025-04-21	positive	0	0.182	0.818	0.6696	User Interface & Experience	4
630	I love it. one of the best mobile banking app in the banking industry	5	2025-04-21	positive	0	0.588	0.412	0.8555	User Interface & Experience	4
631	I love this app	5	2025-04-21	positive	0	0.417	0.583	0.6369	User Interface & Experience	4
632	no working for me hulum information asgebiche continue or accept yemilew button ayeseram my phone is Samsung A51	1	2025-04-21	positive	0.106	0.769	0.125	0.1027	Other	4
633	good	5	2025-04-20	positive	0	0	1	0.4404	Other	4
634	waw no idea the best app.	5	2025-04-19	positive	0.212	0.385	0.404	0.4588	User Interface & Experience	4
635	fast best app	5	2025-04-19	positive	0	0.323	0.677	0.6369	User Interface & Experience	4
636	Nice App	5	2025-04-18	positive	0	0.263	0.737	0.4215	User Interface & Experience	4
637	nice app ever	5	2025-04-17	positive	0	0.417	0.583	0.4215	User Interface & Experience	4
638	good	5	2025-04-17	positive	0	0	1	0.4404	Other	4
639	very disappointing app. Closes frequently and unstable in function	2	2025-04-17	negative	0.461	0.539	0	-0.7178	User Interface & Experience	4
640	Feature-rich? Absolutely. But the speed? Painfully slow. Seriously, is it communicating with a server on Mars or something?	5	2025-04-16	negative	0.31	0.69	0	-0.8014	Transaction Performance, User Interface & Experience, Feature Requests	4
641	nic app	5	2025-04-16	neutral	0	1	0	0	User Interface & Experience	4
642	Nice	5	2025-04-16	positive	0	0	1	0.4215	Other	4
643	The Dashen Super App delivers a remarkably fast, highly secure, and exceptionally user-friendly experience, establishing it as a leading application in its category.keep it up and stay ahead Dashen Bank.	5	2025-04-14	positive	0	0.803	0.197	0.7818	User Interface & Experience	4
644	So far so good! their in person customer service is amazing 👏	5	2025-04-14	positive	0	0.574	0.426	0.8467	Customer Support	4
645	The app is very backward and doesn't always work. If it works three hours out of 24 hours it's great!😥	1	2025-04-14	positive	0.07	0.717	0.213	0.636	User Interface & Experience	4
646	ምርጫዬ ነው	5	2025-04-13	neutral	0	1	0	0	Other	4
647	It's bad for the connection and too many days are it that not working	1	2025-04-12	negative	0.212	0.788	0	-0.5423	Other	4
648	it's samart	5	2025-04-10	neutral	0	1	0	0	Other	4
649	The app is not working properly, I have been using it.	1	2025-04-10	neutral	0	1	0	0	User Interface & Experience	4
650	it is very good app	5	2025-04-10	positive	0	0.556	0.444	0.4927	User Interface & Experience	4
651	I had a disappointing experience with Dashen Bank's Super Up service. The app is very slow and takes forever to load during transactions, which is incredibly frustrating. Additionally, it doesn't generate receipts for any transactions, making it difficult to keep track of my expenses. I also reached out to customer support, but the response time was longer than expected. Overall, I was hoping for a better experience, but I find the service lacking and in need of improvement.	2	2025-04-09	positive	0.065	0.75	0.185	0.9022	Transaction Performance, User Interface & Experience, Customer Support, Feature Requests	4
652	slow cumbersome	3	2025-04-08	neutral	0	1	0	0	Transaction Performance, User Interface & Experience	4
653	Is really 💀	2	2025-04-08	neutral	0	1	0	0	Other	4
654	It's slow to send OTP. it's not reliable. It crushed many times. It needs improvement in many ways	1	2025-04-07	positive	0	0.75	0.25	0.6522	Transaction Performance, User Interface & Experience, Feature Requests	4
655	This is the worst mobile banking experience I’ve ever had. It doesn’t work when you need it, and it randomly updates itself without warning. You can’t make transactions whenever you want. It’s a nightmare for anyone who relies on this as their main banking option, especially those with a lot of money in their account. I’m lucky I’m not one of them, but still, it’s infuriating not being able to access your money when you need it."l	1	2025-04-07	negative	0.085	0.86	0.055	-0.679	Account Access Issues, Transaction Performance, Feature Requests	4
656	I have experienced on using the app of Banks in Ethiopia, this Dashen sup is like old version of the applications for using. I gave 3 star for it's very low speed while login and processing	3	2025-04-07	neutral	0.062	0.874	0.064	0.0276	Account Access Issues, User Interface & Experience	4
657	proud by dashen bank	5	2025-04-06	positive	0	0.492	0.508	0.4767	Other	4
658	best	5	2025-04-06	positive	0	0	1	0.6369	Other	4
659	best of best	5	2025-04-05	positive	0	0.106	0.894	0.8555	Other	4
660	nice	5	2025-04-04	positive	0	0	1	0.4215	Other	4
661	This app is not working unless you turn off developer mode on your phone. So it takes your rights to just use it.	2	2025-04-04	neutral	0	1	0	0	User Interface & Experience	4
662	real super up	5	2025-04-04	positive	0	0.339	0.661	0.5994	Other	4
663	it's very disappointing fix it as soon as possible not expected from dashin bank fix it	1	2025-04-04	negative	0.189	0.811	0	-0.5413	User Interface & Experience	4
664	why dashen bank workers hidden my ATM Card 🏧?it's a big problem to me	5	2025-04-04	negative	0.162	0.838	0	-0.4019	Other	4
665	good	5	2025-04-04	positive	0	0	1	0.4404	Other	4
666	tanku	5	2025-04-04	neutral	0	1	0	0	Other	4
667	very nice	5	2025-04-04	positive	0	0.244	0.756	0.4754	Other	4
668	perfect	5	2025-04-03	positive	0	0	1	0.5719	Other	4
669	goood	5	2025-04-02	neutral	0	1	0	0	Other	4
670	why does it ask me for both pin and opt even the opt is touch let alone both	2	2025-04-02	negative	0.105	0.895	0	-0.25	Other	4
671	it is best app easy to use	5	2025-04-01	positive	0	0.413	0.587	0.7964	User Interface & Experience	4
711	Good	5	2025-03-08	positive	0	0	1	0.4404	Other	4
672	It is very easy to use and powerful application.	3	2025-04-01	positive	0	0.539	0.461	0.7178	User Interface & Experience	4
673	this apps have a good feature but but some features like developer mode turn off irritate user	3	2025-04-01	positive	0.162	0.611	0.227	0.128	User Interface & Experience, Feature Requests	4
674	This is not only a mobile banking app, it is beyond that. We will access our account easily, we are able to get many information easily here. i.e. exchage rate. We are able to chat with others, we are able to budget, we are able to transfer to other bank and within Dashen. we are able to access many accounts in a single app, we are able to pay bills in QR scan, we are able to make payments and order delivery items here in a single app. #Always one step ahead.	5	2025-03-31	positive	0.015	0.935	0.05	0.5267	Account Access Issues, Transaction Performance, User Interface & Experience	4
675	wallahi very fantastic Bank	5	2025-03-31	positive	0	0.435	0.565	0.5984	Other	4
676	Waw, It's amazing app. thank you Dashen Bank.	5	2025-03-31	positive	0	0.488	0.512	0.743	User Interface & Experience	4
677	ok	5	2025-03-30	positive	0	0	1	0.296	Other	4
678	nice app	5	2025-03-29	positive	0	0.263	0.737	0.4215	User Interface & Experience	4
679	I’ve been using the Dashen Bank Super App for a while now, and it’s been a game-changer. The app is super fast and reliable—I’ve never had an issue with transactions being delayed. One of my favorite features is the chat banking, which makes it so easy to do things like check my balance or transfer money just by typing a quick message. The budgeting tool is also really useful. It helps me keep track of my spending and gives me a clear picture of where	5	2025-03-28	positive	0.018	0.734	0.248	0.9744	Transaction Performance, User Interface & Experience, Customer Support, Feature Requests	4
680	good	5	2025-03-28	positive	0	0	1	0.4404	Other	4
681	nice application	4	2025-03-27	positive	0	0.263	0.737	0.4215	User Interface & Experience	4
682	Very good app that like it too. B/c it is very fast and easy to use.	5	2025-03-26	positive	0	0.595	0.405	0.8341	User Interface & Experience	4
683	best experiences	5	2025-03-26	positive	0	0.192	0.808	0.6369	Other	4
684	too slow to use.	1	2025-03-26	neutral	0	1	0	0	Transaction Performance, User Interface & Experience	4
685	ጥሩ ነው	5	2025-03-25	neutral	0	1	0	0	Other	4
686	the worst app in the market only good ui	1	2025-03-22	negative	0.293	0.5	0.207	-0.296	User Interface & Experience	4
687	nic	5	2025-03-22	neutral	0	1	0	0	Other	4
688	በጣም ቅልል ያለ አፕ በርቱልን ለአጠቃቀም ምቹ	5	2025-03-22	neutral	0	1	0	0	Other	4
689	thanks for all digital transaction	5	2025-03-21	positive	0	0.58	0.42	0.4404	Transaction Performance	4
690	Good	4	2025-03-21	positive	0	0	1	0.4404	Other	4
691	Best	5	2025-03-20	positive	0	0	1	0.6369	Other	4
692	Good	5	2025-03-20	positive	0	0	1	0.4404	Other	4
693	This app is not supporting smart phones that have old android version and so it is none inclusive. At the same time the amole lite is not working properly and once you reached to maximum otp trail mistakes due to network or other errors like stacks , you will be tied up to make Transactions. Ohh... tired!!!!!	1	2025-03-20	negative	0.202	0.74	0.058	-0.8668	Transaction Performance, User Interface & Experience, Customer Support	4
694	it's Be Come Busy &not working good	1	2025-03-20	negative	0.286	0.714	0	-0.3412	Other	4
695	I wanted to share some concerns about your Supper App. It appears to be experiencing reliability issues and isn’t performing as expected. I hope this can be addressed soon to improve the user experience. One star 🌟 for now.	1	2025-03-19	positive	0	0.822	0.178	0.7906	User Interface & Experience, Feature Requests	4
696	best ever digital banking sector essay for understanding ,smart and convince for using	5	2025-03-19	positive	0	0.529	0.471	0.836	Other	4
697	good and latest	5	2025-03-18	positive	0	0.408	0.592	0.4404	Other	4
698	The best App of all	5	2025-03-17	positive	0	0.488	0.512	0.6369	User Interface & Experience	4
699	Worst app ever	1	2025-03-15	negative	0.672	0.328	0	-0.6249	User Interface & Experience	4
700	This app is the most unreliable mobile banking application I have ever used for transaction, it is very late, non-responsive and full of bugs. Its is very disappointing. It is just inconvinient, and not user friendly and compatabke at all !!!!!!	1	2025-03-14	negative	0.157	0.843	0	-0.8068	Transaction Performance, User Interface & Experience	4
701	Naiycapp	5	2025-03-14	neutral	0	1	0	0	User Interface & Experience	4
702	Good	5	2025-03-13	positive	0	0	1	0.4404	Other	4
703	The app is good but it has no USSD option	4	2025-03-13	negative	0.22	0.627	0.153	-0.2144	User Interface & Experience, Feature Requests	4
704	Hey great	5	2025-03-12	positive	0	0.196	0.804	0.6249	Other	4
705	I have used many mobile banking and also tellebir and mpesa nothing come close to this app. Well done Dashen indeed one step a head. A lot of cool features that amole hasn't the receipt and the account statement is superb for me. I hope you add more integrated small apps to.	5	2025-03-12	positive	0	0.808	0.192	0.886	Account Access Issues, User Interface & Experience, Feature Requests	4
706	The app is good but it ask update every week so tiring	2	2025-03-11	positive	0	0.849	0.151	0.2382	User Interface & Experience, Feature Requests	4
707	It good and easy to use	5	2025-03-11	positive	0	0.408	0.592	0.7003	Other	4
708	በጣም አሪፍ መተግበሪያ ነው ። አመሠግናለሁ ።	5	2025-03-10	neutral	0	1	0	0	Other	4
709	Greately improved since it was released! I really like the budget and expense tegistration feature. For ATM or POS withdrawals, it is not possible to account these expenses, even if it is visible on the transactions window. If that can be worked on, it will be improve so much!!	5	2025-03-10	positive	0	0.826	0.174	0.8648	Account Access Issues, Transaction Performance, Feature Requests	4
710	Excellent	5	2025-03-10	positive	0	0	1	0.5719	Other	4
712	Wow Excellent app	5	2025-03-08	positive	0	0.118	0.882	0.8176	User Interface & Experience	4
713	Nice app but i experience some issues with others banks transfer it keeps saying account is not exist most of the time.	4	2025-03-08	positive	0	0.917	0.083	0.2263	Account Access Issues, Transaction Performance, User Interface & Experience	4
714	Add the option to send money to any telebirr account like amole does.	3	2025-03-08	positive	0	0.828	0.172	0.3612	Account Access Issues, Transaction Performance, Feature Requests	4
715	It's best	5	2025-03-08	positive	0	0.192	0.808	0.6369	Other	4
716	no one dashen yichlal	5	2025-03-07	negative	0.423	0.577	0	-0.296	Other	4
717	In short ! I'm so proud of this app developers for their highest professional of developing. Thanks	5	2025-03-06	positive	0	0.676	0.324	0.8011	User Interface & Experience	4
718	The speed is too slow. Need some improvements.	2	2025-03-06	positive	0	0.753	0.247	0.3182	Transaction Performance, User Interface & Experience, Feature Requests	4
719	good app	5	2025-03-04	positive	0	0.256	0.744	0.4404	User Interface & Experience	4
720	Fantastic app	5	2025-03-01	positive	0	0.217	0.783	0.5574	User Interface & Experience	4
721	Good	5	2025-02-28	positive	0	0	1	0.4404	Other	4
722	I wish dark mode feature is add as an option but it's good app	5	2025-02-27	positive	0	0.678	0.322	0.6908	User Interface & Experience, Feature Requests	4
723	Super Up is the ultimate digital banking app, living up to its name with speed, efficiency, and innovation. Designed for a seamless experience, it offers lightning-fast transactions, top-tier security, and effortless financial management. With Super Up, banking has never been this smooth, smart, and super!	5	2025-02-26	positive	0	0.631	0.369	0.969	Transaction Performance, User Interface & Experience	4
724	The Dashen Super App is a game-changer in digital banking, offering a seamless and convenient experience. With its user-friendly interface, fast transactions, and a wide range of financial services, it simplifies banking for customers. Features like bill payments, fund transfers, mobile top-ups, and loan applications make it an all-in-one solution. Plus, its security measures ensure safe and reliable Experiance effortless banking	5	2025-02-26	positive	0	0.768	0.232	0.9393	Transaction Performance, User Interface & Experience, Customer Support, Feature Requests	4
725	ከጰነጨየጠ	2	2025-02-26	neutral	0	1	0	0	Other	4
726	It has good feature. But, it is Very Slow! difficult to pay or receive. The Speed should be improved, else I didn't recommend.	2	2025-02-24	negative	0.254	0.557	0.189	-0.2788	Transaction Performance, User Interface & Experience, Feature Requests	4
727	Excellent app	5	2025-02-24	positive	0	0.213	0.787	0.5719	User Interface & Experience	4
728	አፕልኬሽኑ አሪፍ ሆኖ ሳለ ቴሌብር ወደራስ ብቻ ለምን ሆነ እንደ ድሮው ለሰውም መላክ ቢቻል	4	2025-02-22	neutral	0	1	0	0	Other	4
729	No good	1	2025-02-22	negative	0.706	0.294	0	-0.3412	Other	4
730	Wow amazing app	5	2025-02-21	positive	0	0.116	0.884	0.8225	User Interface & Experience	4
731	best platform... Please avoid otp	5	2025-02-21	positive	0.206	0.187	0.607	0.6486	Other	4
732	Super smart app.	5	2025-02-18	positive	0	0.132	0.868	0.765	User Interface & Experience	4
733	best 👍👍	5	2025-02-16	positive	0	0.488	0.512	0.6369	Other	4
734	I don't know what happens but the application is not send verification pass code you should fix that	1	2025-02-16	neutral	0	1	0	0	Transaction Performance, User Interface & Experience	4
735	This app doesn't work on my phone my phone is Samsung Galaxy s7 android version 9 All other financial apps work like telebirr CBE M_pesa...	1	2025-02-14	positive	0	0.906	0.094	0.3612	User Interface & Experience	4
736	Dashen Super app is secure, very easy to use and has more services uniquely like budgeting, chat, IPS...	5	2025-02-14	positive	0	0.533	0.467	0.9053	User Interface & Experience, Customer Support	4
737	Amazing and user friendly supper app and looking forward the additional features	5	2025-02-14	positive	0	0.588	0.412	0.7906	User Interface & Experience, Feature Requests	4
738	it's amazing app i have seen ever	5	2025-02-13	positive	0	0.612	0.388	0.5859	User Interface & Experience	4
739	One star deducted for not to able to transfer to telebirr.	4	2025-02-13	neutral	0	1	0	0	Transaction Performance	4
740	ጥሩ ነው ግን በደንብ ሊሸሻል ይገባል	4	2025-02-13	neutral	0	1	0	0	Other	4
741	ፍጥነቱ በጣም አሪፍ ነው! እና ቀለል ያለ ነው ! ነገር ግን ተጨማሪ ወደ ቴሌብር ኤጀንት መላኪያ አፕ ቢካተትበት ጥሩ ነው::	4	2025-02-12	neutral	0	1	0	0	Other	4
742	Keep up the good work and pleas add water and electric utility payment	5	2025-02-12	positive	0	0.805	0.195	0.4404	Transaction Performance, Feature Requests	4
743	The app missed some important features 1. It does't show recent transactions 2. Transfer to Telebirr limited to own telebirr 3. The statement does't show running balance	2	2025-02-11	negative	0.137	0.803	0.06	-0.3182	Transaction Performance, User Interface & Experience, Feature Requests	4
744	Simple, Fast and Easy ⭐⭐⭐🎉	4	2025-02-10	positive	0	0.556	0.444	0.6808	Other	4
745	የሚገርም aplication ነው, ነገር ግን ብር ትራንስፈር ሲደረግ ያለ ፒን መሆኑ risk አለው ሁሉ ጊዜ የ ትራንስፈር መደምደሚያ ፒን መሆን አለበት!!!!!!!!!!!!:: አሱ ቢስተካከል 5 star አስከዛው ግን 4 ሰጥቻለው::	4	2025-02-09	negative	0.105	0.895	0	-0.5053	Other	4
746	Baankii daashin baankii hudna galeessa galatoomaa isinii woliin jirra Godina jimmaa magaalaa Aggaaroo irraa Muaz Abamecha Abamilki	5	2025-02-07	neutral	0	1	0	0	Other	4
747	Good	5	2025-02-07	positive	0	0	1	0.4404	Other	4
748	It doesn't work	1	2025-02-07	neutral	0	1	0	0	Other	4
796	Dashen yichalal. Ewnetem one step a head	5	2025-01-17	neutral	0	1	0	0	Other	4
749	#Dashen Super App; Super easy to use, secure, and fast transaction. Love it!	5	2025-02-07	positive	0	0.313	0.687	0.9558	Transaction Performance, User Interface & Experience	4
750	I tried the new Dash Bank Super App today, and it's amazingly easy and fun.I recommend you download and use it. You really like it	5	2025-02-06	positive	0	0.629	0.371	0.9079	User Interface & Experience	4
751	Gud app kegza ga mezmn endze new aind ermjh kedme nachu hlam	5	2025-02-06	neutral	0	1	0	0	User Interface & Experience	4
752	Good app, bad security	3	2025-02-06	positive	0.357	0.102	0.541	0.2023	User Interface & Experience	4
753	On Transaction page only show sent Transaction. Try to include received transaction.	4	2025-02-06	neutral	0	1	0	0	Transaction Performance	4
754	Wonderful Application 😍	5	2025-02-05	positive	0	0.374	0.626	0.7717	User Interface & Experience	4
755	I loved it	5	2025-02-05	positive	0	0.339	0.661	0.5994	Other	4
756	አሁን ገና አንድ እርምጃ ቀደማችው	5	2025-02-04	neutral	0	1	0	0	Other	4
757	I am so thankful for having this best app Dashen one step ahead	5	2025-02-04	positive	0	0.53	0.47	0.8943	User Interface & Experience	4
758	Not good this app	1	2025-02-04	negative	0.445	0.555	0	-0.3412	User Interface & Experience	4
759	Best app	5	2025-02-04	positive	0	0.192	0.808	0.6369	User Interface & Experience	4
760	Excellent app ever but it needs improvement on speed and transaction lists	1	2025-02-03	positive	0	0.612	0.388	0.7469	Transaction Performance, User Interface & Experience, Feature Requests	4
761	Perfect	5	2025-02-02	positive	0	0	1	0.5719	Other	4
762	It does not work functional ,	1	2025-02-02	neutral	0	1	0	0	Other	4
763	Ok	5	2025-02-02	positive	0	0	1	0.296	Other	4
764	all of dashen bank customers use the application it is good to use	5	2025-02-01	positive	0	0.805	0.195	0.4404	User Interface & Experience, Customer Support	4
765	Gret experience	5	2025-02-01	neutral	0	1	0	0	Other	4
766	All good we need more	3	2025-01-31	positive	0	0.58	0.42	0.4404	Other	4
767	Dashen super app is easy to use, fast and robust	5	2025-01-31	positive	0	0.432	0.568	0.8481	User Interface & Experience	4
768	it was amazing app.....thank you dashen bank....	5	2025-01-30	positive	0	0.612	0.388	0.5859	User Interface & Experience	4
769	Dashen bank super app for easy life.	5	2025-01-30	positive	0	0.424	0.576	0.7783	User Interface & Experience	4
770	Excellent UI/UX and beyond Banking services👍👍	5	2025-01-30	positive	0	0.709	0.291	0.5719	User Interface & Experience, Customer Support	4
771	Send to oher bank የሚለዉ ዉስጥ ገብተን ወደ addisinternational bank ለመላክ አይሰራም ሁለተኛ ደግሞ ወደ cbe birr ለመላክ account number ይጠይቃል ሞባይል ነበር ነዉ መጠየቅ ያለበት ይመስለኛል	2	2025-01-29	positive	0	0.952	0.048	0.0772	Account Access Issues, Transaction Performance, Feature Requests	4
772	Best	5	2025-01-29	positive	0	0	1	0.6369	Other	4
773	Just Wow	5	2025-01-29	positive	0	0.208	0.792	0.5859	Other	4
774	mobile banking to the next level	5	2025-01-28	neutral	0	1	0	0	Other	4
775	Nice	5	2025-01-25	positive	0	0	1	0.4215	Other	4
776	The first 3 star review is me	3	2025-01-25	neutral	0	1	0	0	Other	4
777	Is not working	1	2025-01-25	neutral	0	1	0	0	Other	4
778	Fast, reliable and user friendly. Amazing chatting features. Keep it up! Always one step ahead!	5	2025-01-24	positive	0	0.632	0.368	0.8217	Feature Requests	4
779	V good ❗️	5	2025-01-24	positive	0	0.508	0.492	0.4404	Other	4
780	This app is literally the best thing ever The chat banking is so easy just text and it’s done Super smooth, fast, and honestly a life saverIf you haven’t downloaded it yet you’re missing out big time	5	2025-01-23	positive	0.045	0.653	0.303	0.9279	User Interface & Experience	4
781	I only see white page	2	2025-01-23	neutral	0	1	0	0	Other	4
782	Excellent banking app for all your needs! Who needs a physical branch when you can use Dashen Bank Super App Instead! I've never had an issue with anything that Dashen Bank Super App haven't handled swiftly and resolved to my satisfaction and above I don't often write reviews but this is an app/bank that I would highly recommended to everyone 💯 👌👍	5	2025-01-22	positive	0.018	0.709	0.273	0.9614	User Interface & Experience	4
783	Amizing Application 😍	5	2025-01-22	positive	0	0.625	0.375	0.4588	User Interface & Experience	4
784	Fastest and easy to use	5	2025-01-22	positive	0	0.58	0.42	0.4404	Other	4
785	Ok	5	2025-01-21	positive	0	0	1	0.296	Other	4
786	ጥሩ ነው	5	2025-01-21	neutral	0	1	0	0	Other	4
787	ስም ብቻ 😏	2	2025-01-21	neutral	0	1	0	0	Other	4
788	Exellent app with exellent banking system and exellent bank ever	5	2025-01-21	neutral	0	1	0	0	User Interface & Experience	4
789	Amazing app to use as usual! But why option of transferring to Telebirr and M pesa which was available on Amole app is omitted?? Dasheen is my favourite keep it up.	4	2025-01-20	positive	0	0.908	0.092	0.4682	Transaction Performance, User Interface & Experience, Feature Requests	4
790	Needs some improvement	5	2025-01-20	positive	0	0.4	0.6	0.4588	Feature Requests	4
791	Amazing	5	2025-01-20	positive	0	0	1	0.5859	Other	4
792	Amazing super app	5	2025-01-19	positive	0	0.115	0.885	0.8271	User Interface & Experience	4
793	I hope it will be better than amole	5	2025-01-18	positive	0	0.508	0.492	0.7003	Other	4
794	Wly Super App ilove it ❤️ 😍 💖 💕	5	2025-01-18	positive	0	0.362	0.638	0.9559	User Interface & Experience	4
795	Wow	5	2025-01-17	positive	0	0	1	0.5859	Other	4
797	It has a Good performance but need more upgrade for more performance like when we login account not be fast balance show other thing looking good. Carry on. Thanks so much for Greatest service	4	2025-01-17	positive	0	0.598	0.402	0.9662	Account Access Issues, Customer Support	4
798	It is a very wonderful work that has saved its time. That is why it is "Always one step ahead!"	5	2025-01-17	positive	0	0.718	0.282	0.7955	Other	4
799	“Life-changing!” I can’t imagine going back to traditional banking after using this app. It’s so convenient.	5	2025-01-17	neutral	0	1	0	0	User Interface & Experience	4
800	Pro max	5	2025-01-17	neutral	0	1	0	0	Other	4
\.


--
-- Name: banks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kifiya
--

SELECT pg_catalog.setval('public.banks_id_seq', 4, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kifiya
--

SELECT pg_catalog.setval('public.reviews_id_seq', 800, true);


--
-- Name: banks banks_name_key; Type: CONSTRAINT; Schema: public; Owner: kifiya
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_name_key UNIQUE (name);


--
-- Name: banks banks_pkey; Type: CONSTRAINT; Schema: public; Owner: kifiya
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: kifiya
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_bank_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kifiya
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_bank_id_fkey FOREIGN KEY (bank_id) REFERENCES public.banks(id);


--
-- PostgreSQL database dump complete
--

