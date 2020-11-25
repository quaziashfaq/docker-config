#!/usr/bin/env bash

image="ash/ubuntu"
container="ubuntutest01"
docker build --tag ${image} .

docker run --rm --interactive --tty --add-host flask:172.17.0.2 --name=${container} ${image} /bin/bash
