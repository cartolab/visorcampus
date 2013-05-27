#!/usr/bash

elle-ddl() {
    echo $user
    sed "s/\${owner}/$user/g" elle-ddl.tmpl >> $TMP_SQL_FILE
}

elle-dml() {
    i=0
    for path in `find $DATA_FOLDER -iname '*.shp'`; do
	# shp2pgsql converts identifiers to lowercase
	layer=`basename $path | cut -d'.' -f1 | tr '[:upper:]' '[:lower:]'`
	echo "INSERT INTO elle._map VALUES ('Vista general', '$layer', '$layer', $i, true, NULL, NULL, '', '$SCHEMA', NULL);" >> $TMP_SQL_FILE
	i=$(($i+1))
    done
    echo "INSERT INTO elle._map VALUES ('Vista general', 'campus_base', 'campus_base', $i, true, NULL, NULL, '', '$SCHEMA_BASE_CARTOGRAPHY', NULL);" >> $TMP_SQL_FILE
}