--usar función para la creación de los guid--
SELECT uuid_generate_v4();

--eliminar dominios--
DROP DOMAIN Dom_Roca;
DROP DOMAIN Dom_Meteor;
DROP DOMAIN Dom_Estratif;
DROP DOMAIN Dom_Lamina;
DROP DOMAIN Dom_Altera;
DROP DOMAIN Dom_Discon;
DROP DOMAIN Dom_Ind_Cinem;
DROP DOMAIN Dom_Tipo_Estratif;
DROP DOMAIN Dom_Tipo_Lamina;
DROP DOMAIN Dom_Estruct_Sed;
DROP DOMAIN Dom_TipoSedimen;
DROP DOMAIN Dom_GeomEstrat;
DROP DOMAIN Dom_Espesor;
DROP DOMAIN Dom_Fosiles;
DROP DOMAIN Dom_TipoFos;
DROP DOMAIN Dom_Columna;
DROP DOMAIN Dom_Alteracion;
DROP DOMAIN Dom_EstiloAlt;
DROP DOMAIN Dom_Tipo_Disconti;
DROP DOMAIN Dom_Persistenc;
DROP DOMAIN Dom_DatoEstruct;
DROP DOMAIN Dom_Class_Met;
DROP DOMAIN Dom_Class_Pluto;
DROP DOMAIN Dom_Class_Volca;
DROP DOMAIN Dom_Roca_Sed;
DROP DOMAIN Dom_Facies;
DROP DOMAIN Dom_Grado_Met;
DROP DOMAIN Dom_Tipo_Met;
DROP DOMAIN Dom_EstructMet;
DROP DOMAIN Dom_Compo_Met;
DROP DOMAIN Dom_Zona_Met;
DROP DOMAIN Dom_Magma;
DROP DOMAIN Dom_TextIgn;
DROP DOMAIN Dom_Ambient_Sed;
DROP DOMAIN Dom_Eon_Geo;
DROP DOMAIN Dom_Era_Geo;
DROP DOMAIN Dom_Period_Geo;
DROP DOMAIN Dom_Epoc_Geo;
DROP DOMAIN Dom_Tipo_ContUG;
DROP DOMAIN Dom_Tipo_Falla;
DROP DOMAIN Dom_Cinema;
DROP DOMAIN Dom_Pliegue_Geom;
DROP DOMAIN Dom_Pliegue_Estrat;
DROP DOMAIN Dom_Pliegue_AnaGeom;
DROP DOMAIN Dom_Pliegue_Config;
DROP DOMAIN Dom_Pliegue_Aper;
DROP DOMAIN Dom_Pliegue_Estilo;
DROP DOMAIN Dom_Pliegue_ExtReg;
DROP DOMAIN Dom_ProcesoMorfodin;
DROP DOMAIN Dom_NombProceso;
DROP DOMAIN Dom_EstadoProceso;
DROP DOMAIN Dom_Geoestruct;
DROP DOMAIN Dom_AmbMorfogen;
DROP DOMAIN Dom_Paisaje;
DROP DOMAIN Dom_Tipo_Relieve;
DROP DOMAIN Dom_Facies_Material;
DROP DOMAIN Dom_Forma_Terreno;
DROP DOMAIN Dom_Provincia;
DROP DOMAIN Dom_Componente;
DROP DOMAIN Dom_TipoMov;
DROP DOMAIN Dom_SubtMM;
DROP DOMAIN Dom_Parte;
DROP DOMAIN Dom_EstiloMM;
DROP DOMAIN Dom_EstadoMM;
DROP DOMAIN Dom_MetGeof;
DROP DOMAIN Dom_UnidadGeof;
DROP DOMAIN Dom_Mallado;
DROP DOMAIN Dom_TipoTecnica;

--crear dominios--
CREATE DOMAIN Dom_Roca AS CHAR(16) CONSTRAINT Dom_Roca_const CHECK (VALUE IN ('Roca fresca', 
													   'Roca meteorizada', 
													   'Saprolito', 
													   'Regolito'));

CREATE DOMAIN Dom_Meteor AS CHAR(25) CONSTRAINT Dom_Meteor_const CHECK (VALUE IN ('Débilmente meteorizada', 
														 'Moderadamente meteorizada', 
														 'Altamente meteorizada', 
														 'Completamente meteorizada'));

CREATE DOMAIN Dom_Estratif AS CHAR(2) CONSTRAINT Dom_Estratif_const CHECK (VALUE IN ('Si', 'No'));

CREATE DOMAIN Dom_Lamina AS CHAR(2) CONSTRAINT Dom_Lamina_const CHECK (VALUE IN ('Si', 'No'));

CREATE DOMAIN Dom_Altera AS CHAR(2) CONSTRAINT Dom_Altera_const CHECK (VALUE IN ('Si', 'No'));

CREATE DOMAIN Dom_Discon AS CHAR(2) CONSTRAINT Dom_Discon_const CHECK (VALUE IN ('Si', 'No'));

CREATE DOMAIN Dom_Ind_Cinem AS CHAR(23) CONSTRAINT Dom_Ind_Cinem_const CHECK (VALUE IN ('Estrías de falla', 
															'Escalones mineralizados', 
															'Venas sigmoidales', 
															'Planos de falla', 
															'Brechas',
															'Harina de falla',
															'Cataclasitas'));
															
CREATE DOMAIN Dom_Tipo_Estratif AS CHAR(22) CONSTRAINT Dom_Tipo_Estratif_const CHECK (VALUE IN ('Paralela',
																'Cruzada',
																'Cruzada tangencial',
																'Cruzada planar',
																'Cruzada en artesa',
																'Gradada',
																'Flaser',
																'Lenticular',
																'Ondulada',
																'Imbricación de clastos'));

CREATE DOMAIN Dom_Tipo_Lamina AS CHAR(22) CONSTRAINT Dom_Tipo_Lamina_const CHECK (VALUE IN ('Paralela',
																'Cruzada',
																'Cruzada tangencial',
																'Cruzada planar',
																'Cruzada en artesa',
																'Gradada',
																'Flaser',
																'Lenticular',
																'Ondulada',
																'Imbricación de clastos'));

CREATE DOMAIN Dom_Estruct_Sed AS CHAR(30) CONSTRAINT Dom_Estruct_Sed_const CHECK (VALUE IN ('Ripple marks',
															  'Rizaduras y dunas',
															  'Estromatolitos',
															  'Graded bedding',
															  'Cross-bedding',
															  'Mud cracks',
															  'Gotas de lluvia',
															  'Grietas de desecación',
															  'Tool marks',
															  'Concreciones',
															  'Nódulos',
															  'Esferulitas',
															  'Oncolitos',
															  'Bioturbación',
															  'Scour marks'));

CREATE DOMAIN Dom_TipoSedimen AS CHAR(15) CONSTRAINT Dom_TipoSedimen_const CHECK (VALUE IN ('Detrítica',
															  'Química',
															  'Marga',
															  'Terrígena',
															  'Carbonática',
															  'Silícea',
															  'Fosfática',
															  'Orgánica',
															  'Ferro-alumínica'));

CREATE DOMAIN Dom_GeomEstrat AS CHAR(19) CONSTRAINT Dom_GeomEstrat_const CHECK (VALUE IN ('Tabular',
															 'Irregular (erosivo)',
															 'En cuña',
															 'Acanalado',
															 'Lenticular',
															 'Ondulado',
															 'No identificable',
															 'Otro'));

CREATE DOMAIN Dom_Espesor AS CHAR(11) CONSTRAINT Dom_Espesor_const CHECK (VALUE IN ('Muy gruesa',
														  'Gruesa',
														  'Media',
														  'Delgada',
														  'Muy delgada'));
														  
CREATE DOMAIN Dom_Fosiles AS CHAR(2) CONSTRAINT Dom_Fosiles_const CHECK (VALUE IN ('Si', 'No'));

CREATE DOMAIN Dom_TipoFos AS CHAR(20) CONSTRAINT Dom_TipoFos_const CHECK (VALUE IN ('Macrofósiles',
														  'Invertebrados',
														  'Anélidos',
														  'Artrópodos',
														  'Arácnidos',
														  'Crustáceos',
														  'Insectos',
														  'Trilobites',
														  'Braquiópodos',
														  'Briozoos',
														  'Cnidarios',
														  'Corales',
														  'Equinodermos',
														  'Crinoideos',
														  'Equinoideos',
														  'Moluscos',
														  'Cefalópodos',
														  'Amonites',
														  'Belemnites',
														  'Nautiloides',
														  'Gastrópodos',
														  'Bivalvos',
														  'Esponjas',
														  'Vertebrados',
														  'Peces',
														  'Plantas',
														  'Hojas',
														  'Raíces',
														  'Madera',
														  'Coníferas',
														  'Estromatolitos',
														  'Hongos',
														  'Icnofósiles',
														  'Madrigueras',
														  'Coprolitos',
														  'Tracks',
														  'Microfósiles',
														  'Conodontos',
														  'Diatomeas',
														  'Foraminíferos',
														  'Palinomorfos',
														  'Esporas',
														  'Radiolarios',
														  'Espículas'));
														  
CREATE DOMAIN Dom_Columna AS CHAR(2) CONSTRAINT Dom_Columna_const CHECK (VALUE IN ('Si', 'No'));

CREATE DOMAIN Dom_Alteracion AS CHAR(30) CONSTRAINT Dom_Alteracion_const CHECK (VALUE IN ('Adularia',
															 'Antigorita',
															 'Antofilita',
															 'Arfvedsonita',
															 'Argílica',
															 'Biotita',
															 'Brucita',
															 'Caolinización',
															 'Carbonatación',
															 'Celsiana',
															 'Circón',
															 'Clinopiroxeno',
															 'Cloritoide',
															 'Cordierita',
															 'Corindón',
															 'Crisotilo',
															 'Cristobalita',
															 'Cromita',
															 'Diásporo',
															 'Dumortierita',
															 'Egirina',
															 'Escapolita',
															 'Feldespato Potásico-Microclina',
															 'Fílica',
															 'Flogopita',
															 'Fluorita',
															 'Forsterita',
															 'Fuchsita',
															 'Granate',
															 'Granate almandino',
															 'Granate andradita',
															 'Hedenbergita',
															 'Mariposita',
															 'Metahalloysita',
															 'Nefelina',
															 'No alterado',
															 'Nontronita',
															 'Otra',
															 'Paragonita',
															 'Pirofilita',
															 'Plagioclasa',
															 'Potásica',
															 'Prehnita',
															 'Propilítica',
															 'Pumpellyíta',
															 'Sílice',
															 'Silicificación',
															 'Sódica cálcica',
															 'Titanita',
															 'Tridimita',
															 'Turmalina',
															 'Vermiculita',
															 'Wollastonita',
															 'Zeolitas',
															 'Zinnwaldita',
															 'Zuñiíta',
															 'No identificable'));

CREATE DOMAIN Dom_EstiloAlt AS CHAR(21) CONSTRAINT Dom_EstiloAlt_const CHECK (VALUE IN ('Pervasiva',
															'Parches',
															'En fracturas',
															'Relleno de cavidades',
															'Matriz de las vetas',
															'Clastos de brechas',
															'Matriz de brechas',
															'Vesicular',
															'Reemplazamiento lento',
															'Fenocristales',
															'Sobreimpuesta',
															'Halo',
															'No alterada'));
															
CREATE DOMAIN Dom_Tipo_Disconti AS CHAR(17) CONSTRAINT Dom_Tipo_Disconti_const CHECK (VALUE IN ('Zona de cizalla',
																'Clivaje',
																'Diaclasa',
																'Esquistosidad',
																'Ferrificación',
																'Fisura',
																'Foliación',
																'Grieta de tensión',
																'Plano de falla',
																'Bandeamiento',
																'Cumulo',
																'Otro'));	
																
CREATE DOMAIN Dom_Persistenc AS CHAR(28) CONSTRAINT Dom_Persistenc_const CHECK (VALUE IN ('Muy baja continuidad (< 1m)',
															 'Baja continuidad (1-3m)',
															 'Continuidad media (3-10m)',
															 'Continuidad alta (10-20m)',
															 'Muy alta continuidad (> 20m)'));															

CREATE DOMAIN Dom_DatoEstruct AS CHAR(250) CONSTRAINT Dom_DatoEstruct_const CHECK (VALUE IN ('Contacto',
															  'Estratificación',
															  'Foliación',
															  'Cizallas',
															  'Esquistosidad',
															  'Diaclasa',
															  'Fisura',
															  'Diques',
															  'Sills',
															  'Veta, vetillas',
															  'Vetillas',
															  'Brecha'));
															  

CREATE DOMAIN Dom_Class_Met AS CHAR(21) CONSTRAINT Dom_Class_Met_const CHECK (VALUE IN ('Anfibolita',
															'Cataclasita',
															'Cornubiana',
															'Cuarcita',
															'Eclogita',
															'Esquisto',
															'Filita',
															'Granulita',
															'Mármol',
															'Migmatita',
															'Milonita',
															'Pizarra',
															'Serpentinita',
															'Corneana',
															'Epidotita',
															'Glaucofanita',
															'Granofelsa',
															'Esquisto micáceo',
															'Metaconglomerado',
															'Metacuarcita',
															'Cuarcita negra',
															'Gneis',
															'Gneis bandeado',
															'Pseudotaquilitas',
															'Espilita',
															'Esquisto azul',
															'Argilita',
															'Charnokita',
															'Skarn',
															'Antracita',
															'Metaarenisca',
															'Brecha de falla',
															'Roca calco-silicatada'));

CREATE DOMAIN Dom_Class_Pluto AS CHAR(63) CONSTRAINT Dom_Class_Pluto_const CHECK (VALUE IN ('Granito rico en cuarzo',
															  'Granito de feldespato alcalino',
															  'Granito',
															  'Granodiorita',
															  'Tonalita',
															  'Cuarzo-sienita de feldespato alcalino',
															  'Cuarzo-sienita',
															  'Cuarzo-monzonita',
															  'Cuarzo-monzogabro / Cuarzo-monzodiorita',
															  'Cuarzo-gabro / Cuarzo-diorita / Cuarzo-anortosita',
															  'Sienita de feldespato alcalino',
															  'Sienita',
															  'Monzonita',
															  'Monzogabro / Monzodiorita',
															  'Gabro / Diorita / Anortosita',
															  'Sienita de feldespato alcalino con feldespatoides',
															  'Sienita con feldespatoides',
															  'Monzonita con feldespatoides',
															  'Monzodiorita con feldespatoides / Monzogabro con feldespatoides',
															  'Diorita con feldespatoides / Gabro con feldespatoides',
															  'Sienita foidítica',
															  'Monzosienita foidítica',
															  'Monzodiorita foidítica / Monzogabro foidítica',
															  'Diorita foidítica / Gabro foidítica',
															  'Foidita'));

CREATE DOMAIN Dom_Class_Volca AS CHAR(51) CONSTRAINT Dom_Class_Volca_const CHECK (VALUE IN ('Riolita con feldespato alcalino',
															  'Riolita',
															  'Dacita',
															  'Cuarzotraquita con feldespato alcalino',
															  'Cuarzotraquita',
															  'Cuarzolatita',
															  'Basalto / Andesita',
															  'Traquita con feldespato alcalino',
															  'Traquita',  
															  'Latita',
															  'Traquita con feldespato alcalino con feldespatoides',
															  'Traquita con feldespatoides',
															  'Latita con feldespatoides',
															  'Fonolita',
															  'Fonolita tefrítica',
															  'Tefrita fonolítica',
															  'Tefrita / Basanita',
															  'Fonolita con feldespatoides',
															  'Tefrita con feldespatoides',
															  'Foidita'));
															  
CREATE DOMAIN Dom_Roca_Sed AS CHAR(43) CONSTRAINT Dom_Roca_Sed_const CHECK (VALUE IN ('Conglomerado',
														   'Conglomerado arenoso',
														   'Conglomerado lodoso',
														   'Arenisca conglomerática',
														   'Lodolita conglomerática',
														   'Arenisca ligeramente conglomerática',
														   'Arenisca lodosa ligeramente conglomerática',
														   'Lodolita arenosa ligeramente conglomerática',
														   'Arenisca',
														   'Arenisca lodosa',
														   'Lodolita arenosa',
														   'Lodolita',
														   'Materiales no consolidados',
														   'Materiales consolidados',
														   'Limolita',
														   'Arcillolita',
														   'Limolita arenosa',
														   'Arcillolita arenosa',
														   'Caliza',
														   'Micrita',
														   'Biomicrita fosilífera',
														   'Biomicrita',
														   'Bioesparita',
														   'Pelsparita',
														   'Biopelsparita',
														   'Wackestone',
														   'Packstone',
														   'Brecha',
														   'Dolomita',
														   'Evaporita',
														   'Lutita',
														   'Marga',
														   'Cuarzoarenita',
														   'Arkosa',
														   'Grawaca',
														   'Yeso',
														   'Halita',
														   'Chert',
														   'Bauxita',
														   'Litoarenita',
														   'Travertino',
														   'Fosforita'));

CREATE DOMAIN Dom_Facies AS CHAR(22) CONSTRAINT Dom_Facies_const CHECK (VALUE IN ('Esquistos verdes',
														 'Anfibolita',
														 'Anfibolita con epídota',
														 'Granulitas',
														 'Zeolita',
														 'Prehnita - Pumpelita',
														 'Cornubiana Ab - Ep',
														 'Cornubiana Hbl',
														 'Cornubiana Px',
														 'Sanidinitas',
														 'Esquistos azules',
														 'Eclogitas'));
														 
CREATE DOMAIN Dom_Grado_Met AS CHAR(14) CONSTRAINT Dom_Grado_Met_const CHECK (VALUE IN ('Grado muy bajo',
															'Grado bajo',
															'Grado medio',
															'Grado alto',
															'Grado muy alto'));														 

CREATE DOMAIN Dom_Tipo_Met AS CHAR(36) CONSTRAINT Dom_Tipo_Met_const CHECK (VALUE IN ('Metamorfismo Isoquímico',
														   'Metasomatismo',
														   'Metamorfismo Térmico', 
														   'Metamorfismo Dinámico',
														   'Metamorfismo Dinamo-térmico',
														   'Metamorfismo Regional',
														   'Metamorfismo Orogénico',
														   'Metamorfismo de Confinamiento',
														   'Metamorfismo de Enterramiento',
														   'Metamorfismo de Dorsal Meso-oceánica',
														   'Pirometamorfismo',
														   'Metamorfismo Cataclástico',
														   'Metamorfismo de Impacto',
														   'Metamorfismo Hidrotermal',
														   'Metamorfismo por Combustión',
														   'Aniquimetamorfismo',
														   'Metamorfismo de Contacto'));
														   
CREATE DOMAIN Dom_EstructMet AS CHAR(12) CONSTRAINT Dom_EstructMet_const CHECK (VALUE IN ('Masiva',
															 'Bandeada',
															 'Esquistosa',
															 'Neisica',
															 'Augen',
															 'Moteada',
															 'Micropliegue',
															 'Pizarrosa',
															 'Bandeado néisico',
															 'Cataclástica',
															 'Ninguna',
															 'Otra'));	
															 
CREATE DOMAIN Dom_Compo_Met AS CHAR(15) CONSTRAINT Dom_Compo_Met_const CHECK (VALUE IN ('Máfica',
															'Ultramáfica',
															'Pelítica',
															'Gneísica',
															'Carbonatítica',
															'Basáltica',
															'Calcosilicatada'));
															
CREATE DOMAIN Dom_Zona_Met AS CHAR(23) CONSTRAINT Dom_Zona_Met_const CHECK (VALUE IN ('Diagénesis',
														   'Zeolitas',
														   'Esquistos azules',
														   'Esquistos verdes',
														   'Prehnita-Pumpellyita',
														   'Eclogitas',
														   'Anfibolitas con epídota',
														   'Anfibolitas',
														   'Granulitas',
														   'Albita-Epídota',
														   'Hornblenda',
														   'Piroxeno',
														   'Sanidinita'));															

CREATE DOMAIN Dom_Magma AS CHAR(11) CONSTRAINT Dom_Magma_const CHECK (VALUE IN ('Félsico',
														'Intermedio',
														'Máfico',
														'Ultramáfico'));
														
CREATE DOMAIN Dom_TextIgn AS CHAR(12) CONSTRAINT Dom_TextIgn_const CHECK (VALUE IN ('Afanítica',
														  'Fanerítica',
														  'Piroclástica',
														  'Vítrea',
														  'Pegmatítica',
														  'Vesicular',
														  'Porfirítica'));
														  
CREATE DOMAIN Dom_Ambient_Sed AS CHAR(12) CONSTRAINT Dom_Ambient_Sed_const CHECK (VALUE IN ('Fluvial',
															  'Lacustre',
															  'Deltaico',
															  'Glacial',
															  'Marino',
															  'Costero',
															  'Continental',
															  'Transicional',
															  'Eólico'));	
															  
CREATE DOMAIN Dom_Eon_Geo AS CHAR(12) CONSTRAINT Dom_Eon_Geo_const CHECK (VALUE IN ('Fanerozoico',
														  'Proterozoico',
															'Hadeano',						
														  'Arqueano'));		
														  
CREATE DOMAIN Dom_Era_Geo AS CHAR(17) CONSTRAINT Dom_Era_Geo_const CHECK (VALUE IN ('Cenozoico',
														  'Mesozoico',
														  'Paleozoico',
														  'Neoproterozoico',
														  'Mesoproterozoico',
														  'Paleoproterozoico',
														  'Neo-arqueano',
														  'Meso-arqueano',
														  'Paleo-arqueano',
														  'Eo-arqueano',
														  'Hadeano'));	
														  
CREATE DOMAIN Dom_Period_Geo AS CHAR(11) CONSTRAINT Dom_Period_Geo_const CHECK (VALUE IN ('Cuaternario',
															 'Neógeno',
															 'Paleógeno',
															 'Cretácico',
															 'Jurásico',
															 'Triásico',
															 'Pérmico',
															 'Carbonífero',
															 'Devónico',
															 'Silúrico',
															 'Ordovícico',
															 'Cámbrico',
															 'Ediacariano',
															 'Criogeniano',
															 'Toniano',
															 'Steniano',
															 'Ectasiano',
															 'Calymmiano',
															 'Statheriano',
															 'Orosiriano',
															 'Rhyaciano',
															 'Sideriano'));	
															 
CREATE DOMAIN Dom_Epoc_Geo AS CHAR(23) CONSTRAINT Dom_Epoc_Geo_const CHECK	(VALUE IN ('Holoceno',
														   'Pleistoceno',
														   'Plioceno',
														   'Mioceno',
														   'Oligoceno',
														   'Eoceno',
														   'Paleoceno',
														   'Cretácico Superior',
														   'Cretácico Inferior',
														   'Jurásico Superior',
														   'Jurásico Medio',
														   'Jurásico Inferior',
														   'Triásico Superior',
														   'Triásico Medio',
														   'Triásico Inferior',
														   'Lopingiano',
														   'Guadalupiano',
														   'Cisuraliano',
														   'Pennsylvaniano Superior',
														   'Pennsylvaniano Medio',
														   'Pennsylvaniano Inferior',
														   'Mississippiano Superior',
														   'Mississippiano Medio',
														   'Mississippiano Inferior',
														   'Devónico Superior',
														   'Devónico Medio',
														   'Devónico Inferior',
														   'Pridoliano',
														   'Ludloviano',
														   'Wenlockiano',
														   'Llandoveriano',
														   'Ordovícico Superior',
														   'Ordovícico Medio',
														   'Ordovícico Inferior',
														   'Furongiano',
														   'Miaolingiano',
														   'Serie 2',
														   'Terreneuviano'));	
														   
CREATE DOMAIN Dom_Tipo_ContUG AS CHAR(31) CONSTRAINT Dom_Tipo_ContUG_const CHECK (VALUE IN ('Aureola de contacto',
															  'Contacto definido',
															  'Contacto aproximado',
															  'Contacto inferido',
															  'Contacto cubierto',
															  'Contacto gradacional',
															  'Contacto gradacional aproximado',
															  'Contacto gradacional inferido',
															  'Contacto discordante',
															  'Contacto discordante aproximado',
															  'Contacto discordante inferido',
															  'Contacto discordante cubierto',
															  'Contacto fallado',
															  'Dique',
															  'Dique aproximado',
															  'Contacto incierto'));	
															  
CREATE DOMAIN Dom_Tipo_Falla AS CHAR(53) CONSTRAINT Dom_Tipo_Falla_const CHECK (VALUE IN ('Falla',
															 'Falla aproximada',
															 'Falla inferida',
															 'Falla cubierta',
															 'Falla normal',
															 'Falla normal aproximada',
															 'Falla normal inferida',
															 'Falla normal cubierta',
															 'Falla inversa',
															 'Falla inversa aproximada',
															 'Falla inversa inferida',
															 'Falla inversa cubierta',
															 'Falla rotacional con desplazamiento inverso',
															 'Falla rotacional con desplazamiento normal aproximada',
															 'Falla rotacional con desplazamiento normal inferida',
															 'Falla rotacional con desplazamiento normal cubierta',
															 'Falla de rumbo dextral',
															 'Falla de rumbo dextral aproximada',
															 'Falla de rumbo dextral inferida',
															 'Falla de rumbo dextral cubierta',
															 'Falla de rumbo sinestral',
															 'Falla de rumbo sinestral aproximada',
															 'Falla de rumbo sinestral inferida',
															 'Falla de rumbo sinestral cubierta',
															 'Falla oblicua con desplazamiento lateral derecho normal',
															 'Falla de cabalgamiento',
															 'Falla de cabalgamiento aproximada',
															 'Falla de cabalgamiento inferida',
															 'Falla de cabalgamiento cubierta',
															 'Falla de cabalgamiento volcada'));
															 
CREATE DOMAIN Dom_Cinema AS CHAR(17) CONSTRAINT Dom_Cinema_const CHECK (VALUE IN ('Dextral',
														 'Sinestral',
														 'Inversa',
														 'Normal',
														 'Dextral normal',
														 'Dextral inversa',
														 'Sinestral normal',
														 'Sinestral inversa'));		
														 
CREATE DOMAIN Dom_Pliegue_Geom AS CHAR(9) CONSTRAINT Dom_Pliegue_Geom_const CHECK (VALUE IN ('Antiforme',
															  'Sinforme'));	
															  
CREATE DOMAIN Dom_Pliegue_Estrat AS CHAR(10) CONSTRAINT Dom_Pliegue_Estrat_const CHECK (VALUE IN ('Anticlinal',
																 'Sinclinal'));	
																 
CREATE DOMAIN Dom_Pliegue_AnaGeom AS CHAR(10) CONSTRAINT Dom_Pliegue_AnaGeom_const CHECK (VALUE IN ('Simétrico',
																  'Asimétrico',
																  'Homoclinal',
																  'Monoclinal'));
																  
CREATE DOMAIN Dom_Pliegue_Config AS CHAR(10) CONSTRAINT Dom_Pliegue_Config_const CHECK (VALUE IN ('Simétrico',
																 'Asimétrico',
																 'Isoclinal',
																 'Volcado',
																 'Recumbente',
																 'Chevron'));
																 
CREATE DOMAIN Dom_Pliegue_Aper AS CHAR(9) CONSTRAINT Dom_Pliegue_Aper_const CHECK (VALUE IN ('Isoclinal',
															  'Apretado',
															  'Cerrado',
															  'Abierto',
															  'Suave'));
															  
CREATE DOMAIN Dom_Pliegue_Estilo AS CHAR(11) CONSTRAINT Dom_Pliegue_Estilo_const CHECK (VALUE IN ('Chevron',
																 'Cúspide',
																 'Circular',
																 'Elíptico',
																 'En caja',
																 'Lágrima',
																 'Kink',
																 'Disarmónico'));	
																 
CREATE DOMAIN Dom_Pliegue_ExtReg AS CHAR(12) CONSTRAINT Dom_Pliegue_ExtReg_const CHECK (VALUE IN ('Anticlinorio',
																 'Sinclinorio'));
																 
CREATE DOMAIN Dom_ProcesoMorfodin AS CHAR(12) CONSTRAINT Dom_ProcesoMorfodin_const CHECK (VALUE IN ('Deposicional',
																  'Denudativo'));
																  
CREATE DOMAIN Dom_NombProceso AS CHAR(48) CONSTRAINT Dom_NombProceso_const CHECK (VALUE IN ('Principio de formación de suelos',
															  'Sedimentación coluvial',
															  'Sedimentación diluvial',
															  'Escarpe menor movimiento en masa',
															  'Escarpe mayor movimiento en masa',
															  'Escarpe caída de roca',
															  'Escarpe Geomorfológico',
															  'Terracetas o caminos de ganado',
															  'Erosión tipo cárcavas',
															  'Erosión en surcos',
															  'Hondonadas o tierras malas',
															  'Corona de deslizamiento',
															  'Socavación fluvial lateral',
															  'Cono de detritos',
															  'Grietas longitudinales, transversales o radiales',
															  'Sedimentación aluvial',
															  'Sedimentación marina o lacustre',
															  'Sedimentación glaciaria',
															  'Sedimentación eólica',
															  'Acción antrópica positiva',
															  'Meteorización de las rocas',
															  'Remoción en masa',
															  'Erosión pluvial',
															  'Reptación (Creep)',
															  'Flujos de suelo',
															  'Deslizamientos',
															  'Desprendimientos',
															  'Subsidencia',
															  'Erosión kárstica',
															  'Erosión fluvial',
															  'Erosión marina o lacustre',
															  'Erosión glaciaria',
															  'Erosión eólica',
															  'Erosión antrópica',
															  'Otro'));	
															  
CREATE DOMAIN Dom_EstadoProceso AS CHAR(8) CONSTRAINT Dom_EstadoProceso_const CHECK (VALUE IN ('Activo',
															   'Inactivo'
																'N/A'));	
															   
CREATE DOMAIN Dom_Geoestruct AS CHAR(19) CONSTRAINT Dom_Geoestruct_const CHECK (VALUE IN ('Cordillera',
															 'Cratón',
															 'Cuenca sedimentaria'));
															 
CREATE DOMAIN Dom_AmbMorfogen AS CHAR(12) CONSTRAINT Dom_AmbMorfogen_const CHECK (VALUE IN ('Deposicional',
															  'Disolucional',
															  'Denudacional',
															  'Estructural',
															  'Mixto',
															  'Antrópico',
															  'Residual'));		
															  
CREATE DOMAIN Dom_Paisaje AS CHAR(12) CONSTRAINT Dom_Paisaje_const CHECK (VALUE IN ('Altiplanicie',
														  'Lomerío',
														  'Montaña',
														  'Peneplanicie',
														  'Piedemonte',
														  'Planicie',
														  'Valle'));	
														  
CREATE DOMAIN Dom_Tipo_Relieve AS CHAR(33) CONSTRAINT Dom_Tipo_Relieve_const CHECK (VALUE IN ('Abanico',
															   'Antecerro',
															   'Anticlinal',
															   'Anticlinal excavado',
															   'Anticlinal truncado',
															   'Área de aplanamiento',
															   'Arrecife coralino',
															   'Artesa',
															   'Atolón',
															   'Bahía',
															   'Barra',
															   'Bloques de falla escalonados',
															   'Bloques de falla monoclinales',
															   'Cadena (montañosa)',
															   'Campo de bloques',
															   'Cañón',
															   'Cañón (valle de colapso)',
															   'Karst cónico',
															   'Karst de pitones',
															   'Karst de torrecillas', 
															   'Karst espumoso',
															   'Cerro testigo',
															   'Circo',
															   'Cluse',
															   'Colina',
															   'Comba',
															   'Cono',
															   'Cono (volcánico)',
															   'Cresta',
															   'Cresta (gelifracción)',
															   'Crestón',
															   'Crestón de flanco de pliegue',
															   'Cuesta',
															   'Cuesta desdoblada',
															   'Delta',
															   'Depresión',
															   'Dique',
															   'Domo',
															   'Embudo de abertura cataclinal',
															   'Escarpa',
															   'Escarpe con facetas trapezoidales',
															   'Escarpe de falla',
															   'Escarpe de línea de falla',
															   'Escarpe de pliegue fallado',
															   'Espigón',
															   'Estuario',
															   'Fila',
															   'Flatirón',
															   'Fosa tectónica (graben)',
															   'Glacis',
															   'Graben',
															   'Hogback',
															   'Horst',
															   'Inselberg',
															   'Klippe',
															   'Llanura',
															   'Llanura kárstica',
															   'Llanura de inundación',
															   'Loma',
															   'Manto de cabalgamiento',
															   'Manto de sobrecorrimiento',
															   'Marisma',
															   'Media-naranja',
															   'Meseta',
															   'Monte',
															   'Pilar tectónico (horst)',
															   'Pitón',
															   'Plano',
															   'Pliegue diapírico',
															   'Pliegue en cofre',
															   'Polje',
															   'Ruz',
															   'Sinclinal',
															   'Sinclinal colgante',
															   'Terraza',
															   'Torre',
															   'Valle',
															   'Valle ciego',
															   'Valle seco',
															   'Vallecito',
															   'Vallecito ciego',
															   'Vallecito seco',
															   'Ventana tectónica (comba)',
															   'Vertiente',
															   'Viga (chevron)',
															   'Tepuy'));
															   
CREATE DOMAIN Dom_Facies_Material AS CHAR(18) CONSTRAINT Dom_Facies_Material_const CHECK (VALUE IN ('Aluvial',
																  'Antrópico',
																  'Biogénico',
																  'Coluvial',
																  'Diluvial',
																  'Eólico',
																  'Glaciar',
																  'Gravedad',
																  'Lacustre',
																  'Lagunar',
																  'Litoral o costero',
																  'Mixto',
																  'Movimiento en masa',
																  'Nival',
																  'Periglaciar',
																  'Volcánico'));
																  
CREATE DOMAIN Dom_Forma_Terreno AS CHAR(32) CONSTRAINT Dom_Forma_Terreno_const CHECK (VALUE IN ('Abanico fluvial',
																'Canteras',
																'Cerro pepino',
																'Cerros residuales',
																'Cono volcánico',
																'Cráter volcánico',
																'Cuestas',
																'Dunas parabólicas',
																'Embalses',
																'Espigas',
																'Espinazos',
																'Flujo de lava',
																'Glasis',
																'Inselbergs',
																'Isla barrera',
																'Kames',
																'Lahar',
																'Llanuras de inundación',
																'Lobulos de escombros',
																'Morrenas',
																'Planos de deflación',
																'Plataformas de abrasion elevadas',
																'Poljes',
																'Meandro abandonado',
																'Corona de MM',
																'Drenaje deflectado',
																'Drenaje desviado',
																'Drenaje torrencial',
																'Erosión lateral',
																'Erosión en cárcava',
																'Erosión en surco',
																'Faceta triangular',
																'Salares',
																'Sierras anticlinales',
																'Sierras glaciadas',
																'Sierras homoclinales',
																'Terraza marina',
																'Terrazas fluviales',
																'Tómbolo',
																'Torres kársticas',
																'Valle en copa de vino',
																'Wadis',
																'Pisada de vaca'));
																
CREATE DOMAIN Dom_Provincia AS CHAR(41) CONSTRAINT Dom_Provincia_const CHECK (VALUE IN ('Baja Guajira',
															'Catatumbo',
															'Cerros aislados del Guainia',
															'Cinturón montañoso del Sinú',
															'Cordillera Central',
															'Cordillera Occidental',
															'Cordillera Oriental',
															'Cuenca del Cesar Ranchería',
															'Cuencas bajas del Magdalena y Cauca',
															'Fosa de plato',
															'Lomas de canalete',
															'Mesas del Caruru',
															'Mesas del Vaupés',
															'Montes de Maria',
															'Peneplanicies de la Amazonía',
															'Peneplanicies y llanuras de la Orinoquía',
															'Planicies cratonicas del Vaupés y Guainia',
															'Planicies de la Media y Baja Guajira',
															'Planicies del Pacífico',
															'Planicies y fosas del Caribe',
															'Planicies y fosas del Pacífico',
															'Plataforma continental Caribe',
															'Plataforma continental del Pacífico',
															'Serranía Araracuara',
															'Serranía Caranacoa',
															'Serranía de Chiribiquete',
															'Serranía de la Macarena',
															'Serranía de San Jacinto',
															'Serrania de San Lucas',
															'Serrania de Taraira',
															'Serranía del Aguilla',
															'Serranía del Baudó',
															'Serranía del Darién',
															'Serrania del Perijá',
															'Serranía Naquén',
															'Serranía Tunahí',
															'Serranias de Cocinas y Simarua',
															'Serranías de la Alta y Baja Guajira',
															'Serranías de Macuira y Jarara',
															'Sierra Nevada de Santa Marta',
															'Valle interandino Cauca-Patía',
															'Valle interandino Cesar',
															'Valle interandino Magdalena'));
															
CREATE DOMAIN Dom_Componente AS CHAR(28) CONSTRAINT Dom_Componente_const CHECK (VALUE IN ('Acantilados',
															 'Albardones',
															 'Banca de caminos',
															 'Barrancos',
															 'Canales',
															 'Cauces',
															 'Circo glaciar',
															 'Coronas',
															 'Crestas',
															 'Crestas de playa',
															 'Cuello volcánico',
															 'Depresión kárstica',
															 'Deslizamientos',
															 'Dolinas',
															 'Escarpes',
															 'Escarpes de falla',
															 'Escarpes de terraza',
															 'Espolones',
															 'Facetas triangulares',
															 'Flancos',
															 'Frente de playa',
															 'Lagos de falla',
															 'Paleoacantilados',
															 'Planos de estrias glaciarias',
															 'Planos de Tafoni',
															 'Planos interdunares',
															 'Trincheras de falla',
															 'Tunel de lava',
															 'Uvalas'));	
															 
CREATE DOMAIN Dom_TipoMov AS CHAR(18) CONSTRAINT Dom_TipoMov_const CHECK (VALUE IN ('Deslizamiento',
														  'Reptación',
														  'Caída',
														  'Volcamiento',
														  'Avenida torrencial',
														  'Flujo'));
														  
CREATE DOMAIN Dom_SubtMM AS CHAR(22) CONSTRAINT Dom_SubtMM_const CHECK (VALUE IN ('Rotacional',
														 'Traslacional',
														 'Roca',
														 'Suelo',
														 'Bloque',
														 'Flexural',
														 'Flexural macizo rocoso',
														 'Flujo de lodo',
														 'Flujo de tierra',
														 'Flujo de detritos',
														 'Deslizamiento por flujo'));	
														 
CREATE DOMAIN Dom_Parte AS CHAR(17) CONSTRAINT Dom_Parte_const CHECK (VALUE IN ('Escarpe principal',
														'Cuerpo',
														'No identificable'));
														
CREATE DOMAIN Dom_EstiloMM AS CHAR(9) CONSTRAINT Dom_EstiloMM_const CHECK (VALUE IN ('Complejo',
														  'Compuesto',
														  'Múltiple',
														  'Sucesivo',
														  'Único'));
														  
CREATE DOMAIN Dom_EstadoMM AS CHAR(8) CONSTRAINT Dom_EstadoMM_const CHECK (VALUE IN ('Activo',
														  'Inactivo'));	
														  
CREATE DOMAIN Dom_MetGeof AS CHAR(16) CONSTRAINT Dom_MetGeof_const CHECK (VALUE IN ('Magnetometría',
														  'Gravimetría',
														  'Electromagnético',
														  'Resistividad',
														  'Magnetotelúrico',
														  'Sísmica',
														  'Radiometría',
														  'Otro'));	
														  
CREATE DOMAIN Dom_UnidadGeof AS CHAR(8) CONSTRAINT Dom_UnidadGeof_const CHECK (VALUE IN ('mGal',
															'nT/m',
															'U_ppm', 
															'Th_ppm',
															'K_ppm',
															'U_%', 
															'Th_%', 
															'K_%',
															'ohm/m', 
															'Hz', 
															'ms', 
															'%PEF', 
															'ohm/m/MF', 
															'ms/m',
															'm/s',
															'Otro'));	
															
CREATE DOMAIN Dom_Mallado AS CHAR(21) CONSTRAINT Dom_Mallado_const CHECK (VALUE IN ('Cuadrada',
														  'Rectangular',
														  'Polígono irregular',
														  'Puntos independientes',
														  'Única línea',
														  'Otro'));		
														  
CREATE DOMAIN Dom_TipoTecnica AS CHAR(30) CONSTRAINT Dom_TipoTecnica_const CHECK (VALUE IN ('Tomografía Eléctrica',
															  'Prospección Magnetotelúrica',
															  'Sísmica de Refracción',
															  'Sísmica de Reflexión',
															  'Sísmica de ondas superficiales',
															  'MASW',
															  'Down-hole',
															  'Técnica REMI',
															  'Tomografía Cross Hole',
															  'Sísmica Paralela',
															  'Sísmica en capas',
															  'SEV',
															  'Tomografía Eléctrica 3D',
															  'Geo-Radar Mono frecuencia', 
															  'Geo-Radar 3D', 
															  'GPR',
															  'Magnetometría por RPAS',
															  'Resistividad',
															  'Polarización Inducida',
															  'Radiometría de Rayos Gamma', 
															  'Otra'));		
	
	
--eliminar tablas--
DROP TABLE IF EXISTS Proceso_Morfodina_PT;
DROP TABLE IF EXISTS Pliegues_PT;
DROP TABLE IF EXISTS GeofisicaPG;
DROP TABLE IF EXISTS GeofisicaLN;
DROP TABLE IF EXISTS GCP;
DROP TABLE IF EXISTS EventosMorfodinam;
DROP TABLE IF EXISTS EstratigrafiaSedimentologica;
DROP TABLE IF EXISTS Discontinuidades;
DROP TABLE IF EXISTS Dato_Estructural;
DROP TABLE IF EXISTS CaracteristicaLito;
DROP TABLE IF EXISTS Alteraciones;
DROP TABLE IF EXISTS UnidadLito;
DROP TABLE IF EXISTS UnidadGeomorfo;
DROP TABLE IF EXISTS UnidadGeo;
DROP TABLE IF EXISTS Proceso_Morfodina_PG;
DROP TABLE IF EXISTS Proceso_Morfidina_LN;
DROP TABLE IF EXISTS Pliegues_LN;
DROP TABLE IF EXISTS Fallas;
DROP TABLE IF EXISTS Estaciones;
DROP TABLE IF EXISTS ContactoGeo;
DROP TABLE IF EXISTS ProyectoCampo;


--creación de las tablas--															  
CREATE TABLE ProyectoCampo (
    "Guid" VARCHAR (22) NOT NULL,
    "Area (ha)" DOUBLE PRECISION GENERATED ALWAYS AS (ST_Area(geometria) / 10000.0) STORED,
    "Respon" VARCHAR (30) NOT NULL,
    "Semestre" VARCHAR (6) NOT NULL,
	geometria GEOMETRY (MULTIPOLYGONZM, 3116),
	CONSTRAINT proyecto_campo_pk PRIMARY KEY ("Guid"),
	CONSTRAINT proyecto_campo_guid_unique UNIQUE  ("Guid")
);
CREATE INDEX proyecto_campo_guid_idx ON ProyectoCampo ("Guid");


CREATE TABLE ContactoGeo (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Tipo" Dom_Tipo_ContUG NOT NULL,
    "Observa" VARCHAR (300),
	geometria GEOMETRY (MULTILINESTRINGZM, 3116),
    CONSTRAINT contacto_geo_pk PRIMARY KEY ("Guid"),
    CONSTRAINT proyecto_c_contacto_g_fk FOREIGN KEY ("UUID") REFERENCES ProyectoCampo ("Guid")
);
CREATE INDEX contacto_geo_guid_idx ON ContactoGeo ("Guid");


CREATE TABLE Estaciones (
    "Fecha" TIMESTAMP NOT NULL,
    "Guid" VARCHAR (22) NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Dia" INTEGER NOT NULL,
    "Ubicacion" VARCHAR (100) NOT NULL,
    "X" DOUBLE PRECISION GENERATED ALWAYS AS (ST_X(ST_Transform(geometria, 3116))::DOUBLE PRECISION) STORED,
    "Y" DOUBLE PRECISION GENERATED ALWAYS AS (ST_Y(ST_Transform(geometria, 3116))::DOUBLE PRECISION) STORED,
    "Z" DOUBLE PRECISION,
    "Plancha" VARCHAR (20) NOT NULL,
    "Cal_roc" Dom_Roca NOT NULL,
    "Meteor" Dom_Meteor NOT NULL,
    "Estratific" Dom_Estratif NOT NULL,
    "Lamina" Dom_Lamina NOT NULL,
    "Altera" Dom_Altera NOT NULL,
    "Discon" Dom_Discon NOT NULL,
	"Ind_Cinem" Dom_Ind_Cinem,
    "Descripcion" VARCHAR (500),
	geometria GEOMETRY (POINTZM, 3116),
    CONSTRAINT estaciones_pk PRIMARY KEY ("Guid"),
    CONSTRAINT proyecto_c_estaciones_fk FOREIGN KEY ("UUID") REFERENCES ProyectoCampo ("Guid")
);
CREATE INDEX estaciones_guid_idx ON Estaciones ("Guid");


CREATE TABLE Fallas (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Tipo" Dom_Tipo_Falla NOT NULL,
    "Nombre" VARCHAR (50),
    "Buzamiento" DOUBLE PRECISION,
    "Dir_Buz" DOUBLE PRECISION,
    "Cinema" Dom_Cinema,
    "Observa" VARCHAR (300),
	geometria GEOMETRY (LINESTRING, 3116),
    CONSTRAINT fallas_pk PRIMARY KEY ("Guid"),
    CONSTRAINT proyecto_campo_fallas_fk FOREIGN KEY ("UUID") REFERENCES ProyectoCampo ("Guid")
);
CREATE INDEX fallas_guid_idx ON Fallas ("Guid");


CREATE TABLE Pliegues_LN (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Pliegue_Geom" Dom_Pliegue_Geom,
    "Pliegue_Estrat" Dom_Pliegue_Estrat,
    "Pliegue_Anageom" Dom_Pliegue_AnaGeom,
    "Pliegue_Config" Dom_Pliegue_Config,
    "Pliegue_Aper" Dom_Pliegue_Aper,
    "Pliegue_Exten" Dom_Pliegue_ExtReg,
    "Pliegue_Estilo" Dom_Pliegue_Estilo,
    "Nombre" VARCHAR (50),
    "Observa" VARCHAR (300),
	geometria GEOMETRY (LINESTRING, 3116),
    CONSTRAINT pliegues_ln_pk PRIMARY KEY ("Guid"),
    CONSTRAINT proyecto_c_pliegues_l_fk FOREIGN KEY ("UUID") REFERENCES ProyectoCampo ("Guid")
);
CREATE INDEX pliegues_ln_guid_idx ON Pliegues_LN ("Guid");


CREATE TABLE Proceso_Morfodina_LN (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Tipo_Proceso" Dom_ProcesoMorfodin NOT NULL,
    "Nombre" Dom_NombProceso NOT NULL,
    "Estado" Dom_EstadoProceso NOT NULL,
    "Long" DOUBLE PRECISION GENERATED ALWAYS AS (ST_Length(geometria)::DOUBLE PRECISION) STORED,
    "Observa" VARCHAR (300),
	geometria GEOMETRY (LINESTRING, 3116),
    CONSTRAINT proceso_morfidina_ln_pk PRIMARY KEY ("Guid"),
    CONSTRAINT proyecto_c_proceso_mo_fk FOREIGN KEY ("UUID") REFERENCES ProyectoCampo ("Guid")
);
CREATE INDEX proceso_mo_guid_idx ON Proceso_Morfidina_LN ("Guid");


CREATE TABLE Proceso_Morfodina_PG (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Tipo_Proceso" Dom_ProcesoMorfodin NOT NULL,
    "Nombre" Dom_NombProceso NOT NULL,
    "Estado" Dom_EstadoProceso NOT NULL,
    "Area (ha)" DOUBLE PRECISION GENERATED ALWAYS AS (ST_Area(geometria) / 10000.0) STORED,
    "Observa" VARCHAR (300),
	geometria GEOMETRY (POLYGON, 3116),
    CONSTRAINT proceso_morfodina_pg_pk PRIMARY KEY ("Guid"),
    CONSTRAINT proyecto_c_proceso_mo_fk_1 FOREIGN KEY ("UUID") REFERENCES ProyectoCampo ("Guid")
);
CREATE INDEX proceso_mo_guid_idx_1 ON Proceso_Morfodina_PG ("Guid");


CREATE TABLE UnidadGeo (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Eon" Dom_Eon_Geo NOT NULL,
    "Era" Dom_Era_Geo NOT NULL,
    "Periodo" Dom_Period_Geo,
    "Epoca" Dom_Epoc_Geo,
    "Edad" VARCHAR (40),
    "Nombre" VARCHAR (50) NOT NULL,
    "Nomenclat" VARCHAR (10) NOT NULL,
    "Litologia" VARCHAR (150) NOT NULL,
    "Observ_Un" VARCHAR (200),
    "Observa" VARCHAR (300),
	geometria GEOMETRY (POLYGON, 3116),
    CONSTRAINT unidad_geo_pk PRIMARY KEY ("Guid"),
    CONSTRAINT proyecto_c_unidad_geo_fk FOREIGN KEY ("UUID") REFERENCES ProyectoCampo ("Guid")
);
CREATE INDEX unidad_geo_guid_idx ON UnidadGeo ("Guid");


CREATE TABLE UnidadGeomorfo (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Area (ha)" DOUBLE PRECISION GENERATED ALWAYS AS (ST_Area(geometria) / 10000.0) STORED,
    "Geoestructura" Dom_Geoestruct NOT NULL,
    "Amb_Morfog" Dom_AmbMorfogen NOT NULL,
    "Paisaje_Gm" Dom_Paisaje,
    "Tipo_Relieve" Dom_Tipo_Relieve,
    "Facies_Material" Dom_Facies_Material NOT NULL,
    "Forma_Terreno" Dom_Forma_Terreno,
    "Provincia" Dom_Provincia NOT NULL,
    "Componente" Dom_Componente,
    "Nombre" VARCHAR (80) NOT NULL,
    "Nomenclat" VARCHAR (10) NOT NULL,
    "Observa" VARCHAR (300),
	geometria GEOMETRY (POLYGON, 3116),
    CONSTRAINT unidad_geometriaorfo_pk PRIMARY KEY ("Guid"),
    CONSTRAINT proyecto_c_unidad_geo_fk_1 FOREIGN KEY ("UUID") REFERENCES ProyectoCampo ("Guid")
);
CREATE INDEX unidad_geometriaorfo_guid_idx ON UnidadGeomorfo ("Guid");


CREATE TABLE UnidadLito (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Area (ha)" DOUBLE PRECISION GENERATED ALWAYS AS (ST_Area(geometria) / 10000.0) STORED,
    "Nombre_Met" Dom_Class_Met,
    "Class_Pluto" Dom_Class_Pluto,
    "Class_Volca" Dom_Class_Volca,
    "Class_Subvol" VARCHAR (50),
    "Nombre_Sed" Dom_Roca_Sed,
    "Evento" VARCHAR (40),
    "Mineralogia" VARCHAR (150) NOT NULL,
    "Observa" VARCHAR (300),
	geometria GEOMETRY (POLYGON, 3116),
    CONSTRAINT unidad_lito_pk PRIMARY KEY ("Guid"),
    CONSTRAINT proyecto_c_unidad_lit_fk FOREIGN KEY ("UUID") REFERENCES ProyectoCampo ("Guid")
);
CREATE INDEX unidad_lito_guid_idx ON UnidadLito ("Guid");


CREATE TABLE Alteraciones (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Facie" Dom_Alteracion NOT NULL,
    "Estilo" Dom_EstiloAlt NOT NULL,
    "Observa" VARCHAR (300),
	geometria GEOMETRY (POINT, 3116),
    CONSTRAINT alteraciones_pk PRIMARY KEY ("Guid"),
    CONSTRAINT estaciones_alteraciones_fk FOREIGN KEY ("UUID") REFERENCES Estaciones ("Guid")
);
CREATE INDEX alteraciones_guid_idx ON Alteraciones ("Guid");


CREATE TABLE CaracteristicaLito (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Facies" Dom_Facies,
    "Grado_Met" Dom_Grado_Met,
    "Tipo_Met" Dom_Tipo_Met,
    "Estruct_Met" Dom_EstructMet,
    "Compo_Met" Dom_Compo_Met NOT NULL,
    "Zona_Met" Dom_Zona_Met NOT NULL,
    "Tipo_Magma" Dom_Magma NOT NULL,
    "Text_Ignea" Dom_TextIgn,
    "Ambiente_Sed" Dom_Ambient_Sed,
    "Observa" VARCHAR (300),
	geometria GEOMETRY (POINT, 3116),
    CONSTRAINT caracteristica_lito_pk PRIMARY KEY ("Guid"),
    CONSTRAINT estaciones_caracteris_fk FOREIGN KEY ("UUID") REFERENCES Estaciones ("Guid")
);
CREATE INDEX caracteris_guid_idx ON CaracteristicaLito ("Guid");


CREATE TABLE Dato_Estructural (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Tipo_Dato" Dom_DatoEstruct NOT NULL,
    "Buzamiento" DOUBLE PRECISION NOT NULL,
    "Azimut_Buz" DOUBLE PRECISION,
    "Trend" DOUBLE PRECISION,
    "Rake" DOUBLE PRECISION,
    "Observa" VARCHAR (300),
	geometria GEOMETRY (POINT, 3116),
    CONSTRAINT dato_estructural_pk PRIMARY KEY ("Guid"),
    CONSTRAINT estaciones_dato_estru_fk FOREIGN KEY ("UUID") REFERENCES Estaciones ("Guid")
);
CREATE INDEX dato_estructural_guid_idx ON Dato_Estructural ("Guid");


CREATE TABLE Discontinuidades (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Tipo" Dom_Tipo_Disconti NOT NULL,
    "Buzamiento" DOUBLE PRECISION,
    "Dir_Buz" DOUBLE PRECISION,
    "Persistenc" Dom_Persistenc,
    "Observa" VARCHAR (300),
	geometria GEOMETRY (POINT, 3116),
    CONSTRAINT discontinuidades_pk PRIMARY KEY ("Guid"),
    CONSTRAINT estaciones_discontinu_fk FOREIGN KEY ("UUID") REFERENCES Estaciones ("Guid")
);
CREATE INDEX discontinuidades_guid_idx ON Discontinuidades ("Guid");


CREATE TABLE EstratigrafiaSedimentologica (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Tipo_Estratific" Dom_Tipo_Estratif,
    "Tipo_Lamina" Dom_Tipo_Lamina,
    "Estruct_Sed" Dom_Estruct_Sed,
    "Tipo_Roca" Dom_TipoSedimen NOT NULL,
    "Geom_Estrat" Dom_GeomEstrat NOT NULL,
    "Espesor" Dom_Espesor NOT NULL,
    "Fosil" Dom_Fosiles NOT NULL,
    "Tipo_Fosil" Dom_TipoFos,
    "Columna" Dom_Columna NOT NULL,
    "Observa" VARCHAR (300),
	geometria GEOMETRY (POINT, 3116),
    CONSTRAINT estratigrafia_sedime_pk PRIMARY KEY ("Guid"),
    CONSTRAINT estaciones_estratigra_fk FOREIGN KEY ("UUID") REFERENCES Estaciones ("Guid")
);
CREATE INDEX estratigra_guid_idx ON EstratigrafiaSedimentologica ("Guid");


CREATE TABLE EventosMorfodinam (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Tipo" Dom_TipoMov NOT NULL,
    "Subtipo" Dom_SubtMM NOT NULL,
    "Parte" Dom_Parte NOT NULL,
    "Etiqueta" VARCHAR (3) NOT NULL,
    "Estilo" Dom_EstiloMM NOT NULL,
    "Longitud" DOUBLE PRECISION NOT NULL,
    "Ancho" DOUBLE PRECISION NOT NULL,
    "Estado" Dom_EstadoMM NOT NULL,
    "Observa" VARCHAR (300),
	geometria GEOMETRY (POINT, 3116),
    CONSTRAINT eventos_morfodinam_pk PRIMARY KEY ("Guid"),
    CONSTRAINT estaciones_eventos_mo_fk FOREIGN KEY ("UUID") REFERENCES Estaciones ("Guid")
);
CREATE INDEX eventos_mo_guid_idx ON EventosMorfodinam ("Guid");


CREATE TABLE GCP (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Nombre" VARCHAR (60),
	geometria GEOMETRY (POINT, 3116),
    CONSTRAINT gcp_pk PRIMARY KEY ("Guid"),
    CONSTRAINT estaciones_gcp_fk FOREIGN KEY ("UUID") REFERENCES Estaciones ("Guid")
);
CREATE INDEX gcp_guid_idx ON GCP ("Guid");


CREATE TABLE GeofisicaLN (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Long" DOUBLE PRECISION GENERATED ALWAYS AS (ST_Length(geometria)::DOUBLE PRECISION) STORED,
    "Metodo" Dom_MetGeof NOT NULL,
    "Unidad" Dom_UnidadGeof NOT NULL,
    "Perfil" VARCHAR (10),
    "Tipo_Mallado" Dom_Mallado NOT NULL,
    "Tecnica" Dom_TipoTecnica NOT NULL,
    "Observa" VARCHAR (300),
	geometria GEOMETRY (LINESTRING, 3116),
    CONSTRAINT geofisica_ln_pk PRIMARY KEY ("Guid"),
    CONSTRAINT estaciones_geofisica_ln_fk FOREIGN KEY ("UUID") REFERENCES Estaciones ("Guid")
);
CREATE INDEX geofisica_ln_guid_idx ON GeofisicaLN ("Guid");


CREATE TABLE GeofisicaPG (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Area (ha)" DOUBLE PRECISION GENERATED ALWAYS AS (ST_Area(geometria) / 10000.0) STORED,
    "Metodo" Dom_MetGeof NOT NULL,
    "Unidad" Dom_UnidadGeof NOT NULL,
    "Perfil" VARCHAR (10),
    "Tipo_Mallado" Dom_Mallado NOT NULL,
    "Tecnica" Dom_TipoTecnica NOT NULL,
    "Observa" VARCHAR (300),
	geometria GEOMETRY (POLYGON, 3116),
    CONSTRAINT geofisica_pg_pk PRIMARY KEY ("Guid"),
    CONSTRAINT estaciones_geofisica_pg_fk FOREIGN KEY ("UUID") REFERENCES Estaciones ("Guid")
);
CREATE INDEX geofisica_pg_guid_idx ON GeofisicaPG ("Guid");


CREATE TABLE Pliegues_PT (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Pliegue_Geom" Dom_Pliegue_Geom,
    "Pliegue_Estrat" Dom_Pliegue_Estrat,
    "Pliegue_Anageom" Dom_Pliegue_AnaGeom,
    "Pliegue_Config" Dom_Pliegue_Config,
    "Pliegue_Aper" Dom_Pliegue_Aper,
    "Pliegue_Estilo" Dom_Pliegue_Estilo,
    "Observa" VARCHAR (300),
	geometria GEOMETRY (POINT, 3116),
    CONSTRAINT pliegues_pt_pk PRIMARY KEY ("Guid"),
    CONSTRAINT estaciones_pliegues_pt_fk FOREIGN KEY ("UUID") REFERENCES Estaciones ("Guid")
);
CREATE INDEX pliegues_pt_guid_idx ON Pliegues_PT ("Guid");


CREATE TABLE Proceso_Morfodina_PT (
    "Guid" UUID DEFAULT uuid_generate_v4() NOT NULL,
	"UUID" VARCHAR (22) NOT NULL,
    "Tipo_Proceso" Dom_ProcesoMorfodin NOT NULL,
    "Nombre" Dom_NombProceso NOT NULL,
    "Estado" Dom_EstadoProceso NOT NULL,
    "Observa" VARCHAR (300),
	geometria GEOMETRY (POINT, 3116),
    CONSTRAINT proceso_morfodina_pt_pk PRIMARY KEY ("Guid"),
    CONSTRAINT estaciones_proceso_mo_fk FOREIGN KEY ("UUID") REFERENCES Estaciones ("Guid")
);
CREATE INDEX proceso_mo_guid_idx_2 ON Proceso_Morfodina_PT ("Guid");


