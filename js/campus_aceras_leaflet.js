var campus_acerasStyle = {
    color:"#000066",
    fillColor: "#0000CC",
    weight:1,
    opacity:1,
    fillOpacity:0.7
};

var campus_acerasLayer = new L.GeoJSON(campus_aceras, {style:campus_acerasStyle,
onEachFeature: function (feature, layer) {
var html = new EJS({url: 'ejs/aceras.ejs'}).render(feature.properties);

    layer.bindPopup(html)
}
});