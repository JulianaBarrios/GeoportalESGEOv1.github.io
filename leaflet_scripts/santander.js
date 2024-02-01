var map = L.map('map', {center: [6.815747,-73.270159], zoom: 14, zoomControl: false});
 var osm = new L.TileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',{
 attribution:'<a href="http://openstreetmap.org/copyright" target="_blank">OpenStreetMap</a> contributors'
 }).addTo(map);
 var gmap = new L.tileLayer('http://www.google.cn/maps/vt?lyrs=s@189&gl=cn&x={x}&y={y}&z={z}',{
 attribution:'<a href= "maps.google.com" target="_blank">Google Maps</a>'
 });
 var openTopoMap = L.tileLayer('https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: 'Map data: © OpenStreetMap contributors, SRTM | Map style: © OpenTopoMap (CC-BY-SA)'
});

 var ctlPan;
 var lc = L.control.locate({position: "topright", strings: {title: "Ubicación actual"}}).addTo(map);
 var ctlzooms;
 var credits;

 //otro map
 basemapUrl = 'https://api.maptiler.com/maps/outdoor-v2/{z}/{x}/{y}.png?key=VOAyz21AHUCZBt4hNA5g'
 var basemap = new L.TileLayer(basemapUrl, {minZoom: 5, maxZoom: 18});
 var miniMap = new L.Control.MiniMap(basemap, {toggleDisplay: true, minimized: false, position: "bottomleft"}).addTo(map);

 var left = '<div class="header1"> Prototipo de Geoportal para la Escuela de Geología </div>';
 var contents = `
        <div class="content1">
              	<div class="title1">Read Me</div>
                <p></p>
            </div>`;
 
  //Enlazar servicio wms
 var ProyectoCampo = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_ProyectoCampo',
        format: 'image/png',
        transparent: true,
}).addTo(map);

var Alteraciones = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_Alteraciones',
        format: 'image/png',
        transparent: true
}).addTo(map);

var Estaciones = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_Estaciones',
        format: 'image/png',
        transparent: true
}).addTo(map);

var GCP = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_GCP',
        format: 'image/png',
        transparent: true
}).addTo(map);

var Estratsedi = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_EstratigrafiaSedimentologica',
        format: 'image/png',
        transparent: true
}).addTo(map);

var Discon = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_Discontinuidades',
        format: 'image/png',
        transparent: true
}).addTo(map);

var Datoes = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_Dato_Estructural',
        format: 'image/png',
        transparent: true
}).addTo(map);

var UnidadLito = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_UnidadLito',
        format: 'image/png',
        transparent: true
}).addTo(map);

var CaracteristicaLito = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_CaracteristicaLito',
        format: 'image/png',
        transparent: true
}).addTo(map);

var UnidadGeo = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_UnidadGeo',
        format: 'image/png',
        transparent: true
}).addTo(map);

var ContactoGeo = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_ContactoGeo',
        format: 'image/png',
        transparent: true
}).addTo(map);

var Fallas = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_Fallas',
        format: 'image/png',
        transparent: true
}).addTo(map);

var Pliegues_PT = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_Pliegues_PT',
        format: 'image/png',
        transparent: true
}).addTo(map);

var Pliegues_LN = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_Pliegues_LN',
        format: 'image/png',
        transparent: true
}).addTo(map);

var Proceso_Morfodinamico_PT = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_Proceso_Morfodinamico_PT',
        format: 'image/png',
        transparent: true
}).addTo(map);

var Proceso_Morfodinamico_LN = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_Proceso_Morfodinamico_LN',
        format: 'image/png',
        transparent: true
}).addTo(map);

var Proceso_Morfodinamico_PG = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_Proceso_Morfodinamico_PG',
        format: 'image/png',
        transparent: true
}).addTo(map);

var UnidadGeomorfo = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_UnidadGeomorfo',
        format: 'image/png',
        transparent: true
}).addTo(map);

var EventoMorfodinamico = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_EventoMorfodinamico',
        format: 'image/png',
        transparent: true
}).addTo(map);

var GeofisicaLN = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_GeofisicaLN',
        format: 'image/png',
        transparent: true
}).addTo(map);

var GeofisicaPG = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_GeofisicaPG',
        format: 'image/png',
        transparent: true
}).addTo(map);
   
	var baselayers = {
  		"Zona de campo": ProyectoCampo,
  		"Estaciones de campo": Estaciones,
  		"Alteraciones": Alteraciones,
  		"Puntos Control Terreno": GCP,
  		"Estratigrafía Sedimentológica": Estratsedi,
  		"Discontinuidades Geológicas": Discon,
  		"Datos Estructurales": Datoes,	
  		"Unidad Litológica": UnidadLito,
  		"Características Litológicas": CaracteristicaLito,
  		"Unidad Geológica ": UnidadGeo,
  		"Contacto Geológico": ContactoGeo,
  		"Fallas": Fallas,
  		"Pliegues (puntos)": Pliegues_PT,
  		"Pliegues (líneas)": Pliegues_LN,
  		"Procesos Morfodinámicos (puntos)": Proceso_Morfodinamico_PT,
  		"Procesos Morfodinámicos (líneas)": Proceso_Morfodinamico_LN,
  		"Procesos Morfodinámicos (polígonos)": Proceso_Morfodinamico_PG,
  		"Unidad Geomorfológica": UnidadGeomorfo,
  		"Eventos Morfodinámicos": EventoMorfodinamico,
  		"Datos Geofísicos (líneas)": GeofisicaLN,
        	"Datos Geofísicos (polígonos)": GeofisicaPG,
	};
		
	var overlayers = {
	"OpenStreetMap": osm,
	"Google Satelite": gmap,
	"OpenTopoMap": openTopoMap
	};

ctlPan = L.control.pan({position: 'topleft'}).addTo(map);	
L.control.layers(overlayers,baselayers,{collapsed:true}).addTo(map);
L.control.scale({options: {position: 'bottomleft',maxWidth: 100,metric: true,imperial: false,updateWhenIdle: false}}).addTo(map);
L.control.polylineMeasure({position:'topleft', unit:'metres', clearMeasurementsOnStop: false, showMeasurementsClearControl: true, showUnitControl: true}).addTo(map);
L.control.coordinates().addTo(map);
ctlzooms = L.control.zoomslider({position: 'topright'}).addTo(map);
credits = L.controlCredits({
    imageurl: 'src/images/Sin título-1.png',
    imagealt: 'Juliana&Cediel',
    tooltip: 'Realizado por JB&CR',
    width: '50px',
    height: '50px',
    expandcontent: 'Mapa Interactivo<br/>por <a href="" target="">Juliana&Cediel</a>',
}).addTo(map);
L.control.slideMenu(left + contents, {heigth: '60px', width: '300px', icon: 'fa fa-reorder'}).addTo(map);
L.Control.geocoder({position: 'topleft'}).addTo(map);











