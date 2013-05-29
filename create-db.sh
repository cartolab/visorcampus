#!/usr/bash

sql-create-user() {
    echo "CREATE USER $user WITH NOSUPERUSER NOCREATEDB NOCREATEROLE LOGIN PASSWORD '$userpwd';"
}

sql-drop-user() {
    echo "DROP USER IF EXISTS $user;"
}

sql-drop-db() {
    echo "DROP DATABASE IF EXISTS $dbname;"
}

sql-create-db(){
    echo "CREATE DATABASE $dbname WITH OWNER $user TEMPLATE $template;"
}

sql-public-grants(){
    echo "ALTER SCHEMA public OWNER TO $user; \
ALTER TABLE public.geometry_columns OWNER TO $user; \
ALTER TABLE public.spatial_ref_sys OWNER TO $user; \
ALTER TABLE public.geography_columns OWNER TO $user;"
}

# create-db() {
#     $DROPDB -h $server -p $port -U $superuser $dbname;
#     $DROPUSER -h $server -p $port -U $superuser $user
#     $CREATEUSER -h $server -p $port -U $superuser -SPDRl $user
# }

    # $PSQL -h $server -p $port -U $superuser $dbname -c \
    # 	"CREATE DATABASE $dbname WITH OWNER $user TEMPLATE $template; \
    # 	 ALTER SCHEMA public OWNER TO $user; \
    #      ALTER TABLE public.geometry_columns OWNER TO $user; \
    #      ALTER TABLE public.spatial_ref_sys OWNER TO $user; \
    #      ALTER TABLE public.geography_columns OWNER TO $user;"
