#! /bin/bash

CONTAINER=postgres
USER=docker

printf "=====================================================================\n"
printf "Contenedor: $CONTAINER"
printf "Usuario: $USER"
printf "Nota: se necesita tener el contenedor de postgres corriendo."
printf "=====================================================================\n"

docker exec -t $CONTAINER pg_dumpall -c -U $USER > dump_`date +%d-%m-%Y"_"%H_%M_%S`.sql
