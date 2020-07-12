#!/bin/sh

# This file is triggered inside the _base/Dockerfile-base-golang file.

set -e
set -u

# Variables
GOLANG_ARCH="amd64"
GOLANG_VERSION="1.14.4"

# Download
wget https://dl.google.com/go/go${GOLANG_VERSION}.linux-${GOLANG_ARCH}.tar.gz \
  -O /go.tar.gz

# Prepare content in /files
mkdir -p /files/usr/local/lib /files/usr/local/bin
tar -xf /go.tar.gz -C /files/usr/local/lib
ln -s /usr/local/lib/go/bin/go /files/usr/local/bin/go
