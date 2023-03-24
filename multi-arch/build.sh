#!/bin/bash

# Prepare your system to run multiple platforms
docker run --privileged --rm tonistiigi/binfmt --install all

# Build your image based on amd64 image

docker build -t mrostanski/multiarch-example:manifest-amd64 --build-arg ARCH=amd64/ .
docker push mrostanski/multiarch-example:manifest-amd64

# Build another image based on arm64 image

docker build -t mrostanski/multiarch-example:manifest-arm64v8 --build-arg ARCH=arm64v8/ .
docker push mrostanski/multiarch-example:manifest-arm64v8 

# Create merged manifest 

docker manifest create \
mrostanski/multiarch-example:manifest-latest \
--amend mrostanski/multiarch-example:manifest-amd64 \
--amend mrostanski/multiarch-example:manifest-arm64v8 

# Push a manifest into registry

docker manifest push mrostanski/multiarch-example:manifest-latest