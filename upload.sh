#!/usr/bash

. db_config_cetus
. db-binaries.sh /opt/PostgreSQL/9.1/bin
. create-db.sh
. rename-fields.sh
. elle.sh

if [ -z $1 ] ; then
    DATA_FOLDER="./data"
else
    DATA_FOLDER=$1
fi

SRS="25829"
SCHEMA="campus"
TMP_SQL_FILE="/tmp/campus.sql"

create-db


echo "" > $TMP_SQL_FILE

# create schemas
echo "CREATE SCHEMA $SCHEMA;" >> $TMP_SQL_FILE
echo "ALTER SCHEMA $SCHEMA OWNER TO $user;" >> $TMP_SQL_FILE
SCHEMA_BASE_CARTOGRAPHY="cartografia_base"
echo "CREATE SCHEMA $SCHEMA_BASE_CARTOGRAPHY;" >> $TMP_SQL_FILE
echo "ALTER SCHEMA $SCHEMA_BASE_CARTOGRAPHY OWNER TO $user;" >> $TMP_SQL_FILE

OFS=$IFS
IFS='
'

#base cartography
$SHP2PGSQL -W LATIN1 -g geom -I -s $SRS ./cartografia_base/Cartografia_L.shp $SCHEMA_BASE_CARTOGRAPHY.campus_base >> $TMP_SQL_FILE

# data
for path in `find $DATA_FOLDER -iname '*.shp'`; do
    layer=`basename $path | cut -d'.' -f1`
    $SHP2PGSQL -W LATIN1 -g geom -I -s $SRS $path $SCHEMA.$layer >> $TMP_SQL_FILE
done


rename-fields fields_to_rename $TMP_SQL_FILE

elle-ddl
# elle-dml
cat elle.sql >> $TMP_SQL_FILE

IFS=$OFS

$PSQL -h $server -U $user -p $port -d $dbname -f $TMP_SQL_FILE