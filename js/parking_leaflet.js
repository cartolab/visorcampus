var parkingStyle = {
    color:"#808080",
    fillColor: "#CCCCCC",
    weight:1,
	opacity:0.6,
	fillOpacity:0.7

};
var parkingLayer = new L.GeoJSON(parking, {style:parkingStyle});