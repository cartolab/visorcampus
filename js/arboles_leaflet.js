var arbolesMarkerOptions = {
    radius: 1,
    fillColor: "#006600",
    color:  "#006600",
    weight: 1,
    opacity: 1,
    fillOpacity: 1
};

var arbolesLayer = L.geoJson(arboles, {
    pointToLayer: function (feature, latlng) {
        return L.circleMarker(latlng, arbolesMarkerOptions);
    }
});