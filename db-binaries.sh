#!/bin/bash

PSQL_OPTIONS='--quiet -X --variable ON_ERROR_STOP=1'
export PGOPTIONS='--client-min-messages=warning'

if [ -z $1 ] ; then
   SHP2PGSQL=shp2pgsql
   DROPDB=dropdb
   DROPUSER=dropuser
   CREATEUSER=createuser
   CREATEDB=createdb
   PSQL="psql $PSQL_OPTIONS"
else
   DROPDB=$1/dropdb
   DROPUSER=$1/dropuser
   CREATEUSER=$1/createuser
   CREATEDB=$1/createdb
   PSQL="$1/psql $PSQL_OPTIONS"
   SHP2PGSQL=$1/shp2pgsql
fi