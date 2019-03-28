#!/bin/sh

set -e

parent="$(pwd)";
parent="$parent/..";
dirname="$(eval "cd $parent;pwd;cd - > /dev/null")";
project="${dirname%"${dirname##*[!/]}"}";
project="${project##*/}";

echo "UP $project";

docker-compose -p "$project" -f compose/docker-compose.app.yml up -d --remove-orphans;
docker-compose -p "$project" -f tools/network/traefik/docker-compose.yml up -d;

