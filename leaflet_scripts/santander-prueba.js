function initMap() {
var map = L.map('map', {center: [6.602204,-73.017701], zoom: 11, zoomControl: true});
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
var gTerrain = L.tileLayer('http://{s}.google.com/vt/lyrs=p&x={x}&y={y}&z={z}',{
    maxZoom: 20,
    subdomains:['mt0','mt1','mt2','mt3']
});
var gHybrid = L.tileLayer('http://{s}.google.com/vt/lyrs=s,h&x={x}&y={y}&z={z}',{
    maxZoom: 20,
    subdomains:['mt0','mt1','mt2','mt3']
});

var credits;
// Añadir control de carga de archivos
var style = {
    color: 'red',
    opacity: 1.0,
    fillOpacity: 0.0,
    weight: 2,
    clickable: true
};

//otro map
 basemapUrl = 'http://mts2.google.com/vt/lyrs=y&x={x}&y={y}&z={z}'
 var basemap = new L.TileLayer(basemapUrl, {minZoom: 5, maxZoom: 18});
 var miniMap = new L.Control.MiniMap(basemap, {toggleDisplay: true, minimized: false, position: "bottomleft"}).addTo(map);

var left = '<div class="header1">Prototipo de Geoportal para la Escuela de Geología</div>';
var contents = `
	<div class="content1">
		<div class="title1">Mapa de Campo</div>
		<p>El mapa de campo geológico es una representación cartográfica detallada de la superficie terrestre, diseñado para ilustrar la distribución y relaciones espaciales de las rocas, estructuras geológicas y otros fenómenos relevantes.</p>
		<div class="subtitle">Proyecto de Campo</div>
		<p>Comprende la zona de estudio en la que se encuentran las respectivas estaciones de campo</p>
		<div class="subtitle">GCP</div>
		<p>Comprende los puntos GPS tomados en el terreno</p>
		<div class="subtitle">Estaciones de campo</div>
		<p>Comprende las características identificadas en cada una de las estaciones realizadas</p>
		<div class="subtitle">Estratigrafía Sedimentológica</div>
		<p>Comprende las estructuras sedimentarias (como estratificaciones y laminaciones) que se pudieron identificar en el afloramiento</p>
		<div class="subtitle">Alteraciones</div>
		<p>Corresponde a las características y propiedades de las zonas de alteración geológica del macizo</p>
		<div class="subtitle">Discontinuidades Geológicas</div>
		<p>Corresponde a los elementos que representan el trazado de estructuras a nivel local y regional que indican cualquier corte (fisura, grieta, diaclasa, superficies de estratificación) en el macizo rocoso</p>
		<div class="subtitle">Datos Estructurales</div>
		<p>Corresponde a los puntos que contienen los datos de rumbo y buzamiento que permiten identificar una estructura a nivel regional y local</p>
		
		<div class="title1">Mapa Geológico</div>
		<p>Un mapa geológico es una representación visual que muestra la distribución, tipo y relación de las formaciones geológicas en una región específica, proporcionando información esencial para entender la geología de la zona.</p>
		<div class="subtitle">Unidad Litológica</div>
		<p>Corresponde a las unidades de roca que se identificaron en el terreno a escalas mayores de 1:15.000</p>
		<div class="subtitle">Características Litológicas</div>
		<p>Corresponde a las características que definan tanto la estructura, como la textura, composición, origen, ambiente y demás de la roca que se muestree en el afloramiento y que brinde más información sobre la unidad litológica que se define finalmente</p>
		<div class="subtitle">Unidad Geológica</div>
		<p>Comprende la unidad o formación geológica a escala regional (> 1:15.000) con la cual se pueden relacionar las rocas aflorantes en el terreno</p>
		<div class="subtitle">Contacto Geológico</div>
		<p>Corresponde a los límites de las unidades geológicas</p>
		<div class="subtitle">Fallas</div>
		<p>Corresponde a los elementos lineales que representan el trazado de una fractura o falla que se observa en un segmento de la superficie que se está cartografiando, siendo esta lo suficientemente amplia para ser visible a simple vista</p>
		<div class="subtitle">Pliegues</div>
		<p>Corresponde a los elementos puntuales y lineales que resultan de la deformación de las capas geológicas</p>
		
		<div class="title1">Mapa Geomorfológico</div>
		<p>Un mapa geomorfológico es una representación gráfica que destaca las características del relieve terrestre, revelando patrones y formas del paisaje. Muestra la distribución de tierras altas, llanuras, valles y otros elementos, proporcionando información clave para comprender la evolución del terreno y sus procesos geodinámicos.</p>
		<div class="subtitle">Procesos Morfodinámicos</div>
		<p>Elementos puntuales, lineales y áreas que identifican la morfología o dinámica de la superficie terrestre</p>
		<div class="subtitle">Unidad Geomorfológica</div>
		<p>Áreas que identifican la morfología de la superficie terrestre con características similares, según propuesta metodológica del IGAC y el SGC</p>
		<div class="subtitle">Eventos Morfodinámicos</div>
		<p>Corresponde con los movimientos en masa identificados</p>
		
		<div class="title1">Mapa Geofísico</div>
		<p>Un mapa geofísico es una representación cartográfica que refleja las mediciones de campos físicos en la Tierra, como la gravedad, magnetismo o resistividad eléctrica.</p>
		<div class="subtitle">Toma de datos Geofísicos</div>
		<p>Corresponde a los elementos lineales y polígonos que relacionan la ubicación y descripción de los sitios donde se realizaron mediciones para un estudio geofísico</p>
	</div>
    <div class="row">
    <div class="col">
        <ul class="list-inline my-2">
        <li class="list-inline-item">
            <a class="nav-link active link-light py-0 rounded-0" href="https://www.facebook.com/UISColombia/" title="Universidad Industrial de Santander">
                <img class="fo1" src="img/Facebook_Logo_(2019).png">
            </a>
        </li>
        <li class="list-inline-item">
            <a class="nav-link active link-light py-0 rounded-0" href="http://geologia.uis.edu.co/eisi/eisi.jsp" title="Escuela de Geología">
                <img class="fo3" src="img/Sin-2.png">
            </a>
        </li>
        <li class="list-inline-item">
            <a class="nav-link active link-light py-0 rounded-0" href="https://uis.edu.co/es/" title="Página web UIS">
                <img class="fo3" src="img/1024px-Logotipo_Universidad_Industrial_de_Santander_vectorecs.svg.png">
            </a>
        </li>
         </ul>
    </div>
    </div>`;

var options = {'transparent': true, 'tiled': true, "format": "image/png"};

var source = L.WMS.source("http://localhost:8080/geoserver/ESGEO/wms?", options);

var proyectocampo = source.getLayer('proyectocampo');

var alteraciones = source.getLayer('alteraciones');

var estaciones = source.getLayer('estaciones');

var GCP = source.getLayer('GCP');

var estratigrafiasedimentologica = source.getLayer('estratigrafiasedimentologica');

var discontinuidades = source.getLayer('discontinuidades');

var dato_estructural = source.getLayer('dato_estructural');

var unidadlito = source.getLayer('unidadlito');

var caracteristicaLito = source.getLayer('caracteristicaLito');

var unidadgeo = source.getLayer('unidadgeo');

var contactogeo = source.getLayer('contactogeo');

var fallas = source.getLayer('fallas');

var pliegues_PT = source.getLayer('pliegues_PT');

var pliegues_LN = source.getLayer('pliegues_LN');

var proceso_Morfodinamico_PT = source.getLayer('proceso_Morfodinamico_PT');

var proceso_Morfodinamico_LN = source.getLayer('proceso_Morfodinamico_LN');

var proceso_Morfodinamico_PG = source.getLayer('proceso_Morfodinamico_PG');

var unidadgeomorfo = source.getLayer('unidadgeomorfo');

var eventosmorfodinam = source.getLayer('eventosmorfodinam');

var geofisicaLN = source.getLayer('geofisicaLN');

var geofisicaPG = source.getLayer('geofisicaPG');
                            
L.Control.geocoder({position: 'topleft', collapsed: 'false', placeholder: 'Buscar...', errorMessage: 'Nothing found.', defaultMarkGeocode: false})
.on('markgeocode', function(e) {
    var location = e.geocode.center;
    // Crear un marcador con un icono personalizado (punto negro)
    var customMarker = L.marker(location, {
        icon: L.icon({
            iconUrl: 'data:image/svg+xml,%3Csvg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="black" width="24px" height="24px"%3E%3Cpath d="M12 2c-4.41 0-8 3.59-8 8s8 14 8 14 8-9.59 8-14-3.59-8-8-8zm0 11c-1.66 0-3-1.34-3-3s1.34-3 3-3 3 1.34 3 3-1.34 3-3 3z"/%3E%3C/svg%3E',
            iconSize: [24, 24], // Tamaño del icono (ancho, alto)
            iconAnchor: [12, 24], // Punto de anclaje del icono (centro inferior)
            popupAnchor: [0, -24] // Punto de anclaje del popup (arriba del icono)
        })
    });

    // Agregar el marcador al mapa
    customMarker.addTo(map);

    // Opcional: Mostrar un popup con información adicional
    customMarker.bindPopup('Ubicación: ' + e.geocode.name).openPopup();
    map.setView(location);
}).addTo(map);
    
L.control.locate({position: "topleft", strings: {title: "Ubicación actual"}}).addTo(map);

L.control.polylineMeasure({position:'topleft', unit:'metros', clearMeasurementsOnStop: false, showMeasurementsClearControl: true, showUnitControl: true}).addTo(map);
new L.basemapsSwitcher([{
    layer: osm,
    icon: 'img/888b195c0cbcd04fa0f55d4c12d9d0ed.jpg',
    name: 'OpenStreet Map'},
    {layer: gmap,
    icon: 'img/8677.jpeg',
    name: 'Google Satelite'},
    {layer: openTopoMap,
    icon: 'img/OpenTopomap_Meiningen.jpg',
    name: 'OpenTopo Map'},
    {layer: gTerrain,
    icon: 'img/elevation-change-map.jpg',
    name: 'Terrain Map'},
    {layer: gHybrid,
    icon: 'img/thumbnail.jpeg',
    name: 'Hybrid Map'}
    ], { position: 'topright' }).addTo(map);

//ctlzooms = L.control.zoomslider({position: 'topright'}).addTo(map);

//L.control.layers.tree(baselayer, overlayTree, {
    //selectorBack: false,
    //closedSymbol: '&#128193; &#128503;',
    //openedSymbol: '&#128194; &#128503;',
    //collapseAll: '<span style="font-size: 14px; font-weight: bold;color: red;">Colapsar todo</span>',
    //expandAll: '<span style="font-size: 14px; font-weight: bold;color: red;">Expandir todo</span>',
    //collapsed: true,
    //spaceSymbol: '&nbsp;&nbsp;'}).addTo(map);

L.control.layers({}, {
    'Unidad Litológica': unidadlito,
    'Unidad Geológica': unidadgeo,
    'Fallas': fallas,
    'Zona de campo': proyectocampo,
    'Estaciones de campo': estaciones,
    'Datos Estructurales': dato_estructural,
    'Unidad Geomorfológica': unidadgeomorfo,
    'Eventos Morfodinámicos': eventosmorfodinam
}).addTo(map);

//credits = L.controlCredits({
    //position: 'bottomleft',
    //imageurl: 'img/1024px-Logotipo_Universidad_Industrial_de_Santander_vectorecs.svg.png',
    //imagealt: 'JulianaBarrios',
    //tooltip: 'Realizado por JB',
    //width: '50px',
    //height: '50px',
    //expandcontent: 'Mapa Interactivo<br/>por <a href="" target="">JulianaBarrios</a>',}).addTo(map);

L.control.slideMenu(left + contents, {heigth: '60px', width: '400px', icon: 'fa fa-reorder'}).addTo(map);

var uris = [
    'http://localhost:8080/geoserver/wms?&&SERVICE=WMS&VERSION=1.3.0&SLD_VERSION=1.1.0&REQUEST=GetLegendGraphic&FORMAT=image/png&LAYER=fallas&STYLE=',
    'http://localhost:8080/geoserver/wms?&&SERVICE=WMS&VERSION=1.3.0&SLD_VERSION=1.1.0&REQUEST=GetLegendGraphic&FORMAT=image/png&LAYER=estaciones&STYLE=',
    'http://localhost:8080/geoserver/wms?&&SERVICE=WMS&VERSION=1.3.0&SLD_VERSION=1.1.0&REQUEST=GetLegendGraphic&FORMAT=image/png&LAYER=unidadgeomorfo&STYLE=',
    'http://localhost:8080/geoserver/wms?&&SERVICE=WMS&VERSION=1.3.0&SLD_VERSION=1.1.0&REQUEST=GetLegendGraphic&FORMAT=image/png&LAYER=unidadlito&STYLE='
];
var layerNames = ['Fallas', 'Estaciones'];
L.wmsLegend(uris, layerNames, map);


L.Control.FileLayerLoad.LABEL = '&#x1F4C1;';
    control = L.Control.fileLayerLoad({
        fitBounds: true,
        layerOptions: {
            style: style,
            pointToLayer: function (data, latlng) {
                return L.circleMarker(latlng, { style: style });
            }
        }
    }).addTo(map);

    // Manejar eventos de carga de archivos
    control.loader.on('data:loaded', function (e) {
        var layer = e.layer;
        console.log(layer);
    });
    control.loader.on('data:error', function (error) {    
        alert(error.error.message);
     });

    }

document.addEventListener('DOMContentLoaded', function() {
    initMap();
});






