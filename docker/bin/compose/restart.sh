#!/bin/sh

set -e

docker-compose -f docker/tools/network/traefik/docker-compose.yml restart;
docker-compose -f docker-compose.app.yml restart;
