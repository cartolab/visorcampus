var carreteraStyle = {
    color:"#000066",
    fillColor: "#757991",
    weight:0,
    opacity:1,
    fillOpacity:0.7

};
var carreteraLayer = new L.GeoJSON(carretera, {style:carreteraStyle,

onEachFeature: function (feature, layer) {
var html = new EJS({url: 'ejs/carreteras.ejs'}).render(feature.properties);

    layer.bindPopup(html)
}

});