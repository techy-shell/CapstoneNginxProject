#!/usr/bin/env bash

docker build --tag=capstone .
docker run --detach --publish=5001:80\
    --name=capstone capstone
docker ps
docker images
docker stop capstone
