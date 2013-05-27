--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: elle; Type: SCHEMA; Schema: -; Owner: campus
--

CREATE SCHEMA elle;


ALTER SCHEMA elle OWNER TO campus;

SET search_path = elle, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _map; Type: TABLE; Schema: elle; Owner: campus; Tablespace: 
--

CREATE TABLE _map (
    mapa character varying(255) NOT NULL,
    nombre_capa character varying(255) NOT NULL,
    nombre_tabla character varying(255),
    posicion integer DEFAULT 0 NOT NULL,
    visible boolean,
    max_escala character varying(50),
    min_escala character varying(50),
    grupo character varying,
    schema character varying,
    localizador boolean
);


ALTER TABLE elle._map OWNER TO campus;

--
-- Name: _map_overview; Type: TABLE; Schema: elle; Owner: campus; Tablespace: 
--

CREATE TABLE _map_overview (
    mapa character varying NOT NULL,
    nombre_capa character varying NOT NULL,
    schema character varying,
    posicion integer,
    nombre_tabla character varying
);


ALTER TABLE elle._map_overview OWNER TO campus;

--
-- Name: _map_overview_style; Type: TABLE; Schema: elle; Owner: campus; Tablespace: 
--

CREATE TABLE _map_overview_style (
    nombre_capa character varying NOT NULL,
    nombre_estilo character varying NOT NULL,
    tipo character varying(3),
    definicion xml
);


ALTER TABLE elle._map_overview_style OWNER TO campus;

--
-- Name: _map_style; Type: TABLE; Schema: elle; Owner: campus; Tablespace: 
--

CREATE TABLE _map_style (
    nombre_capa character varying NOT NULL,
    nombre_estilo character varying NOT NULL,
    type character varying(3),
    definicion xml
);


ALTER TABLE elle._map_style OWNER TO campus;

--
-- Data for Name: _map; Type: TABLE DATA; Schema: elle; Owner: campus
--

COPY _map (mapa, nombre_capa, nombre_tabla, posicion, visible, max_escala, min_escala, grupo, schema, localizador) FROM stdin;
Vista general	parking	parking	0	t	\N	\N		campus	\N
Vista general	carretera	carretera	1	t	\N	\N		campus	\N
Vista general	campus_aceras	campus_aceras	7	t	\N	\N		campus	\N
Vista general	jardines	jardines	8	t	\N	\N		campus	\N
Vista general	arbolado3	arbolado3	9	t	\N	\N		campus	\N
Vista general	arboles	arboles	10	t	\N	\N		campus	\N
Vista general	edificios	edificios	11	t	\N	\N		campus	\N
Vista general	campus_base	campus_base	12	t	\N	\N		cartografia_base	\N
campus_simb	arbolado3	arbolado3	4	t	6000.0	\N		campus	\N
campus_simb	arboles	arboles	5	t	4000.0	\N		campus	\N
campus_simb	campus_aceras	campus_aceras	6	t	5000.0	\N		campus	\N
campus_simb	campus_base	campus_base	1	t	\N	\N		cartografia_base	\N
campus_simb	carretera	carretera	7	t	\N	\N		campus	\N
campus_simb	edificios	edificios	2	t	\N	\N		campus	\N
campus_simb	jardines	jardines	3	t	6000.0	\N		campus	\N
campus_simb	parking	parking	8	t	6000.0	\N		campus	\N
Vista general	Senda_03_POL	senda_03_pol	2	t	\N	\N		campus	\N
Vista general	Carril_Bici_01	carril_bici_01	3	t	\N	\N		campus	\N
Vista general	PuntosLuz_01	puntosluz_01	4	t	\N	\N		campus	\N
Vista general	Parada_Bus	parada_bus	5	t	\N	\N		campus	\N
Vista general	Marquesina_01	marquesina_01	6	t	\N	\N		campus	\N
\.


--
-- Data for Name: _map_overview; Type: TABLE DATA; Schema: elle; Owner: campus
--

COPY _map_overview (mapa, nombre_capa, schema, posicion, nombre_tabla) FROM stdin;
\.


--
-- Data for Name: _map_overview_style; Type: TABLE DATA; Schema: elle; Owner: campus
--

COPY _map_overview_style (nombre_capa, nombre_estilo, tipo, definicion) FROM stdin;
\.


--
-- Data for Name: _map_style; Type: TABLE DATA; Schema: elle; Owner: campus
--

COPY _map_style (nombre_capa, nombre_estilo, type, definicion) FROM stdin;
parking	campus_simb	gvl	<xml-tag xmlns="http://www.gvsig.gva.es">\n    <property key="className" value="com.iver.cit.gvsig.fmap.rendering.SingleSymbolLegend"/>\n    <xml-tag>\n        <property key="className" value="com.iver.cit.gvsig.fmap.core.symbols.SimpleFillSymbol"/>\n        <property key="color" value="204,204,204,115"/>\n        <property key="hasFill" value="true"/>\n        <property key="desc" value=""/>\n        <property key="isShapeVisible" value="true"/>\n        <property key="referenceSystem" value="0"/>\n        <property key="unit" value="-1"/>\n        <property key="hasOutline" value="true"/>\n        <xml-tag>\n            <property key="className" value="com.iver.cit.gvsig.fmap.core.symbols.SimpleLineSymbol"/>\n            <property key="isShapeVisible" value="true"/>\n            <property key="desc"/>\n            <property key="unit" value="-1"/>\n            <property key="referenceSystem" value="0"/>\n            <property key="color" value="128,128,128,153"/>\n            <xml-tag>\n                <property key="className" value="com.iver.cit.gvsig.fmap.core.styles.SimpleLineStyle"/>\n                <property key="desc"/>\n                <property key="lineWidth" value="1.0"/>\n                <property key="dashPhase" value="0.0"/>\n                <property key="endCap" value="0"/>\n                <property key="lineJoin" value="2"/>\n                <property key="miterLimit" value="10.0"/>\n                <property key="offset" value="0.0"/>\n                <property key="unit" value="0"/>\n            </xml-tag>\n        </xml-tag>\n    </xml-tag>\n</xml-tag>\n
carretera	campus_simb	gvl	<xml-tag xmlns="http://www.gvsig.gva.es">\n    <property key="className" value="com.iver.cit.gvsig.fmap.rendering.SingleSymbolLegend"/>\n    <xml-tag>\n        <property key="className" value="com.iver.cit.gvsig.fmap.core.symbols.SimpleFillSymbol"/>\n        <property key="color" value="117,121,145,119"/>\n        <property key="hasFill" value="true"/>\n        <property key="desc"/>\n        <property key="isShapeVisible" value="true"/>\n        <property key="referenceSystem" value="0"/>\n        <property key="unit" value="-1"/>\n        <property key="hasOutline" value="false"/>\n        <xml-tag>\n            <property key="className" value="com.iver.cit.gvsig.fmap.core.symbols.SimpleLineSymbol"/>\n            <property key="isShapeVisible" value="true"/>\n            <property key="desc"/>\n            <property key="unit" value="-1"/>\n            <property key="referenceSystem" value="0"/>\n            <property key="color" value="128,128,128,255"/>\n            <xml-tag>\n                <property key="className" value="com.iver.cit.gvsig.fmap.core.styles.SimpleLineStyle"/>\n                <property key="desc"/>\n                <property key="lineWidth" value="1.0"/>\n                <property key="dashPhase" value="0.0"/>\n                <property key="endCap" value="0"/>\n                <property key="lineJoin" value="2"/>\n                <property key="miterLimit" value="10.0"/>\n                <property key="offset" value="0.0"/>\n                <property key="unit" value="0"/>\n            </xml-tag>\n        </xml-tag>\n    </xml-tag>\n</xml-tag>\n
campus_aceras	campus_simb	gvl	<xml-tag xmlns="http://www.gvsig.gva.es">\n    <property key="className" value="com.iver.cit.gvsig.fmap.rendering.SingleSymbolLegend"/>\n    <xml-tag>\n        <property key="className" value="com.iver.cit.gvsig.fmap.core.symbols.SimpleFillSymbol"/>\n        <property key="color" value="0,0,204,149"/>\n        <property key="hasFill" value="true"/>\n        <property key="desc"/>\n        <property key="isShapeVisible" value="true"/>\n        <property key="referenceSystem" value="0"/>\n        <property key="unit" value="-1"/>\n        <property key="hasOutline" value="true"/>\n        <xml-tag>\n            <property key="className" value="com.iver.cit.gvsig.fmap.core.symbols.SimpleLineSymbol"/>\n            <property key="isShapeVisible" value="true"/>\n            <property key="desc"/>\n            <property key="unit" value="-1"/>\n            <property key="referenceSystem" value="0"/>\n            <property key="color" value="0,0,102,255"/>\n            <xml-tag>\n                <property key="className" value="com.iver.cit.gvsig.fmap.core.styles.SimpleLineStyle"/>\n                <property key="desc"/>\n                <property key="lineWidth" value="1.0"/>\n                <property key="dashPhase" value="0.0"/>\n                <property key="endCap" value="0"/>\n                <property key="lineJoin" value="2"/>\n                <property key="miterLimit" value="10.0"/>\n                <property key="offset" value="0.0"/>\n                <property key="unit" value="0"/>\n            </xml-tag>\n        </xml-tag>\n    </xml-tag>\n</xml-tag>\n
arboles	campus_simb	gvl	<xml-tag xmlns="http://www.gvsig.gva.es">\n    <property key="className" value="com.iver.cit.gvsig.fmap.rendering.SingleSymbolLegend"/>\n    <xml-tag>\n        <property key="className" value="com.iver.cit.gvsig.fmap.core.symbols.SimpleMarkerSymbol"/>\n        <property key="desc"/>\n        <property key="isShapeVisible" value="true"/>\n        <property key="color" value="0,102,0,255"/>\n        <property key="rotation" value="0.0"/>\n        <property key="offsetX" value="0.0"/>\n        <property key="offsetY" value="0.0"/>\n        <property key="size" value="6.0"/>\n        <property key="outline" value="false"/>\n        <property key="unit" value="-1"/>\n        <property key="referenceSystem" value="0"/>\n        <property key="markerStyle" value="0"/>\n    </xml-tag>\n</xml-tag>\n
arbolado3	campus_simb	gvl	<xml-tag xmlns="http://www.gvsig.gva.es">\n    <property key="className" value="com.iver.cit.gvsig.fmap.rendering.SingleSymbolLegend"/>\n    <xml-tag>\n        <property key="className" value="com.iver.cit.gvsig.fmap.core.symbols.SimpleFillSymbol"/>\n        <property key="color" value="0,153,0,166"/>\n        <property key="hasFill" value="true"/>\n        <property key="desc"/>\n        <property key="isShapeVisible" value="true"/>\n        <property key="referenceSystem" value="0"/>\n        <property key="unit" value="-1"/>\n        <property key="hasOutline" value="false"/>\n        <xml-tag>\n            <property key="className" value="com.iver.cit.gvsig.fmap.core.symbols.SimpleLineSymbol"/>\n            <property key="isShapeVisible" value="true"/>\n            <property key="desc"/>\n            <property key="unit" value="-1"/>\n            <property key="referenceSystem" value="0"/>\n            <property key="color" value="128,128,128,255"/>\n            <xml-tag>\n                <property key="className" value="com.iver.cit.gvsig.fmap.core.styles.SimpleLineStyle"/>\n                <property key="desc"/>\n                <property key="lineWidth" value="1.0"/>\n                <property key="dashPhase" value="0.0"/>\n                <property key="endCap" value="0"/>\n                <property key="lineJoin" value="2"/>\n                <property key="miterLimit" value="10.0"/>\n                <property key="offset" value="0.0"/>\n                <property key="unit" value="0"/>\n            </xml-tag>\n        </xml-tag>\n    </xml-tag>\n</xml-tag>\n
jardines	campus_simb	gvl	<xml-tag xmlns="http://www.gvsig.gva.es">\n    <property key="className" value="com.iver.cit.gvsig.fmap.rendering.SingleSymbolLegend"/>\n    <xml-tag>\n        <property key="className" value="com.iver.cit.gvsig.fmap.core.symbols.SimpleFillSymbol"/>\n        <property key="color" value="0,204,0,140"/>\n        <property key="hasFill" value="true"/>\n        <property key="desc"/>\n        <property key="isShapeVisible" value="true"/>\n        <property key="referenceSystem" value="0"/>\n        <property key="unit" value="-1"/>\n        <property key="hasOutline" value="true"/>\n        <xml-tag>\n            <property key="className" value="com.iver.cit.gvsig.fmap.core.symbols.SimpleLineSymbol"/>\n            <property key="isShapeVisible" value="true"/>\n            <property key="desc"/>\n            <property key="unit" value="-1"/>\n            <property key="referenceSystem" value="0"/>\n            <property key="color" value="0,102,0,255"/>\n            <xml-tag>\n                <property key="className" value="com.iver.cit.gvsig.fmap.core.styles.SimpleLineStyle"/>\n                <property key="desc"/>\n                <property key="lineWidth" value="1.0"/>\n                <property key="dashPhase" value="0.0"/>\n                <property key="endCap" value="0"/>\n                <property key="lineJoin" value="2"/>\n                <property key="miterLimit" value="10.0"/>\n                <property key="offset" value="0.0"/>\n                <property key="unit" value="0"/>\n            </xml-tag>\n        </xml-tag>\n    </xml-tag>\n</xml-tag>\n
edificios	campus_simb	gvl	<xml-tag xmlns="http://www.gvsig.gva.es">\n    <property key="className" value="com.iver.cit.gvsig.fmap.rendering.SingleSymbolLegend"/>\n    <xml-tag>\n        <property key="className" value="com.iver.cit.gvsig.fmap.core.symbols.SimpleFillSymbol"/>\n        <property key="color" value="102,102,102,153"/>\n        <property key="hasFill" value="true"/>\n        <property key="desc"/>\n        <property key="isShapeVisible" value="true"/>\n        <property key="referenceSystem" value="0"/>\n        <property key="unit" value="-1"/>\n        <property key="hasOutline" value="true"/>\n        <xml-tag>\n            <property key="className" value="com.iver.cit.gvsig.fmap.core.symbols.SimpleLineSymbol"/>\n            <property key="isShapeVisible" value="true"/>\n            <property key="desc"/>\n            <property key="unit" value="-1"/>\n            <property key="referenceSystem" value="0"/>\n            <property key="color" value="128,128,128,255"/>\n            <xml-tag>\n                <property key="className" value="com.iver.cit.gvsig.fmap.core.styles.SimpleLineStyle"/>\n                <property key="desc"/>\n                <property key="lineWidth" value="1.0"/>\n                <property key="dashPhase" value="0.0"/>\n                <property key="endCap" value="0"/>\n                <property key="lineJoin" value="2"/>\n                <property key="miterLimit" value="10.0"/>\n                <property key="offset" value="0.0"/>\n                <property key="unit" value="0"/>\n            </xml-tag>\n        </xml-tag>\n    </xml-tag>\n</xml-tag>\n
campus_base	campus_simb	gvl	<xml-tag xmlns="http://www.gvsig.gva.es">\n    <property key="className" value="com.iver.cit.gvsig.fmap.rendering.SingleSymbolLegend"/>\n    <xml-tag>\n        <property key="className" value="com.iver.cit.gvsig.fmap.core.symbols.SimpleLineSymbol"/>\n        <property key="isShapeVisible" value="true"/>\n        <property key="desc"/>\n        <property key="unit" value="-1"/>\n        <property key="referenceSystem" value="0"/>\n        <property key="color" value="200,201,195,255"/>\n        <xml-tag>\n            <property key="className" value="com.iver.cit.gvsig.fmap.core.styles.SimpleLineStyle"/>\n            <property key="desc"/>\n            <property key="lineWidth" value="0.5"/>\n            <property key="dashPhase" value="0.0"/>\n            <property key="endCap" value="0"/>\n            <property key="lineJoin" value="2"/>\n            <property key="miterLimit" value="10.0"/>\n            <property key="offset" value="0.0"/>\n            <property key="unit" value="0"/>\n        </xml-tag>\n    </xml-tag>\n</xml-tag>\n
\.


--
-- Name: _map_overview_pkey; Type: CONSTRAINT; Schema: elle; Owner: campus; Tablespace: 
--

ALTER TABLE ONLY _map_overview
    ADD CONSTRAINT _map_overview_pkey PRIMARY KEY (mapa, nombre_capa);


--
-- Name: _map_overview_style_pkey; Type: CONSTRAINT; Schema: elle; Owner: campus; Tablespace: 
--

ALTER TABLE ONLY _map_overview_style
    ADD CONSTRAINT _map_overview_style_pkey PRIMARY KEY (nombre_capa, nombre_estilo);


--
-- Name: _map_pkey; Type: CONSTRAINT; Schema: elle; Owner: campus; Tablespace: 
--

ALTER TABLE ONLY _map
    ADD CONSTRAINT _map_pkey PRIMARY KEY (mapa, nombre_capa);


--
-- Name: _map_style_pkey; Type: CONSTRAINT; Schema: elle; Owner: campus; Tablespace: 
--

ALTER TABLE ONLY _map_style
    ADD CONSTRAINT _map_style_pkey PRIMARY KEY (nombre_capa, nombre_estilo);


--
-- PostgreSQL database dump complete
--

