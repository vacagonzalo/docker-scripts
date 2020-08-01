#!/bin/bash

CONTAINER_NAME=mongodb

USER_NAME=docker

printf "=====================================================================\n"
printf "Cliente $CONTAINER_NAME\n"
printf "Ingrese el comando 'mongo' para gestionar\n"
printf "=====================================================================\n"

docker exec -it $CONTAINER_NAME bash