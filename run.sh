#!/bin/sh
export PGPASSWORD=$POSTGRES_PASSWORD;

echo "**********************************"
echo "*     Creating user, schema      *"
echo "*     user $New_USER             *"
echo "**********************************"

psql -h $HOST -p $PORT -U $POSTGRES_USER -f schema.sql -v user=$New_USER -v pass=$NU_PASS -v schemaname=$SCHEMA_NAME

echo "**********************************"
echo "*      Creating table            *"
echo "**********************************"
psql -h $HOST -p $PORT -U $POSTGRES_USER -f table.sql -v schemaname=$SCHEMA_NAME