#!/bin/bash

# Tiny library to make common tasks on Docker Hub easy for hooks files.


# Listing some useful commands
echo "CI: $CI"
echo "DOCKER_REPO: $DOCKER_REPO"
echo "SOURCE_BRANCH: $SOURCE_BRANCH"
echo

# Make sure only tagged commits triggers logic in hooks files.
if [ "$SOURCE_BRANCH" = "master" ]; then
    exit
fi

function tag {
  echo "Tag:   $1 => $(real $2)"
  docker tag $DOCKER_REPO:$1 $DOCKER_REPO:$(real $2)
  push $2
}

function build {
  echo "Build: $1 ($2)"
  docker build -t $DOCKER_REPO:$1 -f $2 . > /dev/null
  push $1
}

function push {
  img=$DOCKER_REPO:$(real $1)
  if [ "$CI" != "true" ]; then
    docker push $img > /dev/null
  else
    echo "       (Push of '$img' skipped.)"
  fi
}

function real {
  echo $1 | sed -e "s/\[version\]/${SOURCE_BRANCH}/g"
}
