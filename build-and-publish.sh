#!/bin/bash
# 
# Build and publish a container
#
version=$(cat version.txt)
tag=$(cat tag.txt)

docker build -t $tag:$version .
docker push $tag:$version
