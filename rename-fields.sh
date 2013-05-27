
# $1 alias file
# $2 sql file
rename-fields() {
    for line in `cat $1` ; do
	shortFieldName=`echo $line | cut -d'=' -f1 | tr '[:upper:]' '[:lower:]'`
        longFieldName=`echo $line | cut -d'=' -f2 | tr '[:upper:]' '[:lower:]' | tr -d '\r' | tr ' ' '_'`
	sed -i "sA${shortFieldName}A${longFieldName}Ag" $2
    done
}
