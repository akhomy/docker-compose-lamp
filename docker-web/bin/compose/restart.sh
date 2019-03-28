#!/bin/sh

set -e

parent="$(pwd)";
parent="$parent/..";
dirname="$(eval "cd $parent;pwd;cd - > /dev/null")";
project="${dirname%"${dirname##*[!/]}"}";
project="${project##*/}";

echo "Restart $project";

docker-compose -p "$project" -f compose/docker-compose.app.yml restart  --remove-orphans;
docker-compose -p "$project" -f tools/network/traefik/docker-compose.yml restart  --remove-orphans;
