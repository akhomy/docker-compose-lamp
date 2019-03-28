#!/bin/sh

set -e

parent="$(pwd)";
parent="$parent/..";
dirname="$(eval "cd $parent;pwd;cd - > /dev/null")";
project="${dirname%"${dirname##*[!/]}"}";
project="${project##*/}";

echo "Remove $project";

docker-compose -p "$project" -f compose/docker-compose.app.yml rm -f;
docker-compose -p "$project" -f tools/network/traefik/docker-compose.yml rm -f;


# Removes unused volumes.
list="$(docker volume ls | grep $project)";
for element in $list; do
    if [  -z "$(echo "$element"|sed "/$project/d")" ]; then
      docker volume rm -f "$element";
    fi;
done
