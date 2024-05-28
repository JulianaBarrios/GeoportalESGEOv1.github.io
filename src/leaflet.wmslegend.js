L.Control.WMSLegend = L.Control.extend({
    options: {
        position: 'bottomright',
        uris: [],  
        layerNames: []  
    },

    initialize: function (options) {
        L.setOptions(this, options);
    },

    onAdd: function () {
        var controlClassName = 'leaflet-control-wms-legend',
            stop = L.DomEvent.stopPropagation;

        this.container = L.DomUtil.create('div', controlClassName + ' wms-legend-collapsed');

        // Crear y añadir las leyendas para cada URI
        this.options.uris.forEach((uri, index) => {
            var legendContainer = L.DomUtil.create('div', 'wms-legend-container', this.container);

            // Crear un subcontenedor para la leyenda
            var legendItem = L.DomUtil.create('div', 'wms-legend-item', legendContainer);

            // Añadir la imagen de la leyenda
            var img = L.DomUtil.create('img', 'wms-legend-icon', legendItem);
            img.src = uri;
            img.alt = 'Legend';

            // Añadir el nombre de la capa
            var label = L.DomUtil.create('span', 'wms-legend-label', legendItem);
            label.innerText = this.options.layerNames[index] || '';

            L.DomEvent
                .on(legendContainer, 'click', this._toggleCollapse, this)
                .on(img, 'mousedown', stop)
                .on(img, 'dblclick', stop)
                .on(img, 'click', L.DomEvent.preventDefault)
                .on(img, 'click', stop);
        });

        // Crear el botón de "expandir"
        this.expandButton = L.DomUtil.create('div', 'expand-button', this.container);
        this.expandButton.innerHTML = '&#x23EA';

        L.DomEvent.on(this.expandButton, 'click', this._toggleCollapse, this);

        return this.container;
    },

    _toggleCollapse: function () {
        var container = this.container;
        if (container.className.indexOf('wms-legend-collapsed') !== -1) {
            container.className = container.className.replace('wms-legend-collapsed', '');
            this.expandButton.innerHTML = '&#x2612';
        } else {
            container.className += ' wms-legend-collapsed';
            this.expandButton.innerHTML = '&#x23EA';
        }
    },

    update: function (uris, layerNames) {
        this.options.uris = uris;
        this.options.layerNames = layerNames;
        
        // Limpiar el contenedor existente
        while (this.container.firstChild) {
            this.container.removeChild(this.container.firstChild);
        }

        // Añadir las leyendas actualizadas
        this.onAdd();
    }
});

L.wmsLegend = function (uris, layerNames, map) {
    var wmsLegendControl = new L.Control.WMSLegend({
        uris: uris,
        layerNames: layerNames
    });
    map.addControl(wmsLegendControl);
    return wmsLegendControl;
};



