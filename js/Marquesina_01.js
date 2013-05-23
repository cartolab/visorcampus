Marquesina_01=
{
"type": "FeatureCollection",
                                                                                
"features": [
{ "type": "Feature", "properties": { "CODIGO": 2001, "NOMBRE": "CAMPUS DE ELVIÑA INFORMATICA", "MEDIO_TTE": "BUS", "ESTADO": "BUENO" }, "geometry": { "type": "Polygon", "coordinates": [ [ [ -8.410824871874388, 43.333657696064265 ], [ -8.410767625240345, 43.333687501614122 ], [ -8.410750569018326, 43.33367004589045 ], [ -8.410807815644125, 43.333640240348984 ], [ -8.410824871874388, 43.333657696064265 ] ] ] } }
,
{ "type": "Feature", "properties": { "CODIGO": 2002, "NOMBRE": "ANDEN", "MEDIO_TTE": "TREN", "ESTADO": "BUENO" }, "geometry": { "type": "Polygon", "coordinates": [ [ [ -8.413130266834276, 43.335265590635906 ], [ -8.412894368375968, 43.335212166978664 ], [ -8.412912897220899, 43.335168573907339 ], [ -8.413148795527531, 43.335221997525892 ], [ -8.413130266834276, 43.335265590635906 ] ] ] } }
,
{ "type": "Feature", "properties": { "CODIGO": 2003, "NOMBRE": "INTERCAMPUS GLORIETA ELVIÑA", "MEDIO_TTE": "BUS", "ESTADO": "BUENO" }, "geometry": { "type": "Polygon", "coordinates": [ [ [ -8.412133566517117, 43.33263472226502 ], [ -8.412107554706596, 43.332634170241761 ], [ -8.412110020656403, 43.332572252885647 ], [ -8.412136032440531, 43.332572804908203 ], [ -8.412133566517117, 43.33263472226502 ] ] ] } }
,
{ "type": "Feature", "properties": { "CODIGO": 2004, "NOMBRE": "CAMPUS DE ELVIÑA CRUCE PUEBLO", "MEDIO_TTE": "BUS", "ESTADO": "BUENO" }, "geometry": { "type": "Polygon", "coordinates": [ [ [ -8.406308041171966, 43.334762359538061 ], [ -8.406254761399339, 43.334782968934114 ], [ -8.406243078376802, 43.334766875871772 ], [ -8.406296358139191, 43.334746266481055 ], [ -8.406308041171966, 43.334762359538061 ] ] ] } }

]
}

    var Marquesina_01Style = {
    "color":"ff0000",
    "weight":"5",
    "opacity":0.65
};
var Marquesina_01Layer = new L.GeoJSON(Marquesina_01, {style:Marquesina_01Style});
