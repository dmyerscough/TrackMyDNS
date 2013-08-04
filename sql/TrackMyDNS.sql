--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: damian; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO damian;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: damian
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO damian;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: damian
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: damian
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: damian; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO damian;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: damian
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO damian;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: damian
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: damian
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: damian; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO damian;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: damian
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO damian;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: damian
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: damian
--

SELECT pg_catalog.setval('auth_permission_id_seq', 27, true);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: damian; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO damian;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: damian; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO damian;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: damian
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO damian;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: damian
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: damian
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: damian
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO damian;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: damian
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: damian
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: damian; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO damian;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: damian
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO damian;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: damian
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: damian
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: damian; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO damian;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: damian
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO damian;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: damian
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: damian
--

SELECT pg_catalog.setval('django_content_type_id_seq', 9, true);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: damian; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO damian;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: damian; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO damian;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: damian
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO damian;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: damian
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: damian
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Name: propagation_countries; Type: TABLE; Schema: public; Owner: damian; Tablespace: 
--

CREATE TABLE propagation_countries (
    id integer NOT NULL,
    country character varying(3) NOT NULL,
    country_name character varying(30) NOT NULL
);


ALTER TABLE public.propagation_countries OWNER TO damian;

--
-- Name: propagation_countries_id_seq; Type: SEQUENCE; Schema: public; Owner: damian
--

CREATE SEQUENCE propagation_countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.propagation_countries_id_seq OWNER TO damian;

--
-- Name: propagation_countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: damian
--

ALTER SEQUENCE propagation_countries_id_seq OWNED BY propagation_countries.id;


--
-- Name: propagation_countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: damian
--

SELECT pg_catalog.setval('propagation_countries_id_seq', 16, true);


--
-- Name: propagation_dns; Type: TABLE; Schema: public; Owner: damian; Tablespace: 
--

CREATE TABLE propagation_dns (
    id integer NOT NULL,
    ip character varying(15) NOT NULL,
    fqdn character varying(50) NOT NULL,
    org character varying(100) NOT NULL,
    country_id integer NOT NULL,
    latitude character varying(25) NOT NULL,
    longitude character varying(25) NOT NULL,
    responsetime numeric(15,10) NOT NULL,
    available boolean NOT NULL,
    malicious boolean NOT NULL,
    reason character varying(35) NOT NULL,
    unavailable_count integer NOT NULL
);


ALTER TABLE public.propagation_dns OWNER TO damian;

--
-- Name: propagation_dns_id_seq; Type: SEQUENCE; Schema: public; Owner: damian
--

CREATE SEQUENCE propagation_dns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.propagation_dns_id_seq OWNER TO damian;

--
-- Name: propagation_dns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: damian
--

ALTER SEQUENCE propagation_dns_id_seq OWNED BY propagation_dns.id;


--
-- Name: propagation_dns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: damian
--

SELECT pg_catalog.setval('propagation_dns_id_seq', 1, false);


--
-- Name: south_migrationhistory; Type: TABLE; Schema: public; Owner: damian; Tablespace: 
--

CREATE TABLE south_migrationhistory (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    migration character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.south_migrationhistory OWNER TO damian;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: damian
--

CREATE SEQUENCE south_migrationhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.south_migrationhistory_id_seq OWNER TO damian;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: damian
--

ALTER SEQUENCE south_migrationhistory_id_seq OWNED BY south_migrationhistory.id;


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: damian
--

SELECT pg_catalog.setval('south_migrationhistory_id_seq', 2, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: damian
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: damian
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: damian
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: damian
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: damian
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: damian
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: damian
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: damian
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: damian
--

ALTER TABLE ONLY propagation_countries ALTER COLUMN id SET DEFAULT nextval('propagation_countries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: damian
--

ALTER TABLE ONLY propagation_dns ALTER COLUMN id SET DEFAULT nextval('propagation_dns_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: damian
--

ALTER TABLE ONLY south_migrationhistory ALTER COLUMN id SET DEFAULT nextval('south_migrationhistory_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: damian
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: damian
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: damian
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add site	6	add_site
17	Can change site	6	change_site
18	Can delete site	6	delete_site
19	Can add migration history	7	add_migrationhistory
20	Can change migration history	7	change_migrationhistory
21	Can delete migration history	7	delete_migrationhistory
22	Can add dns	8	add_dns
23	Can change dns	8	change_dns
24	Can delete dns	8	delete_dns
25	Can add countries	9	add_countries
26	Can change countries	9	change_countries
27	Can delete countries	9	delete_countries
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: damian
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: damian
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: damian
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: damian
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	content type	contenttypes	contenttype
5	session	sessions	session
6	site	sites	site
7	migration history	south	migrationhistory
8	dns	propagation	dns
9	countries	propagation	countries
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: damian
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: damian
--

COPY django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: propagation_countries; Type: TABLE DATA; Schema: public; Owner: damian
--

COPY propagation_countries (id, country, country_name) FROM stdin;
1	AUS	Australia
2	BRA	Brazil
3	CAN	Canada
4	CHN	China
5	FRA	France
6	GBR	Great Britain
7	GER	Germany
8	ITA	Italy
9	JPN	Japan
10	MAS	Malaysia
11	NZL	New Zealand
12	RSA	South Africa
13	RUS	Russia
14	SWE	Sweden
15	TUR	Turkey
16	USA	United States of America
\.


--
-- Data for Name: propagation_dns; Type: TABLE DATA; Schema: public; Owner: damian
--

COPY propagation_dns (id, ip, fqdn, org, country_id, latitude, longitude, responsetime, available, malicious, reason, unavailable_count) FROM stdin;
28	61.8.0.113	ns4.pacific.net.au	Pacific Internet (Australia) Pty Ltd	1	-37.8167	144.96671	0.1675210000	t	f	OK	0
8	203.12.160.35	dns1.tpgi.com.au	TPG Internet Pty Ltd.	1	-34.4333	150.88319	0.1707508600	t	f	OK	0
16	203.12.160.36	dns2.tpgi.com.au	TPG Internet Pty Ltd.	1	-34.4333	150.88319	0.1721520400	t	f	OK	0
33	202.171.190.10	ns1.bigair.com.au	BIGAIR	1	-33.883301	151.21671	0.1676580900	t	f	OK	0
29	203.12.160.35	dns1.tpgi.com.au	TPG Internet Pty Ltd.	1	-34.4333	150.88319	0.1723690000	t	f	OK	0
39	203.31.48.11	ns3.netspeed.com.au	Australian Capital Region Network	1	-36.666698	149.8333	0.1792149500	t	f	OK	0
7	61.8.0.113	ns4.pacific.net.au	Pacific Internet (Australia) Pty Ltd	1	-37.8167	144.96671	0.1671850700	f	f	Timed Out	0
37	203.12.160.36	dns2.tpgi.com.au	TPG Internet Pty Ltd.	1	-34.4333	150.88319	0.1714890000	t	f	OK	0
13	203.31.48.7	ns1.netspeed.com.au	Australian Capital Region Network	1	-36.666698	149.8333	0.1787169000	t	f	OK	0
34	203.31.48.7	ns1.netspeed.com.au	Australian Capital Region Network	1	-36.666698	149.8333	0.1791849100	t	f	OK	0
19	203.31.48.11	ns3.netspeed.com.au	Australian Capital Region Network	1	-36.666698	149.8333	0.1794359700	t	f	OK	0
20	203.31.48.11	ns3.netspeed.com.au	Australian Capital Region's Network	1	-36.666698	149.8333	0.1796689000	t	f	OK	0
18	203.31.48.11	ns3.netspeed.com.au	Australian Capital Region Network	1	-36.666698	149.8333	0.1797199200	t	f	OK	0
21	203.31.48.11	ns3.netspeed.com.au	Australian Capital Region's Network	1	-36.666698	149.8333	0.1801559900	t	f	OK	0
23	203.94.175.210	ns2.247.id.au	Uecomm	1	-33.799999	151.1833	0.1845002200	t	f	OK	0
2	203.94.175.210	ns2.247.id.au	Uecomm	1	-33.799999	151.1833	0.1849031400	t	f	OK	0
31	203.123.67.5	ns1.datafast.net.au	Datafast Telecommuncations Ltd	1	-37.8167	144.96671	0.1869700000	t	f	OK	0
6	220.233.0.2	ns2.exetel.com.au	Exetel	1	-33.883301	151.01669	0.1723618500	t	f	OK	0
26	220.233.0.1	ns1.exetel.com.au	Exetel	1	-33.883301	151.01669	0.1730251300	t	f	OK	0
15	210.23.129.34	ns2.pacific.net.au	Pacific Internet (Australia) Pty Ltd	1	-37.883301	145.3	0.1800470400	t	f	OK	0
3	203.63.8.27	ns1.easy.com.au	Easynet Pty Limited	1	-34.033298	150.73331	0.1977968200	t	f	OK	0
24	203.63.8.27	ns1.easy.com.au	Highlevel Innovations Pty Ltd T/A ISP Dr	1	-34.033298	150.73331	0.1982579200	t	f	OK	0
22	203.89.65.70	ns1.ipera.com.au	Ipera Pty Ltd	1	-32.916698	151.75	0.1994719500	t	f	OK	0
1	203.89.65.70	ns1.ipera.com.au	Ipera Pty Ltd	1	-32.916698	151.75	0.1995019900	t	f	OK	0
9	203.12.160.37	dns3.tpgi.com.au	TPG Internet Pty Ltd.	1	-34.4333	150.88319	0.2082779400	t	f	OK	0
30	203.12.160.37	dns3.tpgi.com.au	TPG Internet Pty Ltd.	1	-34.4333	150.88319	0.2088580100	t	f	OK	0
35	203.188.128.1	ns2.perthix.net	Perth iX	1	-31.9333	115.8333	0.2234768900	t	f	OK	0
32	139.134.2.190	sy-dns04.tmns.net.au	Telstra Internet	1	-25.299999	152.8166	0.1699719400	t	f	OK	0
38	203.31.101.5	ns1.cynergic.net	MetaTECH	1	-37.833302	145.03329	0.2783401000	t	f	OK	0
4	203.221.45.7	ns1.bluefirems.com.au	Bluefire-Corporation	1	-33.8167	151.1833	0.2023711200	t	f	OK	0
17	203.31.101.5	ns1.cynergic.net	MetaTECH	1	-37.833302	145.03329	0.2783441500	t	f	OK	0
12	202.171.190.10	ns1.bigair.com.au	BIGAIR	1	-33.883301	151.21671	0.1675632000	t	f	OK	0
5	220.233.0.1	ns1.exetel.com.au	Exetel	1	-33.883301	151.01669	0.1730251300	t	f	OK	0
11	139.134.2.190	sy-dns04.tmns.net.au	Telstra Internet	1	-25.299999	152.8166	0.1693370300	t	f	OK	0
27	220.233.0.2	ns2.exetel.com.au	Exetel	1	-33.883301	151.01669	0.1723871200	t	f	OK	0
25	203.221.45.7	ns1.bluefirems.com.au	Bluefire-Corporation	1	-33.8167	151.1833	0.2018139400	t	f	OK	0
14	203.188.128.1	ns2.perthix.net	Perth iX	1	-31.9333	115.8333	0.2237160200	t	f	OK	0
36	210.23.129.34	ns2.pacific.net.au	Pacific Internet (Australia) Pty Ltd	1	-37.883301	145.3	0.1806790800	t	f	OK	0
10	203.123.67.5	ns1.datafast.net.au	Datafast Telecommuncations Ltd	1	-37.8167	144.96671	0.1874799700	t	f	OK	0
41	200.221.11.101	ravel.uol.com.br	Universo Online S.A.	2	-10	-55	0.1909890200	t	f	OK	0
42	200.221.11.100	brahms.uol.com.br	Universo Online S.A.	2	-10	-55	0.1907122100	t	f	OK	0
50	66.51.128.241	ns5.dns.aebc.com	Cipherkey Exchange Corp.	3	49.166698	-122.9667	0.0337421890	t	f	OK	0
60	216.8.179.50	ns1.fastpark.net	Next Dimension	3	42.333302	-83.033302	0.0680639740	t	f	OK	0
47	209.53.200.2	ns1.dns.aebc.com	Cipherkey Exchange Corp.	3	49.136398	-122.8213	0.0336129670	t	f	OK	0
49	66.51.128.240	ns4.dns.aebc.com	Cipherkey Exchange Corp.	3	49.166698	-122.9667	0.0339548590	t	f	OK	0
46	209.53.200.3	ns2.dns.aebc.com	Cipherkey Exchange Corp.	3	49.136398	-122.8213	0.0347981450	t	f	OK	0
71	204.244.3.129	ns2.navigata.net	WesTel Telecommunications	3	49.266701	-122.7833	0.0363311770	t	f	OK	0
69	216.21.128.22	dns1.van.radiant.net	RADIANT Communications	3	49.25	-123.1333	0.0389819150	t	f	OK	0
62	142.104.80.2	dns2.uvic.ca	University of Victoria	3	48.4333	-123.35	0.0405621530	t	f	OK	0
78	142.103.1.1	dns3.ubc.ca	University of British Columbia	3	49.25	-123.1333	0.0466430190	t	f	OK	0
75	216.21.129.22	dns2.van.radiant.net	RADIANT Communications	3	49.25	-123.1333	0.0472378730	t	f	OK	0
48	142.104.6.1	dns1.uvic.ca	University of Victoria	3	48.4333	-123.35	0.0502519610	t	f	OK	0
67	216.183.90.190	ns2.blink.ca	Collective Technologies	3	43.666698	-79.416801	0.0788359640	t	f	OK	0
44	216.198.139.69	ns2.clearnet.com	Telus Communications	3	43.666698	-79.416801	0.0799980160	t	f	OK	0
54	69.28.239.9	ns2.electronicbox.net	Electronicbox Network	3	45.400002	-71.900002	0.0844647880	t	f	OK	0
72	72.2.10.2	ns2.voyageur.coop	Big Pipe	3	51.083302	-114.0833	0.0849878790	t	f	OK	0
57	205.151.69.200	ns1.cgocable.ca	COGECO Cable Canada	3	46.349998	-72.550003	0.0853030680	t	f	OK	0
74	205.151.222.251	dns4.videotron.net	Videotron Telecom Ltee	3	45.5	-73.583298	0.0863440040	t	f	OK	0
51	216.171.98.75	ns1.netsweeper.com	Atria Networks	3	43.450001	-80.5	0.0917718410	t	f	OK	0
80	216.235.1.2	ns1.dm.egate.net	egateNETWORKS Inc.	3	43.666698	-79.416801	0.0791509150	t	f	OK	0
79	216.235.1.3	ns2.dm.egate.net	egateNETWORKS Inc.	3	43.666698	-79.416801	0.0797221660	t	f	OK	0
53	69.28.239.8	ns1.electronicbox.net	Electronicbox Network	3	45.400002	-71.900002	0.0850880150	t	f	OK	0
70	142.46.128.130	ns2.hydroonetelecom.com	Ontario Hydro - Telecom	3	43.666698	-79.416801	0.0908079150	t	f	OK	0
66	142.46.1.130	hotdns1.hydroonetelecom.com	Ontario Hydro - Telecom	3	43.666698	-79.416801	0.0916230680	t	f	OK	0
81	216.185.64.10	ns2.fibrewired.on.ca	Hamilton Hydro / FibreWired	3	43.25	-79.833298	0.0926828380	t	f	OK	0
56	216.185.64.6	ns1.fibrewired.on.ca	Hamilton Hydro / FibreWired	3	43.25	-79.833298	0.0934150220	t	f	OK	0
76	208.79.56.204	dns2.295.ca	3757277 Canada Inc. (oa 295.ca)	3	43.450001	-80.5	0.0943801400	t	f	OK	0
55	208.38.1.15	ns2.rmge.com	Pason Systems Corp - CLGRAB12	3	49.733299	-112.6167	0.0956428050	t	f	OK	0
58	69.26.64.254	ns1.kmts.ca	KMTS Internet	3	49.766701	-94.466698	0.1061930700	t	f	OK	0
59	216.254.141.2	ns1.primus.ca	Primus Telecommunications Canada	3	45.416698	-75.699997	0.0887110230	t	f	OK	0
63	69.26.64.253	ns2.kmts.ca	KMTS Internet	3	49.766701	-94.466698	0.1051099300	t	f	OK	0
64	216.36.128.2	ns1.westmancom.com	Westman Communications Group	3	49.833302	-99.949997	0.1244680900	t	f	OK	0
61	134.117.136.91	dns1.ncf.ca	Carleton University	3	45.416698	-75.699997	0.0955939290	t	f	OK	0
77	204.244.3.130	ns1.navigata.net	WesTel Telecommunications	3	49.266701	-122.7833	0.0371530060	t	f	OK	0
65	208.72.120.204	dns1.295.ca	3757277 Canada Inc. (oa 295.ca)	3	43.450001	-80.5	0.0914309020	t	f	OK	0
45	216.118.209.5	ns1.magna.com	Magna International	3	44	-79.466698	0.0888729100	t	f	OK	0
43	216.198.139.68	ns1.clearnet.com	Telus Communications	3	43.666698	-79.416801	0.0797569750	t	f	OK	0
68	209.239.11.98	ns2.execulink.com	Execulink Internet Services Corporation	3	60	-95	0.0899031160	t	f	OK	0
73	205.151.222.250	dns3.videotron.net	Videotron Telecom Ltee	3	45.5	-73.583298	0.0871798990	t	f	OK	0
52	216.171.98.76	ns2.netsweeper.com	Atria Networks	3	43.450001	-80.5	0.0924608710	t	f	OK	0
83	211.167.97.68	dns2.cableplus.com.cn	Cable OnLine Network	4	31.004999	121.4086	0.1562080400	t	f	OK	0
85	218.30.26.70	idc-ns2.bjtelecom.net	CHINANET IDC center	4	39.928902	116.3883	0.1732142000	t	f	OK	0
93	218.30.26.68	idc-ns1.bjtelecom.net	CHINANET IDC center	4	39.928902	116.3883	0.1874241800	t	f	OK	0
92	202.102.227.90	ns6.halyptt.net.cn	CNCGROUP Henan province network	4	37.8997	112.1872	0.2134277800	t	f	OK	0
88	202.205.109.1	dns1.cernet.cn	Information Resources Dept of CERNET	4	39.928902	116.3883	0.2176868900	t	f	OK	0
86	202.120.111.3	dns1.ecust.edu.cn	East China University of Science and Technology, S	4	31.004999	121.4086	0.2499659100	t	f	OK	0
95	222.46.120.5	ns1.zjtietong.com	CHINA RAILWAY TELECOMMUNICATIONS CENTER	4	39.928902	116.3883	0.2526700500	t	f	OK	0
94	210.73.88.1	ns2.cpip.net.cn	Capinfo Company Limited.	4	39.928902	116.3883	0.2224731400	t	f	OK	0
84	210.51.176.71	dns1.cnc-idc.com	Beijing YiZhuang IDC of China Netcom	4	39.928902	116.3883	0.2464849900	t	f	OK	0
82	202.203.192.33	dns1.ynufe.edu.cn	Yunnan Institute of Finance and Trade	4	25.0389	102.7183	0.2716779700	t	f	OK	0
90	202.102.154.3	dns1.sdqdptt.net.cn	CNCGROUP Shandong province network	4	23.587799	117.3508	0.1976161000	t	f	OK	0
89	222.46.120.6	ns2.zjtietong.com	CHINA RAILWAY TELECOMMUNICATIONS CENTER	4	39.928902	116.3883	0.2489972100	t	f	OK	0
91	202.102.224.68	ns1.hazzptt.net.cn	CNCGROUP Henan province network	4	37.8997	112.1872	0.2108101800	t	f	OK	0
96	210.73.64.1	ns1.cpip.net.cn	People's Government of Beijing Municipality	4	39.928902	116.3883	0.1910469500	t	f	OK	0
87	202.194.145.66	dns3.upc.edu.cn	HuaDong University of Petroleum	4	37.456402	118.4856	0.2299552000	t	f	OK	0
134	193.52.218.19	ns1.syrhano.net	SYsteme Reseau de HAute NOrmandie	5	46.700001	5.0500002	0.1781690100	t	f	OK	0
116	194.6.240.1	ns1.Intrinsec.com	INTRINSEC, France	5	48.900002	2.2	0.1691489200	t	f	OK	0
115	194.6.240.2	ns2.Intrinsec.com	INTRINSEC, France	5	48.900002	2.2	0.1760418400	t	f	OK	0
99	195.214.240.136	ns2.waycom.net	Waycom International	5	48.866699	2.2332001	0.1662869500	t	f	OK	0
127	212.30.96.211	NS1.9tel.net	Immeuble Quai Ouest	5	48.833302	2.25	0.1679890200	t	f	OK	0
128	217.151.0.195	ns2-new.poliris.net	Poliris	5	48.866699	2.3333001	0.1682560400	t	f	OK	0
125	83.167.58.133	ns1.fr.kddi.com	Neo Telecoms Group	5	48.900002	2.3	0.1737201200	t	f	OK	0
109	129.185.32.9	dns3.cce.integris.fr	Bull SA	5	48.733299	2.2832999	0.1750419100	t	f	OK	0
114	195.167.224.150	dns2-3p.completel.net	PTF EFFICIENT IP	5	48.900002	2.2	0.1672411000	t	f	OK	0
133	212.73.209.226	ns2.bsocom.com	BSO Communication, Paris	5	48.866699	2.3333001	0.1687691200	t	f	OK	0
110	195.154.223.1	ns2.isdnet.net	isdnet Backbone	5	48.866699	2.3333001	0.1693339300	t	f	OK	0
132	89.2.0.2	ns2.numericable.net	NC NUMERICABLE S.A.	5	49.349998	0.96670002	0.1726448500	t	f	OK	0
107	129.185.32.3	dns1.cce.integris.fr	Bull SA	5	48.733299	2.2832999	0.1773688800	t	f	OK	0
106	195.154.152.98	ns1.ville-pau.fr	ECIS	5	48.866699	2.3333001	0.1662349700	t	f	OK	0
98	217.146.224.6	ns1.axialys.net	Axialys Interactive	5	48.896999	2.2564001	0.1674089400	t	f	OK	0
103	195.68.195.68	ns1.ccip.fr	Chambre de commerce et d'Industrie de Paris	5	48.866699	2.3333001	0.1683638100	t	f	OK	0
111	80.67.169.40	ns1.fdn.org	FDN - Main network - Interxion	5	48.866699	2.3333001	0.1713230600	t	f	OK	0
123	213.244.5.67	dns2.amitel.fr	LYON	5	45.75	4.8499999	0.1741588100	t	f	OK	0
121	193.252.247.52	ns1.usei-strasbourg.net	France Telecom Hosting	5	48.8167	2.3	0.1748220900	t	f	OK	0
120	212.99.102.4	ns2.stesop.net	Nice	5	43.700001	7.25	0.1834209000	t	f	OK	0
129	84.103.237.141	ns3.rslv.n9uf.net	Plateforme De Service	5	48.833302	2.25	0.1617541300	t	f	OK	0
105	212.37.208.3	ns3.internet-fr.net	Internet Fr - Hosting solutions' Architect	5	48.733299	2.2832999	0.1621570600	t	f	OK	0
104	212.37.208.4	ns4.internet-fr.net	Internet Fr - Hosting solutions' Architect	5	48.733299	2.2832999	0.1640150500	t	f	OK	0
135	212.94.162.1	dns1.gaoland.net	Gaoland backbone	5	48.833302	2.25	0.1646099100	t	f	OK	0
100	217.169.242.2	ns1.mcom.fr	Infosat ICPS SA	5	46	2	0.1670250900	t	f	OK	0
126	80.67.169.12	ns0.fdn.org	FDN - Main network - Interxion	5	48.866699	2.3333001	0.1678581200	t	f	OK	0
130	89.2.0.1	ns1.numericable.net	NC NUMERICABLE S.A.	5	49.349998	0.96670002	0.1732950200	t	f	OK	0
113	213.166.201.1	ns1.calixo.net	INTERNET SERVICE PLATEFORME	5	48.083302	7.3667002	0.1743099700	t	f	OK	0
101	194.250.223.2	ns2.cs3i.fr	CS3I	5	49.349998	0.96670002	0.1791651200	t	f	OK	0
108	81.91.64.64	ns1.skyturn.com	Groupe ECRITEL France	5	48.866699	2.3333001	0.2272489100	f	f	No Response	0
124	193.93.125.197	ns5gslb.skyrock.net	TELEFUN - SKYROCK	5	48.866699	2.3333001	0.1667749900	t	f	OK	0
117	83.145.111.52	ns1.gfi.fr	AUBERVILLIERS	5	48.916698	2.3833001	0.1697211300	t	f	OK	0
102	194.250.223.1	ns1.cs3i.fr	CS3I	5	49.349998	0.96670002	0.1776149300	t	f	OK	0
112	213.166.201.2	ns2.calixo.net	INTERNET SERVICE PLATEFORME	5	48.083302	7.3667002	0.1725058600	t	f	OK	0
136	217.146.224.5	ns0.axialys.net	Axialys Interactive	5	48.896999	2.2564001	0.1649069800	t	f	OK	0
131	212.73.209.34	ns1.bsocom.com	BSO Communication, Paris	5	48.866699	2.3333001	0.1673779500	t	f	OK	0
137	157.99.64.65	ns0.pasteur.fr	Institut Pasteur	5	48.866699	2.3333001	0.1693120000	t	f	OK	0
119	62.244.72.114	ns4.haloa.fr	RMI Informatique	5	48.716702	6.1666999	0.1732978800	t	f	OK	0
122	193.252.247.53	ns2.usei-strasbourg.net	France Telecom Hosting	5	48.8167	2.3	0.1716351500	t	f	OK	0
118	195.101.91.185	ns2.spiralnet.net	Spiral Sarl	5	43.283298	5.5667	0.1938660100	t	f	OK	0
97	83.151.112.193	dns1.atriumnetwork.com	Atrium Network Internet Range	5	49.75	6.1666999	0.1705410500	t	f	OK	0
177	194.169.244.34	ns6.adweb.co.uk	Crosspoint Colocation Limited	6	53.416698	-1.2667	0.1595962000	t	f	OK	0
142	193.111.230.24	ns1.thenameservers.co.uk	Lan systems are a UK based ISP	6	52.633301	-1.1332999	0.1746950100	t	f	OK	0
189	194.73.96.62	ns0.bull.co.uk	FTIP003073803  Bull Information Systems Ltd	6	53.450001	-2.3167	0.1542460900	t	f	OK	0
191	77.244.130.2	ns0.rbsov.as42689.net	Inuk UK triple play infrastructure	6	51.639198	-3.3367	0.1543250100	t	f	OK	0
248	79.99.66.3	ns2.truedns.co.uk	4D Hosting	6	51.333302	-0.46669999	0.1510458000	t	f	OK	0
212	193.203.82.66	ns0.sohonet.co.uk	Sohonet Office Poland Street	6	51.5	-0.1167	0.1519658600	t	f	OK	0
186	194.75.147.212	ns2.financialexpress.net	FINANCIAL EXPRESS	6	51.5	-0.1167	0.1524419800	t	f	OK	0
209	217.144.144.211	ns2.fmn.uk.net	Fusion Media Networks UK	6	51.533298	0.69999999	0.1529681700	t	f	OK	0
273	193.34.170.162	ns1.stealth-networks.co.uk	Stealth Networks	6	51.25	0.75	0.1532149300	t	f	OK	0
243	89.107.56.4	ns1.ukvpsdns.com	VPS1	6	51.5	-0.1167	0.1537220500	t	f	OK	0
195	91.135.230.231	dns1.lede.co.uk	Firstserv Limited	6	51.5	-0.1167	0.1539568900	t	f	OK	0
210	195.238.172.31	ns.sovdns7.com	Compila Multisite London Infrastructure	6	51.5	-0.1167	0.1553409100	t	f	OK	0
190	62.69.62.7	ns1.murphx.net	murphx Network Infrastructure	6	50.966702	-1.35	0.1526441600	t	f	OK	0
267	80.94.198.1	ns2.serverdns.net	Vibus Limited - Dublin, Ireland	6	54.583302	-5.9333	0.1529421800	t	f	OK	0
264	193.104.152.32	ns5.brookcom.net	EUnet/FR	6	48.866699	2.3333001	0.1531250500	t	f	OK	0
238	212.42.1.68	ns1.stripe21.com	QiX Limited	6	51.483299	-0.60000002	0.1560950300	t	f	OK	0
252	217.77.176.10	ns1.titaninternet.co.uk	Titan Internet	6	51.583302	0.71670002	0.1561129100	t	f	OK	0
178	194.72.9.38	ns8.bt.net	BT	6	51.766701	-0.30000001	0.1570599100	t	f	OK	0
251	193.113.209.35	dns1.btconnect.com	BT	6	51.5	-3.2	0.1604039700	t	f	OK	0
187	128.86.249.14	ns1.ulcc.ac.uk	JANET networking at ULCC	6	51.5	-0.1167	0.1606140100	t	f	OK	0
172	62.149.37.11	Ns1.activatemedia.com	Activate media	6	51.5	-0.1167	0.1632740500	f	f	Timed Out	0
242	193.203.80.90	ns1.sohonet.co.uk	Sohonet Limited	6	51.5	-0.1167	0.1531980000	t	f	OK	0
215	77.244.130.10	ns0.thdo.as42689.net	Inuk UK triple play infrastructure	6	51.639198	-3.3367	0.1549530000	t	f	OK	0
171	81.91.192.254	ns1.mynow.co.uk	UK Broadband Ltd.	6	54	-2	0.1555421400	t	f	OK	0
206	212.42.1.73	ns1.stripe21.net.uk	QiX Limited	6	51.483299	-0.60000002	0.1558578000	t	f	OK	0
168	217.78.80.70	ns1.borwood.net	Borwood Ltd Infrastructure	6	51.5	-0.1167	0.1587140600	t	f	OK	0
218	194.72.9.62	ns1.btred.net	Frame Relay Customer Network	6	51.766701	-0.30000001	0.1610920400	t	f	OK	0
266	85.90.34.5	ukns5.telehouse.net	Telehouse International Corporation of Europe Ltd	6	51.5	-0.1167	0.1638419600	t	f	OK	0
221	217.72.162.2	dns0.hotchilli.net	HotChilli Internet	6	51.733299	0.4833	0.1532330500	t	f	OK	0
258	62.140.195.84	ns1.mnet.net.uk	Margolis IT Solutions Limited	6	51.5	-0.1167	0.1537001100	t	f	OK	0
260	62.140.218.148	ns2.mnet.net.uk	Adapt Services Limited	6	52.633301	-1.1332999	0.1543080800	t	f	OK	0
176	212.84.181.99	ns2.spellbox.net	SOLWARE Network	6	51.349998	-0.73339999	0.1581828600	t	f	OK	0
275	193.63.88.11	ns0.ulcc.ac.uk	University of London Computer Centre	6	51.5	-0.1167	0.1609919100	t	f	OK	0
262	212.15.86.12	dns2.intrascape.com	UK Internet Provider	6	56.333302	-6.1167002	0.1623439800	t	f	OK	0
256	195.74.138.10	ns1.legalease.co.uk	Legalease	6	51.400002	-1.3167	0.1625080100	t	f	OK	0
246	212.15.64.21	ns0.csi.net.uk	UK Internet Provider	6	51.416698	-0.25	0.1642799400	t	f	OK	0
247	80.94.196.1	ns1.serverdns.net	Vibus Limited - Dublin, Ireland	6	54.583302	-5.9333	0.1530649700	t	f	OK	0
169	80.88.215.146	ns1.orbcp5.co.uk	OrbitalNet Ltd	6	51.25	0.75	0.1560399500	t	f	OK	0
148	212.42.165.37	ns0.friday-net.co.uk	FN-BTN-COLO	6	50.833302	-0.15000001	0.1564109300	t	f	OK	0
199	217.77.176.11	ns2.titaninternet.co.uk	Titan Internet	6	51.583302	0.71670002	0.1570429800	t	f	OK	0
180	212.118.241.33	ns2.lon.pnap.net	Internap Network Services	6	54	-2	0.1573479200	t	f	OK	0
185	212.118.241.1	ns1.lon.pnap.net	Internap Network Services	6	54	-2	0.1591498900	t	f	OK	0
204	217.10.134.2	ns0.air-band.net	www.air-band.net Customer IP Range	6	51.799999	-1.1332999	0.1595299200	t	f	OK	0
211	85.90.48.10	ns2.fr.kddi.com	Telehouse International Corporation of Europe Ltd	6	51.5	-0.1167	0.1609311100	t	f	OK	0
257	84.234.17.30	ns1.emailreceiver.co.uk	Netrino London Network	6	51.5	-0.1167	0.1630299100	t	f	OK	0
193	80.247.148.142	ns3.newskies.net	NMS Zone	6	51.5	-0.1167	0.1630518400	t	f	OK	0
159	81.17.66.13	ns0.swisp.co.uk	Data Centre Server IP address range	6	50.700001	-3.5332999	0.1651508800	t	f	OK	0
240	89.107.56.253	ns2.ukvpsdns.com	VPS1	6	51.5	-0.1167	0.1539199400	f	f	Timed Out	0
146	213.232.122.1	ns1.axiaserve.net	ARBINET Customer Subnet	6	51.5	-0.1167	0.1554439100	t	f	OK	0
236	84.45.12.4	ns0.freenetnames.co.uk	C4L Ltd	6	50.716702	-1.8832999	0.1600110500	t	f	OK	0
153	158.234.8.70	ns1.logica.com	Logica International	6	51.5	-0.1167	0.1627428500	t	f	OK	0
192	212.9.98.20	dns1.keycom.co.uk	Keycom are a National UK ISP for Students	6	52.799999	-2.0999999	0.1662809800	t	f	OK	0
234	85.90.35.5	frns1.telehouse.net	Telehouse International Corporation of Europe Ltd	6	51.5	-0.1167	0.1666219200	t	f	OK	0
265	217.35.107.90	ns1.webpro.net.uk	British Telecommunications	6	52.033298	-0.69999999	0.1680181000	t	f	OK	0
222	195.200.158.50	ns1.netserv.net	NETSERV Core Network	6	52.666698	-1.1167001	0.1687629200	t	f	OK	0
149	91.198.255.45	interdns1.sandwell.gov.uk	Sandwell Metropolitan Borough Council	6	52.5	-1.9667	0.1706719400	t	f	OK	0
203	217.144.144.11	ns1.fmn.uk.net	Fusion Media Networks UK	6	51.533298	0.69999999	0.1555719400	t	f	OK	0
217	158.234.250.70	ns2.logica.com	Logica International	6	51.5	-0.1167	0.1747260100	t	f	OK	0
161	77.68.37.81	ns2.tuscanred.net	Fast Hosts LTD	6	51.700001	-0.60000002	0.1762051600	t	f	OK	0
157	83.170.69.2	ns2.web-ns.net	UK2.NET - UK's biggest host	6	51.5	-0.1167	0.1563150900	t	f	OK	0
162	77.68.37.80	ns1.tuscanred.net	Fast Hosts LTD	6	51.700001	-0.60000002	0.1766970200	t	f	OK	0
233	217.174.252.65	ns2.meridian-micro.co.uk	Fast Hosts LTD	6	51.833302	-2.25	0.1773579100	t	f	OK	0
182	212.137.65.14	ns2.swi.uk.cw.net	Cable and Wireless Webhosting Network-NET	6	51.516701	-1.7833	0.1775689100	t	f	OK	0
220	217.140.98.10	ns2.arm.com	ARM	6	52.200001	0.1167	0.1776211300	t	f	OK	0
216	212.54.179.1	ns1.sureline.net	Managed by I-NAP	6	54	-2	0.1569519000	t	f	OK	0
175	83.170.65.182	ns3.ukwebhost.org	UK2.NET - UK's biggest host	6	51.5	-0.1167	0.1574921600	t	f	OK	0
207	77.75.184.4	ns1.metronet-uk.com	Manchester Metronet	6	53.5	-2.2167001	0.1576130400	t	f	OK	0
224	80.84.72.25	ns3.uklinux.net	Definite Software Ltd	6	53.5	-2.2167001	0.1577050700	t	f	OK	0
227	217.140.98.25	ns4.arm.com	ARM	6	52.200001	0.1167	0.1776268500	t	f	OK	0
208	77.75.184.5	ns2.metronet-uk.com	Manchester Metronet	6	53.5	-2.2167001	0.1578030600	t	f	OK	0
196	83.170.64.2	ns1.web-ns.net	UK2.NET - UK's biggest host	6	51.5	-0.1167	0.1579179800	t	f	OK	0
241	89.107.16.2	ns0.ukgrid.net	The UK Grid Network Ltd	6	53.5	-2.2167001	0.1584138900	t	f	OK	0
274	195.60.164.69	ns1.o1nk.net	PGI IT	6	52.033298	-0.55000001	0.1594340800	t	f	OK	0
245	195.46.48.21	ns0.endava.com	Internetworking Strategies Network	6	51.599998	-1.1332999	0.1605751500	t	f	OK	0
173	195.60.164.37	ns2.o1nk.net	PGI IT	6	52.033298	-0.55000001	0.1644060600	t	f	OK	0
179	193.186.162.3	ns1.corpolink.com	Oesterreichische Nationalbank	6	48.200001	16.366699	0.1648659700	t	f	OK	0
268	82.198.129.138	ns1.nethop.ie	Interfusion Networks Ltd	6	53.333099	-6.2488999	0.1656489400	t	f	OK	0
270	193.201.185.3	ns4.brookcom.net	Brookland Computer Services	6	50.983299	0.83329999	0.1730918900	f	f	Timed Out	0
271	193.201.185.2	ns3.brookcom.net	Brookland Computer Services	6	50.983299	0.83329999	0.1739170600	t	f	OK	0
232	62.204.32.5	ns2.datagate.net.uk	Datagate Network Solutions Ltd.	6	51.5	-0.1167	0.1513419200	t	f	OK	0
249	194.164.97.10	dns1.psand.net	Emery McLavern Orr Limited	6	51.616699	-1.7	0.1522610200	t	f	OK	0
272	85.133.52.27	ns2.glitchhosting.com	Adapt Services Limited	6	51.5	-0.1167	0.1524188500	t	f	OK	0
144	193.243.128.91	ns1.moneyam.com	Shares on Line Ltd	6	51.5	-0.1167	0.1545960900	t	f	OK	0
254	85.158.153.2	ns1.m2.com	Internal Network	6	52.216702	-0.28330001	0.1741790800	t	f	OK	0
198	85.91.236.70	ns1.inetc.co.uk	Internet Connections Ltd PA Address Space	6	53.150002	-2.2	0.1592350000	t	f	OK	0
231	80.88.214.51	ns1.orbcp4.co.uk	ORB-RB-HOSTING	6	51.25	0.75	0.1553280400	t	f	OK	0
145	194.169.234.136	ns2.mbmltd.co.uk	InterLinx Ltd	6	54	-2	0.1580970300	t	f	OK	0
183	195.102.23.28	ns1.phda.org	Insurance Agency and Employment Agency	6	52.466702	-1.9167	0.1606431000	t	f	OK	0
141	195.242.214.82	ns2.eyotahosts.net	Open Hosting Ltd	6	54	-2	0.1609180000	t	f	OK	0
197	82.138.243.4	ns1.oh2.co.uk	Windows Web Hosting	6	50.8167	-3.4833	0.1610908500	t	f	OK	0
230	194.145.240.6	ns1.fivestardns.com	Internet on Demand	6	53.700001	-1.7	0.1613819600	t	f	OK	0
154	62.255.243.1	ns1.andover.co.uk	Andover Business Computers	6	51.200001	-1.4834	0.1794290500	t	f	OK	0
167	195.242.214.81	ns1.eyotahosts.net	Open Hosting Ltd	6	54	-2	0.1630730600	t	f	OK	0
151	80.74.16.31	ns1.waves.uk.net	WW Infrastructure	6	52.633301	-1.1332999	0.1643898500	t	f	OK	0
139	217.168.144.127	ns2.wps4.co.uk	iDAQ Ltd.	6	51.283298	-0.53329998	0.1638898800	t	f	OK	0
150	80.74.16.30	ns2.globalwaves.net	WW Infrastructure	6	52.633301	-1.1332999	0.1649198500	t	f	OK	0
259	139.184.42.50	ns0.susx.ac.uk	University of Sussex	6	50.833302	-0.15000001	0.1674728400	f	f	Timed Out	0
214	92.48.112.254	ns1.rcmf.co.uk	PoundHost Internet Services	6	54	-2	0.1580128700	t	f	OK	0
239	212.54.160.7	ns0.sureline.net	Managed by I-NAP	6	54	-2	0.1548149600	t	f	OK	0
269	213.171.220.209	ns0.in4sight.net	Fast Hosts LTD	6	51.833302	-2.25	0.1764941200	f	f	Timed Out	0
253	85.118.156.21	ns1.oxygen8.com	Opera Telecom Ltd	6	54	-2	0.1713230600	t	f	OK	0
163	80.88.214.11	ns1.orbcp3.co.uk	ORB-RB-HOSTING	6	51.25	0.75	0.1547551200	t	f	OK	0
261	212.135.191.52	ns1.fmware.net	Alan Stirling technology	6	51.5	-0.1167	0.1732997900	t	f	OK	0
165	195.188.155.44	ns1.midlandinternet.net	Telewest Broadband	6	54	-2	0.1744108200	t	f	OK	0
223	195.12.14.36	ns1.wcsltd.co.uk	Welch Consulting Network	6	51.400002	-1.3167	0.2030401200	t	f	OK	0
147	213.232.122.2	ns2.axiaserve.net	ARBINET Customer Subnet	6	51.5	-0.1167	0.1546409100	t	f	OK	0
244	80.84.64.20	ns0.uklinux.net	Definite Software Ltd	6	53.400002	-2.1500001	0.1572001000	t	f	OK	0
156	80.88.215.250	ns1.orbcp6.co.uk	OrbitalNet Ltd	6	51.25	0.75	0.1560499700	t	f	OK	0
170	195.166.13.4	dns0.ns.uk.quza.net	Quza core network and offices	6	54	-2	0.1570179500	t	f	OK	0
213	217.72.163.3	dns1.hotchilli.net	HotChilli Internet	6	51.733299	0.4833	0.1527271300	t	f	OK	0
152	217.14.128.50	ns1.domainmaster.co.uk	Hotlinks Internet Services	6	51.5	-0.1167	0.1561341300	t	f	OK	0
263	80.88.214.36	ns1.osirissystemsdns.co.uk	ORB-RB-HOSTING	6	51.25	0.75	0.1566219300	t	f	OK	0
138	80.74.249.70	ns3.talk-101.co.uk	Manchester 2 Network	6	53.5	-2.2167001	0.1592519300	t	f	OK	0
166	213.178.144.54	fm1-ns1.iii.co.uk	Capital Accumulation Services LTD	6	51.5	-0.1167	0.1587350400	t	f	OK	0
228	194.145.241.6	ns2.fivestardns.com	Internet on Demand	6	53.700001	-1.7	0.1644561300	t	f	OK	0
202	217.33.200.186	ns1.saville.co.uk	Saville Audio Visual	6	53.966702	-1.0833	0.1725671300	t	f	OK	0
188	212.42.1.60	ns2.stripe21networks.com	QiX Limited	6	51.483299	-0.60000002	0.1576399800	t	f	OK	0
219	194.72.9.61	ns0.btred.net	Frame Relay Customer Network	6	51.766701	-0.30000001	0.1581811900	t	f	OK	0
194	194.164.181.2	ns0.interads.co.uk	Interactive Advertising Ltd	6	51.416698	-0.83329999	0.1516759400	t	f	OK	0
235	85.91.228.104	ns2.inetc.co.uk	Internet Connections Ltd Colocation Block	6	53.150002	-2.2	0.1585030600	t	f	OK	0
155	217.18.80.105	ns1.nseuk.net	NSE Backbone	6	51.5	-0.1167	0.1621551500	t	f	OK	0
250	85.90.33.5	ukns4.telehouse.net	Telehouse International Corporation of Europe Ltd	6	51.5	-0.1167	0.1575779900	t	f	OK	0
237	195.10.244.4	ns1.khoosys.net	See AS8553 for contact details	6	53.366699	-1.5	0.1612579800	t	f	OK	0
205	77.68.39.92	NS1.POLLAB.COM	Fast Hosts LTD	6	51.700001	-0.60000002	0.1758499100	t	f	OK	0
226	217.196.1.6	ns2.userve.net	Unitron Systems & Development LTD	6	52.616699	-2.4833	0.1661791800	t	f	OK	0
174	217.174.252.116	ns1.meridian-micro.co.uk	Fast Hosts LTD	6	51.833302	-2.25	0.1754310100	t	f	OK	0
229	212.137.64.13	ns1.swi.uk.cw.net	Cable and Wireless Webhosting Network-NET	6	51.516701	-1.7833	0.1841311500	t	f	OK	0
181	81.21.68.77	ns2.freewaycommerce.com	PIPEX Communications (Donhost Ltd.)	6	51.75	-1.25	0.1670758700	t	f	OK	0
184	212.84.172.7	ns2.1omega.net	Timemaker Systems Core Network	6	51.349998	-0.73339999	0.1562409400	t	f	OK	0
158	193.111.230.26	ns2.thenameservers.co.uk	Lan systems are a UK based ISP	6	52.633301	-1.1332999	0.1717391000	t	f	OK	0
160	81.17.66.14	ns1.swisp.co.uk	Data Centre Server IP address range	6	50.700001	-3.5332999	0.1671140200	t	f	OK	0
373	194.146.209.5	dns2.heurecom.net	HeureCom GmbH	7	48.766701	9.1833	0.1687371700	t	f	OK	0
283	80.242.143.10	dns1.dressen-it.com	Network used by customer DIT	7	50.116699	8.6833	0.1798510600	t	f	OK	0
383	195.114.98.101	dns1.rootdns.de	Frieder Mueller Software und Internet Dienste	7	47.650002	7.8167	0.1815311900	t	f	OK	0
339	164.33.1.4	ns2.4smr.net	T-Systems ITS, Internet	7	48.6833	9.1667004	0.1696538900	t	f	OK	0
295	213.131.232.52	ns1.inetbone.net	INET-People - Providerservices	7	53.75	10.2167	0.1631519800	f	f	No Response	0
381	212.51.17.1	ns2.addix.de	ADDIX Internet Services GmbH	7	54.333302	10.1333	0.1670928000	t	f	OK	0
349	213.23.108.129	ns1.compatec-it.de	CompAtec GmbH und Co. KG	7	48.900002	9.1833	0.1703550800	t	f	OK	0
316	62.72.64.237	dns1.versatel.de	Versatel Nord-Deutschland GmbH	7	51.516701	7.4499998	0.2048430400	f	f	Timed Out	0
404	217.76.109.190	ns2.bn.leitwerk.net	ISP various xDSL customers	7	50.849998	6.6332998	0.1713960200	t	f	OK	0
385	134.91.211.2	ns2.theo.physik.uni-duisburg-essen.de	Universitaet Duisburg-Essen	7	51.4333	6.75	0.1778800500	t	f	OK	0
360	80.79.224.225	ns2.telenec.de	Telenec Telekommunikation Neustadt GmbH	7	52.5	9.4666996	0.1773510000	t	f	OK	0
300	217.24.48.30	dns2.dacor.de	suec dacor GmbH	7	50.25	10.9667	0.1742909000	t	f	OK	0
377	81.24.32.134	ns1.aixtra.net	AIXTRANET Herzogenrath	7	50.866699	6.0999999	0.1777849200	t	f	OK	0
390	81.24.32.10	ns2.aixtra.net	AIXTRANET Herzogenrath	7	50.866699	6.0999999	0.1779229600	t	f	OK	0
336	213.139.94.3	ns1.primekom.net	PrimeKOM internationale Netze Consulting GmbH	7	51.216702	9.1000004	0.1717150200	t	f	OK	0
418	212.34.160.55	ns1.odn.de	ODN OnlineDienst Nordbayern GmbH & Co. KG	7	51	9	0.1733081300	t	f	OK	0
342	193.7.176.1	ns1.bawue.net	Bawue.Net e.V. Network	7	51	9	0.1739351700	t	f	OK	0
371	139.1.17.16	ns1.gedas.de	gedas operational services GmbH & Co. KG	7	52.516701	13.4	0.1763420100	t	f	OK	0
363	213.168.66.68	ns2.net-design.net	UBR Unternehmensberatung Reetmeyer GmbH	7	50.9333	6.9499998	0.1771690800	t	f	OK	0
428	217.30.50.100	ns2.as29145.net	CENTAUR GmbH, Heilbronn	7	49.140301	9.2200003	0.1743390600	t	f	OK	0
432	217.64.163.1	ns1.global.de	Dedicated Server DMZ	7	51.616699	13.3167	0.1730051000	t	f	OK	0
397	213.178.66.112	dns2.tng.de	TNG Kiel	7	54.333302	10.1333	0.1770410500	t	f	OK	0
399	193.98.112.238	ns6.envia-tel.net	envia Tel GmbH	7	51.716702	14.3	0.1804149200	t	f	OK	0
358	80.66.1.42	ns2.eggenet.de	EGGENET GmbH	7	51.716702	8.7666998	0.1798689400	t	f	OK	0
376	212.114.93.186	dns3.dacor.de	Dacor	7	49.349998	12.7667	0.1795837900	t	f	OK	0
393	212.118.160.3	ns2.oberon.net	Oberon.net Netzwerksysteme GmbH	7	48.766701	9.1833	0.1783239800	t	f	OK	0
355	212.23.33.66	ns1.interoute.net.uk	Interoute Services Networks (DE)	7	51	9	0.1739890600	t	f	OK	0
400	212.63.70.18	ns1.hk-online.de	NOC Marktheidenfeld	7	49.8442	9.6039	0.1812961100	t	f	OK	0
327	212.34.164.70	ns2.odn.de	ODN OnlineDienst Nordbayern GmbH	7	51	9	0.1743030500	t	f	OK	0
413	195.234.105.5	ns2.photonium.de	Photonium Internet-Solutions	7	50.150002	9.1000004	0.1763029100	t	f	OK	0
318	217.24.50.254	dns1.dacor.de	suec dacor GmbH Housing	7	50.25	10.9667	0.1740109900	t	f	OK	0
294	194.50.182.40	dns1.ahrensburg.prinovis.com	Prinovis Ahrensburg	7	53.6833	10.25	0.1781208500	t	f	OK	0
304	212.18.15.3	dns1.jintelligence.com	jintelligence.com	7	48.150002	11.5833	0.1751170200	t	f	OK	0
346	193.254.184.231	ns1.dnsresolve.net	Cronon AG	7	49.014999	12.0956	0.1774539900	t	f	OK	0
341	195.36.75.21	ns1.computacenter.de	CC CompuNet  AG & Co. OHG	7	50.866699	6.6999998	0.1787760300	t	f	OK	0
362	194.59.156.1	ns01.bonis.de	Wim Bonis	7	49.450001	7.75	0.1825230100	t	f	OK	0
412	212.7.148.97	dns2.komtel.net	Versatel Nord-Deutschland GmbH	7	51.516701	7.4499998	0.1921961300	f	f	Timed Out	0
279	141.1.1.1	cns1.cw.net	Cable & Wireless Telecommunication Services GmbH	7	48.150002	11.5833	0.1634531000	t	f	OK	0
359	85.214.132.203	ns2.fernholz-it.net	Strato Rechenzentrum, Berlin	7	52.516701	13.4	0.1785991200	t	f	OK	0
395	194.146.208.5	dns1.heurecom.net	HeureCom GmbH	7	48.766701	9.1833	0.1688268200	t	f	OK	0
323	78.138.97.33	ns3.ezdns.it	INET-People - Providerservices	7	51.450001	7.0833001	0.1629290600	t	f	OK	0
338	194.187.164.20	ns1.accelerated.de	Kamensek & Krieger GbR	7	49.513901	8.21	0.1695029700	t	f	OK	0
344	78.138.98.82	ns4.ezdns.it	INET-People - Providerservices	7	51.450001	7.0833001	0.1642639600	t	f	OK	0
302	193.254.212.22	ns1.v-ns.de	CoLocation Network of GlobalNOC	7	50.866699	8.0333004	0.1697151700	t	f	OK	0
326	193.254.213.22	ns2.v-ns.de	CoLocation Network of GlobalNOC	7	50.866699	8.0333004	0.1676080200	t	f	OK	0
365	194.64.31.3	dns02.pironet-ndh.com	PIRONET NDH AG	7	50.9333	6.9499998	0.1701791300	t	f	OK	0
380	212.125.57.102	ns02.systemhaus.net	Deutsche Telefon- und Marketing Services GmbH	7	50	8.2711	0.1702170400	t	f	OK	0
367	194.95.64.4	ns1.hochschule-bonn-rhein-sieg.de	Fachhochschule Rhein-Sieg	7	50.849998	7.6999998	0.1723709100	t	f	OK	0
378	193.110.207.5	ns2.giepa.de	Giegerich & Partner GmbH	7	50	8.6999998	0.1704559300	t	f	OK	0
435	217.64.167.1	ns2.global.de	Global Access Internet Services GmbH	7	48.150002	11.5833	0.1724159700	t	f	OK	0
409	212.211.132.4	ns2.scan-plus.de	Scan-Plus, Ulm, FRG	7	50.866699	7.4832001	0.1727819400	t	f	OK	0
337	213.209.122.11	ns1.gid24.de	Internetupstream and Customer Service	7	53.700001	10.0167	0.1734318700	f	f	Timed Out	0
425	192.54.34.3	ns7.bi.fraunhofer.de	Fraunhofer-Gesellschaft e.V. Institutszentrum Birl	7	50.75	7.2167001	0.1735811200	t	f	OK	0
405	81.173.201.34	ns1.net-design.net	SHW NetDesign GmbH	7	50.766701	7	0.1749019600	t	f	OK	0
340	194.126.159.20	ns1.gcsc2.ray.net	EDV-Service Florian Kirstein	7	48.150002	11.5833	0.1756119700	t	f	OK	0
427	213.188.101.9	ns1.bitworks.net	Bitworks GmbH	7	49.867802	8.9338999	0.1758949800	t	f	OK	0
419	83.142.128.98	ns1.wwwhosting.de	GC WEBSOLUTIONS GmbH	7	50.133301	8.5500002	0.1828310500	t	f	OK	0
398	80.239.207.176	ns1.pokoeln.de	TeliaSonera AB	7	47	8	0.1850299800	t	f	OK	0
350	213.178.2.23	ns01.si.riconnect.de	Riconet GmbH	7	50.866699	8.0333004	0.1829478700	t	f	OK	0
423	62.67.60.20	ns01.uptime.de	Uptime Informations-Technologie GmbH	7	51	9	0.1829919800	f	f	No Response	0
430	80.239.207.200	ns1.adnsch.com	TeliaSonera AB	7	47	8	0.1869928800	t	f	OK	0
296	193.178.163.187	ns3.bedidns.de	Bedinetz	7	52.9333	12.8	0.1830489600	t	f	OK	0
311	80.78.162.2	ns2.telta.de	TELTA Citynetz Eberswalde GmbH	7	52.833302	13.8333	0.1819410300	t	f	OK	0
306	212.89.111.81	ns2.factsoft.de	factsoft AG service network	7	48.150002	11.5833	0.1808700600	f	f	Timed Out	0
278	80.148.52.66	ns2.i-st.net	Internet-Service Trossingen GmbH	7	48.0667	8.6499996	0.1780929600	t	f	OK	0
310	194.31.241.5	dns1.sycor-world.de	SYCOR GmbH, Goettingen	7	51.516701	10.2667	0.1821858900	t	f	OK	0
335	193.7.168.1	ns5.za-internet.net	za-internet GmbH	7	48.400002	8.9666996	0.1801080700	t	f	OK	0
396	213.179.64.3	ns1.itns.de	iT-NetService GmbH	7	51.299999	12.3333	0.1786060300	t	f	OK	0
333	212.118.196.121	ns2.allinone.de	AllinOne, Rain am Lech	7	48.6833	10.9	0.1884820500	t	f	OK	0
403	217.23.50.18	ns2.i-netpartner.net	I-NETPartner	7	48.700001	9.6999998	0.1803188300	t	f	OK	0
334	217.23.49.227	ns3.i-netpartner.net	I-NETPartner GmbH	7	48.700001	9.6999998	0.1831760400	f	f	Timed Out	0
286	212.110.122.132	dns01.reflact.com	Reflact AG	7	51.466702	6.8499999	0.1832940600	t	f	OK	0
331	212.7.148.65	dns1.komtel.net	Versatel Nord-Deutschland GmbH	7	51.516701	7.4499998	0.2015469100	f	f	Timed Out	0
411	62.72.64.241	dns2.versatel.de	Versatel Nord-Deutschland GmbH	7	51.516701	7.4499998	0.1987459700	f	f	Timed Out	0
322	195.114.99.101	dns2.rootdns.de	Frieder Mueller Software und Internet Dienste	7	47.650002	7.8167	0.1835360500	t	f	OK	0
332	194.145.123.2	ns1.comspace.de	comspace GmbH & Co KG	7	52.033298	8.5333004	0.1844031800	t	f	OK	0
420	81.18.97.40	ns01.dokumenta.net	Dienste-DMZ	7	53.549999	10	0.1886110300	t	f	OK	0
414	80.239.175.200	ns2.adnsch.com	TeliaSonera AB	7	47	8	0.1877381800	t	f	OK	0
328	193.96.243.22	NS2.Nepustil.NET	Dr. Ulrich Nepustil, Bempflingen	7	48.5667	9.2666998	0.1847181300	t	f	OK	0
314	193.151.32.40	ns1.nacura.de	Nacura GmbH & Co. KG	7	51.716702	8.7666998	0.1843340400	t	f	OK	0
345	193.110.43.67	ns2.intersolute.de	Transfair-Net GmbH	7	51.333302	6.5667	0.1700110400	t	f	OK	0
429	192.78.147.3	ns2.nordac.com	NORDAC Rechenzentrumsgesellschaft mbH, Luebeck	7	53.75	10.2167	0.1898219600	t	f	OK	0
410	193.7.169.9	ns3.zollern-alb.de	za-internet GmbH	7	48.400002	8.9666996	0.1735470300	t	f	OK	0
402	85.112.224.46	ns2.sml.de	Wizard Computersysteme GmbH	7	53.483299	9.1332998	0.1725919200	t	f	OK	0
370	193.254.22.13	dns2.stepnet.de	StepNet Internet Services	7	47.616699	7.6666999	0.1898570100	t	f	OK	0
387	217.194.65.7	ns2.ganag.com	HotelsOnAir Management	7	48.150002	11.5833	0.1740429400	t	f	OK	0
406	91.151.144.106	ns2.ce-tel.net	CeTEL GmbH	7	50.733299	7.0999999	0.1727421300	t	f	OK	0
422	194.187.222.10	ns1.wmgruppe.de	Herausgebergemeinschaft Wertpapier-Mitteilungen	7	50.116699	8.6833	0.1844611200	t	f	OK	0
343	212.12.96.17	dns10.mops.net	M/W/S	7	53.650002	9.8999996	0.1702890400	f	f	Timed Out	0
309	213.209.121.30	NS2.gid24.de	Internetupstream and Customer Service	7	53.700001	10.0167	0.1752650700	t	f	OK	0
281	212.43.90.7	ns02.overturn.de	folz . communication & networks GmbH	7	49.450001	7.75	0.1735019700	t	f	OK	0
321	213.183.65.31	dns1.pfalzkom.de	PfalzKom, Gesellschaft fuer Telekommunikation mbH	7	49.481098	8.4352999	0.1742029200	t	f	OK	0
313	62.67.253.166	ns02.uptime.de	Uptime Informations-Technologie GmbH	7	51	9	0.2233290700	f	f	No Response	0
289	81.18.97.50	ns02.dokumenta.net	Dienste-DMZ	7	53.549999	10	0.1941819200	t	f	OK	0
433	80.79.225.34	ns1.telenec.de	Telenec Telekommunikation Neustadt GmbH	7	52.5	9.4666996	0.1781580400	t	f	OK	0
374	195.20.210.1	iskv-dns1.iskv.de	ARGE IS KV GmbH	7	51.450001	7.0166998	0.1765520600	t	f	OK	0
280	212.51.16.1	ns1.addix.de	ADDIX Internet Services GmbH	7	54.333302	10.1333	0.2032079700	t	f	OK	0
319	195.210.48.3	ns04.quat.net	Quat.Net GmbH - Internet For Business	7	51	9	0.1694090400	t	f	OK	0
421	82.96.81.10	ns1.ec-c.net	Planet-Hosting.de	7	49.3167	6.75	0.1752710300	t	f	OK	0
282	81.16.49.10	ns1.serverpool.net	NET-SOURCE IP Space	7	52.516701	13.4	0.1730630400	t	f	OK	0
389	212.43.89.7	ns01.overturn.de	folz . communication & networks GmbH	7	49.450001	7.75	0.1764938800	t	f	OK	0
347	212.87.132.53	ns3.imos.net	imos GmbH	7	48.700001	9.5832996	0.1756818300	t	f	OK	0
372	213.153.64.1	ns2.circular.net	circular Informationssysteme GmbH	7	48.766701	9.1833	0.1774408800	t	f	OK	0
277	194.9.192.198	ns1.w-s-p.de	WebMad Webmarketing GmbH	7	51.233299	6.6167002	0.1772089000	t	f	OK	0
307	213.178.66.111	dns1.tng.de	TNG Kiel	7	54.333302	10.1333	0.1754360200	t	f	OK	0
392	195.234.230.67	ns0.iquer.net	QUALITYHOSTING GBR	7	50.200001	9.1833	0.1775059700	t	f	OK	0
298	212.86.160.70	ns1.circular.net	circular Informationssysteme GmbH	7	48.766701	9.1833	0.1772439500	t	f	OK	0
301	212.87.130.92	ns1.imos.net	imos GmbH	7	48.700001	9.5832996	0.1774368300	t	f	OK	0
293	194.50.182.41	dns2.ahrensburg.prinovis.com	Prinovis Ahrensburg	7	53.6833	10.25	0.1777520200	t	f	OK	0
382	87.238.112.38	ns1.ce-tel.net	INFRASTRUCTURE	7	50.733299	7.0999999	0.1738379000	f	f	Timed Out	0
354	195.34.64.44	ns1.x-dns.de	Eschler IT Services	7	48.150002	11.5833	0.1776590300	t	f	OK	0
424	77.90.130.2	ns2.rapidnet.de	K&K Kommunikationssysteme GmbH	7	48.366699	10.8833	0.1779999700	t	f	OK	0
353	85.88.19.11	ns3.x-ns.de	WEB/Mail/DB-Servers	7	50.9333	6.9499998	0.1783771500	t	f	OK	0
315	212.28.34.90	ns2.transkom.net	IBS	7	49.450001	7.75	0.1797819100	t	f	OK	0
356	195.50.157.2	ns01.azeti.net	NWU GmbH	7	49.299999	7.0667	0.1806352100	t	f	OK	0
320	193.98.112.46	ns4.envia-tel.net	envia Tel GmbH	7	51.716702	14.3	0.1824121500	t	f	OK	0
291	195.42.232.2	ns3.mysnot.de	Global Traffic GmbH	7	52.516701	13.4	0.1737740000	t	f	OK	0
415	217.197.84.69	ns5.free.de	Individual Network Berlin e.V.	7	52.516701	13.4	0.2469289300	t	f	OK	0
329	212.204.60.4	ns1.bytecamp.net	Bytecamp hosting network	7	52.400002	13.0667	0.1914100600	t	f	OK	0
368	217.10.9.66	adns2.asamnet.de	exterritoriales Netz von ASAMNET e.V.	7	49.533298	11.8	0.1893539400	t	f	OK	0
416	194.39.185.10	ns1.tekonet.de	Michael Herzog	7	51.450001	7.0166998	0.1699919700	t	f	OK	0
379	62.152.177.87	ns2.enweb.de	IP range for Ropa over ODR TKG	7	50.549999	7.4000001	0.1739120500	t	f	OK	0
388	62.152.168.253	ns1.enweb.de	ODR Telekommunikation GmbH	7	48.966702	10.1333	0.1734638200	t	f	OK	0
317	81.209.130.140	ns1.brenet.de	BreNet GmbH	7	53.083302	8.8000002	0.1816489700	t	f	OK	0
297	213.179.65.3	ns2.itns.de	iT-NetService GmbH	7	51.299999	12.3333	0.1804649800	t	f	OK	0
292	195.94.88.254	dns01.pironet-ndh.com	NDH IT Service AG	7	50.9333	6.9499998	0.1751020000	t	f	OK	0
352	80.66.99.10	ns01.step.in-systeme.net	Rasterpunkt GmbH	7	48.849998	13.4	0.1779801800	t	f	OK	0
284	212.2.32.2	ns2.skylink.de	datadirect gmbh	7	48	7.8499999	0.1707959200	t	f	OK	0
330	195.94.90.10	dns03.pironet-ndh.com	NDH IT Service AG	7	50.9333	6.9499998	0.1765239200	t	f	OK	0
285	217.28.96.190	ns2.leitwerk.net	LEITWERK Gesellschaft fuer angewandte Informatik m	7	48.75	8.25	0.1867818800	f	f	Timed Out	0
384	193.98.115.214	ns5.envia-tel.net	envia Tel GmbH	7	51.716702	14.3	0.1834778800	t	f	OK	0
369	141.1.27.249	euro-cns1.cw.net	Cable & Wireless Telecommunication Services GmbH	7	48.150002	11.5833	0.1632649900	t	f	OK	0
364	83.141.34.2	dns01.serverhoster.de	HG Computerservice	7	51	9	0.1687459900	t	f	OK	0
276	194.169.211.252	ns2.monsterserver.de	Masterping.de - Gameserver	7	51	9	0.1705689400	t	f	OK	0
366	194.95.64.5	ns2.hochschule-bonn-rhein-sieg.de	Fachhochschule Rhein-Sieg	7	50.849998	7.6999998	0.1718850100	t	f	OK	0
375	85.25.55.214	ns1.gendorf.net	vSERVER - Virtual dedicated Server-Hosting	7	51	9	0.1713178200	t	f	OK	0
325	212.89.130.180	dns1.infoserve.de	InfoServe GmbH	7	53.75	10.2167	0.1728038800	t	f	OK	0
312	212.34.160.52	ns3.odn.de	ODN OnlineDienst Nordbayern GmbH & Co. KG	7	51	9	0.1751489600	t	f	OK	0
324	62.72.87.4	ns4.regioconnect.de	regioconnect GmbH	7	52.150002	7.3499999	0.1763668100	t	f	OK	0
431	193.22.0.33	ns1.l-bank.de	Landeskreditbank Baden-W.rttemberg - F.rderbank	7	48.75	8.25	0.1733839500	t	f	OK	0
299	195.36.93.21	ns2.computacenter.de	CC CompuNet AG & Co. OHG	7	50.866699	6.6999998	0.1810519700	t	f	OK	0
361	88.151.64.34	ns2.hk-net.de	Haendle & Korte GmbH	7	51	9	0.1762020600	t	f	OK	0
391	217.159.1.126	dns2.satlynx.net	Satlynx  earthstation Waldrems	7	48.950001	9.4333	0.1760511400	t	f	OK	0
417	213.183.76.241	ns01.stylite.de	Public Adress Range for Vickers and Beck	7	48.650002	9.4499998	0.1778140100	t	f	OK	0
308	141.61.1.32	ns1.biochem.mpg.de	Max-Planck-Intitut fuer Biochemie	7	48.099998	11.45	0.1786599200	t	f	OK	0
348	193.30.60.250	ns0.niedersachsen.com	Verlagsgesellschaft Madsack GmbH & Co.	7	52.366699	9.7166996	0.1845240600	t	f	OK	0
290	87.230.103.45	ns3.orgatech.de	Host Europe GmbH	7	51.650002	6.1833	0.1796338600	t	f	OK	0
351	62.245.182.42	adns1.asamnet.de	Spamprotect GmbH	7	48.150002	11.5833	0.1812591600	t	f	OK	0
394	193.41.10.1	ns1.wds.net	WDS New Media GmbH	7	51.666698	8.3500004	0.1824629300	t	f	OK	0
401	194.116.208.3	dns1.speednetwork.de	SpeedNetwork GmbH	7	52.516701	13.4	0.1899731200	t	f	OK	0
426	213.167.167.1	ns1.hochfranken-online.de	Hochfranken Online GmbH+Co.KG	7	51	9	0.1863970800	t	f	OK	0
494	62.48.51.29	dns2.texnet.it	TEX.NET TELECOMUNICAZIONI S.R.L.	8	43.833302	11.2	0.1893870800	t	f	OK	0
437	89.251.177.100	dns1.logostech.it	Logos Technologies S.r.l.	8	42.833302	12.8333	0.1861209900	t	f	OK	0
453	89.186.66.7	ns2.play.sm	PLAY SRL	8	41.766701	12.65	0.1812670200	t	f	OK	0
502	62.101.84.50	ns1.lispa.it	Fastweb	8	45.599998	8.6332998	0.1824200200	t	f	OK	0
468	84.247.224.10	dns1.netanday.it	SERVERS NETWORK	8	45.6922	13.1481	0.1935679900	t	f	OK	0
447	78.110.185.79	dns1.omniwave.it	NewMedia-Flytel first IPv4 allocation	8	39.457802	8.7405996	0.2067220200	t	f	OK	0
444	217.18.208.150	ns2.quesse.it	Q&S; SpA Internet Service Provider	8	42.833302	12.8333	0.1820359200	t	f	OK	0
481	62.101.84.51	ns2.lispa.it	Fastweb	8	45.599998	8.6332998	0.1832850000	t	f	OK	0
480	81.27.133.50	ns2.epress.it	Aleph Informatica public network	8	45.466702	9.1999998	0.1846129900	t	f	OK	0
498	212.102.67.5	ns0.bnl.it	BNL  spa Server Roma	8	41.900002	12.4832	0.1824269300	t	f	OK	0
513	212.97.32.2	dns1.kpnqwest.it	KPNQwest Italia S.p.a.	8	45.466702	9.1999998	0.1824691300	t	f	OK	0
501	62.101.84.51	ns2.lispa.it	Fastweb	8	45.599998	8.6332998	0.1828119800	t	f	OK	0
462	217.12.180.19	ns1.infracom.it	Infracom Italia S.p.A.	8	45.450001	11	0.1842730000	t	f	OK	0
508	83.149.128.195	dns02.consiagnet.it	Consiagnet Network	8	43.883301	11.1	0.1897709400	t	f	OK	0
500	81.27.133.50	ns2.epress.it	Aleph Informatica public network	8	45.466702	9.1999998	0.1824209700	t	f	OK	0
476	89.97.191.11	ns1.fedagrirete.com	Fastweb	8	41.900002	12.4832	0.1905598600	t	f	OK	0
436	89.251.177.101	dns2.logostech.it	Logos Technologies S.r.l.	8	42.833302	12.8333	0.1862978900	t	f	OK	0
478	212.102.67.5	ns0.bnl.it	BNL  spa Server Roma	8	41.900002	12.4832	0.1822481200	t	f	OK	0
497	89.97.191.12	ns2.elawind.org	Fastweb	8	41.900002	12.4832	0.1944410800	t	f	OK	0
466	217.12.160.254	ns1.yepa.com	Yepa S.r.l.	8	41.900002	12.4832	0.1950290200	t	f	OK	0
441	193.109.202.13	dns1.ksolutions.it	Ksolutions SpA	8	37.983299	15.15	0.1866750700	t	f	OK	0
461	82.145.160.140	ns2.teligo.net	Teligo Srl	8	45.5667	9.0667	0.1837849600	t	f	OK	0
479	80.83.162.12	ns2.media.it	Media Online Italia Network	8	40.849998	17.116699	0.2087290300	t	f	OK	0
488	83.149.128.195	dns02.consiagnet.it	Consiagnet Network	8	43.883301	11.1	0.1910131000	t	f	OK	0
475	82.115.163.1	ns1.bascom.it	BASCom S.p.a.	8	45.6833	9.7166996	0.1894331000	t	f	OK	0
506	89.17.161.2	ns02.regione.veneto.it	REGIONE DEL VENETO	8	45.698898	12.2255	0.1896541100	f	f	No Response	0
503	195.60.128.4	ns2.clio.it	Cliocom Basic Services	8	40.383301	18.1833	0.1985969500	t	f	OK	0
465	91.188.0.35	ns1.tpz-services.it	Telespazio S.p.A.	8	41.900002	12.4832	0.1903820000	t	f	OK	0
463	195.110.132.115	dns1.exprivia.it	AISOFTWARE S.P.A. Main Network	8	45.466702	9.1999998	0.1958699200	t	f	OK	0
464	77.72.192.3	dns1.trentinonetwork.it	Trentino Network srl	8	46.0667	11.1333	0.1976099000	t	f	OK	0
483	195.60.128.4	ns2.clio.it	Cliocom Basic Services	8	40.383301	18.1833	0.1981070000	t	f	OK	0
467	195.246.192.53	ns2.workup.it	WorkUp S.p.a.	8	45.930599	12.8708	0.2159380900	f	f	No Response	0
448	77.72.192.33	dns2.trentinonetwork.it	Trentino Network srl	8	46.0667	11.1333	0.1986751600	t	f	OK	0
505	89.17.161.1	ns01.regione.veneto.it	REGIONE DEL VENETO	8	45.698898	12.2255	0.5125379600	f	f	No Response	0
485	89.17.161.1	ns01.regione.veneto.it	REGIONE DEL VENETO	8	45.698898	12.2255	0.5125379600	f	f	No Response	0
469	217.22.228.132	dns2.evoluzioniweb.it	Easynet	8	45.466702	9.1999998	0.1830079600	t	f	OK	0
470	81.24.224.2	dns2.ifinet.it	IFINET srl	8	45.450001	11	0.1815350100	t	f	OK	0
450	81.201.0.3	dns2.albedo.it	System Network of Albedo S.r.l.	8	45.049999	7.6666999	0.1851410900	t	f	OK	0
460	217.148.122.40	ns2.telerete.it	Hosting Services	8	45.416698	11.8833	0.1784200700	t	f	OK	0
456	194.116.122.2	dns1.topix.it	TOrino Piemonte Exchange Point - Neutral Access Po	8	45.049999	7.6666999	0.1827769300	t	f	OK	0
471	81.208.4.118	dns3.mdsnet.it	Fastweb	8	45.466702	9.1999998	0.1844718500	f	f	No Response	0
452	82.145.163.1	ns1.teligo.net	Teligo Srl	8	45.5667	9.0667	0.1844759000	t	f	OK	0
446	212.31.235.37	ns1.sefin.it	Sefin S.p.A.	8	45.466702	9.1999998	0.1850400000	t	f	OK	0
455	213.225.200.200	ns1.momax.it	MOMAX Internet Service Provider	8	43.766701	11.5	0.1859440800	t	f	OK	0
511	62.100.65.8	dns2.nsoft.it	Terralink S.r.l.	8	45.766701	11.7332	0.1864669300	t	f	OK	0
495	82.115.163.1	ns1.bascom.it	BASCom S.p.a.	8	45.6833	9.7166996	0.1872282000	t	f	OK	0
445	194.20.8.1	ns2.inet.it	I.NET SpA	8	38.200001	15.7332	0.1869261300	t	f	OK	0
457	213.92.79.60	dns5.navarca.com	G.M.Tech s.r.l.	8	38.116699	13.3667	0.1883621200	t	f	OK	0
504	195.60.128.3	ns1.clio.it	Cliocom Basic Services	8	40.383301	18.1833	0.2019898900	t	f	OK	0
451	80.88.171.16	ns2.teanetmantova.it	TEANET SRL	8	45.150002	10.8	0.1944520500	t	f	OK	0
496	89.97.191.11	ns1.fedagrirete.com	Fastweb	8	41.900002	12.4832	0.1905558100	t	f	OK	0
474	62.48.51.29	dns2.texnet.it	TEX.NET TELECOMUNICAZIONI S.R.L.	8	43.833302	11.2	0.1912419800	t	f	OK	0
472	212.245.158.66	dns2.wind.it	Wind Telecomunicazioni spa	8	41.900002	12.4832	0.2018599500	t	f	OK	0
493	212.97.32.2	dns1.kpnqwest.it	KPNQwest Italia S.p.a.	8	45.466702	9.1999998	0.1819119500	t	f	OK	0
477	89.97.191.12	ns2.elawind.org	Fastweb	8	41.900002	12.4832	0.1949908700	t	f	OK	0
438	212.216.172.62	ns1.tin.it	Telecom Italia IDC  - ISP&VAS; MNGT	8	41.900002	12.4832	0.1955859700	t	f	OK	0
484	195.60.128.3	ns1.clio.it	Cliocom Basic Services	8	40.383301	18.1833	0.2016291600	t	f	OK	0
487	83.149.128.194	dns01.consiagnet.it	Consiagnet Network	8	43.883301	11.1	0.1896400500	t	f	OK	0
442	217.12.181.97	ns2.infracom.it	Infracom Italia S.p.A.	8	45.450001	11	0.1814229500	t	f	OK	0
486	89.17.161.2	ns02.regione.veneto.it	REGIONE DEL VENETO	8	45.698898	12.2255	0.1859500400	f	f	No Response	0
482	62.101.84.50	ns1.lispa.it	Fastweb	8	45.599998	8.6332998	0.1827728700	t	f	OK	0
507	83.149.128.194	dns01.consiagnet.it	Consiagnet Network	8	43.883301	11.1	0.1907000500	t	f	OK	0
440	213.225.201.201	ns2.momax.it	MOMAX Internet Service Provider	8	43.766701	11.5	0.1849188800	t	f	OK	0
491	62.100.65.8	dns2.nsoft.it	Terralink S.r.l. - Internet Tecnology Company	8	45.766701	11.7332	0.1858949700	t	f	OK	0
449	151.90.2.241	dns2.esercito.difesa.it	Italian Army Network	8	42.833302	12.8333	0.1899039700	t	f	OK	0
443	213.158.72.44	dns2.interfree.it	Interfree spa	8	43.716702	10.3833	0.2032029600	t	f	OK	0
458	78.110.185.92	dns2.omniwave.it	NewMedia-Flytel first IPv4 allocation	8	39.457802	8.7405996	0.2053778200	t	f	OK	0
499	80.83.162.12	ns2.media.it	Media Online Italia Network	8	40.849998	17.116699	0.2081649300	t	f	OK	0
473	217.115.16.3	ns2.multiwire.net	Servers, routers and switch	8	44.383301	7.5332999	0.1815278500	t	f	OK	0
454	89.186.66.6	ns1.play.sm	PLAY SRL	8	41.766701	12.65	0.1797089600	t	f	OK	0
515	203.115.225.24	ns2.arc.net.my	NTT MSC Arcnet ISP	10	3.1666999	101.7	0.1998450800	t	f	OK	0
514	203.115.225.25	ns1.arc.net.my	NTT MSC Arcnet ISP	10	3.1666999	101.7	0.2017219100	t	f	OK	0
516	122.255.96.132	ns1.p1.com.my	Packet One Networks (M) Sdn	10	3.1666999	101.7	0.1995110500	t	f	OK	0
1144	203.152.100.32	ns2.compass.net.nz	Compass Communications	11	-36.866699	174.76669	0.1429400400	t	f	OK	0
1143	202.27.77.100	ns1.datacom.co.nz	Datacom Systems	11	-36.866699	174.76669	0.1853659200	t	f	OK	0
1142	210.48.66.1	ns2.iconz.co.nz	ICONZ, Internet Service Provider	11	-36.866699	174.76669	0.1429989300	t	f	OK	0
1145	203.152.112.32	ns1.compass.net.nz	Compass Communications	11	-36.866699	174.76669	0.1431829900	t	f	OK	0
1146	203.109.129.68	ns2.ihug.co.nz	The Internet Group (ihug) Ltd. Ltd	11	-36.866699	174.76669	0.1424009800	t	f	OK	0
1148	202.180.64.2	ns2.tranzpeer.net	CallPlus Services Limited	11	-41	174	0.1428890200	t	f	OK	0
1147	203.109.129.67	ns1.ihug.co.nz	The Internet Group (ihug) Ltd. Ltd	11	-36.866699	174.76669	0.1442129600	t	f	OK	0
1141	210.48.65.1	ns1.iconz.co.nz	ICONZ, Internet Service Provider	11	-36.866699	174.76669	0.1443090400	t	f	OK	0
1139	196.22.160.12	jhbdns2.tiscali.co.za	M-WEB	12	-29	24	0.3393468900	t	f	OK	0
1138	209.212.97.1	dns2.mtnns.net	MTN Network Solutions (Pty) Ltd.	12	-33.950001	18.4667	0.3292791800	t	f	OK	0
548	217.174.177.36	ns2.intelcom.su	INTELCOM Network infrastructure	13	55.752201	37.615601	0.2165679900	t	f	OK	0
580	85.235.192.2	ns1.ptspb.ru	Prometey backbone network	13	59.894402	30.2642	0.1970980200	t	f	OK	0
667	83.69.77.6	ns1.inix.ru	Kavkaz TransTeleCom	13	45.342201	36.681099	0.2329380500	t	f	OK	0
637	83.234.195.30	ns2.st-ug.ru	(SM030153) SprintTelecom	13	55.752201	37.615601	0.2358019400	t	f	OK	0
598	62.16.86.100	ns1.21th.com	Joint Stock Company Radiotechnical Institute	13	55.752201	37.615601	0.2119710400	t	f	OK	0
566	77.72.17.17	ns2.zaovtk.ru	Backbone network address space	13	55.752201	37.615601	0.2129399800	t	f	OK	0
529	80.252.130.254	ns2.flex.ru	Wireless network in Moscow region	13	55.752201	37.615601	0.2147090400	t	f	OK	0
630	217.26.1.2	ns2.tascom.ru	JSC Tascom	13	55.752201	37.615601	0.2072789700	t	f	OK	0
638	195.93.206.2	ns1.wktnet.ru	West-Com Trade Ltd.	13	59.894402	30.2642	0.1975469600	t	f	OK	0
595	193.200.35.4	dns1.fsk-ees.ru	OJSK Federal Grid Company of Unified Energy System	13	55.752201	37.615601	0.2075939200	t	f	OK	0
655	195.161.115.3	ns3.webdesk.ru	Web Desk, Ltd.	13	55.752201	37.615601	0.2091651000	t	f	OK	0
636	83.229.241.142	ns4.main.synterra.ru	Telecom Centre	13	55.752201	37.615601	0.2114470000	t	f	OK	0
653	217.21.96.1	ns1.racetelecom.net	RACETEL-NET	13	55.752201	37.615601	0.2131731500	t	f	OK	0
607	80.93.177.182	ns1.rsspnet.ru	Rzt-Service ISP	13	55.393101	32.397499	0.2038710100	t	f	OK	0
588	81.200.80.11	ns1.cdt.ru	TELEMEDNET local customers computers	13	60	100	0.2082819900	t	f	OK	0
575	194.54.64.242	ns1.mrsu.ru	Mordovian state university	13	54.1833	45.1833	0.2298340800	t	f	OK	0
624	79.170.161.17	ns2.sts-company.ru	LLC Modern Communication Technologies	13	48.804699	44.5858	0.2350029900	t	f	OK	0
640	89.207.72.138	ns2.kirovcity.ru	JSC Relax	13	58.596901	49.658298	0.2361569400	t	f	OK	0
587	62.33.47.253	ns2.mobukom.ru	TransTeleCom	13	55.752201	37.615601	0.2397899600	t	f	OK	0
631	194.84.171.1	ns2.megabit.ru	Global One Russia/RoSprint Company	13	55.752201	37.615601	0.2431049300	t	f	OK	0
657	90.189.107.42	ns2.khakasnet.ru	OJSC Sibirtelecom	13	53.715599	91.429199	0.2894201300	t	f	OK	0
627	195.149.104.186	ns3.connecto.tv	CONNECTO Network	13	55.752201	37.615601	0.2109768400	t	f	OK	0
540	81.222.84.2	ns2.stnw.ru	Startelecom SPb subnet	13	59.894402	30.2642	0.1978011100	t	f	OK	0
616	195.209.229.37	ns1.utelcom.ru	Infoservice	13	59.894402	30.2642	0.2022659800	t	f	OK	0
581	81.176.72.82	dns1.np.cair.ru	Georgia	13	41.724998	44.790798	0.2031040200	t	f	OK	0
542	195.93.151.151	ns2.uminet.ru	UMI-net Ltd.	13	56.0667	37.049999	0.2048659300	t	f	OK	0
609	213.152.130.1	ns2.ionip.ru	C&W; Svyaz CIS ISP	13	55.752201	37.615601	0.2080011400	t	f	OK	0
535	195.230.95.66	ns1.main.synterra.ru	Telcom-Centre	13	51.820599	43.842201	0.2119388600	t	f	OK	0
541	80.73.20.66	ns0.ctspi.ru	CTSPI Company	13	60	100	0.2131891300	t	f	OK	0
648	83.234.220.253	ns1.l-net.ru	TransTeleCom	13	55.752201	37.615601	0.2240898600	t	f	OK	0
665	195.5.128.132	ns2.runnet.ru	Metrocom JSC	13	59.894402	30.2642	0.2040178800	t	f	OK	0
646	217.17.161.18	ns1.gascom.ru	Gascom Telecommunications Company	13	46.0667	39.783298	0.2143950500	t	f	OK	0
536	79.135.229.194	ns1.econotel.ru	LLC Design of corporate systems	13	55.752201	37.615601	0.2156751200	t	f	OK	0
635	83.229.241.146	ns3.main.synterra.ru	Telecom Centre	13	55.752201	37.615601	0.2180321200	t	f	OK	0
613	79.140.64.3	ns2.magistraly.ru	JSC Belgorodskie Tsifrovie Magistraly	13	50.6133	36.5872	0.2180988800	t	f	OK	0
582	91.195.129.3	ns3.osystems.ru	Open Systems	13	55.752201	37.615601	0.2257359000	t	f	OK	0
565	91.195.128.12	ns2.osystems.ru	Open Systems	13	55.752201	37.615601	0.2259059000	t	f	OK	0
603	91.193.243.250	ns2.modem.ru	Modem	13	55.752201	37.615601	0.2273130400	t	f	OK	0
578	194.85.100.32	ns0.odusz.so-cdu.ru	Union Control Board of Noth-Western Area	13	59.894402	30.2642	0.2041261200	t	f	OK	0
520	83.221.164.190	ns2.beltelecom.ru	Network of Beltelecom	13	50.6133	36.5872	0.2120568800	t	f	OK	0
645	217.174.177.35	ns1.intelcom.su	INTELCOM Network infrastructure	13	55.752201	37.615601	0.2148370700	t	f	OK	0
524	85.236.160.1	ns1.samaralan.ru	LLC SIP NIS	13	60	100	0.2353191400	t	f	OK	0
659	89.185.75.244	ns2.nm-s.ru	Addressing DMZ	13	58	56.25	0.2360379700	t	f	OK	0
532	193.16.208.114	ns1.mmk.ru	Magnitogorsk Iron and Steel	13	53.418598	59.047199	0.2479279000	t	f	OK	0
531	62.140.230.9	ns1.fiord.ru	Fiord datacenter - web hosting & collocation	13	55.752201	37.615601	0.2051589500	t	f	OK	0
597	83.217.192.2	ns1.infoline.su	ZAO Infoline	13	55.752201	37.615601	0.2064559500	t	f	OK	0
596	91.103.204.230	ns1.solnet.ru	SolNet network of Solnechnogorsk	13	56.1833	36.983299	0.2071421100	t	f	OK	0
526	212.233.88.2	ns2.agtel.net	AG Telecom Infrastructure networks	13	55.752201	37.615601	0.2087349900	t	f	OK	0
583	77.220.170.2	ns3.mnogodns.net	MnogoByte LLC	13	55.752201	37.615601	0.2120761900	f	f	Timed Out	0
625	213.219.242.3	ns2.zmaximum.ru	Zet Maximum Ltd.	13	55.752201	37.615601	0.2153620700	t	f	OK	0
610	213.248.24.25	ns1.oducentr.ru	Unified Energy System of Russia JSC	13	55.752201	37.615601	0.2156269600	t	f	OK	0
649	81.222.112.24	ns3.gtss.ru	GTSS service network. Servers, ptp tunnels	13	55.752201	37.615601	0.2201600100	t	f	OK	0
530	193.33.82.2	dns1.tarkosale.net	Jamal-Soft, Ltd.	13	64.922501	77.784897	0.2725658400	f	f	Timed Out	0
552	81.222.80.2	ns1.stnw.ru	Startelecom SPb subnet	13	59.894402	30.2642	0.1980860200	t	f	OK	0
633	83.219.241.2	ns2.obl-com.ru	Corporate network for JSC Infotime	13	55.752201	37.615601	0.2075400400	t	f	OK	0
528	80.252.130.253	ns3.flex.ru	Wireless network in Moscow region	13	55.752201	37.615601	0.2159359500	t	f	OK	0
537	217.144.97.19	ns0.redline.ru	Innotek Joint Stock Company (REDLINE)	13	55.752201	37.615601	0.2088239200	t	f	OK	0
543	77.220.183.128	ns1.mnogodns.net	MnogoByte LLC	13	55.752201	37.615601	0.2160990200	t	f	OK	0
592	91.191.176.254	ns1.wocomnet.com	WocomNet Ltd.	13	59.894402	30.2642	0.2010591000	t	f	OK	0
585	195.170.228.107	ns1.vpk.ru	Main office of Troitsk Telecom company	13	55.752201	37.615601	0.2042679800	t	f	OK	0
617	195.170.55.1	ns2.east.ru	East Telecom Ltd.	13	55.752201	37.615601	0.2089109400	t	f	OK	0
601	212.111.64.132	ns1.agtel.net	Moscow	13	55.752201	37.615601	0.2092130200	t	f	OK	0
664	195.177.226.226	ns5.adb.ru	ADB network	13	55.752201	37.615601	0.2121448500	t	f	OK	0
651	87.241.223.68	ns1.enforta.com	Enforta Moscow Network	13	55.752201	37.615601	0.2168109400	t	f	OK	0
654	85.158.50.50	ns2.tensortelecom.ru	TENSORTELECOM-NETWORK	13	57.616699	39.866699	0.2176678200	t	f	OK	0
567	81.222.105.24	ns1.astelhost.net	Hosting Astelnet	13	59.894402	30.2642	0.2204029600	t	f	OK	0
563	82.97.198.1	ns2.nicevt.ru	Network of NICEVT	13	55.752201	37.615601	0.2227110900	f	f	No Response	0
547	81.23.144.250	ns1.tnpko.ru	TNPKO JSC	13	55.75	49.133301	0.2338070900	t	f	OK	0
557	217.77.97.1	ns2.infopac.ru	Joint Stock Company INFOPAC	13	53.5233	49.412498	0.2352759800	t	f	OK	0
571	81.176.72.83	dns2.np.cair.ru	Georgia	13	41.724998	44.790798	0.2017140400	t	f	OK	0
519	91.190.92.2	ns1.spb.starttelecom.ru	JSC Start Telecom,  North-Western branch	13	59.894402	30.2642	0.2021179200	t	f	OK	0
606	195.93.150.150	ns1.uminet.ru	UMI-net Ltd.	13	56.0667	37.049999	0.2047669900	t	f	OK	0
523	217.198.161.1	ns1.concord.ru	Concord Ltd network	13	55.752201	37.615601	0.2101371300	t	f	OK	0
643	77.239.227.10	ns1.satel-telecom.ru	Satel Telecom Ltd	13	60	100	0.2126810600	t	f	OK	0
594	195.189.72.2	ns2.itsochi.ru	MEGAKOM	13	43.599998	39.730301	0.2327101200	t	f	OK	0
589	78.31.96.2	ns1.tverline.ru	TverLine Ltd.	13	56.8619	35.893101	0.2051479800	t	f	OK	0
562	83.167.66.166	ns3.coltel.ru	Columbia-Telecom	13	60	100	0.2351429500	t	f	OK	0
612	212.75.211.2	ns2.eltc.ru	Always On Networks	13	45.466702	9.1999998	0.2753350700	t	f	OK	0
620	193.169.1.250	ns1.skysib.com	AT&T;	13	52.299999	-1.9333	0.2836740000	f	f	Timed Out	0
623	92.124.194.206	ns3.stbur.ru	OJSC Sibirtelecom	13	52.991901	103.5108	0.2895109700	t	f	OK	0
661	89.207.220.1	ns2.lealta.ru	Lealta Ltd	13	60	100	0.2085890800	t	f	OK	0
584	85.159.224.4	ns1.e-telecom.ru	JSC Eurotelecom	13	60	100	0.2355299000	t	f	OK	0
599	195.128.85.185	ns1.lt.ru	LitTelecom	13	55.752201	37.615601	0.2139909300	t	f	OK	0
658	79.141.66.242	ns1.new-com.ru	ZAO NEWCOM	13	57.152199	65.527199	0.2356450600	t	f	OK	0
618	62.165.33.250	ns1.suttk.ru	Southern Urals TransTelecom	13	55.1544	61.429699	0.2414629500	t	f	OK	0
579	80.251.144.5	ns1.intersat.ru	Resource for infrastructure	13	57.0103	61.456402	0.2430939700	t	f	OK	0
544	82.202.131.1	ns2.bgnet.ru	BG Telecom Network	13	46.952202	142.74049	0.2976539100	t	f	OK	0
591	89.222.201.202	ns2.netorn.ru	NETORN infrastructure p2p connections	13	55.752201	37.615601	0.2149298200	t	f	OK	0
668	193.16.209.2	ns2.mmk.ru	Magnitogorsk Iron and Steel	13	53.418598	59.047199	0.2441310900	t	f	OK	0
644	83.149.33.2	ns1.ugsm.ru	CJSC Uralsky GSM network	13	55.752201	37.615601	0.2480120700	t	f	OK	0
629	80.251.145.5	ns2.intersat.ru	Resource for infrastructure	13	57.0103	61.456402	0.2492320500	t	f	OK	0
656	89.208.96.254	ns2.line-group.ru	Digital Networks JSC	13	55.752201	37.615601	0.2156820300	t	f	OK	0
605	195.248.249.68	ns1.smrk.ru	JSC Svyazinvest	13	60	100	0.2227959600	t	f	OK	0
555	81.90.208.4	ns1.hypernet.ru	LLC HyperNet	13	55.1544	61.429699	0.2268440700	t	f	OK	0
608	62.33.39.3	ns2.dartel.ru	(SM030061) Dartel	13	54.1833	45.1833	0.2288739700	t	f	OK	0
549	88.204.14.1	ns1.tomgate.net	SkyLine Ltd, Tomsk ISP	13	56.5	84.966698	0.2648940100	t	f	OK	0
568	78.159.224.224	ns1.atelperm.ru	JSC Telecommunications Agency	13	58	56.25	0.2291760400	t	f	OK	0
559	217.148.54.3	ns3.ycc.ru	Russian Federation	13	56.849998	60.599998	0.2319250100	t	f	OK	0
518	194.85.100.3	ns2.odu.neva.ru	Union Control Board of Noth-Western Area	13	59.894402	30.2642	0.2011690100	t	f	OK	0
564	195.182.128.194	ns1.cmk.ru	Comlink ISP Network	13	59.894402	30.2642	0.1910109500	t	f	OK	0
619	80.254.16.2	ns1.piter-telecom.ru	Piter-Telecom Ltd	13	58.990601	54.437199	0.2015349900	t	f	OK	0
533	194.85.100.2	ns1.odusz.so-ups.ru	Union Control Board of Noth-Western Area	13	59.894402	30.2642	0.2027158700	t	f	OK	0
615	62.140.239.1	ns3.fiord.ru	PtP links block	13	55.752201	37.615601	0.2059478800	t	f	OK	0
647	62.140.251.35	ns2.exnet.ru	Typhone Communications	13	60.4575	34.829399	0.2075998800	t	f	OK	0
652	194.6.216.5	NS1.itcomm.ru	Intertelecom network	13	55.752201	37.615601	0.2131819700	t	f	OK	0
586	217.144.98.244	ns1.redline.ru	Innotek Joint Stock Company (REDLINE)	13	55.752201	37.615601	0.2085380600	t	f	OK	0
621	217.24.113.214	ns2.parma.ru	Parma Inform - Customers Network	13	65.944397	57.4519	0.2188370200	t	f	OK	0
611	217.72.144.69	ns2.logix.ru	Server segment of Best Telecom	13	55.752201	37.615601	0.2091300500	t	f	OK	0
632	217.150.35.129	ns1.transtelecom.net	Transtelecom Public Servers	13	55.752201	37.615601	0.2209630000	t	f	OK	0
574	80.237.112.10	ns1.kna.ru	(KH000013) ETC Communications network	13	48.5	135.10001	0.3269372000	t	f	OK	0
560	195.146.77.130	dns1.icomisp.ru	ZAO POLYGON	13	55.752201	37.615601	0.2110791200	t	f	OK	0
666	82.200.14.130	ns.kuzbass.stack.ru	(NS730) STACK-BELOVO, Stack, Kemerovo	13	55.333302	86.083298	0.2651808300	t	f	OK	0
570	89.208.97.197	ns1.line-group.ru	Digital Networks JSC	13	55.752201	37.615601	0.2160630200	t	f	OK	0
634	78.37.66.131	ns1.telsi-isp.ru	OJSC North-West Telecom	13	60	100	0.1974778200	t	f	OK	0
573	78.140.193.18	ns2.kanrit.net	Kanrit backbone network	13	59.894402	30.2642	0.1979661000	t	f	OK	0
538	194.186.36.186	ns3.rbc.ru	RosBusinessConsulting	13	55.752201	37.615601	0.2006080200	t	f	OK	0
550	85.235.205.2	ns2.lsi.spb.ru	LenStroyInform Ltd	13	59.894402	30.2642	0.1976859600	t	f	OK	0
553	217.171.144.146	dns2.conttel.ru	JSC Contact Telecomm	13	55.752201	37.615601	0.2077989600	t	f	OK	0
577	82.198.165.2	ns2.globus-telecom.com	CJSC GLOBUS-TELECOM, Russia, Moscow	13	55.752201	37.615601	0.2146899700	t	f	OK	0
556	80.79.179.2	ns2.altegrosky.ru	Internal II for Altegrosky	13	59.450001	29.733299	0.2118711500	t	f	OK	0
590	79.140.66.38	ns2.webm.ru	JSC Belgorodskie Tsifrovie Magistraly	13	50.6133	36.5872	0.2163929900	f	f	Timed Out	0
771	62.181.119.131	ns1.markarydsgrafiska.se	Markaryds Grafiska AB	14	56.4333	13.6	0.1906828900	t	f	OK	0
735	62.247.128.131	ns1.dice.se	Digital Illusions CE AB	14	59.333302	18.049999	0.1915741000	t	f	OK	0
726	193.15.191.33	ns1.nilings.se	SunGard Availability Services Nordic AB	14	59.333302	18.049999	0.1805779900	t	f	OK	0
714	217.17.71.40	ns3.pite.com	Telenor Bedrift AS	14	62	15	0.2048971700	t	f	OK	0
731	194.187.61.3	ns2.trustit.se	Trust-IT Sweden AB hosting network	14	59.366699	18.016701	0.1865210500	t	f	OK	0
689	80.244.65.3	ns2.t3.se	ISP in Vindeln, Sweden	14	64.199997	19.7332	0.1966490700	t	f	OK	0
711	193.13.144.1	ns1.mm.se	Rekall AB	14	55.599998	13	0.1773729300	t	f	OK	0
732	217.28.192.135	ns2.wcom.se	Wcom AB	14	57.650002	12.0167	0.1796419600	t	f	OK	0
710	193.12.100.25	dns1.six.se	Six AB	14	59.333302	18.049999	0.1809139300	t	f	OK	0
695	193.222.110.100	dns1.nonea.se	Nonea Studio AB	14	59.866699	17.6833	0.1753270600	t	f	OK	0
688	89.160.63.191	ns2.wehost.se	Skycom Nordic AB	14	63.833302	20.25	0.1814119800	t	f	OK	0
764	195.67.15.73	ns2.unitus.se	TeliaSonera AB	14	62	15	0.1877360300	t	f	OK	0
727	83.168.217.5	ns1.scandichosting.com	Crystone AB	14	55.599998	13	0.1883070500	t	f	OK	0
678	213.132.114.6	ns6.dnsnoc.net	Blixtvik ViaEuropa	14	59.849998	17.633301	0.1934618900	t	f	OK	0
680	194.146.171.24	ns2.wwwgbg.se	WWW Goteborg AB	14	57.716702	11.9667	0.1810469600	t	f	OK	0
740	192.71.148.198	dns2.teliamobile.net	should be sent to	14	57.716702	11.9667	0.1818029900	t	f	OK	0
686	193.200.86.1	ns1.3rex.net	Solheim System AB	14	57.716702	11.9667	0.1846540000	t	f	OK	0
715	194.237.134.11	ns1.deltaco.se	TeliaSonera AB	14	62	15	0.1858820900	t	f	OK	0
682	85.194.0.18	ns1.visit.se	Visit ROUTE and SERVER NET	14	58.416698	15.6167	0.1870529700	f	f	No Response	0
698	195.54.152.3	ns2.trendator.se	Trendator AB	14	59.466702	17.9	0.1905739300	t	f	OK	0
738	81.25.80.6	ns2.s3net.nu	Sourcecom Internal Services	14	62.383301	17.299999	0.1921088700	t	f	OK	0
684	213.136.56.217	dns2.mora-c.net	Dios Fastigheter AB	14	59.333302	18.049999	0.1948919300	t	f	OK	0
767	62.95.59.35	ns2.bredbandsteknik.se	Bredbandsteknik AB	14	56.166698	14.85	0.1971530900	t	f	OK	0
708	83.166.8.18	ns2.hernonet.se	Local Provider in Harnosand City	14	62.636101	17.941099	0.1973090200	t	f	OK	0
707	83.166.8.17	ns1.hernonet.se	Local Provider in Harnosand City	14	62.636101	17.941099	0.1983048900	t	f	OK	0
687	89.160.63.190	ns1.wehost.se	Skycom Nordic AB	14	63.833302	20.25	0.1801819800	t	f	OK	0
716	194.237.134.12	ns2.deltaco.se	TeliaSonera AB	14	62	15	0.1878168600	t	f	OK	0
690	193.13.74.241	dns1.griffel.se	Griffel AB	14	56.883301	14.8167	0.1805429500	t	f	OK	0
755	85.194.1.18	ns3.visit.se	Visit ROUTE and SERVER NET	14	58.416698	15.6167	0.1880319100	f	f	No Response	0
768	85.194.0.20	ns4.visit.se	Visit ROUTE and SERVER NET	14	58.416698	15.6167	0.1912879900	f	f	No Response	0
722	82.193.164.65	ns1.floorit.se	FloorIT AB	14	57.733299	12.05	0.1816089200	t	f	OK	0
718	217.20.96.100	dns1.straznet.se	Straznet AB	14	57.483299	12.0667	0.1825120400	t	f	OK	0
691	79.99.224.24	ns1.bybrick.se	byBrick Consulting AB	14	59.333302	18.049999	0.1850791000	t	f	OK	0
772	62.181.119.132	ns2.markarydsgrafiska.se	Markaryds Grafiska AB	14	56.4333	13.6	0.1931459900	t	f	OK	0
766	62.95.59.38	ns1.bredbandsteknik.se	Bredbandsteknik AB	14	56.166698	14.85	0.1945209500	t	f	OK	0
712	213.88.219.21	ns2.it-akuten.se	TDC Song AB	14	59.466702	17.9	0.1855628500	t	f	OK	0
669	83.168.217.71	ns1.scandicdomain.com	Crystone AB	14	55.599998	13	0.1880700600	t	f	OK	0
760	193.138.219.67	ns2.treron.net	SolidX AB	14	55.599998	13	0.1775801200	t	f	OK	0
685	83.168.216.2	ns2.scandichosting.com	Special servers net	14	62	15	0.1893241400	t	f	OK	0
747	213.115.183.12	ns1.bolero.se	IT Consultants	14	55.450001	13.8	0.1894719600	t	f	OK	0
696	91.194.66.2	ns1.gnarf.org	BK Labs network	14	62	15	0.1901571800	t	f	OK	0
692	212.247.82.162	ns1.vetlanda.net	Griffel AB	14	56.883301	14.8167	0.1786689800	t	f	OK	0
673	193.41.214.1	dns1.quicknet.se	QuickNet AB	14	59.616699	16.549999	0.1789109700	t	f	OK	0
702	80.252.160.164	dns2.nnab.net	Arete Internet AB	14	59.366699	18.016701	0.1798400900	t	f	OK	0
705	193.15.201.226	ns2.rightcompetence.com	Ninetechgruppen AB	14	59.366699	13.5	0.1800038800	t	f	OK	0
723	82.193.164.66	ns2.floorit.se	FloorIT AB	14	57.733299	12.05	0.1803410100	t	f	OK	0
713	213.88.219.20	ns1.it-akuten.se	TDC Song AB	14	59.466702	17.9	0.1860151300	t	f	OK	0
729	77.240.208.5	ns1.stinghlr.net	Sting Networks AB, Stockholm	14	59.333302	18.049999	0.1875271800	f	f	Timed Out	0
725	82.96.43.10	ns5.nixus.info	MM Nordic	14	59.333302	18.049999	0.1876540200	t	f	OK	0
754	83.168.230.172	ns1.flera.se	Colo / Dedicated servers	14	62	15	0.1876871600	t	f	OK	0
748	213.115.183.13	ns2.bolero.se	IT Consultants	14	55.450001	13.8	0.1903271700	t	f	OK	0
739	213.115.168.139	dns1.ataco.se	Ataco	14	59.366699	13.5	0.1910989300	t	f	OK	0
697	195.54.152.2	ns1.trendator.se	Trendator AB	14	59.466702	17.9	0.1912050200	t	f	OK	0
737	81.25.80.5	ns1.s3net.nu	Sourcecom Internal Services	14	62.383301	17.299999	0.1912307700	t	f	OK	0
763	194.71.109.238	ns2.as31432.net	Kungliga Tekniska Hogskolan	14	59.333302	18.049999	0.1782620000	t	f	OK	0
699	217.78.32.112	dns1.dcs.net	DCS Linknets	14	59.366699	17.9667	0.1820819400	t	f	OK	0
675	213.146.65.11	rdns1.eurovoice.com	Euronet Systems	14	55.533298	12.95	0.2050299600	t	f	OK	0
759	192.5.36.10	ns1.raditex.nu	Raditex AB	14	62.4739	17.4161	0.1947841600	t	f	OK	0
721	195.67.160.3	ns1.svenskakyrkan.se	Kyrknatet AB	14	59.849998	17.633301	0.1901230800	t	f	OK	0
756	193.181.238.11	ns1.bbservices.se	BBServices	14	57.783298	13.4167	0.1849861100	t	f	OK	0
757	83.166.0.133	ns1.serva.net	ServaNets IP Network	14	62.383301	17.299999	0.1951351200	t	f	OK	0
741	195.67.127.137	dns2.markbladet.se	Markbladet AB	14	57.5	12.6833	0.1837320300	t	f	OK	0
706	193.200.87.1	ns2.3rex.net	Solheim System AB	14	57.716702	11.9667	0.1867120300	t	f	OK	0
693	194.132.119.151	ns1.prognosia.se	Pulsen Dataproduktion AB	14	57.716702	12.9167	0.1856930300	t	f	OK	0
758	195.67.183.153	ns2.svenskakyrkan.se	Kyrknatet AB	14	59.849998	17.633301	0.1912100300	t	f	OK	0
724	80.252.223.84	ns2.buster.se	BearCom AB	14	57.716702	11.9667	0.1887898400	t	f	OK	0
703	62.119.132.25	dns2.six.se	Six AB	14	59.333302	18.049999	0.1897969200	t	f	OK	0
704	195.67.15.102	ns1.unitus.se	TeliaSonera AB	14	62	15	0.1898369800	f	f	Timed Out	0
676	213.132.114.5	ns5.dnsnoc.net	Blixtvik ViaEuropa	14	59.849998	17.633301	0.1928100600	t	f	OK	0
770	82.99.16.130	ns1.gmq-hosting.net	GMQ Consulting	14	58.366699	11.9333	0.1944868600	t	f	OK	0
683	62.63.205.138	ns1.hillerstrom.net	Tyfon	14	59.200001	17.616699	0.1933610400	t	f	OK	0
671	193.234.216.12	ns2.ericsson.fi	Telefonaktiebolaget LM Ericsson	14	59.333302	18.049999	0.1995818600	t	f	OK	0
717	89.160.27.232	ns2.carlstad.se	Karlstad Sweden	14	59.366699	13.5	0.1961770100	t	f	OK	0
670	193.234.216.11	ns1.ericsson.fi	Telefonaktiebolaget LM Ericsson	14	59.333302	18.049999	0.1998028800	t	f	OK	0
679	80.88.97.142	ns2.skekraft.net	Addresses used to build AC-Net	14	63.833302	20.25	0.2035689400	t	f	OK	0
720	82.99.40.13	ns3.house43.net	Hus43	14	56.671398	12.8556	0.2070519900	t	f	OK	0
769	194.14.0.6	ns2.serioustubes.org	Kungliga Tekniska Hogskolan	14	59.333302	18.049999	0.1759660200	t	f	OK	0
749	81.25.152.2	dns2.jra.se	Infrastructural adresses for Herrljunga Elektriska	14	58.083302	13.0333	0.1845679300	t	f	OK	0
701	80.252.160.162	dns1.nnab.net	Arete Internet AB	14	59.366699	18.016701	0.1817851100	t	f	OK	0
765	193.13.133.2	ns2.tba.net	TBA Media AB	14	57.716702	11.9667	0.1726021800	t	f	OK	0
674	217.28.206.22	ns3.wcom.se	Tripnet AB	14	57.716702	11.9667	0.1808080700	t	f	OK	0
700	194.187.60.253	ns1.trustit.se	Trust-IT Sweden AB hosting network	14	59.366699	18.016701	0.1877000300	t	f	OK	0
709	213.132.96.130	ns2.gmq-hosting.net	GMQ Consulting	14	58.366699	11.9333	0.1957831400	t	f	OK	0
745	194.14.0.5	ns1.serioustubes.org	Kungliga Tekniska Hogskolan	14	59.333302	18.049999	0.1764519200	t	f	OK	0
762	217.13.252.37	ns2.nilings.se	Sungard Availability Services (Nordic) AB - Intern	14	59.333302	18.049999	0.2088429900	t	f	OK	0
728	84.55.104.120	ns1.itss.se	CUSTOMERS-OWNIT-SE	14	59.333302	18.049999	0.1830470600	t	f	OK	0
694	193.222.110.101	dns2.nonea.se	Nonea Studio AB	14	59.866699	17.6833	0.1762359100	t	f	OK	0
746	81.25.144.94	dns1.jra.se	JRA Data-Center AB	14	58.083302	13.0333	0.1852650600	t	f	OK	0
761	192.71.148.166	dns1.teliamobile.net	should be sent to	14	57.716702	11.9667	0.1855809700	t	f	OK	0
672	194.8.29.10	ns1.lanpro.se	Lanpro AB	14	57.615799	11.9456	0.1882741500	t	f	OK	0
743	194.218.25.253	ns1.windh.net	CDL PRESS AB	14	57.166698	16.450001	0.1883969300	t	f	OK	0
744	194.218.25.250	ns1.windh.net	CDL PRESS AB	14	57.166698	16.450001	0.1884360300	t	f	OK	0
734	62.247.128.132	ns2.dice.se	Digital Illusions CE AB	14	59.333302	18.049999	0.1887629000	t	f	OK	0
753	83.168.230.173	ns2.flera.se	Colo / Dedicated servers	14	62	15	0.1892612000	t	f	OK	0
681	85.194.1.20	ns2.visit.se	Visit ROUTE and SERVER NET	14	58.416698	15.6167	0.1910228700	f	f	No Response	0
733	193.41.118.210	ns2.dnsdrift.net	Runs Webhotels and other kind of hostings	14	58.549999	15.05	0.1927621400	t	f	OK	0
677	213.132.114.4	ns4.mitex.net	Blixtvik ViaEuropa	14	59.849998	17.633301	0.1940360100	t	f	OK	0
736	192.176.62.67	sestodns01.veolia-transport.se	ML Malmo Trafik AB	14	55.599998	13	0.2059691000	t	f	OK	0
775	212.252.114.8	ns1.superonline.com	Superonline	15	41.0186	28.964701	0.2052989000	t	f	OK	0
773	85.29.26.8	ns2.superonline.com	Tellcom Infrastructure Services Block	15	41.0186	28.964701	0.2070269600	t	f	OK	0
774	79.123.147.195	ns1.duzce.edu.tr	DUZCE Universitesi	15	40.838902	31.1639	0.2234950100	t	f	OK	0
831	63.251.129.1	ns1.bsn.pnap.net	InterNAP Network Services, PNAP-BSN	16	42.342499	-71.067703	0.0945470330	t	f	OK	0
957	209.161.175.29	ns1.akfiberstar.net	Alaska Fiberstar	16	61.6842	-145.1485	0.0385439400	t	f	OK	0
829	153.90.2.15	dns1.msu.montana.edu	Montana State University	16	45.627998	-110.9014	0.0510671140	t	f	OK	0
801	209.212.30.143	ns2.njsl.org	New Jersey State Library	16	40.4832	-74.288101	0.0946071150	t	f	OK	0
967	216.21.176.11	ns2.geetel.net	Geetingsville Telephone Co.	16	40.318699	-86.468803	0.0768098830	t	f	OK	0
1113	165.87.201.244	ns4.us.prserv.net	AT&T; GLOBAL NETWORK SERVICES	16	28.757799	-81.339699	0.0204439160	t	f	OK	0
818	216.52.97.33	ns2.ocy.pnap.net	InterNAP Network Services, PNAP-OCY	16	47.614498	-122.348	0.0273208620	t	f	OK	0
866	66.153.50.66	dns1-nyc.paetec.net	PaeTec Backbone Connections	16	40.857498	-74.1493	0.0801560880	t	f	OK	0
874	8.15.12.5	dns01.iad01.acndigital.net	American Communication Network (ACN.Inc)	16	42.5065	-83.349197	0.0898320670	t	f	OK	0
861	131.94.226.10	ns3.fiu.edu	Florida International University	16	25.761499	-80.2939	0.1241278600	t	f	OK	0
1121	205.225.182.2	ns6.net.ca.gov	Teale Data Center	16	38.3577	-121.4264	0.0222370620	t	f	OK	0
1131	66.117.13.147	ns1.liferay.com	Corporate Colocation	16	34.117298	-118.26	0.0260510440	t	f	OK	0
1132	66.117.13.148	ns2.liferay.com	Corporate Colocation	16	34.117298	-118.26	0.0266749860	t	f	OK	0
1128	168.215.165.186	ns1.snan.twtelecom.net	Time Warner Telecom	16	29.471701	-98.514	0.0600090030	t	f	OK	0
937	209.0.205.50	ns2.bigcity.net	BigCity Networks	16	29.775499	-95.415199	0.0603699680	t	f	OK	0
941	64.39.224.213	ns2.siteportal.info	World Internet Services	16	33.156502	-117.1707	0.0688900950	t	f	OK	0
977	63.238.52.1	ns1.api-digital.com	INTEGRITY ONLINE	16	34.719299	-86.560402	0.0841310020	t	f	OK	0
975	63.238.52.2	ns2.api-digital.com	INTEGRITY ONLINE	16	34.719299	-86.560402	0.0846829410	t	f	OK	0
1133	209.87.79.232	ns2.dsl.net	MEGAPATH NETWORKS	16	41.3158	-73.135399	0.0856637950	f	f	Timed Out	0
1014	24.158.96.131	ns4.chartertn.net	CHARTER COMMUNICATIONS	16	35.972401	-83.959503	0.0870649810	t	f	OK	0
1067	64.119.80.100	ns4.nuvisions.net	Newport Telecommunications Company	16	40.724499	-74.062103	0.0883250240	t	f	OK	0
1063	209.87.64.70	ns1.dsl.net	DSL.net	16	41.309399	-72.924004	0.0918929580	t	f	OK	0
1100	209.191.247.45	ns1.knight.com	Knight Capital Group	16	40.724499	-74.062103	0.0930020810	t	f	OK	0
1107	66.81.0.252	ns2.o1.com	01.com	16	38.583099	-121.4921	0.0321409700	t	f	OK	0
1070	208.180.42.68	rdns01.suddenlink.net	Suddenlink Communications	16	32.318001	-95.292099	0.0314249990	t	f	OK	0
1048	192.189.191.252	ns1.asymtek.com	Nordson Corporation	16	33.6451	-117.6786	0.0346939560	t	f	OK	0
1077	64.250.226.83	ns2.lasvegas.net	Traffic Power	16	36.151501	-115.2049	0.0335688590	t	f	OK	0
1031	64.140.128.11	ns2.extremezone.com	Extreme Internet	16	33.522202	-112.0839	0.0406720640	t	f	OK	0
947	72.249.9.169	ns2.alliance.com	ALLIANCE SHIPPERS	16	40.891499	-73.947098	0.0552668570	t	f	OK	0
1046	199.79.203.10	ns1.newtek.com	NewTek	16	29.541401	-98.561096	0.0678098200	t	f	OK	0
952	206.78.236.20	ns1.mariposa.k12.ca.us	Kings County Office of Education	16	36.276001	-119.6322	0.0312530990	t	f	OK	0
776	206.253.194.97	ns2.pnap.net	Internap Network Services	16	47.5951	-122.3326	0.0380520820	t	f	OK	0
781	207.15.68.36	osscdns02.spcsdns.net	Sprint	16	38	-97	0.0671131610	t	f	OK	0
870	216.237.221.42	dns3.nstel.com	North State Data Services	16	35.8535	-80.108398	0.0978629590	t	f	OK	0
877	216.169.160.23	ns2.ceinetworks.com	D&E; Communications	16	40.175701	-76.165802	0.1012749700	t	f	OK	0
1016	131.94.7.220	ns1.fiu.edu	Florida International University	16	25.761499	-80.2939	0.1225690800	t	f	OK	0
806	66.128.130.4	ns2.internetemc.com	INTERNET EMC	16	34.725101	-83.510803	0.1490039800	t	f	OK	0
823	66.71.191.34	ns5.9netweb.it	Network Application Services	16	40.859699	-74.402603	0.1915898300	t	f	OK	0
835	198.88.216.2	ns1.omnilec.com	BitWise Systems	16	40.777401	-89.574898	0.0643670560	t	f	OK	0
1099	65.163.107.11	ns1.ctusa.net	CORPORATE TECHNOLOGIES USA	16	45.063599	-93.378899	0.0764539240	t	f	OK	0
811	207.69.188.189	rns2.mcihispeed.net	EarthLink	16	38	-97	0.0775380130	t	f	OK	0
883	69.57.163.124	ns1.1timesolutions.biz	FortressITX	16	40.8326	-74.130699	0.0909390450	t	f	OK	0
786	192.188.199.6	ns1.pratt.lib.md.us	Enoch-Pratt Free Library	16	39.2952	-76.6231	0.0912969110	t	f	OK	0
1018	24.89.0.22	ns3.myactv.net	Antietam Cable Television	16	39.653999	-77.643204	0.0916728970	t	f	OK	0
797	63.251.129.33	ns2.bsn.pnap.net	InterNAP Network Services, PNAP-BSN	16	42.342499	-71.067703	0.0932590960	t	f	OK	0
995	165.166.142.42	ns1.spirittelecom.com	Info Avenue Internet Services	16	34.927502	-81.0522	0.0945348740	t	f	OK	0
970	134.29.1.1	NS1.MNSU.EDU	Minnesota State University, Mankato	16	44.658699	-93.597504	0.0947980880	f	f	No Response	0
954	216.106.184.6	ns2.ststelecom.com	STS TELECOM	16	25.933599	-80.258598	0.0966250900	t	f	OK	0
1068	199.2.252.10	ns2.sprintlink.net	SprintLink	16	40.399601	-88.821198	0.0277221200	t	f	OK	0
1023	66.251.35.130	cachens3.paetec.net	PaeTec Communications	16	43.100498	-77.426003	0.0232021810	t	f	OK	0
1026	216.52.1.1	ns1.sfj.pnap.net	InterNAP Network Services, PNAP-SFJ	16	37.307301	-121.8569	0.0198218820	t	f	OK	0
894	64.147.188.6	ns2.eff.org	Electronic Frontier Foundation	16	37.748402	-122.4156	0.0166559220	t	f	OK	0
1122	205.225.182.1	ns2.net.ca.gov	Teale Data Center	16	38.3577	-121.4264	0.0232460500	t	f	OK	0
863	65.74.130.5	ns1.heraklesdata.net	HERAKLES LLC	16	38.5765	-121.4445	0.0235669610	t	f	OK	0
972	67.17.215.132	dns1.snv.gblx.net	38.GCLRI	16	38	-97	0.0191469190	t	f	OK	0
879	66.151.145.1	ns1.sje.pnap.net	Internap Network Services, PNAP-SJE	16	37.355801	-122.1283	0.0171020030	t	f	OK	0
898	64.147.188.9	ns1.eff.org	Electronic Frontier Foundation	16	37.748402	-122.4156	0.0177290440	t	f	OK	0
1126	63.251.62.33	ns2.sfo.pnap.net	InterNAP Network Services, PNAP-SFO	16	37.7645	-122.4294	0.0192248820	t	f	OK	0
1092	156.154.71.1	rdns2.ultradns.net	NEUSTAR	16	38.988098	-77.475502	0.0196399690	t	f	OK	0
799	216.131.94.5	ns1.oakweb.com	Black Oak Computers	16	38.947102	-119.9702	0.0182919500	t	f	OK	0
1061	216.38.128.2	ns1.fastmetrics.com	Fastmetrics, LLC	16	37.7645	-122.4294	0.0177180770	t	f	OK	0
973	67.17.215.133	dns2.snv.gblx.net	38.GCLRI	16	38	-97	0.0172231200	t	f	OK	0
1055	206.13.31.12	dns1.scrmca.sbcglobal.net	Server LAN - SCRM01	16	38	-97	0.0207710270	t	f	OK	0
864	65.74.130.6	ns2.heraklesdata.net	HERAKLES LLC	16	38.5765	-121.4445	0.0243709090	t	f	OK	0
852	206.13.29.12	dns1.lsanca.sbcglobal.net	FE Net - lsan03 (servers)	16	38	-97	0.0257260800	t	f	OK	0
779	216.52.254.1	ns1.lax.pnap.net	InterNAP Network Services, PNAP-LAX	16	34.076698	-118.0238	0.0281951430	t	f	OK	0
944	66.51.205.100	dns1.dslextreme.com	DSL Extreme	16	34.041599	-118.2988	0.0236999990	t	f	OK	0
902	64.7.192.81	ns1.cybersmithdns.com	Vitalstream Holdings	16	33.675098	-117.7339	0.0273308750	t	f	OK	0
787	206.13.30.12	dns1.sndgca.sbcglobal.net	FDDI Net - sndg02	16	38	-97	0.0313599110	t	f	OK	0
1012	68.179.203.94	ns2.wa-k20.net	Washington State K-20 Telecommunications Network	16	47.660599	-122.2919	0.0362651350	t	f	OK	0
1119	129.219.13.81	asudns2.asu.edu	Arizona State University	16	33.320202	-111.761	0.0356149670	t	f	OK	0
1090	208.82.116.72	ns2.ptld.com	Network Data Center Host	16	33.478199	-117.7064	0.0289478300	t	f	OK	0
988	67.159.206.22	ns2.forona.net	Forona Technologies	16	47.614498	-122.348	0.0330271720	t	f	OK	0
1029	8.26.56.26	ns1.recursive.dns.com	Level 3 Communications	16	38	-97	0.0354638100	t	f	OK	0
1086	206.165.6.12	dns2.phx.gblx.net	38.GCLRI	16	38	-97	0.0350520610	t	f	OK	0
1103	216.52.1.33	ns2.sfj.pnap.net	InterNAP Network Services, PNAP-SFJ	16	37.307301	-121.8569	0.0200188160	t	f	OK	0
893	207.179.3.25	ns1.virtela.net	VIRTELA COMMUNICATIONS	16	39.623699	-104.8738	0.0429370400	t	f	OK	0
851	69.10.201.27	ns1.localaccess.com	Rainier Connect	16	47.202702	-122.7641	0.0339369770	t	f	OK	0
834	65.57.163.9	ns1.co-location.com	Co-Location.com	16	34.060699	-118.4032	0.0255229470	t	f	OK	0
942	8.20.247.20	ns2.recursive.dns.com	Level 3 Communications	16	38	-97	0.0355341430	t	f	OK	0
981	129.219.17.5	asudns1.asu.edu	Arizona State University	16	33.320202	-111.761	0.0349822040	t	f	OK	0
1081	66.59.235.1	ns1.linkline.com	LinkLINE Communications	16	33.845299	-118.1118	0.0278859140	t	f	OK	0
934	129.219.17.200	asudns3.asu.edu	Arizona State University	16	33.320202	-111.761	0.0335750580	t	f	OK	0
910	209.133.21.10	ns1.got.net	GotNet	16	37.0448	-122.1021	0.0262508390	t	f	OK	0
980	216.52.254.33	ns2.lax.pnap.net	InterNAP Network Services, PNAP-LAX	16	34.076698	-118.0238	0.0273559090	t	f	OK	0
1074	206.13.28.12	dns1.snfcca.sbcglobal.net	SBC Internet Services	16	38	-97	0.0193619730	t	f	OK	0
906	198.60.22.2	cns1.xmission.com	XMission	16	40.724201	-111.8787	0.0428950790	t	f	OK	0
1078	209.152.61.178	ns1.pcc.edu	Portland Community College	16	45.453499	-122.6988	0.0415329930	t	f	OK	0
839	63.251.161.33	ns2.sef.pnap.net	InterNAP Network Services, PNAP-ACS	16	47.5951	-122.3326	0.0400872230	t	f	OK	0
1097	128.193.0.10	ns1.oregonstate.edu	Oregon State University	16	44.564201	-123.279	0.0441138740	t	f	OK	0
959	206.123.64.245	ns1.colo4dallas.net	Colo4Dallas LP	16	32.8148	-96.870598	0.0570409300	t	f	OK	0
859	206.130.133.2	ns2.nwinternet.com	NORTHWEST INTERNET	16	47.494099	-120.1955	0.0420129300	t	f	OK	0
964	168.215.210.50	ns1.orng.twtelecom.net	Time Warner Telecom	16	33.6922	-117.7867	0.0579190250	t	f	OK	0
987	128.193.4.20	ns2.oregonstate.edu	Oregon State University	16	44.564201	-123.279	0.0448989870	t	f	OK	0
885	65.68.49.50	wgdns1.rcsntx.sbcglobal.net	DNS Server Vlan - RCSNTX	16	38	-97	0.0601499080	t	f	OK	0
1051	69.7.192.1	ns1.cimcoisp.net	CIMCO COMMUNICATIONS	16	41.8675	-87.6744	0.0654668810	t	f	OK	0
984	216.186.27.15	ns1.ohsd.net	Oak Harbor School District	16	47.287498	-122.1094	0.0407080650	t	f	OK	0
1033	204.52.135.2	ns5.hal-pc.org	Houston Area League of PC Users	16	29.775499	-95.415199	0.0637631420	t	f	OK	0
886	65.68.49.51	wgdns2.rcsntx.sbcglobal.net	DNS Server Vlan - RCSNTX	16	38	-97	0.0602078440	t	f	OK	0
1058	216.136.95.2	ns1.twtelecom.net	Time Warner Telecom	16	39.528999	-104.905	0.0581910610	t	f	OK	0
950	129.7.1.1	ns1.uh.edu	University of Houston	16	29.9156	-95.649101	0.0582799910	t	f	OK	0
958	64.126.133.2	NS3.fsr.com	FIRST STEP INTERNET	16	46.8885	-117.1551	0.0583009720	t	f	OK	0
940	216.19.223.34	ns2.inficad.com	GetNet	16	33.522202	-112.0839	0.0550971030	t	f	OK	0
1035	68.105.29.11	cdns6.cox.net	Cox Communications	16	41.391602	-81.6418	0.0563530920	t	f	OK	0
955	207.172.3.9	ns2.dns.rcn.net	RCN Corporation	16	40.6572	-75.502998	0.0650959010	t	f	OK	0
826	207.44.226.173	ns2.listau.com	Everyones Internet	16	29.9342	-95.405701	0.0598599910	t	f	OK	0
853	64.8.96.2	ns3.net1.net	FNP CORP	16	29.8262	-95.426399	0.0654602050	t	f	OK	0
1006	216.52.41.1	ns1.den.pnap.net	InterNAP Network Services, PNAP-DEN	16	39.743698	-104.9793	0.0441319940	t	f	OK	0
953	207.91.130.4	ns1.nstci.com	Networks On-Line	16	29.775499	-95.415199	0.0619349480	t	f	OK	0
841	134.48.1.32	dns1.mu.edu	Marquette University	16	43.0522	-87.964996	0.0693299770	t	f	OK	0
990	216.52.41.33	ns2.den.pnap.net	InterNAP Network Services, PNAP-DEN	16	39.743698	-104.9793	0.0447239880	t	f	OK	0
783	216.106.1.3	ns2.socket.net	Socket Internet Services Corporation	16	38.883202	-91.452103	0.0659999850	t	f	OK	0
860	208.59.247.46	ns1.dns.rcn.net	RCN Corporation	16	38	-97	0.0635299680	t	f	OK	0
1052	69.7.192.2	ns2.cimcoisp.net	CIMCO COMMUNICATIONS	16	41.8675	-87.6744	0.0659520630	t	f	OK	0
789	216.52.129.33	ns2.chi.pnap.net	InterNAP Network Services, PNAP-CHI	16	41.8675	-87.6744	0.0677261350	t	f	OK	0
844	67.214.64.27	dns1.telwestonline.com	TEL WEST COMMUNICATIONS LLC	16	47.489101	-122.2908	0.0697190760	t	f	OK	0
793	64.119.60.9	ns2.speednet-dns.com	SpeedNet, LLC	16	43.4809	-83.968201	0.0769710540	t	f	OK	0
875	64.94.33.1	ns1.chg.pnap.net	Internap Network Services	16	33.751598	-84.391502	0.0642271040	t	f	OK	0
1003	216.144.192.252	ns2.digitalrealm.net	IP2GO.NET	16	42.273399	-83.713303	0.0717861650	t	f	OK	0
809	205.242.187.234	dns1.primary.net	Primary Network	16	38.709999	-90.501602	0.0703320500	t	f	OK	0
1049	216.52.129.1	ns1.chi.pnap.net	InterNAP Network Services, PNAP-CHI	16	41.8675	-87.6744	0.0664649010	t	f	OK	0
857	216.165.129.158	ns7.dns.tds.net	TDS TELECOM	16	43.0737	-89.527397	0.0664949420	t	f	OK	0
1045	65.107.59.67	ns1.whittrio.com	Whittrio, Inc.	16	36.151501	-115.2049	0.0344729420	t	f	OK	0
992	153.90.2.1	dns2.msu.montana.edu	Montana State University	16	45.627998	-110.9014	0.0520730020	t	f	OK	0
1004	216.144.192.250	ns1.digitalrealm.net	IP2GO.NET	16	42.273399	-83.713303	0.0727529530	t	f	OK	0
1085	209.253.113.2	cachens1.mcleodusa.net	McLeodUSA Incorporated	16	41.919899	-91.678001	0.0788559910	t	f	OK	0
965	128.135.249.50	dns2.uchicago.edu	University of Chicago	16	41.801399	-87.600502	0.0782208440	t	f	OK	0
833	147.126.240.2	luhsdns2.luhs.org	Loyola University Chicago	16	41.8675	-87.6744	0.0723228450	t	f	OK	0
1020	206.117.120.34	ns1.ci.glendale.ca.us	Los Nettos	16	33.940201	-118.1319	0.0283989910	t	f	OK	0
855	24.248.137.39	ns1.mm.at.cox.net	Cox Communications	16	38	-97	0.0772159100	t	f	OK	0
815	207.69.188.187	rns3.earthlink.net	EarthLink	16	38	-97	0.0773220060	t	f	OK	0
845	216.152.64.199	ns1.webchat.org	WebMaster, Incorporated	16	37.348598	-121.951	0.0183420180	t	f	OK	0
932	66.81.1.252	ns4.o1.com	01.com	16	38.583099	-121.4921	0.0329868790	t	f	OK	0
814	207.69.188.186	rns2.earthlink.net	EarthLink	16	38	-97	0.0776851180	t	f	OK	0
1095	199.249.19.2	OMZNS1.vzbi.com	MCI Telecommunications	16	39.033501	-77.483803	0.0773031710	t	f	OK	0
880	199.5.47.164	ns1.vw.com	Volkswagen of America	16	42.664398	-83.230301	0.0765099530	t	f	OK	0
854	24.154.1.4	ns1.zbzoom.net	Armstrong Cable Services	16	40.876801	-80.261101	0.0796439650	t	f	OK	0
1065	208.201.224.33	ns2.sonic.net	SONIC.NET	16	38.392799	-122.7507	0.0220868590	t	f	OK	0
1054	66.51.206.100	dns2.dslextreme.com	DSL Extreme	16	34.041599	-118.2988	0.0259590150	t	f	OK	0
1027	8.3.48.20	dns1.linknetinc.com	Level 3 Communications	16	38	-97	0.0266389850	t	f	OK	0
1079	209.161.175.30	ns3.akfiberstar.net	Alaska Fiberstar	16	61.6842	-145.1485	0.0390241150	t	f	OK	0
788	209.183.52.21	NS3.mymmode.com	Cingular Wireless II, LLC	16	38	-97	0.0414130690	t	f	OK	0
1073	206.253.194.65	ns1.pnap.net	Internap Network Services	16	47.5951	-122.3326	0.0396010880	t	f	OK	0
999	209.11.240.36	NS2-VIP.VPLS.NET	Krypt Technologies	16	33.763302	-117.7942	0.0282859800	t	f	OK	0
979	207.178.128.21	ns2.iswest.net	INTERNET SPECIALTIES WEST	16	34.418701	-118.4331	0.0279080870	t	f	OK	0
1110	208.77.177.3	ns1.mycomspan.com	Comspan Bandon Network, LLC	16	43.059601	-124.368	0.0312640670	t	f	OK	0
1106	66.81.0.251	ns1.o1.com	01.com	16	38.583099	-121.4921	0.0331039430	t	f	OK	0
929	8.3.48.30	dns2.linknetinc.com	Level 3 Communications	16	38	-97	0.0253350730	t	f	OK	0
963	216.17.128.2	ns2.frii.com	Front Range Internet	16	40.561001	-105.0536	0.0442569260	t	f	OK	0
817	206.130.130.2	ns1.nwinternet.com	NORTHWEST INTERNET	16	47.494099	-120.1955	0.0387611390	t	f	OK	0
939	208.201.224.11	ns1.sonic.net	SONIC.NET	16	38.392799	-122.7507	0.0185530190	t	f	OK	0
943	216.185.192.2	ns2.bhi.com	Black Hole Internet	16	44.898899	-93.625702	0.0790960790	t	f	OK	0
961	72.2.217.249	ns2.myclearwave.net	Midwest Wireless Holdings LLC	16	44.334099	-94.061699	0.0977120400	t	f	OK	0
930	8.6.221.165	ns2.halfasshost.com	Level 3 Communications	16	38	-97	0.0794668200	t	f	OK	0
812	207.69.188.184	rns0.earthlink.net	EarthLink	16	38	-97	0.0774059300	t	f	OK	0
989	66.199.31.131	ns3.teklinks.com	TEKLINKS	16	33.466702	-86.806602	0.0790970330	t	f	OK	0
777	66.155.216.122	cachens1.paetec.net	PaeTec Communications	16	40.761902	-73.976303	0.0798809530	t	f	OK	0
890	64.212.106.85	dns2.jfk.gblx.net	38.GCLRI	16	38	-97	0.0836420060	t	f	OK	0
891	64.212.106.84	dns1.jfk.gblx.net	38.GCLRI	16	38	-97	0.0835928920	t	f	OK	0
1013	64.181.43.34	ns1.mypcstv.com	City of Philippi	16	39.179001	-80.079201	0.0848360060	t	f	OK	0
805	160.79.6.130	ns1.east.us.intellispace.net	INTELLISPACE	16	40.761902	-73.976303	0.0863580700	t	f	OK	0
807	216.52.65.1	ns1.phi.pnap.net	InterNAP Network Services, PNAP-PHI	16	39.996799	-75.148499	0.0859799390	t	f	OK	0
881	64.94.1.33	ns2.acs.pnap.net	InterNAP Network Services, PNAP-ACS	16	33.8004	-84.386497	0.0780639650	t	f	OK	0
1001	208.70.22.22	dns1.triadtelecom.com	Triad Telecom	16	36.0714	-79.767899	0.0814208980	t	f	OK	0
911	207.217.126.81	do-not-use-rns1.earthlink.net	EarthLink	16	38	-97	0.0795910360	t	f	OK	0
921	207.238.196.67	ns1.iseeusecurity.com	XO Communications	16	38	-97	0.0830769540	t	f	OK	0
956	148.84.30.6	ns2.lehman.cuny.edu	Lehman College	16	40.868999	-73.902298	0.0864269730	t	f	OK	0
876	209.191.129.1	ns1.nyc.pnap.net	InterNAP Network Services, PNAP-NYC	16	40.761902	-73.976303	0.0865831380	t	f	OK	0
1053	216.52.94.1	ns1.nym.pnap.net	Internap Network Services, PNAP-NYM	16	40.761902	-73.976303	0.0873348710	t	f	OK	0
1005	209.191.129.65	ns2.nyc.pnap.net	InterNAP Network Services, PNAP-NYC	16	40.761902	-73.976303	0.0862488750	t	f	OK	0
837	69.25.1.33	ns2.mia003.pnap.net	Internap Network Services	16	33.751598	-84.391502	0.0872960090	t	f	OK	0
968	216.52.126.1	ns1.wdc002.pnap.net	InterNAP Network Services, PNAP-WDC	16	38.909698	-77.023102	0.0905449390	t	f	OK	0
1011	69.24.112.11	ns2.localline.com	FAIRNET LLC	16	40.773499	-86.715401	0.0894467830	t	f	OK	0
800	216.242.0.15	ns2-auth.webunited.net	Continental Broadband Florida, Inc DBA WebUnited	16	26.5245	-80.110603	0.0895380970	t	f	OK	0
1108	216.194.28.33	ns1.metconnect.net	MetTel	16	40.7229	-73.8424	0.0854470730	t	f	OK	0
1117	207.69.188.171	optns1.earthlink.net	EarthLink	16	38	-97	0.0787501340	t	f	OK	0
785	69.67.254.2	ns1.usadatanet.com	US Data Net	16	43.043999	-76.151802	0.0907399650	t	f	OK	0
998	66.109.229.4	dns3.dejazzd.com	D&E; Communications	16	39.9571	-76.705498	0.1006600900	t	f	OK	0
824	66.216.34.10	ns2.bboi.net	WV FIBER LLC	16	36.067902	-86.719398	0.0913147930	f	f	Timed Out	0
1017	65.88.88.2	ns1.nypl.org	New York Public Library	16	40.761902	-73.976303	0.0888729100	t	f	OK	0
969	206.131.230.9	ns2.minerva.net	Minerva Network Systems	16	38.903599	-77.451202	0.0896131990	t	f	OK	0
832	69.25.1.1	ns1.mia003.pnap.net	Internap Network Services	16	33.751598	-84.391502	0.0886518960	t	f	OK	0
798	216.244.111.24	ns1.cervalis.com	CERVALIS	16	41.085701	-73.544899	0.0871591570	t	f	OK	0
933	64.135.1.22	ns1.host.net	BroadbandONE	16	26.26	-80.191704	0.0863931180	t	f	OK	0
878	206.51.143.55	ns2.nktelco.net	NEW KNOXVILLE TELEPHONE COMPANY	16	40.495998	-84.2948	0.0939400200	t	f	OK	0
946	199.249.18.1	cache-ns2.verizonbusiness.com	MCI	16	38.929901	-104.874	0.1012949900	t	f	OK	0
945	64.8.12.3	ns1.netexus.com	Netexus Technologies	16	40.292099	-76.425903	0.0878570080	t	f	OK	0
868	205.160.52.53	ns4.ko.com	Coca-Cola	16	33.8004	-84.386497	0.0791230200	t	f	OK	0
926	64.135.2.250	ns2.host.net	BroadbandONE	16	26.26	-80.191704	0.0910701750	t	f	OK	0
780	216.107.0.4	ns1.nricolo.com	Nunet	16	40.5844	-75.624603	0.0927028660	t	f	OK	0
908	208.66.232.66	ns65.web229.net	IIC Internet	16	34.406502	-118.4015	0.0617890360	t	f	OK	0
931	64.135.1.20	dns1.host.net	BroadbandONE	16	26.26	-80.191704	0.0867500310	t	f	OK	0
938	216.167.223.12	dns1.chaska.net	CITY OF CHASKA CHASKANET	16	44.805401	-93.624802	0.0823369030	t	f	OK	0
949	64.246.13.51	ns1.jagersysllc.net	Everyones Internet	16	29.9342	-95.405701	0.0609819890	t	f	OK	0
1036	207.69.188.172	optns2.earthlink.net	EarthLink	16	38	-97	0.0772910120	t	f	OK	0
1136	206.131.229.9	ns1.minerva.net	Minerva Network Systems	16	38.903599	-77.451202	0.0930140020	t	f	OK	0
1089	207.15.68.164	osscdns01.spcsdns.net	Sprint	16	38	-97	0.0659151080	t	f	OK	0
882	66.112.235.200	ns4.apogeenet.net	Apogee Telecom	16	30.303699	-97.7696	0.0637829300	t	f	OK	0
916	64.158.44.7	ns2.goozie.com	SKL Services	16	30.074301	-95.422798	0.0617480280	t	f	OK	0
1120	204.9.123.122	ns1.digitalteleport.com	LightCore, a CenturyTelCompany	16	32.4492	-93.783501	0.0741610530	t	f	OK	0
804	151.164.1.8	dns1.rcsntx.sbcglobal.net	SBC Internet Services	16	38	-97	0.0569500920	t	f	OK	0
922	64.94.33.33	ns2.chg.pnap.net	Internap Network Services	16	33.751598	-84.391502	0.0644228460	t	f	OK	0
974	209.132.160.4	ns1.ccrtc.com	CCRTC	16	39.573601	-86.862198	0.0768911840	f	f	No Response	0
862	207.5.128.10	ns2.gwi.net	GWI	16	43.496101	-70.488602	0.0938408370	f	f	Timed Out	0
1083	209.191.228.168	NS2.knight.com	Knight Capital Group	16	40.724499	-74.062103	0.0914111140	t	f	OK	0
813	207.69.188.185	rns1.earthlink.net	EarthLink	16	38	-97	0.0776989460	t	f	OK	0
1000	64.31.64.1	ns1.wcnet.org	Wood County Internet Council	16	41.398899	-83.6539	0.0770559310	t	f	OK	0
784	4.79.132.219	ns1.sotelips.net	Level 3 Communications	16	38	-97	0.0667099950	t	f	OK	0
919	199.80.64.202	ns2.state.lib.la.us	State Library Of Louisiana	16	30.501699	-90.472298	0.0701830390	t	f	OK	0
838	204.9.122.102	ns2.digitalteleport.com	LightCore, a CenturyTelCompany	16	38.6385	-90.302597	0.0734479430	t	f	OK	0
927	76.10.192.201	ns3.bluemilenetworks.com	Bluemile	16	39.965302	-83.023499	0.0781800750	t	f	OK	0
858	144.202.244.42	ns1.baltimoretechnologypark.com	TransSys	16	39.135799	-76.872002	0.0899751190	t	f	OK	0
1057	216.17.3.121	ns1.usinternet.com	Usinternet Corp	16	44.9823	-93.306297	0.0751760010	t	f	OK	0
920	216.185.192.1	ns1.bhi.com	Black Hole Internet	16	44.898899	-93.625702	0.0777719020	t	f	OK	0
1024	207.59.153.242	cachens2.paetec.net	Comfort Inn UNCC	16	35.123199	-80.934303	0.0798358920	t	f	OK	0
1093	64.132.61.131	ns1.gosiger.com	Time Warner Telecom	16	39.7449	-84.178596	0.0785570140	t	f	OK	0
904	207.190.94.2	ns1.mwt.net	Midwest Telnet (mwt.net)	16	43.588402	-90.4319	0.1160349800	t	f	OK	0
889	63.228.23.5	ns1.subrad.com	Qwest Communications	16	44.9823	-93.306297	0.0760369300	t	f	OK	0
901	24.154.1.5	ns2.zbzoom.net	Armstrong Cable Services	16	40.876801	-80.261101	0.0802829270	t	f	OK	0
850	64.40.72.25	dns1.glbgil.grics.net	Madison River Communications	16	40.695499	-89.429298	0.0808370110	t	f	OK	0
935	64.218.170.254	ns1.megapath.net	TManage	16	31.350401	-102.3881	0.0669829850	t	f	OK	0
907	209.183.48.20	ns1.mymmode.com	Cingular Wireless II, LLC	16	38	-97	0.0612690450	t	f	OK	0
1116	208.116.30.21	ns1.fbyne.com	Solar VPS LLC	16	40.825901	-74.107903	0.0854909420	t	f	OK	0
960	205.172.19.79	dns2.oceanic.net	Oceanic Corporation	16	21.4701	-157.9637	0.0756399630	t	f	OK	0
808	216.126.204.8	ns1.ispnetbilling.com	SISNA	16	40.682899	-111.5262	0.0898661610	t	f	OK	0
1019	24.89.0.21	ns4.myactv.net	Antietam Cable Television	16	39.653999	-77.643204	0.0920341010	t	f	OK	0
802	216.242.0.34	ns1.webunited.net	Continental Broadband Florida, Inc DBA WebUnited	16	26.5245	-80.110603	0.0876350400	t	f	OK	0
872	205.244.226.2	ns1.gpcinet.com	G. PAUL AND COMPANY	16	41.990898	-88.320099	0.0778989790	t	f	OK	0
948	65.210.29.34	dns1.argosinc.com	SERVICE ARGOS	16	38.815601	-77.045303	0.0929930210	t	f	OK	0
909	64.61.99.2	ns1.safetynetaccess.com	Safety NetAccess Inc	16	40.359402	-74.0364	0.0912070270	t	f	OK	0
1030	192.124.153.2	ns1.bryant.edu	Bryant University	16	41.903999	-71.526604	0.0906288620	t	f	OK	0
1028	66.250.192.11	ns1.rapiddsl.net	Cogent Communications	16	38.987801	-77.126198	0.0894439220	t	f	OK	0
848	66.118.80.5	ns3.citynet.net	CityNet	16	39.284401	-80.230698	0.0803000930	f	f	Timed Out	0
884	207.22.166.61	NS2.ij.net	Internet Junction Corporation	16	28.0182	-82.6119	0.0902678970	t	f	OK	0
1130	64.254.99.13	ns3.virtela.net	VIRTELA COMMUNICATIONS	16	39.623699	-104.8738	0.0915799140	t	f	OK	0
1098	67.216.35.25	authdns01.gafachi.com	Gafachi	16	43.115398	-77.557602	0.0942199230	t	f	OK	0
830	216.147.131.33	ns1.globalsat.net	Lyman Bros	16	0	0	0.0963552000	t	f	OK	0
1102	64.120.189.134	ns2.sitespot.net	Teligent	16	38.9841	-77.382698	0.0974328520	t	f	OK	0
847	209.130.139.2	dns2.roc.gblx.net	2506.GLCRI9	16	38	-97	0.1010859000	t	f	OK	0
918	146.94.1.3	ns1.wilkes.edu	Wilkes University	16	41.244801	-75.889603	0.0953300000	t	f	OK	0
820	72.51.175.10	dns1.newwavecomm.net	New Wave Communications	16	37.326801	-87.469597	0.1008040900	t	f	OK	0
821	207.190.94.129	ns2.mwt.net	Midwest Telnet (mwt.net)	16	43.588402	-90.4319	0.1013321900	f	f	Timed Out	0
1064	216.37.1.19	ns1.nframe.com	nFrame	16	39.806198	-86.140701	0.1127600700	t	f	OK	0
1069	216.194.28.69	ns2.metconnect.net	MetTel	16	40.7229	-73.8424	0.0882949830	t	f	OK	0
1066	216.169.160.2	ns1.ceinetworks.com	D&E; Communications	16	40.175701	-76.165802	0.1004371600	t	f	OK	0
971	134.29.1.8	NS2.MNSU.EDU	Minnesota State University, Mankato	16	44.658699	-93.597504	0.0936820510	f	f	No Response	0
819	72.51.175.11	dns2.newwavecomm.net	New Wave Communications	16	37.326801	-87.469597	0.1017789800	t	f	OK	0
915	66.7.197.110	ns2.handlehost.com.br	HostDime.com	16	28.5445	-81.370598	0.0863869190	t	f	OK	0
1037	209.213.72.9	ns1.bos.ma.meganet.net	Meganet Communications	16	41.873501	-71.373398	0.0983910560	t	f	OK	0
1072	64.20.26.17	dns1.homesc.com	Home Telephone Company	16	33.118	-80.038399	0.0975720880	t	f	OK	0
1043	216.54.2.10	ns1.coxfiber.net	Cox Business Services	16	36.806099	-76.061203	0.1035869100	t	f	OK	0
897	216.162.160.248	ns2.slinternet.com	WPTI TELECOM LLC	16	39.011002	-119.8415	0.1392211900	f	f	Timed Out	0
1010	69.24.112.10	ns2.ffni.com	FAIRNET LLC	16	40.773499	-86.715401	0.0886120800	t	f	OK	0
1059	209.130.136.2	dns1.ROC.gblx.net	2506.GLCRI9	16	38	-97	0.1015410400	t	f	OK	0
849	66.118.80.4	ns1.wvinternetservices.com	CityNet	16	39.284401	-80.230698	0.0792751310	t	f	OK	0
1104	64.233.128.11	ns2.ritternet.com	RITTER COMMUNICATIONS	16	35.624699	-90.307098	0.0862510200	t	f	OK	0
994	64.20.26.145	dns2.homesc.com	Home Telephone Company	16	33.118	-80.038399	0.0969691280	t	f	OK	0
1134	64.17.101.12	ns2.burlingtonvt.net	Colby Marks	16	44.492901	-73.225304	0.1004788900	t	f	OK	0
1034	206.223.22.1	ns2.nframe.com	nFrame	16	39.973801	-86.176498	0.1129338700	t	f	OK	0
1008	192.88.195.10	ns2.oar.net	OARnet	16	39.988098	-83.044403	0.1020848800	t	f	OK	0
1021	140.186.1.14	ns2.cent.net	Cambridge Entrepreneurial Network	16	42.242901	-71.009804	0.0996780400	t	f	OK	0
936	216.54.2.11	ns2.coxfiber.net	Cox Business Services	16	36.806099	-76.061203	0.1030099400	t	f	OK	0
1096	199.201.159.5	ns2.jlc.net	JLC	16	42.590801	-71.805496	0.1381890800	t	f	OK	0
983	204.8.180.42	ns2.marliness.net	Marlin eSourcing Solutions	16	28.2519	-81.438103	0.0900130270	t	f	OK	0
1124	192.88.193.144	ns1.oar.net	OARnet	16	39.988098	-83.044403	0.1041441000	t	f	OK	0
1105	64.233.128.10	ns1.ritternet.com	RITTER COMMUNICATIONS	16	35.624699	-90.307098	0.0853731630	t	f	OK	0
1111	65.203.109.2	ns1.ectsi.net	Verizon Business	16	33.566299	-101.883	0.0748128890	t	f	OK	0
869	206.231.8.2	ns1.netsync.net	Dunkirk & Fredonia Telephone Company	16	42.408001	-79.324097	0.0940790180	t	f	OK	0
900	206.253.33.130	ns1.pld.com	Pioneer Internet	16	37.652802	-101.316	0.0948081020	t	f	OK	0
828	216.147.131.34	ns2.globalsat.net	Lyman Bros	16	0	0	0.0968680380	t	f	OK	0
1084	209.168.126.3	ns5.argia.net	Argia North America	16	47.694302	-117.454	0.0482711790	t	f	OK	0
888	63.228.23.6	ns2.subrad.com	Qwest Communications	16	44.9823	-93.306297	0.0746710300	f	f	Timed Out	0
924	66.181.32.11	ns2.ip.us.tachyon.net	Tachyon, Inc. - Terrestrial Services	16	32.901402	-117.2079	0.0342540740	t	f	OK	0
923	66.181.32.10	ns1.ip.us.tachyon.net	Tachyon, Inc. - Terrestrial Services	16	32.901402	-117.2079	0.0327978130	t	f	OK	0
1112	216.241.132.2	ns2.kconlineinc.com	KC Online	16	41.272099	-85.8554	0.0749769210	t	f	OK	0
978	207.178.128.20	ns1.iswest.net	INTERNET SPECIALTIES WEST	16	34.418701	-118.4331	0.0314109330	t	f	OK	0
846	66.135.0.10	ns0.broadbandip.net	Broadband IP	16	30.383801	-91.059799	0.0688760280	t	f	OK	0
1032	64.126.155.1	NS2.fsr.com	FIRST STEP INTERNET	16	46.717201	-116.9179	0.0597159860	t	f	OK	0
1007	65.220.16.14	ns1.sysgrp.net	Verizon Business	16	35.972401	-83.959503	0.1163170300	t	f	OK	0
856	64.193.228.2	ns2.digis.net	WLC Wireless Inc. DBA WAVEPOINT	16	45.518398	-122.6554	0.0622198580	t	f	OK	0
873	198.252.166.8	ns2.gestalttechnology.com	Gestalt Technology, LLC	16	35.738701	-82.054802	0.0840470790	t	f	OK	0
1087	216.17.3.122	ns3.usinternet.com	Usinternet Corp	16	44.9823	-93.306297	0.0756709580	t	f	OK	0
899	198.252.201.5	ns2.pinn.net	Pinnacle On-Line	16	36.846298	-76.0979	0.1071970500	t	f	OK	0
1022	66.70.115.60	ns2.eltex.net	Andrei Lebedev	16	40.7458	-74.032097	0.0849928860	t	f	OK	0
928	63.251.62.1	ns1.sfo.pnap.net	InterNAP Network Services, PNAP-SFO	16	37.7645	-122.4294	0.0182609560	t	f	OK	0
951	216.135.31.130	ns2.muhlon.com	MUHLENBERG-ONLINE-INC	16	38.243198	-87.533096	0.1045429700	t	f	OK	0
1075	64.191.100.53	fwddns01.hostnoc.net	NetWork Operations Center	16	41.3731	-75.683701	0.0974500180	t	f	OK	0
1115	66.134.135.131	ns1.prod-sol.com	Covad Communications	16	40.0798	-75.2855	0.0987639430	t	f	OK	0
803	8.5.244.5	dns01.sjc01.acndigital.net	American Communication Network (ACN.Inc)	16	42.5065	-83.349197	0.0176129340	t	f	OK	0
1129	64.191.100.61	fwddns02.hostnoc.net	NetWork Operations Center	16	41.3731	-75.683701	0.0974709990	t	f	OK	0
790	64.119.60.5	ns1.speednet-dns.com	SpeedNet, LLC	16	43.4809	-83.968201	0.0767300130	t	f	OK	0
1091	208.59.247.45	ns2.dns.rcn.net	RCN Corporation	16	38	-97	0.0642549990	t	f	OK	0
903	63.227.110.2	ns3.cellularoneonline.com	Qwest Communications	16	47.677898	-117.3793	0.0683507920	t	f	OK	0
896	207.70.128.240	ns8.consolidated.net	Consolidated Communications	16	30.273701	-95.414597	0.0781478880	t	f	OK	0
892	207.217.77.82	do-not-use-rns2.earthlink.net	EarthLink	16	38	-97	0.0778729920	t	f	OK	0
962	216.52.65.33	ns2.phi.pnap.net	InterNAP Network Services, PNAP-PHI	16	39.996799	-75.148499	0.0880401130	t	f	OK	0
791	157.134.160.1	ns4.wcnet.org	Wood County Internet Council	16	41.398899	-83.6539	0.0904409890	t	f	OK	0
1042	64.80.203.194	dns1-phi.paetec.net	PaeTec Backbone Connections	16	40.0979	-75.107803	0.0887618060	t	f	OK	0
796	64.80.255.240	dns2-roc.paetec.net	PaeTec Communications-Backbone	16	43.100498	-77.426003	0.0793688300	t	f	OK	0
1109	216.52.94.33	ns2.nym.pnap.net	Internap Network Services, PNAP-NYM	16	40.761902	-73.976303	0.0999529360	t	f	OK	0
895	64.140.243.112	ns2.lanlink.net	WorldPath Internet Services	16	43.068699	-70.951698	0.1040868800	t	f	OK	0
913	62.72.60.2	ns2.primusdatacenter.net	Primus Telecommunications	16	38.392601	-92.476402	0.1534621700	t	f	OK	0
1039	156.154.70.1	rdns1.ultradns.net	NEUSTAR	16	38.988098	-77.475502	0.0179889200	t	f	OK	0
976	134.186.254.247	ns5.net.ca.gov	Teale Data Center	16	38.588799	-121.3008	0.0209329130	t	f	OK	0
843	207.111.232.23	ns2.got.net	ICOnetworks	16	37.0448	-122.1021	0.0241961480	t	f	OK	0
1125	204.117.214.10	ns1.sprintlink.net	Sprint	16	38	-97	0.0255100730	t	f	OK	0
1123	64.30.215.129	ns2.linkline.com	LinkLINE Communications	16	34.041599	-118.2988	0.0288879870	t	f	OK	0
912	208.180.42.100	rdns02.suddenlink.net	Suddenlink Communications	16	32.318001	-95.292099	0.0317718980	t	f	OK	0
1076	66.146.0.1	ns1.uia.net	Ultimate Internet Access	16	33.560799	-117.2401	0.0327119830	t	f	OK	0
1044	63.251.161.1	ns1.sef.pnap.net	InterNAP Network Services, PNAP-ACS	16	47.5951	-122.3326	0.0388798710	t	f	OK	0
827	204.95.160.2	ns1.tosa.twtelecom.net	Internet Connect, Inc. Milwaukee	16	43.0508	-88.038101	0.0589139460	t	f	OK	0
867	67.159.206.12	ns1.forona.net	Forona Technologies	16	47.614498	-122.348	0.0339820380	t	f	OK	0
917	216.228.160.36	ns6.bendcable.com	bend cable communications	16	43.964699	-121.341	0.0401289460	t	f	OK	0
905	209.152.32.26	dns1.sya.pcc.edu	Portland Community College	16	45.453499	-122.6988	0.0417559150	t	f	OK	0
996	216.17.128.1	ns1.frii.com	Front Range Internet	16	40.561001	-105.0536	0.0435979370	t	f	OK	0
1002	207.170.3.6	ns1.norlight.net	Norlight Telecommunications	16	43.0606	-88.098099	0.0673689840	t	f	OK	0
991	65.183.98.90	ns1.exceedtech.net	CommuniGroup of Jackson MS	16	35.124199	-89.952103	0.0709390640	t	f	OK	0
1082	64.94.1.1	ns1.acs.pnap.net	InterNAP Network Services, PNAP-ACS	16	33.8004	-84.386497	0.0779840950	t	f	OK	0
982	207.217.120.83	do-not-use-rns3.earthlink.net	EarthLink	16	38	-97	0.0782959460	t	f	OK	0
816	216.52.169.1	ns1.hou.pnap.net	InterNAP Network Services, PNAP-HOU	16	29.775499	-95.415199	0.0608580110	t	f	OK	0
1047	204.69.234.1	udns1.ultradns.net	Internet Media Network	16	33.435699	-111.9171	0.0870149140	f	f	Timed Out	0
810	207.69.188.188	rns1.mcihispeed.net	EarthLink	16	38	-97	0.0763919350	t	f	OK	0
865	69.26.32.200	ns2.virtela.net	VIRTELA COMMUNICATIONS	16	39.996799	-75.148499	0.0176551340	t	f	OK	0
966	66.218.44.5	ns5.dslextreme.com	DSL Extreme	16	34.209301	-118.5752	0.0180900100	t	f	OK	0
1060	208.123.108.21	ns2.smartcomhosting.com	SMARTCOM TELEPHONE, LLC	16	26.2199	-98.238998	0.0684070590	t	f	OK	0
1118	216.131.95.20	ns1.california.net	Black Oak Computers	16	38.947102	-119.9702	0.0181159970	t	f	OK	0
1015	216.106.1.2	ns1.socket.net	Socket Internet Services Corporation	16	38.883202	-91.452103	0.0764830110	t	f	OK	0
1094	199.249.19.1	cache-ns1.verizonbusiness.com	MCI Telecommunications	16	39.033501	-77.483803	0.0772860050	t	f	OK	0
842	216.152.64.201	ns1.webmaster.com	WebMaster, Incorporated	16	37.348598	-121.951	0.0194139480	t	f	OK	0
1062	134.186.254.252	ns1.net.ca.gov	Teale Data Center	16	38.588799	-121.3008	0.0215771200	t	f	OK	0
795	208.25.96.18	ns2.btc-bci.com	Bloomingdale Communications	16	42.377201	-85.966904	0.0782399180	t	f	OK	0
1025	71.41.40.41	ns1.thpl.lib.fl.us	Road Runner Business	16	28.149	-82.469002	0.0800981520	t	f	OK	0
836	216.167.223.22	dns2.chaska.net	CITY OF CHASKA CHASKANET	16	44.805401	-93.624802	0.0827059750	t	f	OK	0
1009	69.28.104.5	ns2.telekenex.com	Telekenex	16	37.548801	-122.3124	0.0232689380	t	f	OK	0
1071	216.52.161.33	ns2.mia.pnap.net	InterNAP Network Services, PNAP-MIA	16	25.761499	-80.2939	0.0880558490	t	f	OK	0
1041	216.242.107.11	ns1.fiberusa.com	Continental Broadband Florida, Inc DBA WebUnited	16	26.528099	-80.110298	0.0909011360	f	f	Timed Out	0
985	216.143.135.12	ns2.nuvisions.net	MST	16	39.123699	-77.405098	0.0909020900	t	f	OK	0
778	137.145.204.10	ns3.csu.net	California State University Network	16	33.797001	-118.0624	0.0270328520	t	f	OK	0
914	204.97.212.10	ns3.sprintlink.net	Sprint	16	38	-97	0.0279729370	t	f	OK	0
1038	192.237.125.2	dns1.info.net	INFONET Services Corporation	16	33.916401	-118.4041	0.0283479690	t	f	OK	0
1080	66.78.202.254	ns1.smartcity.com	Las Vegas Convention Center	16	36.1189	-115.1233	0.0323419570	t	f	OK	0
792	64.151.87.192	ns2.nameident.net	documentdata anstalt	16	37.789799	-122.3942	0.0151450630	t	f	OK	0
1135	208.109.255.38	ns02.cashparking.com	GoDaddy.com	16	33.6119	-111.8907	0.0327949520	t	f	OK	0
993	216.228.160.5	ns5.bendcable.com	bend cable communications	16	43.964699	-121.341	0.0423941610	t	f	OK	0
1050	206.207.94.145	ns8.matraex.com	SolutionPro	16	43.546902	-116.2914	0.0469610690	t	f	OK	0
986	209.97.224.3	ns2.revealsystems.net	REVEAL SYSTEMS	16	39.9147	-105.0809	0.0526909830	t	f	OK	0
840	67.18.92.51	ns0.theshore.net	THEPLANET.COM INTERNET SERVICES	16	32.782501	-96.820702	0.0563218590	t	f	OK	0
825	204.95.160.4	ns2.tosa.twtelecom.net	Internet Connect, Inc. Milwaukee	16	43.0508	-88.038101	0.0576698780	t	f	OK	0
794	216.52.190.33	ns2.dal.pnap.net	InterNAP Network Services, PNAP-DAL	16	32.809799	-96.799301	0.0581870080	t	f	OK	0
782	209.183.48.21	ns2.mymmode.com	Cingular Wireless II, LLC	16	38	-97	0.0620229240	t	f	OK	0
\.


--
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: public; Owner: damian
--

COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
1	propagation	0001_initial	2013-08-03 21:35:27.944708-07
2	propagation	0002_auto__chg_field_dns_responsetime	2013-08-03 21:35:27.986021-07
\.


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_key; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_key; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_key; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_key; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_content_type_app_label_key; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: propagation_countries_pkey; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY propagation_countries
    ADD CONSTRAINT propagation_countries_pkey PRIMARY KEY (id);


--
-- Name: propagation_dns_pkey; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY propagation_dns
    ADD CONSTRAINT propagation_dns_pkey PRIMARY KEY (id);


--
-- Name: south_migrationhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: damian; Tablespace: 
--

ALTER TABLE ONLY south_migrationhistory
    ADD CONSTRAINT south_migrationhistory_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_like; Type: INDEX; Schema: public; Owner: damian; Tablespace: 
--

CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: damian; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: damian; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: damian; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: damian; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: damian; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: damian; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: damian; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_like; Type: INDEX; Schema: public; Owner: damian; Tablespace: 
--

CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: damian; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_like; Type: INDEX; Schema: public; Owner: damian; Tablespace: 
--

CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: propagation_dns_country_id; Type: INDEX; Schema: public; Owner: damian; Tablespace: 
--

CREATE INDEX propagation_dns_country_id ON propagation_dns USING btree (country_id);


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: damian
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: damian
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: damian
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: damian
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: country_id_refs_id_c0c09238; Type: FK CONSTRAINT; Schema: public; Owner: damian
--

ALTER TABLE ONLY propagation_dns
    ADD CONSTRAINT country_id_refs_id_c0c09238 FOREIGN KEY (country_id) REFERENCES propagation_countries(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: damian
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: damian
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: damian
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

