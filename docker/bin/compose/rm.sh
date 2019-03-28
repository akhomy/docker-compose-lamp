#!/bin/sh

set -e

docker-compose -f docker-compose.app.yml rm -f;
docker-compose -f docker/tools/network/traefik/docker-compose.yml rm -f;
