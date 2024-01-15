#!/bin/bash
set -e


echo "Taking down existing containers"
docker-compose down --remove-orphans

 