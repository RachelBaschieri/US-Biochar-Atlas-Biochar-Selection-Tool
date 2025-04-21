--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8 (Debian 16.8-1.pgdg120+1)
-- Dumped by pg_dump version 16.8 (Homebrew)

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Biochar feedstock and production conditions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Biochar feedstock and production conditions" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "Feedstock type" text,
    "feedstock details" text,
    pretreatment text,
    "HHT ºC" numeric,
    "production method" text,
    "production equipment" text,
    "residence time (minutes)" numeric,
    "cool or quench" text,
    "particle size " text
);


--
-- Name: CH4; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."CH4" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "Sorbed CH4 (µg CH4 g-1)_mean" double precision,
    "Sorbed CH4 (µg CH4 g-1)_std" double precision
);


--
-- Name: CTO375; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."CTO375" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "Mass Loss (375 C)" double precision,
    "Mass Loss (375 C) std" double precision,
    "% Carbon Loss at 375 C" double precision,
    "% Carbon Loss at 375 C std" double precision,
    "%C_Black Carbon (stable at 375 C)" double precision,
    "%C_Black Carbon (stable at 375 C) std" double precision
);


--
-- Name: CaCO3-eq; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."CaCO3-eq" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "CaCO3eq_mean" double precision,
    "CaCO3eq_STD" double precision,
    "CaCO3lb_1ton" double precision
);


--
-- Name: Crop Nutrients USA; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Crop Nutrients USA" (
    "Num" numeric NOT NULL,
    "State" text,
    "Crop" text,
    "pH_min" numeric,
    "pH_max" numeric,
    "N_upper_rate" numeric,
    "P_upper_rate" numeric,
    "K_upper_rate" numeric,
    "Reference" text
);


--
-- Name: Crop_Fertilizer_Guide; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Crop_Fertilizer_Guide" (
    "Crop" text,
    "pH_min" numeric,
    "pH_max" numeric,
    "pH_opt" numeric,
    "N_low_rate" smallint,
    "N_upper_rate" smallint,
    "P_low_rate" smallint,
    "P_upper_rate" smallint,
    "K_low_rate" smallint,
    "K_upper_rate" smallint,
    "Lime_low_rate" smallint,
    "Lime_upper_rate" smallint,
    "Reference" text,
    "ID" smallint NOT NULL
);


--
-- Name: DOC_DIC_TDN; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."DOC_DIC_TDN" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "Cold DOC mean (mgC/kg)" double precision,
    "cold doc std (mgC/kg)" double precision,
    "Cold DOC CV" double precision,
    "cold DIC mean (mgC/kg)" double precision,
    "cold DIC std (mgC/kg)" double precision,
    "Cold DIC CV" double precision,
    "Cold TDN mean (mgN/kg)" double precision,
    "Cold TDN std (mgN/kg)" double precision,
    "Cold TDN CV" double precision,
    "Hot DOC mean (mgC/kg)" double precision,
    "Hot DOC std (mgC/kg)" double precision,
    "Hot DOC CV" double precision,
    "Hot DIC mean (mgC/kg)" double precision,
    "Hot DIC std (mgC/kg)" double precision,
    "Hot DIC CV" double precision,
    "Hot TDN mean (mgN/kg)" double precision,
    "Hot TDN std (mgN/kg)" double precision,
    "Hot TDN CV" double precision
);


--
-- Name: Extractable Nutrients; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Extractable Nutrients" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "Na_ave" double precision,
    "Na_std" double precision,
    "Nalb_1ton" double precision,
    "K_ave" double precision,
    "K_std" double precision,
    "Klb_1ton" double precision,
    "Mg_ave" double precision,
    "Mg_std" double precision,
    "Mglb_1ton" double precision,
    "Ca_ave" double precision,
    "Ca_std" double precision,
    "Calb_1ton" double precision,
    "S_ave" double precision,
    "S_std" double precision,
    "Slb_1ton" double precision
);


--
-- Name: Extractable P; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Extractable P" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "Extractable_P_mean" double precision,
    "Extractable_P_std" double precision,
    "ExtractablePlbs1ton" double precision
);


--
-- Name: FTIR ; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."FTIR " (
    "ID" smallint NOT NULL,
    "Sample" text,
    peak_wavenumber text,
    fun_group text
);


--
-- Name: H:C ratio; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."H:C ratio" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "H_percent" double precision,
    "Corg_percent" double precision,
    "HCorg_ratio" double precision,
    "Corglb_1ton" double precision
);


--
-- Name: Heavy Metals; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Heavy Metals" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "As_mean" double precision,
    "As_std" double precision,
    "As CV" double precision,
    "Cd_mean" double precision,
    "Cd_std" double precision,
    "Cd CV" double precision,
    "Co_mean" double precision,
    "Co_std" double precision,
    "Co CV" double precision,
    "Cr_mean" double precision,
    "Cr_std" double precision,
    "Cr CV" double precision,
    "Cu_mean" double precision,
    "Cu_std" double precision,
    "Cu CV" double precision,
    "Hg_mean" double precision,
    "Hg_std" double precision,
    "Hg CV" double precision,
    "Mo_mean" double precision,
    "Mo_std" double precision,
    "Mo CV" double precision,
    "Ni_mean" double precision,
    "Ni_std" double precision,
    "Ni CV" double precision,
    "Pb_mean" double precision,
    "Pb_std" double precision,
    "Pb CV" double precision,
    "Se_mean" double precision,
    "Se_std" double precision,
    "Se CV" double precision,
    "Zn_mean" double precision,
    "Zn_std" double precision,
    "Zn_CV" double precision
);


--
-- Name: IC ; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."IC " (
    "ID" smallint NOT NULL,
    "Sample" text,
    "IC % Mean" double precision,
    "IC % St.dev" double precision,
    "IC % CV" double precision
);


--
-- Name: Particle size; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Particle size" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "Particle size class" text,
    ">50mm % sample weight AVE" double precision,
    ">50mm % std" double precision,
    ">50mm % CV" double precision,
    "50-25mm % sample weight AVE" double precision,
    "50-25mm %  std" double precision,
    "50-25mm % CV" double precision,
    "25-16mm % sample weight AVE" double precision,
    "25-16mm % std" double precision,
    "25-16mm % CV" double precision,
    "16-8mm % sample weight AVE" double precision,
    "16-8mm % std" double precision,
    "16-8mm % CV" double precision,
    "8-4mm % sample weight AVE" double precision,
    "8-4mm % std" double precision,
    "8-4mm % CV" double precision,
    "4-2mm % sample weight AVE" double precision,
    "4-2mm % std" double precision,
    "4-2mm % CV" double precision,
    "2-1mm % sample weight AVE" double precision,
    "2-1mm % std" double precision,
    "2-1mm % CV" double precision,
    "1-0.5mm % sample weight AVE" double precision,
    "1-0.5mm % std" double precision,
    "1-0.5mm % CV" double precision,
    "<0.5mm % sample weight AVE" double precision,
    "<0.5mm % std" double precision,
    "<0.5mm % CVd" double precision
);


--
-- Name: Plant Available N; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Plant Available N" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "reported_NH4_mean" double precision,
    "reported_NH4_std" double precision,
    "reported_NO3_mean" double precision,
    "reported_NO3_std" double precision,
    "Plant_available_N" double precision,
    "Plant_available_Nlbs_1ton" double precision
);


--
-- Name: Priorities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Priorities" (
    "ID" numeric NOT NULL,
    priority text
);


--
-- Name: Proximate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Proximate" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "VM CV" double precision,
    "Ash CV" double precision,
    "Fixed C CV" double precision,
    "Moisture CV" double precision,
    "VM_mean_report" double precision,
    "VM_std_report" double precision,
    ash_report double precision,
    ash_std_report double precision,
    fc_report double precision,
    fc_std_report double precision
);


--
-- Name: Sample_IDs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Sample_IDs" (
    id smallint NOT NULL,
    sample text
);


--
-- Name: Sample_addresses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Sample_addresses" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "Address" text,
    "City" text,
    "State" text,
    "Zip_Code" text,
    "Latitude" double precision,
    "Longitude" double precision
);


--
-- Name: Surface Area; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Surface Area" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "SA_mean_m2_g" double precision,
    "SA_std" double precision,
    "SA_CV" double precision,
    "TPV_ave_cm3_g" double precision,
    "Average_pore_diameter_nm" double precision
);


--
-- Name: Total Nutrients; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Total Nutrients" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "Ca_mean (mg/kg)" double precision,
    "Ca_std (mg/kg)" double precision,
    "Ca CV" double precision,
    "K_mean (mg/kg)" double precision,
    "K_std (mg/kg)" double precision,
    "K CV" double precision,
    "Mg_mean (mg/kg)" double precision,
    "Mg_std (mg/kg)" double precision,
    "Mg CV" double precision,
    "Na_mean (mg/kg)" double precision,
    "Na_std (mg/kg)" double precision,
    "Na CV" double precision,
    "S_mean (mg/kg)" double precision,
    "S_std (mg/kg)" double precision,
    "S CV" double precision,
    "P_mean (mg/kg)" double precision,
    "P_std (mg/kg)" double precision,
    "P CV" double precision
);


--
-- Name: Ultimate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Ultimate" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "%C CV" double precision,
    "%N CV" double precision,
    "%H CV" double precision,
    "%S CV" double precision,
    "%O CV" double precision,
    "percentC_mean_reported" double precision,
    "percentC_std_reported" double precision,
    "percentN_mean_reported" double precision,
    "percentN_std_reported" double precision,
    "percentH_mean_reported" double precision,
    "percentH_std_reported" double precision,
    "percentS_mean_reported" double precision,
    "percentS_std_reported" double precision,
    "percentO_mean_reported" double precision,
    "percentO_std_reported" double precision
);


--
-- Name: pH and EC; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."pH and EC" (
    "ID" smallint NOT NULL,
    "Sample" text,
    "pH CV" double precision,
    "EC CV" double precision,
    "pH_reported" double precision,
    "pH_std_report" double precision,
    "EC_reported" double precision,
    "EC_std_report" double precision
);


--
-- Data for Name: Biochar feedstock and production conditions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Biochar feedstock and production conditions" ("ID", "Sample", "Feedstock type", "feedstock details", pretreatment, "HHT ºC", "production method", "production equipment", "residence time (minutes)", "cool or quench", "particle size ") FROM stdin;
1	Soil Carbon Innovations	manure	dairy manure digestate solids	none	700	Hydrothermal Carbonization	none	9.1	water	none
2	EnviraPAC	woody	southern yellow pine	none	600	Pyrolysis	none	30	none	grind
3	NY Carbon	woody	northern white pine	none	800	Pyrolysis	none	60	none	none
4	Green State	woody	pine	chip	649	Pyrolysis	pyrolyzer	45	water	none
5	COrigin Shell	shell	almond shell	none	475	Pyrolysis	pyrolyzer	20	chilled auger	none
6	Acknowledge	woody	alianthus	none	\N	combustion	pit	\N	water	grind
7	GreenC Bedding	manure	calf bedding straw, sawdust, manure	dry	815.6	Gasification	gasifier	15	water	none
8	Pacific	woody	softwood forestry residue	chip	704	Pyrolysis	boiler	10	none	grind
9	COrigin Wood	woody	almond wood	none	475	Pyrolysis	pyrolyzer	20	chilled auger	none
10	GreenC corn cob	herbaceous	corn cob	grind	815.6	Gasification	gasifier	15	water	none
11	Organic mechanics	woody	loblolly pine	chip	593	Gasification	gasifier	20	chilled auger	none
12	Sumner's Farm	woody	autumn olive, bush honeysuckle, evergreen	none	538	Pyrolysis	kiln	60	water	none
13	Earth Foundries	woody	eucalyptus	none	704	Pyrolysis	Tigercat 6050	\N	water	none
14	XLII	woody	waste wood	grind	1000	Gasification	gasifier	\N	water	none
15	Restoration Biofuels	woody	softwood pine and fir	chip	482	Pyrolysis	kiln	30	water	none
16	The Next 150 corn	herbaceous	corn stover	grind	650	Pyrolysis	pyrolyzer	23	chilled auger	none
17	H2	woody	pine	none	1100	Pyrolysis	pyrolyzer	2	N flush	none
18	Locoal	woody	pine	none	704	Pyrolysis	pyrolyzer	2	chilled auger	none
19	The Next 150 coco	herbaceous	coco fiber	grind	650	Pyrolysis	pyrolyzer	23	chilled auger	none
20	Ahualoa	woody	eucalyptus cypress guava	none	\N	Pyrolysis	pit	\N	none	sieve
\.


--
-- Data for Name: CH4; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."CH4" ("ID", "Sample", "Sorbed CH4 (µg CH4 g-1)_mean", "Sorbed CH4 (µg CH4 g-1)_std") FROM stdin;
3	NY Carbon	1.14	0.151409546
1	Soil Carbon Innovations	0.99	0.011317764
2	EnviraPAC	1.5	0.138781917
7	GreenC Bedding	0.15	0.03802731
11	Organic mechanics	0.1	0.023610642
4	Green State	0.49	0.004120065
9	COrigin Wood	1.02	0.186133937
8	Pacific	0.12	0.005770391
10	GreenC corn cob	0.07	0.007813309
12	Sumner's Farm	0.56	0.008159708
5	COrigin Shell	1.68	0.044626348
18	Locoal	0.14	0.006198004
17	H2	0.46	0.020109371
20	Ahualoa	0.62	0.012420751
19	The Next 150 coco	15.92	0.093245865
23	Standard Biochar 	0.31	0.081456956
24	Global Village Institute	3.19	4.144218285
22	Chestnut Acres	0.63	0.020079417
25	Qualterra	0.36	0.042349196
21	Arbor Works	6.63	0.40632013
\.


--
-- Data for Name: CTO375; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."CTO375" ("ID", "Sample", "Mass Loss (375 C)", "Mass Loss (375 C) std", "% Carbon Loss at 375 C", "% Carbon Loss at 375 C std", "%C_Black Carbon (stable at 375 C)", "%C_Black Carbon (stable at 375 C) std") FROM stdin;
3	NY Carbon	47.48666667	11.37677166	61.97333333	7.413887869	38.02666667	7.413887869
1	Soil Carbon Innovations	69.525	2.934493142	97.51	0.410121933	2.49	0.410121933
2	EnviraPAC	97.135	0.6151829	99.985	0.007071068	0.015	0.007071068
7	GreenC Bedding	31.415	0.883883476	99.395	0.134350288	0.605	0.134350288
11	Organic mechanics	89.025	1.718269478	95.945	0.586898628	4.055	0.586898628
4	Green State	88.575	0.007071068	99.925	0.007071068	0.075	0.007071068
9	COrigin Wood	91.635	0.28991378	99.935	0.007071068	0.065	0.007071068
8	Pacific	92.87	0.311126984	90.285	0.021213203	9.715	0.021213203
10	GreenC corn cob	92.515	0.077781746	87.825	0.190918831	12.175	0.190918831
12	Sumner's Farm	76.98	0.127279221	92.475	0.007071068	7.525	0.007071068
5	COrigin Shell	65.87	0.353553391	90.225	0.233345238	9.775	0.233345238
\.


--
-- Data for Name: CaCO3-eq; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."CaCO3-eq" ("ID", "Sample", "CaCO3eq_mean", "CaCO3eq_STD", "CaCO3lb_1ton") FROM stdin;
1	Soil Carbon Innovations	18.46884213	4.183646012	369.3768426
3	NY Carbon	6.475082049	2.078378614	129.50164098
2	EnviraPAC	1.09631404	0.533235633	21.9262808
4	Green State	10.24352	13.16416294	204.8704
9	COrigin Wood	11.47564	12.66173022	229.5128
10	GreenC corn cob	9.990016	11.89405937	199.80032
7	GreenC Bedding	11.387128	3.237363526	227.74256
12	Sumner's Farm	8.079975907	14.28246521	161.59951814
5	COrigin Shell	-0.360216747	16.20200377	-7.20433494
8	Pacific	4.69834211	2.673863168	93.9668422
11	Organic mechanics	9.05355618	2.071748647	181.0711236
15	Restoration Biofuels	3.844849753	6.338395334	76.89699506
20	Ahualoa	17.0204355	30.61784124	340.40871
18	Locoal	17.07349219	32.19501742	341.4698438
17	H2	31.64376142	44.15364896	632.8752284
14	XLII	45.32699542	37.7660358	906.5399084
6	Acknowledge	33.65554853	28.72473527	673.1109706
16	The Next 150 corn	17.9339615	15.72431842	358.67923
19	The Next 150 coco	51.02982647	43.63429789	1020.5965294
13	Earth Foundries	29.70937423	22.28039115	594.1874846
\.


--
-- Data for Name: Crop Nutrients USA; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Crop Nutrients USA" ("Num", "State", "Crop", "pH_min", "pH_max", "N_upper_rate", "P_upper_rate", "K_upper_rate", "Reference") FROM stdin;
22	Arizona	Lettuce	6	7	300	400	0	https://cales.arizona.edu/crop/vegetables/cropmgt/az1099.html#:~:text=Lettuce%20produced%20on%20low%20desert,soil%20texture%2C%20irrigation%20and%20rainfall.
23	Arizona	Pima Cotton (4 bales lint/acre)	5.8	6.5	300	137	528	https://repository.arizona.edu/bitstream/handle/10150/209649/370096-371-377.pdf?sequence=1&isAllowed=y
24	Arizona	Upland Cotton (4 bales lint/acre)	5.8	6.5	300	101	456	https://arizonaag.com/wp-content/uploads/2013/06/management-of-fertilizer-nitrogen-in-arizona-cotton-production.pdf. https://cales.arizona.edu/crops/cotton/soilmgt/nitrogen_management.html. https://repository.arizona.edu/bitstream/handle/10150/209649/370096-371-377.pdf?sequence=1&isAllowed=y
25	Arizona	Cantaloupes	6	6.5	50	120	120	https://extension.uga.edu/publications/detail.html?number=B1179&title=cantaloupe-and-specialty-melons#:~:text=For%20seeded%20or%20transplanted%20cantaloupes,below%20the%20seeds%20or%20roots.
26	Arizona	Carrots	6	7	50	250	200	https://www.cdfa.ca.gov/is/ffldrs/frep/FertilizationGuidelines/Carrot.html
27	Arizona	Peppers	7	7.5	5	10	10	https://extension.arizona.edu/sites/extension.arizona.edu/files/attachment/May%20-%20Peppers.pdf
28	Arkansas	Corn	5.8	7	300	240	240	https://www.uaex.uada.edu/publications/pdf/mp437/chap4.pdf,,,,https://www.goldenharvestseeds.com/agronomy/articles/soil-ph-for-corn#:~:text=The%20ideal%20soil%20pH%20for,for%20a%20corn%2Fsoybean%20rotation.
29	Arkansas	Sorghum	6	7.5	150	60	275	https://www.uaex.uada.edu/publications/pdf/mp297/MP297.pdf
30	Arkansas	Rice	6	7	150	70	120	https://www.uaex.uada.edu/publications/pdf/mp192/mp192.pdf
31	Arkansas	Wheat	5	6.9	45	51	176	https://www.uaex.uada.edu/publications/pdf/mp404/chapter5wheat.pdf
32	California	Almonds	6.5	8	27.9	9	200	https://www.cdfa.ca.gov/is/ffldrs/frep/FertilizationGuidelines/Almonds.html
33	California	Grapes	5	8	60	180	35	https://www.cdfa.ca.gov/is/ffldrs/frep/FertilizationGuidelines/Grapevines.html
34	California	Lettuce	6	6.5	20	20	110	https://www.cdfa.ca.gov/is/ffldrs/frep/FertilizationGuidelines/Lettuce.html#:~:text=For%20lettuce%20planted%20in%20winter,with%20marketable%20heads%20%5BP8%5D.
35	California	Walnuts	6	7	20	11	0	https://www.cdfa.ca.gov/is/ffldrs/frep/FertilizationGuidelines/Walnut.html
36	California	Rice	5.5	6.5	190	50	35	https://www.cdfa.ca.gov/is/ffldrs/frep/FertilizationGuidelines/Rice.html
37	California	Avocados	6	6.5	15	5	5	https://coststudyfiles.ucdavis.edu/uploads/cs_public/b4/3d/b43d58d9-1e91-4a3e-80f9-a2edb14958b0/2020avocadohighdensitysandiegocounty.pdf
38	California	Pistachios	6	7.5	56	8.3	55	https://www.cdfa.ca.gov/is/ffldrs/frep/FertilizationGuidelines/Pistachio.html
39	Colorado	Irrigated Hay (new seedling)	6.5	6.8	80	60	60	https://extension.colostate.edu/topic-areas/agriculture/fertilizing-cool-season-grasses-and-grasslegume-mixtures-0-522/
40	Colorado	Irrigated Hay (Established stands)	6.5	6.8	100	60	60	https://extension.colostate.edu/topic-areas/agriculture/fertilizing-cool-season-grasses-and-grasslegume-mixtures-0-522/
41	Colorado	Dryland Hay (new seedling)	6.5	6.8	0	40	60	https://extension.colostate.edu/topic-areas/agriculture/fertilizing-cool-season-grasses-and-grasslegume-mixtures-0-522/
42	Colorado	Dryland Hay (Established stands)	6.5	6.8	60	40	60	https://extension.colostate.edu/topic-areas/agriculture/fertilizing-cool-season-grasses-and-grasslegume-mixtures-0-522/
43	Colorado	Barley	6	8.5	110	80	80	https://ipmdata.ipmcenters.org/documents/cropprofiles/CObarley.pdf
44	Colorado	Potatoes	5	6	10	10	10	https://extension.colostate.edu/topic-areas/yard-garden/potatoes-in-the-home-garden-7-617/
45	Colorado	Sugar Beets	6	8	170	100	80	https://extension.colostate.edu/topic-areas/agriculture/fertilizing-sugar-beets-0-542/
46	Colorado	Sunflowers	6.2	6.5	65	30	50	https://www.sunflowernsa.com/uploads/3/high_plains_production_handoobk_mf2384.pdf
47	Colorado	Sorghum (yield:40 bu/a)	5.6	6.5	30	50	75	https://www.sorghumcheckoff.com/wp-content/uploads/2021/11/2018_04_17_SWHighPlainsGuide_New-Logo.pdf
48	Colorado	Beans	6	7	65	40	40	https://extension.colostate.edu/topic-areas/agriculture/fertilizing-dry-beans-0-539/
49	Connecticut	Corn	5.8	7	250	250	250	https://extension.unh.edu/resource/growing-sweet-corn-fact-sheet#:~:text=Aged%20manure%20or%20compost%20incorporated,of%2010%2D10%2D10.
50	Connecticut	Soybeans	6	7	179	15	57	https://icl-growingsolutions.com/en-us/agriculture/crops/soybean/#:~:text=pH%3A%20Soybeans%20prefer%20slightly%20acidic,warm%20temperatures%20for%20optimal%20growth.
51	Connecticut	Potatoes	6	6.5	300	40	320	https://potatoassociation.org/wp-content/uploads/2014/04/A_ProductionHandbook_Final_000.pdf
52	Connecticut	Grains (Barley)	6.5	7	40	27	19	https://soiltesting.cahnr.uconn.edu/liming-and-fertilizing-forage-crops-in-connecticut/
53	Connecticut	Grains (Oats)	6	7	40	27	19	https://soiltesting.cahnr.uconn.edu/liming-and-fertilizing-forage-crops-in-connecticut/
54	Delaware	Corn	5.8	7	30	80	110	https://www.udel.edu/content/dam/udelImages/canr/pdfs/extension/environmental-stewardship/nutrient-recommendations/UD_Extension_Recommended_2020_Agronomic_Crops_All.pdf
55	Delaware	Soybeans	6	7	0	110	100	https://www.udel.edu/content/dam/udelImages/canr/pdfs/extension/factsheets/AGR-Soybean_Full.pdf
56	Delaware	Wheat	5.8	6.5	120	140	140	https://www.udel.edu/content/dam/udelImages/canr/pdfs/extension/factsheets/AGR-Wheat.pdf
57	Delaware	Hay	6.8	7	60	120	180	https://www.udel.edu/content/dam/udelImages/canr/pdfs/extension/environmental-stewardship/nutrient-recommendations/UD_Extension_Recommended_2020_CSG_Perennial_Established_Hay_all.pdf
58	Delaware	Barley	6	8.5	30	140	140	https://www.udel.edu/content/dam/udelImages/canr/pdfs/extension/factsheets/AGR-Barley.pdf
59	Delaware	Potatoes	5.5	6	220	30	300	https://www.uidaho.edu/extension/nutrient-management/crop#:~:text=Potatoes%20have%20high%20nutrient%20demands,typical%20yield%20for%20southern%20Idaho.
60	Florida	Sugarcane	6	6.5	220	75	250	https://edis.ifas.ufl.edu/publication/SC028
61	Florida	Corn	5.8	7	40	45	240	https://edis.ifas.ufl.edu/publication/AG202
62	Florida	Peanuts	6	6.5	0	100	100	https://ipmdata.ipmcenters.org/documents/cropprofiles/Flpeanuts2007.pdf
63	Florida	Watermelons	6	8	150	100	120	https://bmp.ifas.ufl.edu/crop-recommendations/watermelon/
64	Florida	Bell Peppers	5.5	7.5	175	160	160	https://ucanr.edu/sites/nm/files/76616.pdf
65	Florida	Strawberries	5.3	6.5	175	120	150	https://bmp.ifas.ufl.edu/crop-recommendations/strawberry/
66	Georgia	Corn	6	6.5	70	30	192	https://grains.caes.uga.edu/content/dam/caes-subsite/grains/docs/corn/2021-Corn-Production-Guide.pdf
67	Georgia	Peanuts	6	6.5	0	30	60	https://peanuts.caes.uga.edu/content/dam/caes-subsite/peanuts/docs/2020/UGA-Peanut-Quick-Reference-Guide-2020.pdf
68	Georgia	Soybeans	6	6.8	0	70	100	https://grains.caes.uga.edu/content/dam/caes-subsite/grains/docs/soybean/2021-Soybean-Production-Guide.pdf
69	Georgia	Sorghum	5.6	6.5	144	80	144	https://site.extension.uga.edu/colquittag/files/2018/04/Georgia-Grain-Sorghum-Production-Quick-Guide.pdf
70	Hawaii	Sugarcane	5	8.5	178	80	142	https://www.fao.org/land-water/databases-and-software/crop-information/sugarcane/en/
71	Hawaii	Pineapples (23,759 plants/acre)	4.5	5.5	454.48	172	399	https://www.ctahr.hawaii.edu/oc/freepubs/pdf/f_n-7.pdf
72	Hawaii	Macademia Nuts (trunk diameter 3in; 300 trees)	5	6.5	45	45	45	https://www.ctahr.hawaii.edu/oc/freepubs/pdf/B-121.pdf
73	Hawaii	Macademia Nuts (trunk diameter 15in; 300 trees)	5	6.5	153	153	230	https://www.ctahr.hawaii.edu/oc/freepubs/pdf/B-121.pdf
74	Hawaii	Bananas (application rate per year)	6	6.5	535	267	980	https://www.haifa-group.com/success-stories/advantages-using-multi-k-fertilizer-growing-banana-trees
75	Idaho	Potatoes	5.8	7.5	180	320	550	http://westernagresearch.com/docs/University_of_Idaho_Potato_Nutrient_Guides.pdf. https://objects.lib.uidaho.edu/uiext/uiext25485.pdf. https://www.almanac.com/plant/potatoes
76	Idaho	Winter Wheat (100 bushels/acre)	6	6.5	250	60	80	https://www.uidaho.edu/-/media/uidaho-responsive/files/extension/publications/cis/cis0453.pdf?la=en&rev=b44623288acd433c84e9a858fdf48c65
77	Idaho	Spring Barley (110 bushels)	5.2	8	211	60	80	https://www.uidaho.edu/-/media/UIdaho-Responsive/Files/Extension/publications/cis/cis0920.pdf?la=en
78	Idaho	Alfalfa	6.5	7.5	0	60	90	https://www.uidaho.edu/-/media/UIdaho-Responsive/Files/Extension/publications/cis/cis0447.pdf?la=en
79	Idaho	Corn	5.8	6.2	180	120	240	https://www.uidaho.edu/-/media/UIdaho-Responsive/Files/Extension/publications/pnw/pnw0615.pdf?la=en
80	Idaho	Sugar Beets	6	6.5	150	280	210	https://www.uidaho.edu/-/media/UIdaho-Responsive/Files/Extension/publications/bul/bul935.pdf?la=en&hash=28DE3B68F925301A69A7CDD97CEA4BB836B589F5
81	Idaho	Oats	5.5	7	87	60	80	https://www.uidaho.edu/-/media/uidaho-responsive/files/extension/publications/cis/cis1135.pdf?la=en&rev=3867c3a7dd094b77a50b18ad91f9a351
82	Idaho	Beans	6	7	90	160	200	https://objects.lib.uidaho.edu/uiext/uiext26873.pdf
83	Illinois	Corn (180 bushels/acre)	6	6.5	243	99	50.4	https://efotg.sc.egov.usda.gov/references/public/IL/TechNoteIL_18Final.pdf
84	Illinois	Soybeans (70 bushels/acre)	6	6.5	243	77	168	http://extension.cropsciences.illinois.edu/handbook/pdfs/chapter08.pdf. https://farmdoc.illinois.edu/field-crop-production/crop_production/do-soybeans-need-n-fertilizer.html. https://www.ilga.gov/ftp/JCAR/AdminCode/035/03500391ZZ9996bR.html
85	Illinois	Wheat (80 bushels/acre)	6	7.5	125	72	24	http://extension.cropsciences.illinois.edu/handbook/pdfs/chapter08.pdf. https://farmdoc.illinois.edu/field-crop-production/winter-wheat-update.html
86	Illinois	Timothy Hay (2.5 tons/acre)	6	6.5	95	35	157.5	https://www.ilga.gov/ftp/JCAR/AdminCode/035/03500391ZZ9996bR.html
87	Illinois	Alfalfa (4.1 tons)	6	6.5	205	41	246	http://extension.cropsciences.illinois.edu/handbook/pdfs/chapter08.pdf. https://libsysdigi.library.illinois.edu/OCA/Books2012-05/growingalfalfain349burl/growingalfalfain349burl.pdf
88	Illinois	Oats (70 bushels/acre)	5.5	7	80	26.6	14	http://extension.cropsciences.illinois.edu/handbook/pdfs/chapter08.pdf, https://www.nrcs.usda.gov/sites/default/files/2022-09/OatsForFall-SpringGrazing.pdf
89	Illinois	Barley (72.4)	6	6.5	108.6	39.82	72.4	https://www.ilga.gov/ftp/JCAR/AdminCode/035/03500391ZZ9996bR.html
90	Illinois	Corn silage (20 tons/acre)	6	6.5	150	54	140	http://extension.cropsciences.illinois.edu/handbook/pdfs/chapter08.pdf
91	Illinois	Corn stover (3 dry tons/acre)	6	6.5	150	21	90	http://extension.cropsciences.illinois.edu/handbook/pdfs/chapter08.pdf
92	Indiana	Corn (150 bushel/acre)	6	6.5	120	57	37	https://soilsextension.webhosting.cals.wisc.edu/wp-content/uploads/sites/68/2014/02/A3340.pdf
93	Indiana	Soybean	6	6.5	0	75	140	https://www.extension.purdue.edu/extmedia/AY/AY-9-32.pdf
94	Indiana	Wheat	6.8	7	50	90	90	https://www.extension.purdue.edu/extmedia/AY/AY-244-W.html
95	Indiana	Alfalfa	6.5	6.8	50	115	300	https://www.extension.purdue.edu/extmedia/AY/AY-9-32.pdf
96	Indiana	Tobacco	5.8	6.5	90	75	220	https://www.haifa-group.com/how-provide-tobacco-plant-required-nutrients
97	Indiana	Potatoes	6	6.5	104	104	104	https://www.purdue.edu/hla/sites/yardandgarden/patience-for-planting-potatoes/
98	Iowa	Corn (Grain) (210 bushels/acre)	6	6.5	208	120	145	https://store.extension.iastate.edu/Product/A-General-Guide-for-Crop-Nutrient-and-Limestone-Recommendations-in-Iowa-PDF. https://crops.extension.iastate.edu/cropnews/2022/04/considerations-spring-preplant-nitrogen-application-corn-high-fertilizer-prices#:~:text=Optimum%20average%20N%20generally%20rates,(137%20to%20156%20pounds).
99	Iowa	Soybeans (70 bushels/acre)	6	6.5	294	100	145	https://store.extension.iastate.edu/Product/A-General-Guide-for-Crop-Nutrient-and-Limestone-Recommendations-in-Iowa-PDF. https://crops.extension.iastate.edu/encyclopedia/nutrient-requirements-soybean
100	Iowa	Wheat (55 bushels/acre)	6.8	7	71.5	80	85	https://store.extension.iastate.edu/Product/A-General-Guide-for-Crop-Nutrient-and-Limestone-Recommendations-in-Iowa-PDF
101	Iowa	Alfalfa	6.5	6.8	180	120	290	https://store.extension.iastate.edu/Product/A-General-Guide-for-Crop-Nutrient-and-Limestone-Recommendations-in-Iowa-PDF. https://crops.extension.iastate.edu/blog/aaron-saeugling-shelby-gruss/forage-fertilization-considerations
102	Iowa	Oats (80 bushels/acre)	5.5	7	60	70	75	https://store.extension.iastate.edu/Product/A-General-Guide-for-Crop-Nutrient-and-Limestone-Recommendations-in-Iowa-PDF. https://www.iowadnr.gov/Portals/idnr/uploads/afo/rules/Ch65%20Tbl4%20(n)%2012.14.16.pdf
103	Iowa	Sunflower (2,000lb seed/acre)	6	7.2	100	75	95	https://store.extension.iastate.edu/Product/A-General-Guide-for-Crop-Nutrient-and-Limestone-Recommendations-in-Iowa-PDF. https://www.extension.iastate.edu/alternativeag/sunflower#:~:text=Sunflower%20has%20modest%20fertility%20needs,about%2080%20to%20100%20lbs.
104	Kansas	Wheat (Irrigated) (40 bushels/acre)	6.8	7	70	60	60	https://bookstore.ksre.ksu.edu/pubs/wheat-production-handbook_C529.pdf
105	Kansas	Corn (60 bushels/A)	6	6.5	96	55	70	https://bookstore.ksre.ksu.edu/pubs/corn-production-handbook_C560.pdf
106	Kansas	Corn (220 bushels/A)	6	6.5	352	80	100	https://bookstore.ksre.ksu.edu/pubs/corn-production-handbook_C560.pdf
107	Kansas	Soybeans	6	7	0	65	70	https://bookstore.ksre.ksu.edu/pubs/soybean-production-handbook_C449.pdf
108	Kansas	Sorghum (Irrigated) (100 bushels/acre)	5.6	6.5	125	70	100	https://bookstore.ksre.ksu.edu/pubs/grain-sorghum-production-handbook_C687.pdf
109	Kansas	Sorghum (Non-irrigated) (100 bushels/acre)	5.6	6.5	125	60	80	https://bookstore.ksre.ksu.edu/pubs/grain-sorghum-production-handbook_C687.pdf
110	Kansas	Sunflowers	6.2	6.5	65	30	50	https://www.sunflowernsa.com/uploads/3/high_plains_production_handoobk_mf2384.pdf
111	Kansas	Alfalfa(New Seedling, irrigated, entire state)	6.5	7.5	0	120	140	https://bookstore.ksre.ksu.edu/download/alfalfa-production-handbook_C683
112	Kentucky	Corn (200 bushels/acre)	5.5	6.5	200	200	120	https://publications.ca.uky.edu/sites/publications.ca.uky.edu/files/id139.pdf
113	Kentucky	Soybeans	6	6.5	0	120	150	https://publications.ca.uky.edu/sites/publications.ca.uky.edu/files/ID249.pdf
114	Kentucky	Wheat (lb/bushel)	6	7	1.2	0.5	0.3	https://publications.ca.uky.edu/sites/publications.ca.uky.edu/files/ID125.pdf
115	Kentucky	Barley	6	6.5	100	80	70	https://fw.ky.gov/Wildlife/Documents/annualgrains[1].pdf
116	Kentucky	Canola	6	7	120	120	80	https://ipmdata.ipmcenters.org/documents/cropprofiles/KYcanola.pdf
117	Louisiana	Rice	5	7.5	180	60	60	https://www.lsuagcenter.com/~/media/system/9/0/e/9/90e93160aba5daccea90c6d955299f74/pub2331riceproductionhandbook2014completebook.pdf
118	Louisiana	Soybeans	6	7	0	80	80	https://www.lsuagcenter.com/articles/page1618597092615
119	Louisiana	Sugarcane - plant cane	5.8	7	80	50	120	https://www.lsuagcenter.com/nr/rdonlyres/807e6478-e556-44a8-8440-16a2cc4bfd4c/94894/sugarcaneproductionhandbook.pdf
120	Louisiana	Sugarcane -stubble	5.8	7	100	60	140	https://www.lsuagcenter.com/nr/rdonlyres/807e6478-e556-44a8-8440-16a2cc4bfd4c/94894/sugarcaneproductionhandbook.pdf
121	Louisiana	Hay	6.5	6.8	400	140	400	https://www.lsuagcenter.com/NR/rdonlyres/2015F4F4-F9F8-483C-B5B4-1D34D408D209/474/FertilizingSummerHay.pdf
122	Louisiana	Sorghum (Upland soils)	5.8	6.5	125	60	60	https://www.lsuagcenter.com/profiles/jydarraga/articles/page1677685905196
123	Louisiana	Sorghum (alluvial soil)	5.8	6.5	150	60	60	https://www.lsuagcenter.com/profiles/jydarraga/articles/page1677685905196
124	Maine	Timothy Hay	5.6	7	50	50	70	https://bpb-us-e1.wpmucdn.com/blogs-dev.cornell.edu/dist/e/1628/files/2016/03/Forage-Grasses-284frdd.pdf. https://extension.umaine.edu/publications/2265e/#:~:text=If%20you%20haven't%20had,germination%20for%20better%20nutrient%20use.
125	Maine	Potatoes	5.3	6	130	130	130	https://extension.umaine.edu/publications/2077e/
126	Maine	Barley	6	6.5	45	90	90	https://efotg.sc.egov.usda.gov/references/public/ME/potato.pdf
127	Maryland	Corn	6	6.8	140	135	180	https://mda.maryland.gov/resource_conservation/Documents/consultant_information/I-B1%20p1-15%20s6.pdf
128	Maryland	Soybeans	6.3	6.5	0	120	125	https://mda.maryland.gov/resource_conservation/Documents/consultant_information/I-B1%20p1-15%20s6.pdf
129	Maryland	Wheat	6	7	100	100	100	https://mda.maryland.gov/resource_conservation/Documents/consultant_information/I-B1%20p1-15%20s6.pdf
130	Maryland	Hay	6.5	6.8	30	205	295	https://mda.maryland.gov/resource_conservation/Documents/consultant_information/I-B1%20p1-15%20s6.pdf
131	Maryland	Barley	6.5	7	100	100	100	https://mda.maryland.gov/resource_conservation/Documents/consultant_information/I-B1%20p1-15%20s6.pdf
132	Maryland	Tobacco	5	6.5	90	120	200	https://mda.maryland.gov/resource_conservation/Documents/consultant_information/I-B1%20p1-15%20s6.pdf
133	Massachusettes	Corn	6	7	156	156	156	https://ag.umass.edu/home-lawn-garden/fact-sheets/sweet-corn-growing-tips
134	Massachusettes	Alfalfa (20-60% legume establishment)	6.5	7.5	0	100	180	https://ag.umass.edu/crops-dairy-livestock-equine/fact-sheets/nutrient-recommendations-for-field-crops-in-massachusetts
135	Massachusettes	Alfalfa (20-60% legume maintenance)	6.5	7.5	10	50	200	https://ag.umass.edu/crops-dairy-livestock-equine/fact-sheets/nutrient-recommendations-for-field-crops-in-massachusetts
136	Massachusettes	Soybeans	6	7	0	50	120	https://ag.umass.edu/crops-dairy-livestock-equine/fact-sheets/nutrient-recommendations-for-field-crops-in-massachusetts
137	Massachusettes	Barley (90 bushels)	6.5	7	90	50	120	https://ag.umass.edu/crops-dairy-livestock-equine/fact-sheets/nutrient-recommendations-for-field-crops-in-massachusetts
138	Massachusettes	Wheat	6	7	90	50	120	https://ag.umass.edu/crops-dairy-livestock-equine/fact-sheets/nutrient-recommendations-for-field-crops-in-massachusetts
139	Michigan	Corn	6	6.8	409	174	174	https://www.canr.msu.edu/uploads/resources/pdfs/corn.pdf
140	Michigan	Soybeans (60 bu/a)	6.3	6.5	0	48	84	https://www.canr.msu.edu/news/nutrient_management_recommendations_for_profitable_soybean_production
141	Michigan	Wheat (mineral soil; 45 bushels/a)	5.8	6.5	47	28	17	https://www.canr.msu.edu/fertrec/uploads/E-2904-MSU-Nutrient-recomdns-field-crops.pdf
142	Michigan	Wheat (Organic soil; 45 bushels/acre)	5.8	6.5	17	28	17	https://www.canr.msu.edu/fertrec/uploads/E-2904-MSU-Nutrient-recomdns-field-crops.pdf
143	Michigan	Alfalfa hay (30tons/a)	6	6.8	0	390	1500	https://www.canr.msu.edu/fertrec/uploads/E-2904-MSU-Nutrient-recomdns-field-crops.pdf
144	Michigan	Sugar Beets (when corn is previous crop; 20 tons/acre; organic soil)	5.5	6.5	110	26	66	https://www.canr.msu.edu/fertrec/uploads/E-2904-MSU-Nutrient-recomdns-field-crops.pdf
145	Michigan	Sugar Beets (when corn is previous crop; 20 tons/acre; mineral soil)	5.5	6.5	80	26	66	https://www.canr.msu.edu/fertrec/uploads/E-2904-MSU-Nutrient-recomdns-field-crops.pdf
146	Michigan	Potatoes (mineral soil; 500cwt/a)	5.3	6	180	65	315	https://www.canr.msu.edu/fertrec/uploads/E-2904-MSU-Nutrient-recomdns-field-crops.pdf
147	Michigan	Potatoes (organic soil: 500cwt/a)	5.3	6	120	65	315	https://www.canr.msu.edu/fertrec/uploads/E-2904-MSU-Nutrient-recomdns-field-crops.pdf
148	Michigan	Barley (100 bushel; mineral soil)	5.8	6.5	38	38	25	https://www.canr.msu.edu/fertrec/uploads/E-2904-MSU-Nutrient-recomdns-field-crops.pdf
149	Michigan	Barley (100 bushel; organic soil)	5.8	6.5	68	38	25	https://www.canr.msu.edu/fertrec/uploads/E-2904-MSU-Nutrient-recomdns-field-crops.pdf
150	Minnesota	Corn (low yield)	6	6.5	205	90	160	https://extension.umn.edu/crop-specific-needs/fertilizing-corn-minnesota#phosphorus-and-potassium-rate-tables-2239910
151	Minnesota	Corn (High Yield)	6	6.5	205	160	255	https://extension.umn.edu/crop-specific-needs/fertilizing-corn-minnesota#phosphorus-and-potassium-rate-tables-2239911
152	Minnesota	Soybeans (low yield)	6	7	0	50	55	https://extension.umn.edu/crop-specific-needs/soybean-fertilizer-guidelines
153	Minnesota	Soybeans (high yield)	6	7	0	100	120	https://extension.umn.edu/crop-specific-needs/soybean-fertilizer-guidelines
154	Minnesota	Asparagus (New)	6.5	7	120	200	250	https://extension.umn.edu/vegetable-growing-guides-farmers/nutrient-management-asparagus
155	Minnesota	Asparagus (established)	6.5	7	80	200	250	https://extension.umn.edu/vegetable-growing-guides-farmers/nutrient-management-asparagus
156	Mississippi	Soybeans	6	7	0	120	120	https://extension.msstate.edu/sites/default/files/publications/information-sheets/is0873.pdf
157	Mississippi	Corn (200 bushels/a)	6	7	260	140	140	https://extension.msstate.edu/publications/publications/nutrient-management-guidelines-for-agronomic-crops-grown-mississippi. http://extension.msstate.edu/publications/corn-fertilization
158	Mississippi	Cotton (2 bales/acre)	5.8	8	140	120	120	https://extension.msstate.edu/publications/publications/nutrient-management-guidelines-for-agronomic-crops-grown-mississippi . http://extension.msstate.edu/publications/inorganic-nutrient-management-for-cotton-production-mississippi
159	Mississippi	Rice	5.5	6.5	120	80	80	https://extension.msstate.edu/publications/publications/nutrient-management-guidelines-for-agronomic-crops-grown-mississippi .https://extension.msstate.edu/sites/default/files/publications/publications/p2255.pdf
160	Mississippi	Wheat	6	7	130	120	120	https://extension.msstate.edu/publications/publications/nutrient-management-guidelines-for-agronomic-crops-grown-mississippi. https://www.mississippi-crops.com/2022/01/29/2022-nitrogen-fertilizer-recommendations-for-wheat/
161	Mississippi	Alfalfa	6.5	7.5	0	180	180	https://extension.msstate.edu/publications/publications/nutrient-management-guidelines-for-agronomic-crops-grown-mississippi
162	Mississippi	Peanuts	5.8	6.2	0	120	120	https://extension.msstate.edu/publications/publications/nutrient-management-guidelines-for-agronomic-crops-grown-mississippi
163	Mississippi	Blueberries	4.5	5.5	30	17	17	https://extension.msstate.edu/publications/publications/establishment-and-maintenance-blueberries#:~:text=Blueberries%20grow%20best%20in%20well,for%20guidance%20on%20soil%20testing.
164	Missouri	Corn (150 bushels/acre)	5.8	6.2	150	69	240	https://extension.missouri.edu/publications/ipm1027#:~:text=Nitrogen%20fertilizer%20timing,applications%20would%20be%20most%20efficient. https://extension.missouri.edu/programs/nutrient-management/phosphorus
165	Missouri	Soybeans (50bu/acre)	5.8	7	0	80	120	https://extension.missouri.edu/media/wysiwyg/Extensiondata/Pro/NutrientManagement/Docs/Soybean_fertility_final_report.pdf
166	Missouri	Wheat (58 bushels)	5.5	6.5	90	45	80	https://extension.missouri.edu/media/wysiwyg/Extensiondata/Pub/pdf/agguides/pests/ipm1022_Pp7-10.pdf. https://extension.missouri.edu/media/wysiwyg/Extensiondata/Pro/NutrientManagement/Docs/wheat_fertility_final_report.pdf. https://extension.missouri.edu/publications/g9102#:~:text=Row%20crops,5.5%2C%20lime%20the%20row%20crops.
167	Montana	Wheat (winter)	5.5	7.5	78	55	135	https://animalrange.montana.edu/documents/extension/eb161.pdf
168	Montana	Wheat (Spring)	5.5	7.5	99	50	135	https://animalrange.montana.edu/documents/extension/eb161.pdf
169	Montana	Barley	6.5	7	64	50	75	https://animalrange.montana.edu/documents/extension/eb161.pdf
170	Montana	Hay	6.5	6.8	5	140	240	https://animalrange.montana.edu/documents/extension/eb161.pdf
171	Montana	Corn	6	6.5	60	100	135	https://animalrange.montana.edu/documents/extension/eb161.pdf
172	Montana	Oats	6	7	72	45	100	https://animalrange.montana.edu/documents/extension/eb161.pdf
173	Montana	Sugar Beets	6	7	144	85	120	https://animalrange.montana.edu/documents/extension/eb161.pdf
174	Montana	Canola	5.5	8.5	52	45	45	https://animalrange.montana.edu/documents/extension/eb161.pdf
175	Montana	Sunflowers	6	7	50	35	55	https://animalrange.montana.edu/documents/extension/eb161.pdf
176	Montana	Beans	6	7	0	30	45	https://animalrange.montana.edu/documents/extension/eb161.pdf
177	Montana	Peas	5.5	7	30	40	75	https://ipmdata.ipmcenters.org/documents/cropprofiles/MTdrypea.pdf
178	Nebraska	Corn	6	6.5	75	80	120	https://efotg.sc.egov.usda.gov/references/Delete/2008-3-22/G74-174-A_Fertilizer_Suggestions_for_Corn.pdf
179	Nebraska	Soybeans	6	7	0	65	60	https://extensionpubs.unl.edu/publication/g859/2018/pdf/view/g859-2018.pdf
180	Nebraska	Hay	6.5	6.8	80	60	90	https://extension.unl.edu/statewide/cedar/pasture-fertility-recommendations/#:~:text=Values%20over%2017%20ppm%20for,don't%20require%20additional%20fertilization
181	Nebraska	Sugar Beets (Low nitrate levels)	6	7	125	100	120	https://extensionpubs.unl.edu/publication/g1459/na/html/view
182	Nebraska	Sugar Beets (High nitrate levels)	6	7	20	100	120	https://extensionpubs.unl.edu/publication/g1459/na/html/view
183	Nebraska	Sunflowers	6	7	10	0	10	https://digitalcommons.unl.edu/cgi/viewcontent.cgi?article=1772&context=extensionhist
184	Nebraska	Apples	6	7	96	96	72	https://icl-growingsolutions.com/en-us/agriculture/crops/apple/
185	Nebraska	Melons	6	6.5	133	125	232	https://www.haifa-group.com/growing-melons-haifa-fertilizers
186	Nevada	Alfalfa	6.5	7.5	30	50	90	https://spectrumanalytic.com/support/library/pdf/Fertilizing_Alfalfa.pdf
187	Nevada	Corn	6	6.5	87	87	87	https://naes.agnt.unr.edu/PMS/Pubs/2021-3167.pdf
188	Nevada	Lettuce	6	6.5	87	87	87	https://naes.agnt.unr.edu/PMS/Pubs/2021-3167.pdf
189	Nevada	Onions	6	7	87	87	87	https://naes.agnt.unr.edu/PMS/Pubs/2021-3167.pdf
190	Nevada	Potatoes	6	6.5	87	87	87	https://naes.agnt.unr.edu/PMS/Pubs/2021-3167.pdf
191	New Hampshire	Corn	6	6.8	108	108	108	https://extension.unh.edu/sites/default/files/migrated_unmanaged_files/Resource006093_Rep8599.pdf
192	New Hampshire	Potatoes	5	5.2	180	200	125	https://nevegetable.org/crops/potato
193	New Jersey	Corn (low yield)	6	6.8	100	120	130	https://njaes.rutgers.edu/pubs/publication.php?pid=FS174
194	New Jersey	Corn (High yield)	6	6.8	225	100	120	https://njaes.rutgers.edu/pubs/publication.php?pid=FS174
195	New Jersey	Wheat (Spring)	5.5	7.5	115	52	112	https://icl-growingsolutions.com/en-us/agriculture/crops/wheat/
196	New Jersey	Wheat (winter)	5.5	7.5	167	49	225	https://icl-growingsolutions.com/en-us/agriculture/crops/wheat/
197	New Jersey	Potatoes	5.5	6.5	180	200	300	https://njaes.rutgers.edu/pubs/commercial-veg-rec/potatoes.pdf
198	New Mexico	Alfalfa	6.5	7	20	120	50	https://nmsu.contentdm.oclc.org/digital/collection/AgCircs/id/33869
199	New Mexico	Green Chili peppers	6.5	7	60	45	30	https://nmsu.contentdm.oclc.org/digital/collection/AgCircs/id/33870
200	New Mexico	Red Chili peppers	6	6.8	80	45	30	https://nmsu.contentdm.oclc.org/digital/collection/AgCircs/id/33871
201	New Mexico	Corn	6	6.5	200	80	80	https://nmsu.contentdm.oclc.org/digital/collection/AgCircs/id/33872
202	New Mexico	Cotton(Upland)	5.8	8	120	60	40	https://nmsu.contentdm.oclc.org/digital/collection/AgCircs/id/33873
203	New Mexico	Cotton (Pima)	5.8	8	100	60	40	https://nmsu.contentdm.oclc.org/digital/collection/AgCircs/id/33874
204	New Mexico	Pecans	6	7	100	150	0	https://pubs.nmsu.edu/_h/H602/index.html#:~:text=Mature%20trees%20can%20be%20fertilized,and%20result%20in%20winter%20injury.
205	New Mexico	Wheat	6	7	100	45	25	https://nmsu.contentdm.oclc.org/digital/collection/AgCircs/id/33869
206	New Mexico	Lettuce	6	6.5	200	100	60	https://nmsu.contentdm.oclc.org/digital/collection/AgCircs/id/33870
207	New Mexico	Onions	6	7	200	100	60	https://nmsu.contentdm.oclc.org/digital/collection/AgCircs/id/33871
208	New Mexico	Potatoes	5.5	6.8	200	180	150	https://nmsu.contentdm.oclc.org/digital/collection/AgCircs/id/33872
209	New York	Corn (Soil Group 1)	6	6.8	30	70	50	https://cals.cornell.edu/field-crops/corn/fertilizers-corn/table-fertilizers-corn
210	New York	Corn (Soil Group 2)	6	6.8	30	70	60	https://cals.cornell.edu/field-crops/corn/fertilizers-corn/table-fertilizers-corn
211	New York	Corn (Soil Group 3)	6	6.8	30	70	80	https://cals.cornell.edu/field-crops/corn/fertilizers-corn/table-fertilizers-corn
212	New York	Corn (Soil Group 4)	6	6.8	30	70	120	https://cals.cornell.edu/field-crops/corn/fertilizers-corn/table-fertilizers-corn
213	New York	Corn (Soil Group 5)	6	6.8	30	70	120	https://cals.cornell.edu/field-crops/corn/fertilizers-corn/table-fertilizers-corn
214	New York	Soybeans (Soil group 1-3)	6	7	20	50	40	https://cals.cornell.edu/field-crops/soybeans/planting-soybeans
215	New York	Soybeans (Soil group 4-5)	6	7	20	50	60	https://cals.cornell.edu/field-crops/soybeans/planting-soybeans
216	New York	Wheat/Barley (Soil Group 1)	5.5	7.5	60	85	50	https://cals.cornell.edu/field-crops/small-grains/fertilizers-small-grains
217	New York	Wheat/Barley (Soil Group 2)	5.5	7.5	60	85	50	https://cals.cornell.edu/field-crops/small-grains/fertilizers-small-grains
218	New York	Wheat/Barley (Soil Group 3)	5.5	7.5	60	85	70	https://cals.cornell.edu/field-crops/small-grains/fertilizers-small-grains
219	New York	Wheat/Barley (Soil Group 4)	5.5	7.5	60	85	90	https://cals.cornell.edu/field-crops/small-grains/fertilizers-small-grains
220	New York	Wheat/Barley (Soil Group 5)	5.5	7.5	70	85	100	https://cals.cornell.edu/field-crops/small-grains/fertilizers-small-grains
221	New York	Apples (new planting)	6	6.5	40	200	300	https://www.uvm.edu/~orchard/fruit/treefruit/tf_horticulture/AppleHortBasics/Readings/fertilizing_apple_trees.pdf
222	New York	Apples (Established trees)	6	6.5	40	90	150	https://www.uvm.edu/~orchard/fruit/treefruit/tf_horticulture/AppleHortBasics/Readings/fertilizing_apple_trees.pdf
223	North Carolina	Corn	6	6.5	30	50	100	https://jones.ces.ncsu.edu/2020/03/getting-corn-started-on-the-right-foot/#:~:text=Soil%20Fertility,type%20and%20expected%20yield%20potential.
224	North Carolina	Wheat (40 bushel/acre	5	6	30	40	64	https://smallgrains.ces.ncsu.edu/wp-content/uploads/2022/03/2021-Small-Grains-Production-Guide.pdf?fwd=no
225	North Carolina	Sweet Potatoes	5.8	6.2	60	60	200	https://ipmdata.ipmcenters.org/documents/cropprofiles/NCsweetpotato2005.pdf
226	North Carolina	Snap beans	5.8	6	50	100	100	https://content.ces.ncsu.edu/pole-bean-production
227	North Dakota	Corn	6	6.5	150	156	120	https://www.ndsu.edu/agriculture/sites/default/files/2023-10/sf882.pdf
228	North Dakota	Soybeans	6	7	0	52	90	https://www.ndsu.edu/agriculture/sites/default/files/2023-10/sf882.pdf
229	North Dakota	Barley	6.5	7	120	78	90	https://www.ndsu.edu/agriculture/sites/default/files/2023-10/sf882.pdf
230	North Dakota	Canola (warmer and drier area)	5.8	7.5	120	60	90	https://www.ndsu.edu/agriculture/sites/default/files/2023-10/sf882.pdf
231	North Dakota	Canola (Cooler and wetter area)	5.8	7.5	150	60	90	https://www.ndsu.edu/agriculture/sites/default/files/2023-10/sf882.pdf
232	North Dakota	Oats	6	7	150	60	90	https://www.ndsu.edu/agriculture/sites/default/files/2023-10/sf882.pdf
233	North Dakota	Sorghum	6	7.5	80	40	60	https://www.ndsu.edu/agriculture/sites/default/files/2023-10/sf882.pdf
234	North Dakota	Potatoes (reds)	6	6.5	140	150	300	https://www.ndsu.edu/agriculture/sites/default/files/2023-10/sf882.pdf
235	North Dakota	Potatoes (Russets and whites)	6	6.5	170	175	300	https://www.ndsu.edu/agriculture/sites/default/files/2023-10/sf882.pdf
236	North Dakota	Flaxseed	5	5.5	80	40	60	https://www.ndsu.edu/agriculture/sites/default/files/2023-10/sf882.pdf
237	Ohio	Soybeans	6	7	0	75	140	https://agcrops.osu.edu/node/4348
238	Ohio	Alfalfa Hay	6.5	6.8	0	140	155	https://ohioline.osu.edu/factsheet/anr-0109
239	Ohio	Barley	6	7	30	30	50	https://cropsandsoils.extension.wisc.edu/files/2023/08/management-of-ohio-winter-malting-barley-guide-2n9akle.pdf
240	Ohio	Tomatoes	6.5	6.8	78	155	155	https://ohioline.osu.edu/factsheet/HYG-1624#:~:text=In%20addition%20to%20starter%20fertilizer,herbicides%20in%20the%20vegetable%20garden.
241	Oklahoma	Sweet corn	6	6.5	50	150	150	https://extension.okstate.edu/fact-sheets/sweet-corn-production.html
242	Oklahoma	Soybeans	5.8	6.2	0	50	60	https://extension.okstate.edu/fact-sheets/print-publications/e/soybean-production-guide-e-967.pdf
243	Oklahoma	Sunflowers (Low yield)	6	6.8	33	60	70	https://extension.okstate.edu/programs/precision-ag-and-soil-fertility/site-files/information/docs/nutrient-needs-of-oil-seeds-canole-and-sunflower.pdf
244	Oklahoma	Sunflowers (high yield)	6	6.8	228	60	70	https://extension.okstate.edu/programs/precision-ag-and-soil-fertility/site-files/information/docs/nutrient-needs-of-oil-seeds-canole-and-sunflower.pdf
245	Oklahoma	Squash	6	6.8	50	120	120	https://extension.okstate.edu/fact-sheets/squash-and-pumpkin-production.html
246	Oklahoma	Watermelons	6	6.8	50	150	150	https://extension.okstate.edu/fact-sheets/watermelon-production-2.html
247	Oklahoma	Cantaloupe	6	6.5	50	100	250	https://extension.okstate.edu/fact-sheets/cantaloupe-production.html
248	Oregon	Alfalfa, irrigated	6	8.2	180	150	300	Nutrient Management Guide for Dryland and Irrigated Alfalfa in the Inland Northwest (2009) R.T. Koenig et al., PNW Extension Publication, PNW 611. (https://catalog.extension.oregonstate.edu/pnw611)
249	Oregon	Alfalfa, dryland	6	8.2	180	50	100	Nutrient Management Guide for Dryland and Irrigated Alfalfa in the Inland Northwest (2009) R.T. Koenig et al., PNW Extension Publication, PNW 611. (https://catalog.extension.oregonstate.edu/pnw611)
250	Oregon	Asparagus	6	7.5	180	250	240	http://horticulture.oregonstate.edu/content/asparagus-0
251	Oregon	Blackberries, established	5.6	6.5	180	60	100	Caneberries Nutrient Management Guide (2006) Hart et al., Oregon State University Extension Service, Nutrient Management Guide EM 8903 (https://catalog.extension.oregonstate.edu/em8903)
252	Oregon	Blueberries, mature	4.5	5.5	180	40	100	Nutrient Management for Blueberries in Oregon (2006) Hart et al., Oregon State University Extension Service, Nutrient Management Guide EM 8918
253	Oregon	Broccoli	6.3	7	180	150	200	http://horticulture.oregonstate.edu/content/broccoli-1
254	Oregon	Brussel Sprouts	6.3	7	180	150	200	http://horticulture.oregonstate.edu/content/brussels-sprouts-0
255	Oregon	Cabbage	6.3	7	180	150	200	http://horticulture.oregonstate.edu/content/cabbage-1
256	Oregon	Carrots	5.6	7.5	180	120	180	http://horticulture.oregonstate.edu/content/carrots-eastern-oregon-0
257	Oregon	Cauliflower	6.3	7	180	150	200	http://horticulture.oregonstate.edu/content/cauliflower-0
258	Oregon	Crimson clover	5.6	7	180	60	100	Crimson Clover, Vetch, Field Peas: Western Oregon—West of Cascades Fertilizer Guide (2000) E.H. Gardner et al., Oregon State Univ. Extension Service Fertilizer Guide, FG 30
259	Oregon	Cucumber	5.8	7	180	120	150	http://horticulture.oregonstate.edu/content/cucumbers-pickling
260	Oregon	Field peas	5.6	8.3	180	60	100	Crimson Clover, Vetch, Field Peas: Western Oregon—West of Cascades Fertilizer Guide (2000) E.H. Gardner et al., Oregon State Univ. Extension Service Fertilizer Guide, FG 30
261	Oregon	Green or snap beans	5.8	6.8	180	120	120	http://horticulture.oregonstate.edu/content/beans-snap-green-romano-yellow-wax
262	Oregon	Hops	5.7	7	180	60	120	Hops Fertilizer Guide (1994) G. Gingrich et al., Oregon state State University Extension Service, FG 79 (https://catalog.extension.oregonstate.edu/fg79)
263	Oregon	Lettuce	6	6.5	180	100	200	California Dept of Food and Agriculture http://apps.cdfa.ca.gov/frep/docs/Lettuce.html
264	Oregon	Melon	5.8	6.8	180	120	150	http://horticulture.oregonstate.edu/content/melons-cantaloupe-muskmelon-honeydew-crenshaw-casaba-etc-0
265	Oregon	Onions	6	6.8	180	220	240	Nutrient Management for Onions in the Pacific Northwest (2001) D.M. Sullivan et al., Extension Publication PNW546, Washington State Univ, Oregon State Univ, Univ of Idaho
266	Oregon	Pasture, established (West Side)	5.4	7	180	60	150	Pastures: Western Oregon and Western Washington (2000) J. Hart et al., Oregon State Univ. FG 63 (http://ir.library.oregonstate.edu/xmlui/bitstream/handle/1957/20636/fg63-e.pdf)
267	Oregon	Pasture, new seeding (West Side)	5.4	7	180	60	150	Pastures: Western Oregon and Western Washington (2000) J. Hart et al., Oregon State Univ. FG 63 (http://ir.library.oregonstate.edu/xmlui/bitstream/handle/1957/20636/fg63-e.pdf)
268	Oregon	Peas, shelled (West Side)	6	7.5	180	120	120	http://horticulture.oregonstate.edu/content/peas-western-oregon-0
269	Oregon	Peas, shelled (East Side)	6	7.5	180	60	120	http://horticulture.oregonstate.edu/content/peas-processing-eastern-oregon-0
270	Oregon	Perennial Ryegrass, established	5.5	7.5	180	30	200	Perennial Ryegrass Grown for Seed (Western Oregon) (2013) Hart et al., Oregon State Univ Extension Service Nutrient Management Guide EM9086
271	Oregon	Perennial Ryegrass, new seeding	5.5	7.5	180	40	250	Perennial Ryegrass Grown for Seed (Western Oregon) (2013) Hart et al., Oregon State Univ Extension Service Nutrient Management Guide EM9086
272	Oregon	Potatoes (East Side)	5.2	6.5	180	200	500	Potato Nutrient Management for Central Washington (1999) N.S. Lang et al., Washington State Univ. Cooperative Extension, EB 1871
273	Oregon	Radish	6	7.5	180	150	150	http://horticulture.oregonstate.edu/content/radish-0
274	Oregon	Raspberries, established	5.6	6.5	180	60	100	Caneberries Nutrient Management Guide (2006) Hart et al., Oregon State University Extension Service, Nutrient Management Guide EM 8903 (https://catalog.extension.oregonstate.edu/em8903)
275	Oregon	Spinach	6	7	180	125	150	http://horticulture.oregonstate.edu/content/spinach-0
276	Oregon	Squash, winter	5.8	8	180	120	150	http://horticulture.oregonstate.edu/content/squash-pumpkin-and-winter
277	Oregon	Sweet corn	5.8	7	180	120	150	http://horticulture.oregonstate.edu/content/corn-sweet-processing
278	Oregon	Table beets	5.8	7	180	120	150	http://horticulture.oregonstate.edu/content/beets-and-chard
279	Oregon	Tall fescue, established	5.5	7.5	180	30	200	Tall Fescue Grown for Seed: A nutrient management guide for western Oregon (2014) N. Anderson et al., Oregon State Univ Extension Service Nutrient Management Guide EM9099
280	Oregon	Tall fescue, new seeding	5.5	7.5	180	40	250	Tall Fescue Grown for Seed: A nutrient management guide for western Oregon (2014) N. Anderson et al., Oregon State Univ Extension Service Nutrient Management Guide EM9099
281	Oregon	Winter wheat (East side, high precip)	5.5	5.8	180	30	0	Winter Wheat in Continuous Cropping Systems (High precipitation zone) (2007) L.K. Lutcher et al., Oregon State Univ Extension Service, FG 84
282	Oregon	Winter wheat (East side, intermediate precip)	5.5	5.8	180	25	0	Winter Wheat in Summer-Fallow Systems (Intermediate precipitation zone) (2007) L.K. Lutcher et al., Oregon State Univ Extension Service, FG 82
283	Oregon	Winter wheat (East side, low precip)	5.5	5.8	180	20	0	Winter Wheat in Summer-Fallow Systems (Low precipitation zone) (2007) L.K. Lutcher et al., Oregon State Univ Extension Service, FG 80 and Winter Wheat and Spring Grains in Continuous Cropping Systems (Low precipitation zone) (2007) L.K. Lutcher et al., Oregon State Univ Extension Service, FG 84
284	Oregon	Winter wheat (West side)	5.5	5.8	180	40	100	Soft White Winter Wheat (Western Oregon) Nutrient Management Guide (2011) J.M. Hart et al., Oregon State Univ Extension Service EM 8963 (https://catalog.extension.oregonstate.edu/em8963)
285	Oregon	Vetch	5.6	7	180	60	100	Crimson Clover, Vetch, Field Peas: Western Oregon—West of Cascades Fertilizer Guide (2000) E.H. Gardner et al., Oregon State Univ. Extension Service Fertilizer Guide, FG 30
286	Pennsylvania	Corn	5.8	6.2	150	100	120	https://agsci.psu.edu/aasl/soil-testing/fertility/handbooks/agronomic/forms/st2-fertilizer-recommendations-lime-conversions
287	Pennsylvania	Soybeans	6	7	0	90	130	https://agsci.psu.edu/aasl/soil-testing/fertility/handbooks/agronomic/forms/st2-fertilizer-recommendations-lime-conversions
288	Pennsylvania	Hay	6.4	6.8	0	130	280	https://agsci.psu.edu/aasl/soil-testing/fertility/handbooks/agronomic/forms/st2-fertilizer-recommendations-lime-conversions
289	Pennsylvania	Wheat	5.5	7.5	60	90	130	https://agsci.psu.edu/aasl/soil-testing/fertility/handbooks/agronomic/forms/st2-fertilizer-recommendations-lime-conversions
290	Pennsylvania	Barley	6.5	7	60	90	150	https://agsci.psu.edu/aasl/soil-testing/fertility/handbooks/agronomic/forms/st2-fertilizer-recommendations-lime-conversions
291	Pennsylvania	Tobacco	5.8	6.2	80	195	280	https://agsci.psu.edu/aasl/soil-testing/fertility/handbooks/agronomic/recommendations/misc/1065-tobacco
292	Rhode Island	Corn (grain) (180 bushels/acre)	6	7	180	60	180	https://www.researchgate.net/publication/43257325_Soil_Test_Calibration_for_Predicting_Corn_Response_to_Phosphorus_in_the_Northeast_USA. https://dec.vermont.gov/sites/dec/files/wmp/residual/UVM%20nutrient-recommendations-2017.pdf
293	Rhode Island	Hay (<30% legume) (5+ton/acre)	6	7	200	100	240	https://dec.vermont.gov/sites/dec/files/wmp/residual/UVM%20nutrient-recommendations-2017.pdf
294	Rhode Island	Barley (60 bushels/acre)	6	7	80	40	120	https://dec.vermont.gov/sites/dec/files/wmp/residual/UVM%20nutrient-recommendations-2017.pdf
295	Rhode Island	Wheat (90 bushels/acre)	6	7	110	40	120	https://dec.vermont.gov/sites/dec/files/wmp/residual/UVM%20nutrient-recommendations-2017.pdf
296	South Carolina	Soybean	6	6.5	0	90	80	https://www.clemson.edu/extension/agronomy/_files/soybean-production-guide.pdf
297	South Carolina	Corn (Irrigated)	5.8	6.5	120	80	110	https://www.clemson.edu/extension/agronomy/_files/corn-production-guide.pdf
298	South Carolina	Cotton (Dryland)	6	6.5	70	120	100	https://www.clemson.edu/public/regulatory/ag-srvc-lab/soil-testing/plant-levels/crops/cotton.html
299	South Carolina	Cotton (irrigated)	6	6.5	100	120	120	https://www.clemson.edu/public/regulatory/ag-srvc-lab/soil-testing/plant-levels/crops/cotton.html
300	South Carolina	Peanuts	6	6.5	0	80	80	https://www.clemson.edu/public/regulatory/ag-srvc-lab/soil-testing/plant-levels/crops/peanuts.html
301	South Carolina	Wheat	6	6.5	90	80	80	https://www.clemson.edu/public/regulatory/ag-srvc-lab/soil-testing/plant-levels/crops/small-grain.html
302	South Carolina	Cucumbers	6	6.5	65	130	130	https://hgic.clemson.edu/factsheet/cucumber/
303	South Carolina	Squash	6	6.5	65	130	130	https://hgic.clemson.edu/factsheet/summer-squash/
304	South Carolina	Tobacco	5.8	6.2	70	120	200	https://www.clemson.edu/public/regulatory/ag-srvc-lab/soil-testing/plant-levels/crops/tobacco.html
305	South Dakota	Corn (Low yield)	5.8	6.2	80	51	82	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
306	South Dakota	Corn (high yield)	5.8	6.2	240	152	245	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
307	South Dakota	Soybeans (low yield)	6	7	0	40	55	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
308	South Dakota	Soybeans (high yield)	6	7	0	134	183	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
309	South Dakota	Wheat (low yield)	5.5	7.5	75	29	71	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
310	South Dakota	Wheat (high yield)	5.5	7.5	275	107	261	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
311	South Dakota	Sorghum (low yield)	6	7.5	66	36	46	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
312	South Dakota	Sorghum (High yield)	6	7.5	176	97	121	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
313	South Dakota	Alfalfa (low yield)	6.4	6.8	0	34	96	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
314	South Dakota	Alfalfa (high yield)	6.4	6.8	0	135	385	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
315	South Dakota	Sunflowers (Low yield)	6	6.8	50	20	36	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
316	South Dakota	Sunflowers (high yield)	6	6.8	170	69	121	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
317	South Dakota	Oats (low yield)	6	7	78	35	66	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
318	South Dakota	Oats (high yield)	6	7	195	87	166	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
319	South Dakota	Barley (low yield)	6.5	7	68	28	45	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
320	South Dakota	Barley (high yield)	6.5	7	204	85	134	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
321	South Dakota	Beans (low yield)	6	7	50	21	30	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
322	South Dakota	Beans (high yield)	6	7	150	63	91	https://www.nrcs.usda.gov/sites/default/files/2023-06/EC750_2023.pdf
323	Tennessee	Soybeans	6.2	6.8	0	40	80	https://utcrops.com/wp-content/uploads/2022/11/Chapter-5-final-PB_1912-E_Soybean_Handbook.pdf
324	Tennessee	Corn	6	6.5	120	100	100	https://trace.tennessee.edu/cgi/viewcontent.cgi?article=1041&context=utk_agexcrop
325	Tennessee	Alfalfa (Establishment)	6.5	7.5	15	150	240	https://utcrops.com/soil/pasture-hay-silage-crop/alfalfa/
326	Tennessee	Alfalfa (Maintenance)	6.5	7.5	0	80	240	https://utcrops.com/soil/pasture-hay-silage-crop/alfalfa/
327	Tennessee	Wheat	6	7	90	80	40	https://utcrops.com/wp-content/uploads/2021/01/PB576-2009-1.pdf
328	Tennessee	Tobacco	5.8	6.5	275	60	60	https://utia.tennessee.edu/publications/wp-content/uploads/sites/269/2023/10/PB1782.pdf
329	Tennessee	Cotton	6	6.5	60	90	120	https://utcrops.com/wp-content/uploads/2021/01/W288-ProductionGuide.pdf
330	Tennessee	Sorghum (Dryland)	6	7.5	90	60	60	https://utcrops.com/wp-content/uploads/2021/01/SP781.pdf
331	Tennessee	Sorghum (Irrigated)	6	7.5	120	60	60	https://utcrops.com/wp-content/uploads/2021/01/SP781.pdf
332	Tennessee	Tomatoes	6.2	6.8	60	240	240	https://utcrops.com/soil/commercial-vegetable-root-crop-production/tomatoes/
333	Tennessee	Pears	5.9	6.5	0	90	90	https://utcrops.com/soil/commercial-fruit-and-nut-production/pears/
334	Texas	Cotton (0.5 bales/acre)	5.8	6.5	25	100	40	https://lubbock.tamu.edu/files/2011/10/nutrmgmtforcot.pdf
335	Texas	Cotton (4.0 bales/acre)	5.8	6.5	200	100	40	https://lubbock.tamu.edu/files/2011/10/nutrmgmtforcot.pdf
336	Texas	Corn	6	6.5	240	100	240	https://jackson.agrilife.org/files/2020/04/Crop-Nutrient-Needs.pdf
337	Texas	Sorghum	6	7.5	185	80	285	https://jackson.agrilife.org/files/2020/04/Crop-Nutrient-Needs.pdf
338	Texas	Wheat	6	7	105	46	76	https://jackson.agrilife.org/files/2020/04/Crop-Nutrient-Needs.pdf
339	Texas	Hay	6.4	6.8	50	15	42	https://jackson.agrilife.org/files/2020/04/Crop-Nutrient-Needs.pdf
340	Utah	Corn	6	6.5	220	210	200	https://extension.usu.edu/agwastemanagement/files/Utah_Fertilizer_Guide.pdf
341	Utah	Wheat (Dryland)	6	7	80	60	200	https://extension.usu.edu/agwastemanagement/files/Utah_Fertilizer_Guide.pdf
342	Utah	Barley	6.5	7	50	60	200	https://extension.usu.edu/agwastemanagement/files/Utah_Fertilizer_Guide.pdf
343	Utah	Potatoes	6.5	7.5	150	150	150	https://extension.usu.edu/vegetableguide/potato/soil-fertility
344	Utah	Cabbage	6.5	7.5	50	200	200	https://extension.usu.edu/vegetableguide/files/UT-Veg-Guide-2020a.pdf
345	Utah	Alfalfa	6.5	7.5	40	250	200	https://digitalcommons.usu.edu/cgi/viewcontent.cgi?article=1006&context=extension_histall
346	Vermont	Hay	6.4	6.8	50	60	240	https://dec.vermont.gov/sites/dec/files/wmp/residual/UVM%20nutrient-recommendations-2017.pdf
347	Vermont	Corn (90 bu/ac)	6	6.5	110	60	120	https://dec.vermont.gov/sites/dec/files/wmp/residual/UVM%20nutrient-recommendations-2017.pdf
348	Vermont	Corn (210 bu/ac)	6	6.5	210	60	180	https://dec.vermont.gov/sites/dec/files/wmp/residual/UVM%20nutrient-recommendations-2017.pdf
349	Vermont	Apples (New)	6.5	7	80	200	300	https://www.uvm.edu/~orchard/fruit/treefruit/tf_horticulture/AppleHortBasics/Readings/fertilizing_apple_trees.pdf
350	Vermont	Apples (established)	6.5	7	80	90	150	https://www.uvm.edu/~orchard/fruit/treefruit/tf_horticulture/AppleHortBasics/Readings/fertilizing_apple_trees.pdf
351	Vermont	Cabbage	6	6.8	143	90	178	https://www.haifa-group.com/fertilization-cabbage-and-cauliflower-open-field-1
352	Vermont	Soybeans	6	7	0	40	120	https://dec.vermont.gov/sites/dec/files/wmp/residual/UVM%20nutrient-recommendations-2017.pdf
353	Vermont	Barley (45bu/ac)	6.5	7	65	40	120	https://dec.vermont.gov/sites/dec/files/wmp/residual/UVM%20nutrient-recommendations-2017.pdf
354	Vermont	Barley (90bu/ac)	6.5	7	110	40	120	https://dec.vermont.gov/sites/dec/files/wmp/residual/UVM%20nutrient-recommendations-2017.pdf
355	Virginia	Soybeans	6	7	0	120	120	https://www.soiltest.vt.edu/content/dam/soiltest_vt_edu/PDF/recommendation-guidebook.pdf
356	Virginia	Hay	6.4	6.8	0	170	170	https://www.soiltest.vt.edu/content/dam/soiltest_vt_edu/PDF/recommendation-guidebook.pdf
357	Virginia	Wheat	5.5	7.5	30	120	120	https://www.soiltest.vt.edu/content/dam/soiltest_vt_edu/PDF/recommendation-guidebook.pdf
358	Virginia	Barley	6	7	30	120	120	https://www.soiltest.vt.edu/content/dam/soiltest_vt_edu/PDF/recommendation-guidebook.pdf
359	Washington	Wheat	5.5	7.5	25	70	60	https://wpcdn.web.wsu.edu/extension/uploads/sites/25/EM022E.pdf
360	Washington	Corn (100 bu/acre)	5.8	6.2	150	120	240	https://www.uidaho.edu/-/media/uidaho-responsive/files/extension/publications/pnw/pnw0615.pdf?la=en&rev=ddefbc39c622475d81f2f020573fe364
361	Washington	Corn (280 bu/ac)	5.8	6.2	405	120	240	https://www.uidaho.edu/-/media/uidaho-responsive/files/extension/publications/pnw/pnw0615.pdf?la=en&rev=ddefbc39c622475d81f2f020573fe364
362	Washington	Potatoes (20 tons/acre)	5.5	6.2	200	130	400	https://s3.wp.wsu.edu/uploads/sites/2742/2014/11/nutrient-central-wa.pdf
363	Washington	Potatoes (35 tons/acre)	5.5	6.2	350	130	400	https://s3.wp.wsu.edu/uploads/sites/2742/2014/11/nutrient-central-wa.pdf
364	Washington	Apples (37 ton yield)	6	7.5	80	15	174	https://treefruit.wsu.edu/orchard-management/soils-nutrition/fruit-tree-nutrition/
365	Washington	Barley	6.5	7	25	70	60	https://wpcdn.web.wsu.edu/extension/uploads/sites/25/EM022E.pdf
366	Washington	Hops	6	8	150	100	120	https://extension.oregonstate.edu/catalog/pub/fg-79-hops-fertilizer-guide
367	Washington	Grapes (Wine grapes)	6.5	8	60	295	480	https://pubs.extension.wsu.edu/vineyard-nutrient-management-in-washington-state-replaces-pnw622-publication
368	Washington	Grapes (Juice grapes)	5	6	140	295	480	https://pubs.extension.wsu.edu/vineyard-nutrient-management-in-washington-state-replaces-pnw622-publication
369	Washington	Peas	6	7.5	0	60	120	https://extension.oregonstate.edu/catalog/pub/em-9140-green-pea-nutrient-management-inland-northwest-east-cascades#:~:text=Apply%20K%20fertilizers%20only%20if,the%20soil%20prior%20to%20planting.
370	Washington	Strawberries	5.4	6.5	40	120	120	https://extension.oregonstate.edu/catalog/pub/em-9234-strawberry-nutrient-management-guide-oregon-washington
371	West Virginia	Corn (72.6 100 feet rows)	5.8	6.2	72.6	80	80	https://extension.wvu.edu/lawn-gardening-pests/gardening/wv-garden-guide/growing-sweet-corn-in-west-virginia#soil-preparation
372	West Virginia	Soybeans	6	7	0	42	18	https://researchrepository.wvu.edu/cgi/viewcontent.cgi?article=1243&context=wv_agricultural_and_forestry_experiment_station_bulletins
373	West Virginia	Apples (300 trees)	6	7.5	30	30	30	https://www.pubs.ext.vt.edu/422/422-023/422-023.html
374	West Virginia	Potatoes	5.5	6.2	100	200	200	https://ipmdata.ipmcenters.org/documents/cropprofiles/WVpotatoes.pdf
375	Wisconsin	Corn	5.8	6.2	150	70	70	https://walworth.extension.wisc.edu/files/2018/11/Nutrient-Application-Guidelines-for-Field-Vegetable-Fruit-Crops-in-WI-A2809.pdf
376	Wisconsin	Soybeans	6	7	0	55	75	https://walworth.extension.wisc.edu/files/2018/11/Nutrient-Application-Guidelines-for-Field-Vegetable-Fruit-Crops-in-WI-A2809.pdf
377	Wisconsin	Hay	6.4	6.8	160	60	115	https://walworth.extension.wisc.edu/files/2018/11/Nutrient-Application-Guidelines-for-Field-Vegetable-Fruit-Crops-in-WI-A2809.pdf
378	Wisconsin	Wheat	5.5	7.5	95	55	65	https://walworth.extension.wisc.edu/files/2018/11/Nutrient-Application-Guidelines-for-Field-Vegetable-Fruit-Crops-in-WI-A2809.pdf
379	Wisconsin	Potatoes	5.5	6.2	145	185	245	https://walworth.extension.wisc.edu/files/2018/11/Nutrient-Application-Guidelines-for-Field-Vegetable-Fruit-Crops-in-WI-A2809.pdf
380	Wisconsin	Bluberries	4.5	4.8	30	200	275	https://walworth.extension.wisc.edu/files/2018/11/Nutrient-Application-Guidelines-for-Field-Vegetable-Fruit-Crops-in-WI-A2809.pdf
381	Wisconsin	Apples	6	7.5	2	200	275	https://walworth.extension.wisc.edu/files/2018/11/Nutrient-Application-Guidelines-for-Field-Vegetable-Fruit-Crops-in-WI-A2809.pdf
382	Wisconsin	Barley	6.5	7	70	55	60	https://walworth.extension.wisc.edu/files/2018/11/Nutrient-Application-Guidelines-for-Field-Vegetable-Fruit-Crops-in-WI-A2809.pdf
383	Wisconsin	Oats	6	7	60	55	55	https://walworth.extension.wisc.edu/files/2018/11/Nutrient-Application-Guidelines-for-Field-Vegetable-Fruit-Crops-in-WI-A2809.pdf
384	Wyoming	Grass/legume (6tons/acre)	6.4	6.8	240	90	210	Baylock, A., Belden, K., Hough, H.W. Guide to Wyoming Fertilizer Recommendations. University of Wyoming Cooperative Extension Service. B-1045. November 1996.
385	Wyoming	Barley (100 bushels/acre)	6.5	7	155	70	160	Baylock, A., Belden, K., Hough, H.W. Guide to Wyoming Fertilizer Recommendations. University of Wyoming Cooperative Extension Service. B-1045. November 1996.
386	Wyoming	Wheat (90 bushels/acre)	5.5	7.5	155	90	180	Baylock, A., Belden, K., Hough, H.W. Guide to Wyoming Fertilizer Recommendations. University of Wyoming Cooperative Extension Service. B-1045. November 1996.
387	Wyoming	Corn (silage) (30 tons/acre)	5.8	6.2	270	90	240	Baylock, A., Belden, K., Hough, H.W. Guide to Wyoming Fertilizer Recommendations. University of Wyoming Cooperative Extension Service. B-1045. November 1996.
388	Wyoming	Oats (135 bushels/acre)	6	7	155	68	176	Baylock, A., Belden, K., Hough, H.W. Guide to Wyoming Fertilizer Recommendations. University of Wyoming Cooperative Extension Service. B-1045. November 1996.
389	Wyoming	Sugar Beets (30 tons/acre)	6	6.5	270	90	270	Baylock, A., Belden, K., Hough, H.W. Guide to Wyoming Fertilizer Recommendations. University of Wyoming Cooperative Extension Service. B-1045. November 1996.
390	Wyoming	Potatoes (350 Cwt/acre)	5.5	6.2	175	70	350	Baylock, A., Belden, K., Hough, H.W. Guide to Wyoming Fertilizer Recommendations. University of Wyoming Cooperative Extension Service. B-1045. November 1996.
391	Wyoming	Dry Beans (30 Cwt/acre)	6	7	0	53	120	Baylock, A., Belden, K., Hough, H.W. Guide to Wyoming Fertilizer Recommendations. University of Wyoming Cooperative Extension Service. B-1045. November 1996.
392	Wyoming	Sorghum, hay, or pasture (10 tons/acre)	6	7.5	90	30	80	Baylock, A., Belden, K., Hough, H.W. Guide to Wyoming Fertilizer Recommendations. University of Wyoming Cooperative Extension Service. B-1045. November 1996.
393	Alabama	Soybeans	6	6.8	0	120	120	https://aurora.auburn.edu/bitstream/handle/11200/44102/ay-324B.pdf
394	Alabama	Cotton	5.8	6.5	90	120	120	https://aurora.auburn.edu/bitstream/handle/11200/44102/ay-324B.pdf
395	Alabama	Peanuts	6	6.5	0	120	120	https://aurora.auburn.edu/bitstream/handle/11200/44102/ay-324B.pdf
396	Alabama	Corn	5.8	6.2	120	80	80	https://aurora.auburn.edu/bitstream/handle/11200/44102/ay-324B.pdf
397	Alabama	Corn before soybean	5.8	6.2	120	160	160	https://aurora.auburn.edu/bitstream/handle/11200/44102/ay-324B.pdf
398	Alabama	Wheat	5.8	6.5	100	120	120	https://aurora.auburn.edu/bitstream/handle/11200/44102/ay-324B.pdf
399	Alabama	Hay	5.6	6.5	100	100	300	https://aurora.auburn.edu/bitstream/handle/11200/44102/ay-324B.pdf
400	Alabama	Sod/turfgrass	6.5	7	400	200	200	https://aurora.auburn.edu/bitstream/handle/11200/44102/ay-324B.pdf
401	Alabama	Vegetables (Varied types)	6	6.5	120	180	180	https://aurora.auburn.edu/bitstream/handle/11200/44102/ay-324B.pdf
402	Alabama	Sweet Potatoes	5.8	6.2	80	160	200	https://aurora.auburn.edu/bitstream/handle/11200/44102/ay-324B.pdf
403	Alabama	Sorghum	5.6	6.5	80	80	80	https://aurora.auburn.edu/bitstream/handle/11200/44102/ay-324B.pdf
404	Alaska	Hay(South Central)	5.5	7.2	60	60	30	https://ipmdata.ipmcenters.org/documents/cropprofiles/AKcerealgrains2009.pdf
405	Alaska	Barley (South Central)	6	8.5	60	60	30	https://ipmdata.ipmcenters.org/documents/cropprofiles/AKcerealgrains2009.pdf
496	Alaska	Oats (South Central)	5	5.5	60	60	30	https://ipmdata.ipmcenters.org/documents/cropprofiles/AKcerealgrains2009.pdf
407	Alaska	Hay (Interior)	5.5	7.2	80	40	20	https://ipmdata.ipmcenters.org/documents/cropprofiles/AKcerealgrains2009.pdf
408	Alaska	Barley (Interior)	6	8.5	80	40	20	https://ipmdata.ipmcenters.org/documents/cropprofiles/AKcerealgrains2009.pdf
409	Alaska	Oats (Interior)	5	5.5	80	40	20	https://ipmdata.ipmcenters.org/documents/cropprofiles/AKcerealgrains2009.pdf
410	Alaska	Potatoes	5	5.4	100	320	180	https://www.uaf.edu/ces/publications/database/gardening/fertilizer-potatoes.php#:~:text=For%20these%20varieties%2C%20all%20N,red%2Dskinned%20varieties%20in%20Alaska.
411	Alaska	Corn	5.8	6.2	265	115	265	https://www.cropnutrition.com/resource-library/nutrient-needs-of-continuous-corn/#:~:text=A%20200%2Dbushel%20corn%20crop,pounds%20of%20sulfur%20(S).
412	Alaska	Peas	5.8	6.8	50	200	180	https://www.uaf.edu/ces/publications/database/gardening/field-crop-fertilizer.php
413	Alaska	Cabbage	5.8	8	8	32	16	https://www.uaf.edu/ces/publications/database/gardening/giant-cabbage.php#:~:text=Plant%20the%20seeds%20in%201,hours%20of%20light%20per%20day.
\.


--
-- Data for Name: Crop_Fertilizer_Guide; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Crop_Fertilizer_Guide" ("Crop", "pH_min", "pH_max", "pH_opt", "N_low_rate", "N_upper_rate", "P_low_rate", "P_upper_rate", "K_low_rate", "K_upper_rate", "Lime_low_rate", "Lime_upper_rate", "Reference", "ID") FROM stdin;
Alfalfa, irrigated	6	8.2	6.5	120	200	100	150	200	300	25	35	Nutrient Management Guide for Dryland and Irrigated Alfalfa in the Inland Northwest (2009) R.T. Koenig et al., PNW Extension Publication, PNW 611. (https://catalog.extension.oregonstate.edu/pnw611)	501
Alfalfa, dryland	6	8.2	6.5	120	200	25	50	50	100	10	20	Nutrient Management Guide for Dryland and Irrigated Alfalfa in the Inland Northwest (2009) R.T. Koenig et al., PNW Extension Publication, PNW 611. (https://catalog.extension.oregonstate.edu/pnw611)	502
Asparagus	6	7.5	6.5	120	200	200	250	190	240	10	20	http://horticulture.oregonstate.edu/content/asparagus-0	503
Blackberries, established	5.6	6.5	6.5	120	200	0	60	60	100	10	20	Caneberries Nutrient Management Guide (2006) Hart et al., Oregon State University Extension Service, Nutrient Management Guide EM 8903 (https://catalog.extension.oregonstate.edu/em8903)	504
Blueberries, mature	4.5	5.5	6.5	120	200	0	40	75	100	10	20	Nutrient Management for Blueberries in Oregon (2006) Hart et al., Oregon State University Extension Service, Nutrient Management Guide EM 8918	505
Broccoli	6.3	7	6.5	120	200	100	150	150	200	10	20	http://horticulture.oregonstate.edu/content/broccoli-1	506
Brussel Sprouts	6.3	7	6.5	120	200	100	150	150	200	10	20	http://horticulture.oregonstate.edu/content/brussels-sprouts-0	507
Cabbage	6.3	7	6.5	120	200	100	150	150	200	10	20	http://horticulture.oregonstate.edu/content/cabbage-1	508
Carrots	5.6	7.5	6.5	120	200	90	120	120	180	10	20	http://horticulture.oregonstate.edu/content/carrots-eastern-oregon-0	509
Cauliflower	6.3	7	6.5	120	200	100	150	150	200	10	20	http://horticulture.oregonstate.edu/content/cauliflower-0	510
Crimson clover	5.6	7	6.5	120	200	40	60	80	100	10	20	Crimson Clover, Vetch, Field Peas: Western Oregon—West of Cascades Fertilizer Guide (2000) E.H. Gardner et al., Oregon State Univ. Extension Service Fertilizer Guide, FG 30	511
Cucumber	5.8	7	6.5	120	200	90	120	100	150	10	20	http://horticulture.oregonstate.edu/content/cucumbers-pickling	512
Field peas	5.6	8.3	6.5	120	200	40	60	80	100	10	20	Crimson Clover, Vetch, Field Peas: Western Oregon—West of Cascades Fertilizer Guide (2000) E.H. Gardner et al., Oregon State Univ. Extension Service Fertilizer Guide, FG 30	513
Green or snap beans	5.8	6.8	6.5	120	200	90	120	90	120	10	20	http://horticulture.oregonstate.edu/content/beans-snap-green-romano-yellow-wax	514
Hops	5.7	7	6.5	120	200	0	60	80	120	10	20	Hops Fertilizer Guide (1994) G. Gingrich et al., Oregon state State University Extension Service, FG 79 (https://catalog.extension.oregonstate.edu/fg79)	515
Lettuce	6	6.5	6.5	120	200	40	100	110	200	10	20	California Dept of Food and Agriculture http://apps.cdfa.ca.gov/frep/docs/Lettuce.html	516
Melon	5.8	6.8	6.5	120	200	90	120	100	150	10	20	http://horticulture.oregonstate.edu/content/melons-cantaloupe-muskmelon-honeydew-crenshaw-casaba-etc-0	517
Onions	6	6.8	6.5	120	200	100	220	240	240	10	20	Nutrient Management for Onions in the Pacific Northwest (2001) D.M. Sullivan et al., Extension Publication PNW546, Washington State Univ, Oregon State Univ, Univ of Idaho	518
Pasture, established (West Side)	5.4	7	6.5	120	200	0	60	100	150	10	20	Pastures: Western Oregon and Western Washington (2000) J. Hart et al., Oregon State Univ. FG 63 (http://ir.library.oregonstate.edu/xmlui/bitstream/handle/1957/20636/fg63-e.pdf)	519
Pasture, new seeding (West Side)	5.4	7	6.5	120	200	0	60	100	150	10	20	Pastures: Western Oregon and Western Washington (2000) J. Hart et al., Oregon State Univ. FG 63 (http://ir.library.oregonstate.edu/xmlui/bitstream/handle/1957/20636/fg63-e.pdf)	520
Peas, shelled (West Side)	6	7.5	6.5	120	200	80	120	90	120	10	20	http://horticulture.oregonstate.edu/content/peas-western-oregon-0	521
Peas, shelled (East Side)	6	7.5	6.5	120	200	0	60	90	120	10	20	http://horticulture.oregonstate.edu/content/peas-processing-eastern-oregon-0	522
Perennial Ryegrass, established	5.5	7.5	6.5	120	200	0	30	100	200	10	20	Perennial Ryegrass Grown for Seed (Western Oregon) (2013) Hart et al., Oregon State Univ Extension Service Nutrient Management Guide EM9086	523
Perennial Ryegrass, new seeding	5.5	7.5	6.5	120	200	30	40	200	250	10	20	Perennial Ryegrass Grown for Seed (Western Oregon) (2013) Hart et al., Oregon State Univ Extension Service Nutrient Management Guide EM9086	524
Potatoes (East Side)	5.2	6.5	6.5	120	200	160	200	480	500	10	20	Potato Nutrient Management for Central Washington (1999) N.S. Lang et al., Washington State Univ. Cooperative Extension, EB 1871	525
Radish	6	7.5	6.5	120	200	130	150	125	150	10	20	http://horticulture.oregonstate.edu/content/radish-0	526
Raspberries, established	5.6	6.5	6.5	120	200	0	60	60	100	10	20	Caneberries Nutrient Management Guide (2006) Hart et al., Oregon State University Extension Service, Nutrient Management Guide EM 8903 (https://catalog.extension.oregonstate.edu/em8903)	527
Spinach	6	7	6.5	120	200	100	125	100	150	10	20	http://horticulture.oregonstate.edu/content/spinach-0	528
Squash, winter	5.8	8	6.5	120	200	90	120	100	150	10	20	http://horticulture.oregonstate.edu/content/squash-pumpkin-and-winter	529
Sweet corn	5.8	7	6.5	120	200	60	120	90	150	10	20	http://horticulture.oregonstate.edu/content/corn-sweet-processing	530
Table beets	5.8	7	6.5	120	200	70	120	120	150	10	20	http://horticulture.oregonstate.edu/content/beets-and-chard	531
Tall fescue, established	5.5	7.5	6.5	120	200	0	30	100	200	10	20	Tall Fescue Grown for Seed: A nutrient management guide for western Oregon (2014) N. Anderson et al., Oregon State Univ Extension Service Nutrient Management Guide EM9099	532
Tall fescue, new seeding	5.5	7.5	6.5	120	200	30	40	200	250	10	20	Tall Fescue Grown for Seed: A nutrient management guide for western Oregon (2014) N. Anderson et al., Oregon State Univ Extension Service Nutrient Management Guide EM9099	533
Winter wheat (East side, high precip)	5.5	5.8	6.5	120	200	20	30	0	0	10	20	Winter Wheat in Continuous Cropping Systems (High precipitation zone) (2007) L.K. Lutcher et al., Oregon State Univ Extension Service, FG 84	534
Winter wheat (East side, intermediate precip)	5.5	5.8	6.5	120	200	15	25	0	0	10	20	Winter Wheat in Summer-Fallow Systems (Intermediate precipitation zone) (2007) L.K. Lutcher et al., Oregon State Univ Extension Service, FG 82	535
Winter wheat (East side, low precip)	5.5	5.8	6.5	120	200	10	20	0	0	10	20	Winter Wheat in Summer-Fallow Systems (Low precipitation zone) (2007) L.K. Lutcher et al., Oregon State Univ Extension Service, FG 80 and Winter Wheat and Spring Grains in Continuous Cropping Systems (Low precipitation zone) (2007) L.K. Lutcher et al., Oregon State Univ Extension Service, FG 84	536
Winter wheat (West side)	5.5	5.8	6.5	120	200	30	40	60	100	10	20	Soft White Winter Wheat (Western Oregon) Nutrient Management Guide (2011) J.M. Hart et al., Oregon State Univ Extension Service EM 8963 (https://catalog.extension.oregonstate.edu/em8963)	537
Vetch	5.6	7	6.5	120	200	40	60	80	100	10	20	Crimson Clover, Vetch, Field Peas: Western Oregon—West of Cascades Fertilizer Guide (2000) E.H. Gardner et al., Oregon State Univ. Extension Service Fertilizer Guide, FG 30	538
\.


--
-- Data for Name: DOC_DIC_TDN; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."DOC_DIC_TDN" ("ID", "Sample", "Cold DOC mean (mgC/kg)", "cold doc std (mgC/kg)", "Cold DOC CV", "cold DIC mean (mgC/kg)", "cold DIC std (mgC/kg)", "Cold DIC CV", "Cold TDN mean (mgN/kg)", "Cold TDN std (mgN/kg)", "Cold TDN CV", "Hot DOC mean (mgC/kg)", "Hot DOC std (mgC/kg)", "Hot DOC CV", "Hot DIC mean (mgC/kg)", "Hot DIC std (mgC/kg)", "Hot DIC CV", "Hot TDN mean (mgN/kg)", "Hot TDN std (mgN/kg)", "Hot TDN CV") FROM stdin;
11	Organic mechanics	517.3833333	204.6513275	39.55506764	712.65	220.12	30.89	5	2.64	52.8	539.8233333	278.3514948	51.56344262	473.85	286.87	60.54	3.89	3.804234483	97.79523092
7	GreenC Bedding	1531.54	1180.25	77.0628847	646.97	533.11	82.4	8.17	0.73	8.89	1296.39	1527.23	117.8062214	571.57	341.63	59.77	9.88	1.993334016	20.17646658
10	GreenC corn cob	1765.8	1025.49	58.07513557	113.01	79.2	70.09	31.86	10.9	34.22	2772.68	1649.5	59.49096349	255.36	41.92	16.41	29.67	23.62938731	79.64469827
9	COrigin Wood	621.04	510.21	82.1545907	321.06	247.57	77.11	6.93	3.36	48.42	1029.39	590.86	57.3993207	397.32	168.74	42.47	8.77	6.901362184	78.69284133
5	COrigin Shell	6665.04	6444.93	96.69744506	1304.71	139	10.65	144.13	99.72	69.18	4609.55	3014.59	65.39893607	722.67	161.69	22.37	99.76	82.80220408	83.00140745
4	Green State	1877.07	582.51	31.0329728	342.59	221.45	64.64	20.55	3.59	17.48	1079.2	587.37	54.42700456	375.57	153.54	40.88	9.96	5.03955003	50.58011772
12	Sumner's Farm	1136.7	1245.33	109.5560086	2164.36	50	2.31	15.54	2.34	15.09	1476.92	1418.26	96.02826332	730.87	531.55	72.73	10.8	4.080713234	37.80013185
8	Pacific	464.36	535.92	115.4093835	909.41	44.68	4.91	10.35	10.97	105.91	546.25	704.06	128.8890114	739.99	22.64	3.06	5.11	1.530179074	29.93308049
1	Soil Carbon Innovations	591.1766667	219.3348117	37.10139863	701.35	74.45834406	10.62	23.96	9.913637072	41.38	1713.526667	1588.313829	92.6926823	907.8	168.57	18.57	37.05	3.125411973	8.435659846
3	NY Carbon	146.5166667	55.97286337	38.20238655	218.825	191.1663183	87.36	2.78	0.735391052	26.45	228.55	260.0384154	113.7774734	119.15	13.93	11.69	4.375	5.536646097	126.5519108
2	EnviraPAC	71.26	73.84767837	103.6313196	256.35	220.122341	85.87	6.445	4.829539316	74.93	210.6433333	192.9775755	91.61342655	132.95	0.070710678	0.05	3.23	0.721248917	22.32968783
\.


--
-- Data for Name: Extractable Nutrients; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Extractable Nutrients" ("ID", "Sample", "Na_ave", "Na_std", "Nalb_1ton", "K_ave", "K_std", "Klb_1ton", "Mg_ave", "Mg_std", "Mglb_1ton", "Ca_ave", "Ca_std", "Calb_1ton", "S_ave", "S_std", "Slb_1ton") FROM stdin;
3	NY Carbon	80.17	49.62	0.16	766.38	129.405255	1.53	962.56	119.891369	1.93	13511.83	2141.505885	27.02	24.3	11.66914751	0.05
2	EnviraPAC 	2845.45	3970.69	5.69	8868.56	9420.139707	17.74	4713.6	6558.207506	9.43	16050.51	21964.39408	32.1	860.77	1217.307894	1.72
1	Soil Carbon Innovations 	5193.46	523.17	10.39	16755.62	644.8653567	33.51	10268.75	551.6639689	20.54	31226.06	5117.186583	62.45	1668.63	82.77391981	3.34
5	COrigin Shell 	645.36	238.36	1.29	34529.43	385.6489674	69.06	1470.33	75.14659466	2.94	7383.04	102.1250754	14.77	108.23	33.98119488	0.22
9	COrigin Wood	1075.9	41.68	2.15	2625.11	248.3382586	5.25	319.73	23.96620584	0.64	11579.89	112.6774656	23.16	11.58	0.068353656	0.02
7	GreenC Bedding	4809.84	88.07	9.62	23615.23	1828.820909	47.23	5817.92	64.96189999	11.64	16056.26	978.0536006	32.11	534.51	38.22854961	1.07
10	GreenC corn cob	109.23	19.92	0.22	21225.18	1650.637072	42.45	550.75	41.47652676	1.1	718.18	93.46537434	1.44	73.88	0.730677007	0.15
4	Green State	439.02	137.17	0.88	3337.27	606.6221935	6.67	337.37	12.41679508	0.67	3611.24	307.8884347	7.22	135.76	9.970205615	0.27
11	Organic mechanics 	203.01	30.5	0.41	4890.2	54.44015108	9.78	3321.44	110.4736494	6.64	12696.36	786.9297087	25.39	51.76	1.482567218	0.1
8	Pacific 	252.03	26.59	0.5	4793.47	373.6399372	9.59	440.77	20.41181575	0.88	3292.93	196.6298967	6.59	90.74	7.155920626	0.18
12	Sumner's Farm	159.39	19.91	0.32	12166.03	192.0619869	24.33	2892.78	175.7089641	5.79	25354.14	1470.784462	50.71	92.79	2.884995667	0.19
13	Earth Foundries	433.73835	33.47676847	0.86748	2961.5885	103.3486058	5.9232	3809.51335	240.8028809	7.61904	33646.435	551.0412435	67.293	106.46835	128.408258	0.21294
19	The Next 150 coco	6759.9185	824.4419591	13.5199	11295.13	1077.772156	22.59	4341.81345	496.8039614	8.68364	67824.14751	1344.927719	135.64844	5613.8775	665.9637731	11.2278
6	Acknowledge	75.304135	19.35228931	0.150608	12091.32	3985.861931	24.18	3474.24975	2790.794548	6.94851	172250.8965	233549.7988	344.5022	265.19235	218.103339	0.53039
14	XLII 	1462.506	132.0818899	2.925	18428.05	1258.734923	36.86	6408.76155	6408.76155	12.81754	53733.48568	3381.348311	107.46709	2150.952	421.8910184	4.302
17	H2	67.156645	4.869639341	0.134313	7524.2975	260.5087448	15.0486	47.72923	67.49932439	0.09546	18614.11634	995.1627586	37.22827	92.1377	82.13427101	0.1843
20	Ahualoa	624.79865	58.41925307	1.2496	2878.677	213.6975688	5.757	809.023485	51.65200783	1.618049	13385.13859	580.7730896	26.77031	139.6238	61.99035445	0.2792
18	Locoal	142.22445	7.559749308	0.28445	510.8605	156.2274651	1.0217	104.09081	2.136607992	0.20818	1898.029311	616.4405753	3.796063	3.525099	2.227526368	0.00705
16	The Next 150 corn	482.02715	31.88648532	0.96406	25236.59	833.9758799	50.47	2437.0101	26.0358131	4.874	7985.96689	156.0116413	15.97195	411.55675	56.3659564	0.82311
15	Restoration Biofuels	176.4399	0.042567828	0.3529	2239.0035	176.7957872	4.478	149.609655	0.593481793	0.29922	1338.79832	92.35991117	2.6776	7.1460745	2.565278043	0.0142922
\.


--
-- Data for Name: Extractable P; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Extractable P" ("ID", "Sample", "Extractable_P_mean", "Extractable_P_std", "ExtractablePlbs1ton") FROM stdin;
3	NY Carbon	638.3215	101.6656917	1.2766
2	EnviraPAC	36.96333333	1.485002806	0.07392675
1	Soil Carbon Innovations  	7989.625167	1038.397858	15.979268
5	COrigin Shell	1070.533333	152.2165198	2.141069
9	COrigin Wood	61.02	3.588161089	0.12
7	GreenC Bedding 	7808.5915	337.7969302	15.6172
10	GreenC corn cob	620.5216667	143.1490538	1.2410447
4	Green State 	28.43666667	0.448367409	0.0568734
11	Organic mechanics	814.9733333	141.8079079	1.6299485
8	Pacific 	244.0635	145.3762045	0.4881
12	Sumner's Farm 	2197.903333	262.3413299	4.395812
20	Ahualoa	444.9086489	24.15201156	0.8898183
15	Restoration Biofuels	34.85659886	8.522897843	0.06971327
16	The Next 150 corn	2048.01519	176.9631035	4.09603
19	The Next 150 coco	17625.86082	0.210972379	35.25176
6	Acknowledge	1022.394451	956.5237797	2.044791
14	XLII	3009.111789	127.7391391	6.01823
13	Earth Foundries	2441.188163	166.5545292	4.882382
17	H2	341.8212037	10.54833096	0.6836432
18	Locoal	44.76157805	8.940061407	0.08952325
\.


--
-- Data for Name: FTIR ; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."FTIR " ("ID", "Sample", peak_wavenumber, fun_group) FROM stdin;
1	Soil Carbon Innovations	1425; 1028; 2682; 745; 1265; 1036; 1596; 2628; 2920; 1391; 1564; 1403; 3256; 3197; 870; 790; 1573	Quartz doublet, duo O-H bending peaks; v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; carboxylic acid C-OH stretch, O-H deformation, carboxyl, ester/ amide region; v(OH) from sorbed water and hydrogen- bonded biochar O-H groups; asymmetric aliphatic v(CH) from -CH2 groups; duo O-H bending peaks, quartz 'doublet'; v(C=C); Phenolic O-H bend, -C(CH3) C-H deformation; Aromatic C–H stretch ; trio-quatro O-H bending peaks; solo O-H bending peaks, v(M-O-H) O-H bending bands from clay minerals associtated with biochar; v(COO-) carboxylate anions, Amide-II vibrations; H-bonded OH of carboxylic acids ; carbonate( v3, asymmetric stretch)
10	GreenC corn cob	3243; 1577; 1381; 1268; 1675; 1701; 2929; 1441; 1590	carboxylic acid C-OH stretch, O-H deformation, carboxyl, ester/ amide region; asymmetric aliphatic v(CH) from -CH2 groups; Phenolic O-H bend, -C(CH3) C-H deformation; carbonate( v3, asymmetric stretch), CH2 deformation (scissor vib); v(COO-) carboxylate anions, Amide-II vibrations, v(C=C); v(OH) from sorbed water and hydrogen- bonded biochar O-H groups; v(C=O) from carboxylic acids, amides, esters, and ketones; v(COO-) carboxylate anions, Amide-II vibrations
2	EnviraPAC	804; 757; 750; 872; 1155; 801	trio-quatro O-H bending peaks; v(C-O) polysaccharide, carbohydrate region; duo O-H bending peaks; solo O-H bending peaks, v(M-O-H) O-H bending bands from clay minerals associtated with biochar
3	NY Carbon	1450; 1412; 1028; 1665; 688; 779; 774; 1264; 1035; 2626; 794; 872; 3204; 859; 1703; 938	v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; OH bending; carboxylic acid C-OH stretch, O-H deformation, carboxyl, ester/ amide region; v(OH) from sorbed water and hydrogen- bonded biochar O-H groups; duo O-H bending peaks, quartz 'doublet'; v(C=O) from carboxylic acids, amides, esters, and ketones; trio-quatro O-H bending peaks; carbonate( v3, asymmetric stretch), CH2 deformation (scissor vib); v(M-O-H) O-H bending bands from clay minerals associtated with biochar; solo O-H bending peaks, v(M-O-H) O-H bending bands from clay minerals associtated with biochar; H-bonded OH of carboxylic acids ; carbonate( v3, asymmetric stretch)
8	Pacific	933; 1195; 3194; 1023; 1098; 783; 1263; 703; 868; 1560; 1692; 1403; 1014; 1487; 827	v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; carboxylic acid C-OH stretch, O-H deformation, carboxyl, ester/ amide region; aromatic skeletal vibrations; duo O-H bending peaks, quartz 'doublet'; v(C=O) from carboxylic acids, amides, esters, and ketones; aromatic v(CH); solo O-H bending peaks, v(M-O-H) O-H bending bands from clay minerals associtated with biochar; trio-quatro O-H bending peaks; duo O-H bending peaks; v(M-O-H) O-H bending bands from clay minerals associtated with biochar; v(Si-O) from clay minerals associated with biochar; v(COO-) carboxylate anions, Amide-II vibrations; carbonate( v3, asymmetric stretch)
12	Sumner's Farm	3201; 1256; 1687; 1026; 937; 1022; 1558; 703; 708; 872; 869; 1416; 1405; 785	v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; carboxylic acid C-OH stretch, O-H deformation, carboxyl, ester/ amide region; duo O-H bending peaks, quartz 'doublet'; v(C=O) from carboxylic acids, amides, esters, and ketones; trio-quatro O-H bending peaks; v(M-O-H) O-H bending bands from clay minerals associtated with biochar; solo O-H bending peaks, v(M-O-H) O-H bending bands from clay minerals associtated with biochar; v(COO-) carboxylate anions, Amide-II vibrations; v(OH) from sorbed water and hydrogen- bonded biochar O-H groups; carbonate( v3, asymmetric stretch)
7	GreenC Bedding	776; 3217; 1475; 1269; 855; 1569; 997; 881; 1029; 1706; 1574; 1411	v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; carboxylic acid C-OH stretch, O-H deformation, carboxyl, ester/ amide region; v(C=O) from carboxylic acids, amides, esters, and ketones; solo O-H bending peaks, v(M-O-H) O-H bending bands from clay minerals associtated with biochar; CH2 deformation (scissor vib); duo O-H bending peaks; v(Si-O) from clay minerals associated with biochar; v(COO-) carboxylate anions, Amide-II vibrations; v(OH) from sorbed water and hydrogen- bonded biochar O-H groups; carbonate( v3, asymmetric stretch)
4	Green State	797; 805; 744; 1394; 1568; 1168; 1387; 1686; 1574; 869; 1243; 1030; 870; 1227; 1681	v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; carboxylic acid C-OH stretch, O-H deformation, carboxyl, ester/ amide region; duo O-H bending peaks, quartz 'doublet'; v(C=C); Phenolic O-H bend, -C(CH3) C-H deformation; v(C-O) polysaccharide, carbohydrate region; trio-quatro O-H bending peaks; duo O-H bending peaks; solo O-H bending peaks, v(M-O-H) O-H bending bands from clay minerals associtated with biochar; v(COO-) carboxylate anions, Amide-II vibrations; v(C=O) from carboxylic acids, amides, esters, and ketones; carbonate( v3, asymmetric stretch)
20	Ahualoa	1243; 1685; 745; 1576; 874; 1029; 869; 819; 801; 1405; 1190; 3210; 1570; 1408	v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; carboxylic acid C-OH stretch, O-H deformation, carboxyl, ester/ amide region; v(C=O) from carboxylic acids, amides, esters, and ketones; Alcohol, ether, phenol, C-O-C stretch, poly OH stretch; trio-quatro O-H bending peaks; duo O-H bending peaks; solo O-H bending peaks, v(M-O-H) O-H bending bands from clay minerals associtated with biochar; v(COO-) carboxylate anions, Amide-II vibrations; v(OH) from sorbed water and hydrogen- bonded biochar O-H groups; carbonate( v3, asymmetric stretch)
17	H2	1412; 934; 1689; 3214; 865; 993; 1261; 1039; 1116; 1555; 994; 757; 1410; 712; 806; 665; 1758	v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; OH bending; carboxylic acid C-OH stretch, O-H deformation, carboxyl, ester/ amide region; v(C=O) from carboxylic acids, amides, esters, and ketones; solo O-H bending peaks, v(M-O-H) O-H bending bands from clay minerals associtated with biochar; Carbonyl C]O stretch ; trio-quatro O-H bending peaks; duo O-H bending peaks; v(M-O-H) O-H bending bands from clay minerals associtated with biochar; v(Si-O) from clay minerals associated with biochar; v(COO-) carboxylate anions, Amide-II vibrations; v(OH) from sorbed water and hydrogen- bonded biochar O-H groups; carbonate( v3, asymmetric stretch)
18	Locoal	792; 744; 3214; 937; 1578; 1179; 1259; 1405; 1696	v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; carboxylic acid C-OH stretch, O-H deformation, carboxyl, ester/ amide region; duo O-H bending peaks, quartz 'doublet'; v(C=O) from carboxylic acids, amides, esters, and ketones; trio-quatro O-H bending peaks; v(M-O-H) O-H bending bands from clay minerals associtated with biochar; v(COO-) carboxylate anions, Amide-II vibrations; v(OH) from sorbed water and hydrogen- bonded biochar O-H groups; carbonate( v3, asymmetric stretch)
19	The Next 150 coco	871; 3214; 789; 1100; 1588; 1585; 869; 801; 1087; 1033; 1411; 1408	v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; duo O-H bending peaks, quartz 'doublet'; duo O-H bending peaks; solo O-H bending peaks, v(M-O-H) O-H bending bands from clay minerals associtated with biochar; v(COO-) carboxylate anions, Amide-II vibrations, v(C=C); v(OH) from sorbed water and hydrogen- bonded biochar O-H groups; carbonate( v3, asymmetric stretch)
13	Earth Foundries	787; 1261; 938; 1718; 869; 1669; 3210; 1411	carboxylic acid C-OH stretch, O-H deformation, carboxyl, ester/ amide region; duo O-H bending peaks, quartz 'doublet'; v(C=O) from carboxylic acids, amides, esters, and ketones; v(M-O-H) O-H bending bands from clay minerals associtated with biochar; solo O-H bending peaks, v(M-O-H) O-H bending bands from clay minerals associtated with biochar; v(OH) from sorbed water and hydrogen- bonded biochar O-H groups; carbonate( v3, asymmetric stretch)
15	Restoration Biofuels	1195; 809; 1427; 1028; 1256; 2896; 1688; 3222; 1590; 1589; 857; 1259; 1030; 1366; 2915; 1192; 802; 1696	v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; symmetric aliphatic v(CH) from terminal -CH3 groups; carboxylic acid C-OH stretch, O-H deformation, carboxyl, ester/ amide region; asymmetric aliphatic v(CH) from -CH2 groups; v(C=O) from carboxylic acids, amides, esters, and ketones; solo O-H bending peaks, v(M-O-H) O-H bending bands from clay minerals associtated with biochar; Phenolic O-H bend, -C(CH3) C-H deformation; duo O-H bending peaks; v(Si-O) from clay minerals associated with biochar; v(COO-) carboxylate anions, Amide-II vibrations, v(C=C); v(OH) from sorbed water and hydrogen- bonded biochar O-H groups; carbonate( v3, asymmetric stretch)
14	XLII	770; 871; 1687; 1023; 862; 774; 1437; 685; 3231; 1414; 991	v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; OH bending; v(C=O) from carboxylic acids, amides, esters, and ketones; trio-quatro O-H bending peaks; v(M-O-H) O-H bending bands from clay minerals associtated with biochar; solo O-H bending peaks, v(M-O-H) O-H bending bands from clay minerals associtated with biochar; v(OH) from sorbed water and hydrogen- bonded biochar O-H groups; carbonate( v3, asymmetric stretch)
6	Acknowledge	787; 1417; 1565; 1264; 1710; 1016; 842; 1029; 939; 1403; 721; 1671	v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; duo O-H bending peaks, v(M-O-H) O-H bending bands fromclay minerals associated with biochar; carboxylic acid C-OH stretch, O-H deformation, carboxyl, ester/ amide region; duo O-H bending peaks, quartz 'doublet'; v(C=O) from carboxylic acids, amides, esters, and ketones; trio-quatro O-H bending peaks; v(M-O-H) O-H bending bands from clay minerals associtated with biochar; v(Si-O) from clay minerals associated with biochar; v(COO-) carboxylate anions, Amide-II vibrations; carbonate( v3, asymmetric stretch)
16	The Next 150 corn	1577; 797; 1133; 1015; 955; 744; 1584; 1042; 783; 1398; 872; 1155; 3220	v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; duo O-H bending peaks, quartz 'doublet'; v(COO-) carboxylate anions, Amide-II vibrations, v(C=C); solo O-H bending peaks, v(M-O-H) O-H bending bands from clay minerals associtated with biochar; v(C-O) polysaccharide, carbohydrate region; trio-quatro O-H bending peaks; v(Si-O) from clay minerals associated with biochar; v(COO-) carboxylate anions, Amide-II vibrations; v(OH) from sorbed water and hydrogen- bonded biochar O-H groups; carbonate( v3, asymmetric stretch)
9	COrigin Wood	3202; 1595; 811; 1026; 1233; 862; 1424; 750; 869; 1225; 1576; 1414; 799	v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; carboxylic acid C-OH stretch, O-H deformation, carboxyl, ester/ amide region; duo O-H bending peaks, quartz 'doublet'; v(C=C); trio-quatro O-H bending peaks; duo O-H bending peaks; solo O-H bending peaks, v(M-O-H) O-H bending bands from clay minerals associtated with biochar; v(COO-) carboxylate anions, Amide-II vibrations; v(OH) from sorbed water and hydrogen- bonded biochar O-H groups; carbonate( v3, asymmetric stretch)
5	COrigin Shell	772; 1256; 1364; 1584; 1157; 745; 1369; 1016; 1576; 1021; 1574; 691	v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; OH bending; carboxylic acid C-OH stretch, O-H deformation, carboxyl, ester/ amide region; v(COO-) carboxylate anions, Amide-II vibrations, v(C=C); Phenolic O-H bend, -C(CH3) C-H deformation; v(C-O) polysaccharide, carbohydrate region; trio-quatro O-H bending peaks; v(Si-O) from clay minerals associated with biochar; v(COO-) carboxylate anions, Amide-II vibrations
11	Organic mechanics	1677; 1411; 1287; 1199; 1707; 854; 783; 1032; 1565; 3212; 1006; 922; 991; 1480	v(Si-O) from clay minerals associated with biochar, v(C-O) polysaccharide carbohydrate region; carboxylic acid C-OH stretch, O-H deformation, carboxyl, ester/ amide region; duo O-H bending peaks, quartz 'doublet'; v(C=O) from carboxylic acids, amides, esters, and ketones; solo O-H bending peaks, v(M-O-H) O-H bending bands from clay minerals associtated with biochar; CH2 deformation (scissor vib); v(M-O-H) O-H bending bands from clay minerals associtated with biochar; v(Si-O) from clay minerals associated with biochar; v(COO-) carboxylate anions, Amide-II vibrations; v(OH) from sorbed water and hydrogen- bonded biochar O-H groups; carbonate( v3, asymmetric stretch)
\.


--
-- Data for Name: H:C ratio; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."H:C ratio" ("ID", "Sample", "H_percent", "Corg_percent", "HCorg_ratio", "Corglb_1ton") FROM stdin;
1	Soil Carbon Innovations	1.76	56.52	0.373673036	1130.4
2	EnviraPAC	2.08	88.05	0.283475298	1761
3	NY Carbon	0.92	77.34	0.142746315	1546.8
4	Green State	2.23	76.86	0.348165496	1537.2
5	COrigin Shell	2.73	57.47	0.570036541	1149.4
6	Acknowledge	1.4	72.22	0.232622542	1444.4
7	GreenC Bedding	0.73	33.44	0.261961722	668.8
8	Pacific	0.65	84.72	0.092067989	1694.4
9	COrigin Wood	2.9	72.98	0.476842971	1459.6
10	GreenC corn cob	3.4	71.38	0.57158868	1427.6
11	Organic mechanics	0.61	84.34	0.086791558	1686.8
12	Sumner's Farm	1.11	68.05	0.195738428	1361
13	Earth Foundries	0.92	77.76	0.141975309	1555.2
14	XLII	0.93	45.14	0.247230837	902.8
15	Restoration Biofuels	3.46	69.81	0.594757198	1396.2
16	The Next 150 corn 	1.33	49.98	0.319327731	999.6
17	H2	1.31	79.93	0.196672088	1598.6
18	Locoal	1.55	85.38	0.217849613	1707.6
19	The Next 150 coco	1.62	39.13	0.49680552	782.6
20	Ahualoa	2.51	78.41	0.384134677	1568.2
\.


--
-- Data for Name: Heavy Metals; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Heavy Metals" ("ID", "Sample", "As_mean", "As_std", "As CV", "Cd_mean", "Cd_std", "Cd CV", "Co_mean", "Co_std", "Co CV", "Cr_mean", "Cr_std", "Cr CV", "Cu_mean", "Cu_std", "Cu CV", "Hg_mean", "Hg_std", "Hg CV", "Mo_mean", "Mo_std", "Mo CV", "Ni_mean", "Ni_std", "Ni CV", "Pb_mean", "Pb_std", "Pb CV", "Se_mean", "Se_std", "Se CV", "Zn_mean", "Zn_std", "Zn_CV") FROM stdin;
12	Sumner's Farm	0.3888	0.549846233	141.4213562	0	0	0	0.945466667	0.1727	18.26611197	22.68813333	4.00838	17.66729744	941.3332013	106.8157408	11.34728284	0	0	0	0.324666667	0.04728	14.56262834	12.51629312	4.906415665	39.20022979	6.11397409	8.646465078	141.4213562	0	0	0	183.9947581	53.05802803	28.83670632
10	GreenC corn cob	0.194866667	0.275583083	141.4213562	0	0	0	0.2376	0.06832	28.75420875	8.995066667	3.21063	35.69323185	48.730085	35.25207554	72.34150225	0	0	0	0.344933333	0.03518	10.19907228	12.17738126	15.49833993	127.271534	5.777063122	2.067763777	35.79264642	0	0	0	42.7958756	26.32644662	61.5163173
7	GreenC Bedding	3.2028	4.529443198	141.4213562	0	0	0	4.220266667	0.84431	20.00608176	87.716	25.7394	29.34401934	140.2265169	23.7639023	16.94679639	13.03784983	18.43830405	141.4213562	7.597866667	1.58398	20.84769409	89.04672002	14.75899675	16.57444177	0.49835591	0.704781687	141.4213562	0	0	0	195.6815311	48.02923496	24.54459279
9	COrigin Wood	0.391466667	0.553617469	141.4213562	0	0	0	0.631866667	0.047401266	7.501782967	16.70746667	3.196300436	19.13097	54.86647664	18.69579491	34.07507836	0	0	0	0.361866667	0.060898604	16.8290173	6.77599695	9.582706785	141.4213562	2.670638742	3.776853529	141.4213562	0	0	0	13.78421452	19.49382312	141.4213562
11	Organic mechanics	0.198933333	0.181524801	91.2490621	0	0	0	1.388133333	0.414327471	29.84781513	14.12413333	3.472233387	24.58369165	17.5576	3.439808002	19.5915615	0	0	0	0.295066667	0.071742874	24.31412366	0	0	0	0	0	0	0	0	0	0	0	0
8	Pacific	0.572666667	0.071670729	12.5152611	0	0	0	0.417066667	0.076227029	18.27694117	7.5288	0.832605004	11.05893375	7.4288	2.219353431	29.87499235	0	0	0	0.1516	0.060541996	39.93535385	0	0	0	0	0	0	0	0	0	0	0	0
5	COrigin Shell	0.3134	0.44321453	141.4213562	0	0	0	1.100666667	0.044277308	4.022771773	13.93533333	0.653581191	4.690100879	20.07428007	0.100710966	0.501691543	2.169075106	3.067535433	141.4213562	0.310533333	0.025852917	8.32532751	6.365017212	8.510290155	133.7041185	0	0	0	0	0	0	23.96670624	33.894041	141.4213562
4	Green State	0.810533333	0.063297815	7.809403019	0	0	0	0.827466667	0.054205535	6.550781676	16.36173333	0.504703213	3.084656148	12.48106667	1.017656838	8.153604698	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	127.6976	0.854823584	0.669412412
2	EnviraPAC	1.0296	0.513051576	49.83018415	0	0	0	0.415733333	0.077236606	18.57840107	14.80706667	3.591249833	24.25362101	6.008133333	1.590622939	26.47449467	0	0	0	0.1112	0.057131894	51.37760252	0	0	0	0	0	0	0	0	0	0	0	0
3	NY Carbon	0.8148	0.106417292	13.06054148	0	0	0	1.092	0.054953556	5.032376937	13.10546667	1.019675478	7.780535434	74.80506667	2.726406015	3.644680951	0	0	0	1.6244	0.152497257	9.387912879	7.385333333	1.358542886	18.3951465	0	0	0	0	0	0	0	0	0
1	Soil Carbon Innovations	1.133866667	0.239702927	21.14030988	0	0	0	3.2744	0.650746935	19.87377642	16.60013333	2.438783478	14.69134874	116.2088	21.47866786	18.4828239	0	0	0	5.2528	0.721647264	13.73833506	8.6584	2.991821679	34.55397855	0	0	0	0	0	0	543.4666667	99.45960654	18.30095802
6	Acknowledge	0	0	0	0	0	0	0	0	0	0	0	0	9.678335	13.68723262	141.4213562	9.518335	13.46095845	141.4213562	0	0	0	2.21	3.125411973	141.4213562	3.8861115	1.881689634	48.42088637	8.193335	11.58712548	141.4213562	14.991665	21.20141597	141.4213562
15	Restoration Biofuels	4.5	6.363961031	141.4213562	0.1233335	0.174419908	141.4213562	0	0	0	0	0	0	1.4083335	1.991684336	141.4213562	0.1333335	0.188562044	141.4213562	0	0	0	1.85	2.61629509	141.4213562	1.277222	0.234916429	18.39276407	12.788335	4.650407955	36.36445209	14.821665	20.96099966	141.4213562
13	Earth Foundries	0	0	0	0	0	0	0	0	0	0	0	0	12.418335	17.56217778	141.4213562	0	0	0	0	0	0	4.5766665	6.472383835	141.4213562	1.432778	0.7691752	53.68418556	0	0	0	7.896665	11.16757074	141.4213562
14	XLII	10.333335	14.6135425	141.4213562	0.59	0.834386002	141.4213562	1.166667	0.288675	24.74356436	20.5	6.825198	33.29364878	311.74	78.82826397	25.28654134	0	0	0	0	0	0	21.12833	7.488260813	35.44180166	15.988335	10.15169871	63.49440834	15.333335	21.68461031	141.4213562	270.375	69.82679464	25.82590648
19	The Next 150 coco	10.416665	14.73138892	141.4213562	0	0	0	2.333333	1	42.85714898	5.5	1.040833	18.92423636	55.978335	30.13924568	53.84091127	0.783333	0.070710678	9.02689892	46.83333	3.40343	7.267110838	4.485	6.342747827	141.4213562	6.083335	8.603134861	141.4213562	17.166665	24.27733046	141.4213562	107.400015	35.44964589	33.00711447
18	Locoal	9.833335	13.90643572	141.4213562	0.0066665	0.009427855	141.4213562	1	0.288675	28.8675	9.944444	15.80289	158.9117501	154.44165	218.413476	141.4213562	9.5616685	12.57943176	131.561053	0	0	0	9.2055555	0.80924482	8.79083093	6.89	8.640844866	125.4113914	30.063335	10.5170325	34.98292023	24.376665	26.69563566	109.5130759
20	Ahualoa	9	12.72792206	141.4213562	0	0	0	0.222222	0.19245	86.6025866	0	0	0	9.776665	13.82629224	141.4213562	2.56	3.62038672	141.4213562	0	0	0	1.4116665	1.99639791	141.4213562	6.61	9.036824664	136.7144427	17.5	24.74873734	141.4213562	57.26	35.0159278	61.15251101
17	H2	10.916665	15.4384957	141.4213562	0.0316665	0.044783194	141.4213562	2.5	0.288675	11.547	124.3333	69.45202	55.85954849	14.453335	14.78324813	102.282609	0.75	1.060660172	141.4213562	0	0	0	205.1383	26.59428604	12.96407645	9.5499985	12.42150653	130.0681516	19.583335	27.69501795	141.4213562	15.4811095	20.63651614	133.3012736
16	The Next 150 corn	4.9166665	6.953216446	141.4213562	0	0	0	1	0.288675	28.8675	0	0	0	66.275	36.2156476	54.64450788	6.276665	8.876544769	141.4213562	0	0	0	2.6316665	3.721738456	141.4213562	9.506665	3.997507979	42.0495303	4.9166665	6.953216446	141.4213562	45.02	31.61238245	70.21853054
\.


--
-- Data for Name: IC ; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."IC " ("ID", "Sample", "IC % Mean", "IC % St.dev", "IC % CV") FROM stdin;
1	Soil Carbon Innovations	18.46884213	4.183646012	22.65245424
3	NY Carbon	6.475082049	2.078378614	32.09810468
2	EnviraPAC	1.09631404	0.533235633	48.63894955
4	Green State	10.24352	13.16416294	128.5121027
9	COrigin Wood	11.47564	12.66173022	110.3357217
10	GreenC corn cob	9.990016	11.89405937	119.0594627
7	GreenC Bedding	11.387128	3.237363526	28.43002666
12	Sumner's Farm	8.079975907	14.28246521	176.7637103
5	COrigin Shell	-0.360216747	16.20200377	-4497.848564
8	Pacific	4.69834211	2.673863168	56.91078055
11	Organic mechanics	9.05355618	2.071748647	22.88325831
15	Restoration Biofuels	3.844849753	6.338395334	164.8541749
20	Ahualoa	17.0204355	30.61784124	179.8887064
18	Locoal	17.07349219	32.19501742	188.5672659
17	H2	31.64376142	44.15364896	139.5335035
14	XLII	45.32699542	37.7660358	83.3190805
6	Acknowledge	33.65554853	28.72473527	85.34918172
16	The Next 150 corn	17.9339615	15.72431842	87.6790018
19	The Next 150 coco	51.02982647	43.63429789	85.50743931
13	Earth Foundries	29.70937423	22.28039115	74.99448146
\.


--
-- Data for Name: Particle size; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Particle size" ("ID", "Sample", "Particle size class", ">50mm % sample weight AVE", ">50mm % std", ">50mm % CV", "50-25mm % sample weight AVE", "50-25mm %  std", "50-25mm % CV", "25-16mm % sample weight AVE", "25-16mm % std", "25-16mm % CV", "16-8mm % sample weight AVE", "16-8mm % std", "16-8mm % CV", "8-4mm % sample weight AVE", "8-4mm % std", "8-4mm % CV", "4-2mm % sample weight AVE", "4-2mm % std", "4-2mm % CV", "2-1mm % sample weight AVE", "2-1mm % std", "2-1mm % CV", "1-0.5mm % sample weight AVE", "1-0.5mm % std", "1-0.5mm % CV", "<0.5mm % sample weight AVE", "<0.5mm % std", "<0.5mm % CVd") FROM stdin;
1	Soil Carbon Innovations	Blended Powder	0	0	0	0	0	0	0	0	0	0.376666667	0.467582435	124.1369296	3.293333333	1.319103231	40.05374182	23.59666667	10.78791144	45.71794651	34.04666667	11.64485008	34.20261429	21.36333333	13.58923226	63.61007454	17.13	5.665059576	33.0709841
3	NY Carbon	Kernel	0	0	0	11.11	6.67909425	60.11786004	15.12666667	8.48929522	56.12138753	36.34666667	5.694298318	15.66663147	15.13666667	8.26185411	54.58172722	6.713333333	2.608166661	38.8505461	3.61	0.810740402	22.45818289	6.766666667	4.484744511	66.27701249	4.94	2.886052668	58.42211878
2	EnviraPAC	Fine powder	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3.14	4.440630586	141.4213562	21.18	29.95304325	141.4213562	12.6	17.81909089	141.4213562	62.77	51.77435852	82.48264859
31	EnviraPAC	Kernel	0	0	0	0	0	0	0	0	0	2.751666667	0.209775012	7.623561905	41.76666667	11.69083212	27.99081911	25.34833333	10.67966942	42.13164344	14.88166667	0.874455386	5.876058144	7.6	1.555634919	20.46888051	7.653333333	1.631059642	21.3117549
8	Pacific 	Blended Powder	0	0	0	0	0	0	0	0	0	0	0	0	18.08	30.1291437	166.6434939	30.23333333	9.406217802	31.11207652	30.12666667	21.21956723	70.43450065	14.23333333	9.41359832	66.13769312	6.713333333	4.620501416	68.82574105
4	Green State	Kernel	0	0	0	0	0	0	4.573333333	1.056850667	23.10897961	59.84333333	5.050844814	8.440112762	16.89666667	8.841494972	52.32685917	6.39	1.583571912	24.78203305	4.356666667	1.156560994	26.54692412	4.243333333	1.426055165	33.60695597	3.48	3.017018396	86.69593091
12	Sumner's Farm	Kernel	0	0	0	0.506666667	0.877572409	173.2050808	9.316666667	5.244600398	56.29266974	40.02	6.817528878	17.03530454	26.86666667	4.886228948	18.18695638	8.88	3.655502701	41.16557096	3.996666667	3.402974189	85.14530916	4.55	4.324453723	95.04293896	5.803333333	7.22005771	124.4122523
7	GreenC Bedding	Blended Powder	0	0	0	0	0	0	0	0	0	0.006666667	0.011547005	173.2050808	1.763333333	0.785005308	44.51825942	12.01	2.447590652	20.37960576	20.26666667	1.661003713	8.195742003	30.85666667	16.04503142	51.99858946	35.04666667	13.38438394	38.19017672
10	GreenC corn cob	Kernel	0	0	0	0	0	0	0	0	0	0.413333333	0.310859025	75.20782859	23.54	6.242980058	26.52073092	46.75	5.593648183	11.96502285	13.6	1.981893034	14.5727429	8.643333333	2.534449316	29.32259139	6.686666667	1.900140346	28.41685462
11	Organic mechanics	Blended Powder	0	0	0	0	0	0	0.2	0.346410162	173.2050808	1.376666667	0.31214313	22.67383508	1.736666667	0.986525891	56.80571349	6.89	2.775013513	40.27595811	27.18666667	15.54297376	57.17131104	35.04666667	9.972789646	28.45574371	27.40666667	9.476715324	34.57813911
5	COrigin Shell	Blended Powder	0	0	0	0	0	0	0	0	0	1.846666667	1.303277919	70.57461654	12.38333333	2.633141343	21.26359093	27.00666667	1.528572319	5.659981432	15.11	0.63458648	4.199778157	19.62	16.46517233	83.92034829	23.97	13.99885352	58.4015583
9	COrigin Wood	Blended Powder	0	0	0	0	0	0	0	0	0	0.95	0.563471383	59.31277721	16.47	3.079983766	18.70056932	26.33	3.879806696	14.73530838	18.40333333	3.360510874	18.26033802	18.75333333	4.923030909	26.25149792	18.96666667	4.564036956	24.06346374
19	The Next 150 coco	Blended Powder	0	0	0	0	0	0	0	0	0	0.1566665	0.221559889	141.4213562	1.3466665	0.886240263	65.80992869	5.1066665	0.273414858	5.354077024	30.436665	3.554392444	11.67799575	22.318335	2.180243552	9.768844995	40.193335	5.534291431	13.76917698
20	Ahualoa	Kernel	0	0	0	0	0	0	0	0	0	58.698335	16.95877528	28.8914077	20.871665	1.411858897	6.764476609	7.27	3.408254685	46.88108233	4.0066665	4.690474746	117.0667623	2.9633335	4.006938662	135.2172701	6.003335	6.524240925	108.6769425
17	H2	Blended Powder	0	0	0	0	0	0	0	0	0	0.0016665	0.002356787	141.4213562	0.755	0.459619408	60.87674275	46.45	3.705239533	7.976834302	24.665	2.312239174	9.374576017	12.121665	0.087207479	0.719434825	15.83	5.713422792	36.09237392
32	Locoal	Kernel	0	0	0	0	0	0	0	0	0	0.5616665	0.794316382	141.4213562	97.293335	1.904471907	1.957453619	0.8233335	0.301699129	36.64361149	0.2933335	0.287556993	98.0307375	0.3066665	0.263986296	86.08253459	0.6216665	0.398336584	64.07560716
18	Locoal	Blended powder	0	0	0	0	0	0	0	0	0	0.0266665	0.037712126	141.4213562	6.045	7.53068722	124.5771252	24.436665	5.369295135	21.97229096	50.161665	13.97007533	27.85010292	11.533335	2.097752475	18.18860264	7.6966665	0.909810961	11.82084427
15	Restoration Biofuels	Kernel	0	0	0	0	0	0	0.14	0.197989899	141.4213562	21.816665	0.857953871	3.93256197	47.663335	8.353285751	17.52560066	14.383335	1.819619093	12.65088447	7.0633335	1.022948046	14.48251093	3.1666665	1.734768401	54.78216291	5.558335	7.040428875	126.6643496
16	The Next 150 corn	Kernel	0	0	0	0	0	0	0	0	0	0.6966665	0.273414858	39.24616122	51.888335	25.99089061	50.0900455	3.475	3.23147799	92.99217237	18.0466665	18.78547039	104.0938524	10.0716665	0.761318537	7.55901257	15.511665	2.50080334	16.12208193
14	XLII	Blended Powder	0	0	0	0	0	0	1.24	1.753624817	141.4213562	1.7933335	1.140798705	63.61330475	6.4066665	3.214979067	50.18177655	22.473335	11.23828142	50.00718148	21.056665	1.791334822	8.507210529	16.221665	4.51369593	27.82510876	30.775	11.0945054	36.05038309
6	Acknowledge	Lump	0	0	0	11.8466665	5.20902019	43.9703455	33.41	19.09188309	57.14421758	43.186665	10.84230162	25.10567005	6.863335	7.259631977	105.774117	1.2166665	1.635773451	134.4471514	0.4066665	0.546829008	134.4662047	0.3816665	0.256915228	67.31406297	2.68	3.790092347	141.4213562
13	Earth Foundries	Kernel	0	0	0	7.3233335	8.551277771	116.7675591	8.176665	2.795426451	34.18785594	49.475	7.177133829	14.50658682	17.711665	0.582182226	3.286998857	6.5933335	1.5603492	23.66555855	4.2033335	3.554390322	84.56122557	2.2066665	2.611580809	118.3495924	4.2866665	4.662190475	108.7602797
\.


--
-- Data for Name: Plant Available N; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Plant Available N" ("ID", "Sample", "reported_NH4_mean", "reported_NH4_std", "reported_NO3_mean", "reported_NO3_std", "Plant_available_N", "Plant_available_Nlbs_1ton") FROM stdin;
1	Soil Carbon Innovations 	1.443333333	1.305790523	0.275	0.38890873	1.718333333	0.00343667045427963
2	EnviraPAC	0.411666667	0.582184583	0.785	1.110157646	1.196666667	0.00239333597220056
3	NY Carbon	1.075	1.52027958	1.525	2.114249276	2.6	0.005
4	Green State	2.185	2.892066735	1.17	1.428355698	3.355	0.00671000739651493
5	COrigin Shell	2.595	0.586898628	0	0	2.595	0.00519000572100037
7	GreenC Bedding	1.185	1.675843071	0	0	1.185	0.00237000261247994
8	Pacific	0.925	1.308147545	19.775	1.251579003	20.7	0.041
9	COrigin Wood	2.04	2.757716447	0.285	0.403050865	2.325	0.00465000512575178
10	GreenC corn cob	2.685	2.55265548	0	0	2.685	0.00537000591941657
11	Organic mechanics	1.16	1.640487732	0.12	0.169705627	1.28	0
12	Sumner's Farm	0.355	0.332340187	2.885	1.124299782	3.24	0.006
6	Acknowledge	1.07	1.513208512	0.534	0.754482936	1.604	0.00320800353621757
14	XLII	1.595	2.255670632	0.725	1.025304833	2.32	0.005
13	Earth Foundries	1.275	1.803122292	1.565	0.473761543	2.84	0.006
15	Restoration Biofuels	2.255	2.156675683	1.23	0.509116882	3.485	0.0069700076831161
16	The Next 150 corn	1.465	2.071822869	0.7	0.989949494	2.165	0.00433000477301187
17	H2	1.43	2.022325394	2.2	0.664680374	3.63	0.00726000800278665
18	Locoal	1.45	2.008183259	0	0	1.45	0.00290000319670541
19	The Next 150 coco	9.7	12.86934342	3.375	4.023437585	13.075	0.0261500288254643
20	Ahualoa	0.19335	0.273438192	0.085	0.120208153	0.27835	0.000556700613657207
\.


--
-- Data for Name: Priorities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Priorities" ("ID", priority) FROM stdin;
3000	N requirement
3001	P requirement
3002	K requirement
3005	Lime requirement
3006	Increase soil organic matter
3007	Sequester C
3008	Increase drainage
3009	Increase water retention
3010	Biochar nearby
\.


--
-- Data for Name: Proximate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Proximate" ("ID", "Sample", "VM CV", "Ash CV", "Fixed C CV", "Moisture CV", "VM_mean_report", "VM_std_report", ash_report, ash_std_report, fc_report, fc_std_report) FROM stdin;
3	NY Carbon	37.60489087	14.2471255	7.055516349	24.05014696	11.75475261	4.420361892	15.24107461	2.171415028	72.97667278	5.148881078
1	Soil Carbon Innovations	28.77680324	10.33588497	10.88725857	17.41775493	24.34326669	7.005213958	23.85401115	2.465523153	51.83022216	5.642890305
2	EnviraPAC	13.09863385	6.580948398	2.23453418	13.24832671	13.27	1.738188712	2.423333333	0.159478316	84.30666667	1.883861283
4	Green State	12.00262968	49.99731976	5.718455312	28.50966618	15.47156877	1.856995104	7.896609885	3.948093294	76.62307135	4.381656094
11	Organic mechanics	34.48180218	14.87759022	2.930965911	26.83592766	7.46551185	2.574243028	5.191236834	0.772330944	87.34575132	2.560074196
8	Pacific	30.31667435	23.6375733	2.966466036	52.7997474	7.59337172	2.302057777	3.004462971	0.710182137	89.39716531	2.651936546
12	Sumner's Farm	47.11013249	39.60134349	15.78579062	37.36349016	11.05430426	5.207697381	16.59568855	6.572115628	72.35000719	11.42102065
5	COrigin Shell	15.44887536	13.51311018	6.061365202	31.81380081	23.72213834	3.664803585	18.73287452	2.531393973	57.54523714	3.488026979
9	COrigin Wood	10.66441055	44.30884324	5.498129718	21.61838465	23.44209814	2.499961589	8.271790067	3.665134494	68.33961179	3.757400505
10	GreenC corn cob	12.68135074	24.64625964	4.566030981	29.73446046	30.27147086	3.838831393	5.617086286	1.38440167	64.12419286	2.927930512
7	GreenC Bedding	43.27269792	5.246175822	34.32380202	38.4825539	5.1758824	2.239743956	87.74259077	4.603130583	7.091526829	2.434081629
13	Earth Foundries	28.33468116	19.17742361	1.425805698	27.3541894	6.83481817	1.936623937	5.2936	1.015176096	87.87157175	1.252877877
15	Restoration Biofuels	6.47323224	35.37553702	3.503849529	17.54929927	32.05090582	2.074729569	1.330575	0.470698052	66.61602375	2.334125234
6	Acknowledge	14.32272478	36.08635844	4.137585977	19.76708972	9.977010172	1.428979709	6.958	2.51088882	83.062494	3.436782103
14	XLII	20.79436716	6.974050995	3.620444504	21.88555347	14.10899933	2.933877124	42.32875	2.95202861	43.089723	1.560039508
18	Locoal	19.67802724	7.771026368	2.921028363	20.34475871	11.67840313	2.298079349	2.638325	0.205024931	85.683276	2.502832794
16	The Next 150 corn	10.33464216	14.50946906	14.64559813	12.46837525	9.504297634	0.98223515	46.33475	6.722926217	44.1609975	6.467642222
19	The Next 150 coco	6.566563489	13.34966544	17.98805597	16.77514776	18.83231418	1.236635867	45.40525	6.061448967	35.76000475	6.43252967
17	H2	22.44410842	7.828081047	3.485440544	11.73346346	12.41040444	2.785404629	7.8361	0.613416259	79.75598425	2.779847412
20	Ahualoa	6.150396397	13.84516763	3.901788476	42.46251364	19.74333961	1.214293648	2.9892	0.413859751	78.59245	3.066511157
\.


--
-- Data for Name: Sample_IDs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Sample_IDs" (id, sample) FROM stdin;
1	Soil Carbon Innovations
2	EnviraPAC
3	NY Carbon
4	Green State
5	COrigin Shell
6	Acknowledge
7	GreenC Bedding
8	Pacific
9	COrigin Wood
10	GreenC corn cob
11	Organic mechanics
12	Sumner's Farm
13	Earth Foundries
14	XLII
15	Restoration Biofuels
16	The Next 150 corn
17	H2
18	Locoal
19	The Next 150 coco
20	Ahualoa
21	Arbor Works
22	Chestnut Acres
23	Standard Biochar
24	Global Village Institute
25	Qualterra
26	Willoughby Farm
27	Genesis
28	Feres
29	Metzler
30	Stine Seed
\.


--
-- Data for Name: Sample_addresses; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Sample_addresses" ("ID", "Sample", "Address", "City", "State", "Zip_Code", "Latitude", "Longitude") FROM stdin;
1	Soil Carbon Innovations 	1105 E 900 South	Salt Lake City	UT	84105	40.7502528712222	-111.859273217578
2	EnviraPAC	346 Firing Range Road	Monticello	AR	71655	33.6101934664852	-91.7768526024105
3	NY Carbon	1389 NY-212	Saugerties	NY	12477	42.0626064192957	-74.0521594021991
4	Green State	501 Lake Street	Barton	VT	5822	44.7403830821375	-72.1679781021221
5	COrigin Shell	154 Hawk Drive	Merced	CA	95341	37.2837237538566	-120.51678573116
6	Acknowledge	2045 Reed Road	Knoxville	MD	21758	39.3697931425258	-77.6860043176148
7	GreenC Bedding	5674 E 500 S	Francesville	IN	47946	40.941580349425	-86.9374832445583
8	Pacific	3625 Yale Dr.	Santa Rosa	CA	95405	38.4430053265198	-122.676626491953
9	COrigin Wood	154 Hawk Drive	Merced	CA	95341	37.2837237538566	-120.51678573116
10	GreenC corn cob	5674 E 500 S	Francesville	IN	47946	40.941580349425	-86.9374832445583
11	Organic mechanics	PO Box 272	Modena	PA	19358	39.9611393447218	-75.7996722418854
12	Sumner's Farm	7 Old Westbury Lane	Saint Louis	MO	63119	38.5716232343729	-90.3420560599638
13	Earth Foundries	15363 Peach Hill Road	Saratoga	CA	95070	37.2458379259181	-122.026361444654
14	XLII	2485 Holt Stage Road	Kalispell	MT	59901	48.2118332607637	-114.183701330852
15	Restoration Biofuels	60339 US-26	John Day	OR	97845	44.4219569740748	-118.994148585805
16	The Next 150 corn	Naves 38 y 39 Km 4.6, Libramiento Norte Le—n-Queretaro, Revolucion,	Irapuato	GJ	36547	20.679592876505	-101.352040942721
17	H2	1774 Derby Downs Drive	Friendsville	TN	37737	35.7336387624908	-84.092627302362
18	Locoal	4707 NE Minnehaha st. Suite 201	Vancouver	WA	98661	45.6675103152703	-122.623132284465
19	The Next 150 coco	Naves 38 y 39 Km 4.6, Libramiento Norte Le—n-Queretaro, Revolucion,	Irapuato	GJ	36547	20.679592876505	-101.352040942721
20	Ahualoa	46-4091 Old Mamalahoa Hwy.	Honokaa	HI	96727	20.0540377834181	-155.509096646821
21	Arbor Works	1280 b Huff lane P.O. Box 646	Jackson	WY	83001	43.4659423207068	-110.791199715652
22	Chestnut Acres	111 Kelso-Smithland Rd	Kelso	TN	37348	35.1239050599279	-86.4490929443743
23	Standard Biochar	542 Hammett Rd	Enfield	ME	4493	45.2500582699475	-68.5910354462857
24	Global Village Institute	PO Box 90	Summertown	TN	38483	35.4349060164328	-87.3110882827219
25	Qualterra	29128 S Wells Rd	Cheney	WA	98004	47.3879079103067	-117.489750230877
26	Willoughby Farm	631 Willoughby Lane	Collinsville	IL	62234	38.6747429693778	-90.0005978446181
27	Genesis	819 MT Hwy 82	Somers	MT	59932	48.095459516854	-114.165069215512
28	Feres	P.O Box 276 141 14th St	Lyons	OR	97358	44.7746788031476	-122.61457999987
29	Metzler	26 Timber Lane	Reedsville	PA	17084	40.6569184521939	-77.6231718966867
30	Stine Seed	22555 Laredo Trail	Adel	IA	50003	41.7138829568906	-94.0604033022087
31	EnviraPAC Kernel	346 Firing Range Road	Monticello	AR	71655	33.6102560129943	-91.7768633312463
32	Locoal Kernel	4707 NE Minnehaha st. Suite 201	Vancouver	WA	98661	45.6674695221088	-122.623103073236
\.


--
-- Data for Name: Surface Area; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Surface Area" ("ID", "Sample", "SA_mean_m2_g", "SA_std", "SA_CV", "TPV_ave_cm3_g", "Average_pore_diameter_nm") FROM stdin;
3	NY Carbon	437.1185	75.40374583	17.25018406	0.25515	2.612
2	EnviraPAC	442.665	31.62888632	7.145106643	0.24825	2.495
1	Soil Carbon Innovations	32.206	13.72635684	42.62049567	0.07395	4.129
4	Green State	70.5135	95.86458765	135.9521051	0.04495	8.332
12	Sumner's Farm	243.2365	129.5935811	53.27883813	0.15875	2.678
7	GreenC Bedding	186.6015	8.487402695	4.548410755	0.1073	2.589
10	GreenC corn cob	2.3475	2.802264174	119.3722758	0.00825	14.894
5	COrigin Shell	2.4255	1.963635531	80.95796872	0.01045	18.403
9	COrigin Wood	5.5305	6.27840111	113.5232097	0.01055	8.332
8	Pacific	537.8085	17.97253306	3.341809037	0.28205	2.35
11	Organic mechanics	434.772	75.62082761	17.39321474	0.30525	3.024
14	XLII	288.8695	9.714940067	3.363089584	0.19965	3.046
16	The Next 150 corn	49.5795	38.72046023	78.09772231	0.051	3.708
15	Restoration Biofuels	1.517	2.145361974	141.4213562	0.1325	14.647
6	Acknowledge	355.441	17.59423093	4.949972268	0.21185	2.59
13	Earth Foundries	528.42	92.51785125	17.50839318	0.3268	2.705
18	Locoal	2.1075	0.299106168	14.19246351	0.00715	19.137
17	H2	247.1755	79.44415397	32.14078821	0.16295	2.665
20	Ahualoa	130.2915	131.7926832	101.1521728	0.08145	2.434
19	The Next 150 coco	5.343	0.470933116	8.814020518	0.019	14.662
\.


--
-- Data for Name: Total Nutrients; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Total Nutrients" ("ID", "Sample", "Ca_mean (mg/kg)", "Ca_std (mg/kg)", "Ca CV", "K_mean (mg/kg)", "K_std (mg/kg)", "K CV", "Mg_mean (mg/kg)", "Mg_std (mg/kg)", "Mg CV", "Na_mean (mg/kg)", "Na_std (mg/kg)", "Na CV", "S_mean (mg/kg)", "S_std (mg/kg)", "S CV", "P_mean (mg/kg)", "P_std (mg/kg)", "P CV") FROM stdin;
1	Soil Carbon Innovations	39273.57833	6330.441812	16.11883124	15746.13	1481.827113	9.410738466	13846.8642	2117.533738	15.29251466	5020.556667	819.1077813	16.3150789	4321.110667	694.9200315	16.08197718	10957.59275	1523.6038	13.90454851
3	NY Carbon	11939.885	4212.185598	35.27827611	2081.246667	1543.001277	74.13831826	1625.904263	779.2774981	47.92886738	151.645	105.6771084	69.68716967	237.9416667	144.5632674	60.75575976	703.38188	271.4556346	38.59292403
2	EnviraPAC	2801.982	58.89068116	2.101750874	2125.151667	403.1522172	18.97051507	821.0637207	140.2045848	17.0759688	36.58433333	11.92512016	32.59624838	100.015	141.4425694	141.4213562	250.4547973	40.70370996	16.25191867
4	Green State	6973.222	2271.393858	32.57308972	3518.0085	1144.303126	32.52701424	1308.998992	460.3845086	35.17073057	490.7873335	229.5824871	46.77840512	258.299	137.0245663	53.04881795	205.450672	34.68970833	16.88468964
5	COrigin Shell	9162.42165	1619.163725	17.67178795	28124.345	3750.671144	13.3360302	2511.70943	625.2203794	24.89222567	424.645	157.1827664	37.01509882	463.2416665	162.0429468	34.98021842	1646.853545	297.9744935	18.0935636
8	Pacific	3491.07	1572.874182	45.05421495	4571.872	2509.561564	54.89133476	830.454244	483.565941	58.22908901	206.2213335	115.0113896	55.77084953	166.2083335	235.0540794	141.4213562	447.101504	195.0744918	43.63091828
11	Organic mechanics	10051.80935	897.9935802	8.933651136	5379.627	595.1618782	11.06325547	2868.960244	476.4298193	16.60635836	138.8633335	14.45797689	10.41165909	202.3353335	89.76202066	44.36299835	696.8098375	65.23318787	9.361691577
9	COrigin Wood	11403.45965	585.6027138	5.135307457	2432.7385	484.7280625	19.92520209	1431.350492	440.6300665	30.78421875	963.455	189.0732822	19.62450579	94.3516665	133.4334064	141.4213562	345.955672	10.98231866	3.17448724
12	Sumner's Farm	45155.48765	5867.153958	12.99322466	13603.346	717.224065	5.272409193	6060.291992	114.6333343	1.891548038	212.288	117.0290007	55.12746868	649.8886665	41.31672086	6.357507523	3504.938007	210.8187065	6.014905431
7	GreenC Bedding	12365.78802	16180.05694	130.8453365	38792.423	601.2203691	1.549839692	9847.298682	586.5186547	5.956137552	8307.587665	575.6353578	6.929031399	2838.239	304.1846093	10.71737121	12714.25436	1053.502749	8.285997112
10	GreenC corn cob	1084.431665	458.4762495	42.27802122	18268.529	6455.17922	35.33496988	1377.313306	602.5252555	43.74641941	50.81966665	38.18895161	75.14600966	241.4141335	268.1809007	111.0874897	1244.766631	452.0392782	36.31518286
13	Earth Foundries	4356.005	5159.751111	118.4514506	1729.365	1374.424664	79.47568407	2080.26	750.6079904	36.08241231	6520.793333	9039.832224	138.6308653	767.105	1033.2315	134.6923172	515.85165	432.0162925	83.74816529
15	Restoration Biofuels	1291.078334	1299.787186	100.674541	1384.923333	1285.176003	92.79762799	593.45	267.2156526	45.02749223	2061.653333	2882.855491	139.8322135	68.395	80.46168063	117.6426356	117.2183333	59.47003732	50.73441639
6	Acknowledge	23533.96834	8038.816507	34.15835525	12268.005	3877.780659	31.6088937	5852.183334	2145.385544	36.6595751	119.03	168.3338403	141.4213562	474.6633334	231.2192034	48.7122529	1597.253334	712.1790936	44.58773562
14	XLII	35312.99834	9913.399011	28.07294616	17701.62334	4978.677561	28.12554231	7077.821667	2231.612503	31.52965146	1659.621667	781.7607584	47.10475732	1999.198334	672.5033321	33.63865009	3143.845	1212.468927	38.56643462
16	The Next 150 corn	7914.28	2214.347312	27.97913786	23129.83667	6421.241396	27.76172391	4167.806667	1091.028051	26.17751106	505.6683334	336.5851848	66.56244076	971.2266667	373.201531	38.4257912	2968.851667	1057.150565	35.60806278
19	The Next 150 coco	90212.83167	24115.16731	26.73141599	9485.395	3335.981301	35.16966137	6887.341667	1598.073111	23.20304681	6150.266667	2275.375341	36.99636885	6965.096667	2388.979117	34.29929592	30561.76	9600.756464	31.41427871
18	Locoal	5145.183334	1746.57732	33.94587144	858.93	1191.375931	138.7046594	1026.438333	440.9117193	42.9555001	354.47	333.0048675	93.94444312	126.0166667	138.8522016	110.1855852	372.1616667	145.4212236	39.07474537
17	H2	20702.91334	5018.685663	24.24144651	6436.258334	2293.984034	35.641578	1741.071667	505.918403	29.05787354	130.855	185.0569157	141.4213562	305.6483334	182.4076223	59.67891932	644.1533334	222.7197799	34.57558447
20	Ahualoa	9262.858334	2313.924445	24.98067402	2054.256667	1479.86607	72.03900537	1414.375	499.0406108	35.28347226	608.185	421.6972711	69.33700619	253.6433334	168.2584156	66.33662055	758.24	266.211561	35.10914235
\.


--
-- Data for Name: Ultimate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Ultimate" ("ID", "Sample", "%C CV", "%N CV", "%H CV", "%S CV", "%O CV", "percentC_mean_reported", "percentC_std_reported", "percentN_mean_reported", "percentN_std_reported", "percentH_mean_reported", "percentH_std_reported", "percentS_mean_reported", "percentS_std_reported", "percentO_mean_reported", "percentO_std_reported") FROM stdin;
3	NY Carbon	1.617927334	126.8568684	48.82462944	141.4213562	37.30312902	78.51333333	1.270288681	0.296666667	0.376342043	0.923333333	0.450814078	0.035	0.049497475	5.99	2.234457429
1	Soil Carbon Innovations	4.79569825	43.26203478	17.06356763	141.4213562	1.511905947	57.09	2.737864131	2.285	0.459619408	1.763333333	0.300887576	0.4	0.282842712	12.16	0.183847763
2	EnviraPAC	1.868472265	124.89996	11.78620257	141.4213562	19.92534572	88.41333333	1.651978612	0.25	0.3122499	2.08	0.245153013	0.025	0.035355339	5.82	1.159655121
5	COrigin Shell	3.964142412	51.57566525	18.1359136	141.4213562	78.09564493	57.89	2.294842042	1.14	0.587962584	2.733333333	0.495714972	0.005	0.007071068	23.315	18.20799962
10	GreenC corn cob	1.159606272	78.08346399	6.410145505	0	50.02373819	71.42	0.828190799	0.483333333	0.377403409	3.4	0.217944947	0	0	18.475	9.24188563
9	COrigin Wood	2.963360813	88.47448694	6.783557094	141.4213562	67.12435525	73.23	2.170069123	0.386666667	0.34210135	2.9	0.196723156	0.01	0.014142136	17.055	11.44805879
12	Sumner's Farm	4.746649051	53.3291665	9.994373508	141.4213562	88.94961713	69.52666667	3.300186863	0.5	0.266645833	1.106666667	0.1106044	0.055	0.077781746	19.055	16.94934955
8	Pacific	3.625481551	119.1394766	49.20183422	0	88.5447872	84.93333333	3.079242331	0.293333333	0.349475798	0.646666667	0.318171861	0	0	9.04	8.004448763
7	GreenC Bedding	41.76434628	43.77732383	81.46432549	29.18218462	108.2073759	33.82333333	14.12609406	0.56	0.245153013	0.726666667	0.591974099	0.315	0.091923882	26.995	29.21058113
11	Organic mechanics	3.575926215	107.8547776	54.17282506	141.4213562	79.63454978	84.67666667	3.027975121	0.303333333	0.327159492	0.61	0.330454233	0.005	0.007071068	8.835	7.035712473
4	Green State	5.076433268	127.1544418	15.34523644	0	67.65634565	76.95	3.906315399	0.193333333	0.245831921	2.23	0.342198773	0	0	12.27	8.301433611
6	Acknowledge	2.748840061	109.6598055	21.37251231	141.4213562	0	73.56166667	2.022092563	0.199444333	0.218710268	1.401333333	0.299500139	0.0115	0.016263456	7.89	0
20	Ahualoa	1.329318154	78.15877031	13.06449124	0	0	78.80166667	1.04752486	0.296777667	0.231957775	2.510277667	0.327955006	0	0	8.95	0
13	Earth Foundries	3.481310961	130.3671174	31.85074152	141.4213562	0	78.61	2.736658546	0.152222333	0.198447868	0.923722333	0.294212413	0.04725	0.066821591	5.85	0
17	H2	0.66410522	74.89219151	30.25850366	141.4213562	0	80.665	0.535700476	0.408	0.305560141	1.312277667	0.397075586	0.003	0.004242641	6.37	0
18	Locoal	0.354612117	133.2837574	70.89284997	0	0	85.43222333	0.302953016	0.944833333	1.259309368	1.550889	1.099469412	0	0	5.13	0
15	Restoration Biofuels	3.789274562	110.2214692	12.80300391	141.4213562	0	69.81611	2.645524097	0.103889	0.114507982	3.455055667	0.442350912	0.00575	0.008131728	20.17	0
19	The Next 150 coco	1.689483586	25.71364308	9.825047205	141.4213562	0	39.52889	0.667834108	1.157333333	0.297592563	1.624	0.159558767	0.3405	0.481539718	11.05	0
16	The Next 150 corn	8.028835949	43.85029063	19.83837797	141.4213562	0	50.23444333	4.033241045	0.562	0.246438633	1.329111	0.263674064	0.08475	0.119854599	5.56	0
14	XLII	2.473321923	114.2561499	42.29498538	141.4213562	0	46.31666667	1.14556027	0.1325	0.151389399	0.927416667	0.392250744	0.13975	0.197636345	10.5	0
\.


--
-- Data for Name: pH and EC; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."pH and EC" ("ID", "Sample", "pH CV", "EC CV", "pH_reported", "pH_std_report", "EC_reported", "EC_std_report") FROM stdin;
1	Soil Carbon Innovations	5.817056878	26.25822025	10.47167	0.609143	1107.783	290.8841
3	NY Carbon	10.64374067	43.62471833	8.778333	0.934343	167.4417	73.04597
2	EnviraPAC	7.957035465	28.43214479	9.147917	0.727903	226.5375	64.40947
8	Pacific 	1.595365261	18.69013213	10.17792	0.162375	751.175	140.3956
10	GreenC corn cob	3.948396144	17.50967493	8.5575	0.337884	646.775	113.2482
5	COrigin Shell	3.248928852	68.08705257	10.20167	0.331445	1706.555	1161.943
9	COrigin Wood	3.832480418	44.06703867	9.09625	0.348612	171.8083	75.71083
7	GreenC Bedding	1.916330884	23.23354663	10.5475	0.202125	2549.538	592.3481
4	Green State	3.22949744	23.6285029	8.612083	0.278127	339.4083	80.1971
11	Organic mechanics	4.101523304	11.0462042	9.89625	0.405897	591.2125	65.30654
12	Sumner's Farm	2.341411839	6.679140186	10.06333	0.235624	1654.171	110.4844
13	Earth Foundries	1.189236553	1.270262513	9.875556667	0.11744373	394.3678	5.009506326
6	Acknowledge	0.696194291	8.594473203	10.11555667	0.070423928	1973.222	169.588036
14	XLII	1.132468241	7.304204047	9.726666667	0.110151411	1410.444667	103.0217564
15	Restoration Biofuels	10.37195258	25.8691379	7.773333333	0.806246447	160.6444667	41.55733862
17	H2	0.823939199	14.05346574	10.50555667	0.086559399	679.2	95.45113933
20	Ahualoa	3.015488423	19.44975225	9.105555667	0.274576977	213.1112	41.44960042
16	The Next 150 corn	4.526501407	4.304936242	10.83222333	0.490320742	1905	82.00903541
19	The Next 150 coco	3.579147608	11.57042559	9.034444333	0.323356098	1881.111	217.6525485
18	Locoal	1.513325829	12.89828688	8.12	0.122882057	96.07777667	12.39238726
\.


--
-- Name: Biochar feedstock and production conditions Biochar feedstock and production conditions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Biochar feedstock and production conditions"
    ADD CONSTRAINT "Biochar feedstock and production conditions_pkey" PRIMARY KEY ("ID");


--
-- Name: CH4 CH4_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CH4"
    ADD CONSTRAINT "CH4_pkey" PRIMARY KEY ("ID");


--
-- Name: CTO375 CTO375_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CTO375"
    ADD CONSTRAINT "CTO375_pkey" PRIMARY KEY ("ID");


--
-- Name: CaCO3-eq CaCO3-eq_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CaCO3-eq"
    ADD CONSTRAINT "CaCO3-eq_pkey" PRIMARY KEY ("ID");


--
-- Name: Crop Nutrients USA Crop Nutrients USA_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Crop Nutrients USA"
    ADD CONSTRAINT "Crop Nutrients USA_pkey" PRIMARY KEY ("Num");


--
-- Name: Crop_Fertilizer_Guide Crop_Fertilizer_Guide_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Crop_Fertilizer_Guide"
    ADD CONSTRAINT "Crop_Fertilizer_Guide_pkey" PRIMARY KEY ("ID");


--
-- Name: DOC_DIC_TDN DOC_DIC_TDN_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."DOC_DIC_TDN"
    ADD CONSTRAINT "DOC_DIC_TDN_pkey" PRIMARY KEY ("ID");


--
-- Name: Extractable Nutrients Extractable Nutrients_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Extractable Nutrients"
    ADD CONSTRAINT "Extractable Nutrients_pkey" PRIMARY KEY ("ID");


--
-- Name: Extractable P Extractable P_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Extractable P"
    ADD CONSTRAINT "Extractable P_pkey" PRIMARY KEY ("ID");


--
-- Name: FTIR  FTIR _pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FTIR "
    ADD CONSTRAINT "FTIR _pkey" PRIMARY KEY ("ID");


--
-- Name: H:C ratio H:C ratio_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."H:C ratio"
    ADD CONSTRAINT "H:C ratio_pkey" PRIMARY KEY ("ID");


--
-- Name: Heavy Metals Heavy Metals_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Heavy Metals"
    ADD CONSTRAINT "Heavy Metals_pkey" PRIMARY KEY ("ID");


--
-- Name: IC  IC _pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."IC "
    ADD CONSTRAINT "IC _pkey" PRIMARY KEY ("ID");


--
-- Name: Particle size Particle size_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Particle size"
    ADD CONSTRAINT "Particle size_pkey" PRIMARY KEY ("ID");


--
-- Name: Plant Available N Plant Available N_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Plant Available N"
    ADD CONSTRAINT "Plant Available N_pkey" PRIMARY KEY ("ID");


--
-- Name: Priorities Priorities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Priorities"
    ADD CONSTRAINT "Priorities_pkey" PRIMARY KEY ("ID");


--
-- Name: Proximate Proximate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Proximate"
    ADD CONSTRAINT "Proximate_pkey" PRIMARY KEY ("ID");


--
-- Name: Sample_IDs Sample_IDs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Sample_IDs"
    ADD CONSTRAINT "Sample_IDs_pkey" PRIMARY KEY (id);


--
-- Name: Sample_addresses Sample_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Sample_addresses"
    ADD CONSTRAINT "Sample_addresses_pkey" PRIMARY KEY ("ID");


--
-- Name: Surface Area Surface Area_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Surface Area"
    ADD CONSTRAINT "Surface Area_pkey" PRIMARY KEY ("ID");


--
-- Name: Total Nutrients Total Nutrients_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Total Nutrients"
    ADD CONSTRAINT "Total Nutrients_pkey" PRIMARY KEY ("ID");


--
-- Name: Ultimate Ultimate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Ultimate"
    ADD CONSTRAINT "Ultimate_pkey" PRIMARY KEY ("ID");


--
-- Name: pH and EC pH and EC_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."pH and EC"
    ADD CONSTRAINT "pH and EC_pkey" PRIMARY KEY ("ID");


--
-- PostgreSQL database dump complete
--

