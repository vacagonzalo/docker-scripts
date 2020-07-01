#!/bin/bash
IMAGE_NAME=postgres

CONTAINER_NAME=postgres
CONTAINER_PORT=5432
CONTAINER_DIRECTORY=/var/lib/postgresql/data

MACHINE_PORT=5432
MACHINE_DIRECTORY=$PWD/DB

USER=docker
PASSWORD=docker
DATABASE=docker

printf "=====================================================================\n"
printf "imagen: $IMAGE_NAME\n"
printf "nombre del contenedor: $CONTAINER_NAME\n"
printf "directorio db: $MACHINE_DIRECTORY\n"
printf "puerto expuesto: $MACHINE_PORT\n"
printf "usuario: $USER\n"
printf "contraseña: $PASSWORD\n"
printf "Base de datos: $DATABASE\n"
printf "=====================================================================\n"

docker run \
--rm \
--name $CONTAINER_NAME \
-p $MACHINE_PORT:$CONTAINER_PORT \
-v $MACHINE_DIRECTORY:$CONTAINER_DIRECTORY \
-e POSTGRES_USER=$USER \
-e POSTGRES_PASSWORD=$PASSWORD \
-e POSTGRES_DB=$DATABASE \
-d \
$IMAGE_NAME
