#!/usr/bin/env bash
set -euo pipefail

image="ash/flask"
docker build --tag ${image} .
