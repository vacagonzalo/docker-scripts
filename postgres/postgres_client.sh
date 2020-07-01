#!/bin/bash

CONTAINER_NAME=postgres

USER_NAME=docker

printf "=====================================================================\n"
printf "Cliente postgres\n"
printf "=====================================================================\n"

docker exec -it $CONTAINER_NAME psql -U $USER_NAME
