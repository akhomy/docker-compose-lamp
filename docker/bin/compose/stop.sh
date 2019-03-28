#!/bin/sh

set -e

docker-compose -f docker-compose.app.yml stop;
docker-compose -f docker/tools/network/traefik/docker-compose.yml stop;
