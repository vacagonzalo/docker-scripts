#!/bin/bash

IMAGE_NAME=mongo

CONTAINER_NAME=mongodb
CONTAINER_PORT=2717
CONTAINER_DIRECTORY=/data/db

MACHINE_PORT=2717
MACHINE_DIRECTORY=$PWD/DB


printf "=====================================================================\n"
printf "imagen: $IMAGE_NAME\n"
printf "nombre del contenedor: $CONTAINER_NAME\n"
printf "directorio db: $MACHINE_DIRECTORY\n"
printf "puerto expuesto: $MACHINE_PORT\n"
printf "=====================================================================\n"

docker run \
--rm \
--name $CONTAINER_NAME \
-p $MACHINE_PORT:$CONTAINER_PORT \
-v $MACHINE_DIRECTORY:$CONTAINER_DIRECTORY \
-d \
$IMAGE_NAME