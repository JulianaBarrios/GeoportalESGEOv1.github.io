var map = L.map('map', {center: [6.815747,-73.270159], zoom: 14, zoomControl: false});

 var osm = new L.TileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',{
 attribution:'<a href="http://openstreetmap.org/copyright" target="_blank">OpenStreetMap</a> contributors'
 }).addTo(map);
 var gmap = new L.tileLayer('http://www.google.cn/maps/vt?lyrs=s@189&gl=cn&x={x}&y={y}&z={z}',{
 attribution:'<a href= "maps.google.com" target="_blank">Google Maps</a>'
 });
 var openTopoMap = L.tileLayer('https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: 'Map data: © OpenStreetMap contributors, SRTM | Map style: © OpenTopoMap (CC-BY-SA)'});
 
 var ctlPan;
 var lc = L.control.locate({position: "topright", strings: {title: "Ubicación actual"}}).addTo(map);
 var ctlzooms;

 //otro map
 basemapUrl = 'https://api.maptiler.com/maps/outdoor-v2/{z}/{x}/{y}.png?key=VOAyz21AHUCZBt4hNA5g'
 var basemap = new L.TileLayer(basemapUrl, {minZoom: 5, maxZoom: 18});
 var miniMap = new L.Control.MiniMap(basemap, {toggleDisplay: true, minimized: false, position: "bottomleft"}).addTo(map);
 
//Enlazar servicio wms
var Proceso_Morfodinamico_PT = L.tileLayer.wms("http://localhost:8080/geoserver/ESGEO/wms?",{
        Layers: 'shp_roceso_Morfodinamico_PT',
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
   
	var baselayers = {
  		"Procesos Morfodinámicos (puntos)": Proceso_Morfodinamico_PT,
  		"Procesos Morfodinámicos (líneas)": Proceso_Morfodinamico_LN,
  		"Procesos Morfodinámicos (polígonos)": Proceso_Morfodinamico_PG,
  		"Unidad Geomorfológica": UnidadGeomorfo,
  		"Eventos Morfodinámicos": EventoMorfodinamico,
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
	L.Control.geocoder({position: 'topleft'}).addTo(map);


