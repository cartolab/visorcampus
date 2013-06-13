var paradaBusMarkerOptions = {
    radius: 8,
    fillColor: "#ff7800",
    color: "#000",
    weight: 1,
    opacity: 1,
    fillOpacity: 0.8
};

var Parada_BusLayer = L.geoJson(Parada_Bus, {
    pointToLayer: function (feature, latlng) {
        return L.circleMarker(latlng, paradaBusMarkerOptions);
    }
})