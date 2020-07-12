#! /bin/bash

CONTAINER=postgres
USER=docker

printf "=====================================================================\n"
printf "Contenedor: $CONTAINER\n"
printf "Usuario: $USER\n"
printf "Nota: se necesita tener el contenedor de postgres corriendo.\n"
printf "=====================================================================\n"

docker exec -t $CONTAINER pg_dumpall -c -U $USER > dump_`date +%d-%m-%Y"_"%H_%M_%S`.sql
