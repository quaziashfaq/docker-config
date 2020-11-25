#!/usr/bin/env bash
set -euo pipefail

image="ash/nginx"
app="nginx"
docker build --tag ${image} .

docker run  --detach --add-host flask:172.17.0.2 --publish 9090:9090 --name=${app} ${image}
