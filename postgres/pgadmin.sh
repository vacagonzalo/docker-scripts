#!/bin/bash
IMAGE_NAME=dpage/pgadmin4

CONTAINER_NAME=pgadmin
CONTAINER_PORT=80

MACHINE_PORT=8080

EMAIL=user@domain.com
PASSWORD=SuperSecret

printf "=====================================================================\n"
printf "imagen: $IMAGE_NAME\n"
printf "nombre del contenedor: $CONTAINER_NAME\n"
printf "puerto expuesto: $MACHINE_PORT\n"
printf "correo: $EMAIL\n"
printf "contraseña: $PASSWORD\n"
printf "Importante!, cuando se realize la conexión, utilizar la ip del puerto\n"
printf "del ordenar, caso contrario no se logrará la conexión.\n"
printf "=====================================================================\n"

docker run \
--rm \
--name $CONTAINER_NAME \
-p $MACHINE_PORT:$CONTAINER_PORT \
-e PGADMIN_DEFAULT_EMAIL=$EMAIL \
-e PGADMIN_DEFAULT_PASSWORD=$PASSWORD \
-d \
$IMAGE_NAME
