#!/bin/sh

set -e

docker-sync sync  -c tools/docker-sync/docker-sync.yml;
