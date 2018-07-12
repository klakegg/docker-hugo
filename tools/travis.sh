#!/bin/bash

export DOCKER_REPO="klakegg/hugo"
export SOURCE_BRANCH="0.xx"
export CI="true"

# Build initial image as done by Docker Hub
docker build -t klakegg/hugo:base -f Dockerfile-base .
echo

source hooks/post_push

# List images
docker images klakegg/hugo
echo
