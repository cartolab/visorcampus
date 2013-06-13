var jardinesStyle = {
    color:"#006600",
    fillColor: "#00CC00",
    weight:1,
    opacity:1,
    fillOpacity:0.7

};
var jardinesLayer = new L.GeoJSON(jardines, {style:jardinesStyle,

onEachFeature: function (feature, layer) {
var html = new EJS({url: 'ejs/jardines.ejs'}).render(feature.properties);

    layer.bindPopup(html)
}

});
