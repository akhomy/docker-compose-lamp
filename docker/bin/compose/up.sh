#!/bin/sh

set -e

docker-compose -f docker/tools/network/traefik/docker-compose.yml up -d;
docker-compose -f docker-compose.app.yml up -d;

