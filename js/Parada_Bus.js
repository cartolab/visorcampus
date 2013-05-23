Parada_Bus=
{
"type": "FeatureCollection",
                                                                                
"features": [
{ "type": "Feature", "properties": { "CODIGO": 1001, "NOMBRE": "CARRETERA CAMPUS ELVIÑA", "LINEAS": "E", "ESTADO": "BUENO" }, "geometry": { "type": "Point", "coordinates": [ -8.404164499106882, 43.335719774677841 ] } }
,
{ "type": "Feature", "properties": { "CODIGO": 1002, "NOMBRE": "CAMPUS DE ELVIÑA CRUCE PUEBLO", "LINEAS": "E", "ESTADO": "BUENO" }, "geometry": { "type": "Point", "coordinates": [ -8.406273945260486, 43.334763283606165 ] } }
,
{ "type": "Feature", "properties": { "CODIGO": 1003, "NOMBRE": "CAMPUS DE ELVIÑA INFORMATICA", "LINEAS": "E", "ESTADO": "BUENO" }, "geometry": { "type": "Point", "coordinates": [ -8.410786625805118, 43.333663980626064 ] } }
,
{ "type": "Feature", "properties": { "CODIGO": 1004, "NOMBRE": "CAMPUS DE ELVIÑA GLORIETA", "LINEAS": "E", "ESTADO": "BUENO" }, "geometry": { "type": "Point", "coordinates": [ -8.412239938028637, 43.333071670269511 ] } }
,
{ "type": "Feature", "properties": { "CODIGO": 1005, "NOMBRE": "INTERCAMPUS GLORIETA ELVIÑA", "LINEAS": "E", "ESTADO": "BUENO" }, "geometry": { "type": "Point", "coordinates": [ -8.412119611692907, 43.332612575068318 ] } }
,
{ "type": "Feature", "properties": { "CODIGO": 1006, "NOMBRE": "INTERCAMPUS ECONOMICAS", "LINEAS": "E", "ESTADO": "BUENO" }, "geometry": { "type": "Point", "coordinates": [ -8.412754055432115, 43.331058269073296 ] } }

]
}

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