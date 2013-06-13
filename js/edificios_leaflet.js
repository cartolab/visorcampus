edificiosStyle = {
    color:"#666666",
    fillColor: "#666666",
    weight:1,
    opacity:0.8
};

var edificiosLayer = new L.GeoJSON(edificios, {style:edificiosStyle,
onEachFeature: function (feature, layer) {
layer.bindPopup(feature.properties.Nombre);
}


});
