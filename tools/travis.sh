#!/bin/sh

# Move to variant folder
cd $VARIANT

# Build initial image as done by Docker Hub
docker build -t klakegg/hugo:$VARIANT -f Dockerfile-$VARIANT .
echo

# Trigger hooks
chmod a+x hooks/post_push
DOCKER_REPO="klakegg/hugo" SOURCE_BRANCH="0.xx" ./hooks/post_push
echo

# List images
docker images
echo
