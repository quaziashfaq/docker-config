#!/usr/bin/env bash
set -euo pipefail

image="ash/flask_app"
app="flask"
docker build --tag ${image} .

docker run --detach --publish 8080 --name=${app} ${image}
