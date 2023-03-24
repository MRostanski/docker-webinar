#!/bin/bash

#MODIFY THIS! and login to your repo (docker login)
MY_DOCKER_REPO=mrostanski

# original way
DOCKER_BUILDKIT=0 docker build --tag ${MY_DOCKER_REPO}/test-multi:dev1x --build-arg ARCH=amd64/ .

docker build --push --platform=linux/amd64,linux/arm64 --tag ${MY_DOCKER_REPO}/test-multi:dev1 .
# the above will not work now!

docker buildx ls

# we need to create another driver
docker buildx create --name container --driver=docker-container

docker build --load --builder=container --platform=linux/amd64 --tag ${MY_DOCKER_REPO}/test-multi:dev1xx --build-arg ARCH=amd64/ .

# and use it to create multiplatform images
docker build --push --builder=container \
  --platform=linux/amd64,linux/arm64 --tag ${MY_DOCKER_REPO}/test-multi:dev1 .

# make sure everything is uploaded
docker buildx imagetools inspect ${MY_DOCKER_REPO}/test-multi:dev1