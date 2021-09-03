#!/bin/sh

# This file is triggered inside the _base/Dockerfile-base file.

set -e
set -u

# Variables
GOLANG_VERSION="1.17.0"

# Architecture
TARGETPLATFORM=${TARGETPLATFORM:-linux/amd64}

if [ "$TARGETPLATFORM" = "linux/amd64" ]; then
    GOLANG_ARCH="amd64"
elif [ "$TARGETPLATFORM" = "linux/arm64" ]; then
    GOLANG_ARCH="arm64"
elif [ "$TARGETPLATFORM" = "linux/arm/v7" ]; then
    GOLANG_ARCH="armv6l"
else
    echo "Unknown build architecture: $TARGETPLATFORM"
    exit 2
fi

# Download
wget https://dl.google.com/go/go${GOLANG_VERSION}.linux-${GOLANG_ARCH}.tar.gz \
  -O /go.tar.gz

# Prepare content in /files
mkdir -p /files/usr/local/lib /files/usr/local/bin
tar -xf /go.tar.gz -C /files/usr/local/lib
ln -s /usr/local/lib/go/bin/go /files/usr/local/bin/go
