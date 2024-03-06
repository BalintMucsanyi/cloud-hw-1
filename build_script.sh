#!/bin/bash

docker network create my-network --subnet 198.69.69.0/24

docker build --no-cache -f Dockerfile_nginx  -t my-nginx-image .
docker build --no-cache -f Dockerfile_alpine -t my-alpine-image .

docker run --rm -d --network my-network --name my-nginx-container my-nginx-image
docker run --rm -itd --network my-network --name my-alpine-container my-alpine-image

docker exec my-alpine-container curl -s my-nginx-container
