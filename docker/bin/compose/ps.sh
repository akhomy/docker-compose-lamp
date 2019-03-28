#!/bin/sh

set -e
# parent="$(pwd)";
# parent="$parent/..";
# dirname="$(eval "cd $parent;pwd;cd - > /dev/null")";
# project="${dirname%"${dirname##*[!/]}"}";
# project="${project##*/}";
# echo "PS $project";

# docker-compose -p "$project" -f tools/network/traefik/docker-compose.yml -f compose/docker-compose.yml ps;
# Removes unused volumes.
# list="$(docker volume ls | grep $project)";
# for element in $list; do
#     if [  -z "$(echo "$element"|sed "/$project/d")" ]; then
#       docker volume rm -f "$element";
#     fi;
# done
docker-compose -f docker-compose.app.yml ps;
docker-compose -f docker/tools/network/traefik/docker-compose.yml ps;
