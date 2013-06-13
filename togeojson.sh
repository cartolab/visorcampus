#!/usr/bash

if [ -z $1 ] ; then
    DATA_FOLDER="./data"
else 
    DATA_FOLDER=$1
fi


OFS=$IFS
IFS='
'

# data
for path in `find $DATA_FOLDER -iname '*.shp'`; do
    layer=`basename $path | cut -d'.' -f1`
    echo "${layer}=" > js/${layer}_geojson.js
    ogr2ogr -s_srs EPSG:25829 -t_srs EPSG:4326 -f geojson /tmp/foo.js $path
    cat /tmp/foo.js >> js/${layer}_geojson.js
    rm /tmp/foo.js
    cat js/${layer}_geojson.js js/${layer}_leaflet.js > js/${layer}.js

#     echo "
#     var ${layer}Style = {
#     \"color\":\"ff0000\",
#     \"fillcolor\":\"ff0000\",
#     \"weight\":5,
#     \"opacity\":0.65
# };" >> js/${layer}.js

#     echo "var ${layer}Layer = new L.GeoJSON(${layer}, {style:${layer}Style});" >> js/${layer}.js

    echo "${layer}:${layer}"
done

cat js/edificios.js > all.min.js
echo -e "\n" >> all.min.js
cat js/jardines.js >> all.min.js
echo -e "\n" >> all.min.js
cat js/arboles.js >> all.min.js
echo -e "\n" >> all.min.js
cat js/campus_aceras.js >> all.min.js
echo -e "\n" >> all.min.js
cat js/carretera.js >> all.min.js
echo -e "\n" >> all.min.js
cat js/parking.js >> all.min.js
echo -e "\n" >> all.min.js