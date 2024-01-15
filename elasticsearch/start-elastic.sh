#!/bin/bash
set -e


echo "Taking down existing containers"
docker-compose down --remove-orphans
 
echo "Bringing up the containers"
docker-compose up --build -d
 