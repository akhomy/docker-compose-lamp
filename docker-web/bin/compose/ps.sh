#!/bin/sh

set -e
parent="$(pwd)";
parent="$parent/..";
dirname="$(eval "cd $parent;pwd;cd - > /dev/null")";
project="${dirname%"${dirname##*[!/]}"}";
project="${project##*/}";

echo "PS $project";

docker-compose -p "$project" -f tools/network/traefik/docker-compose.yml -f compose/docker-compose.app.yml ps;
