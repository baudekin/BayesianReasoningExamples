#!/bin/zsh
podman  run --mount type=bind,source="$(pwd)"/work,target=/home/jovyan/work --mount type=bind,source="$(pwd)"/jupyter,target=/home/jovyan/.jupyter  -p 8888:8888 --name  jupyterlab --rm -it jupyterlab
