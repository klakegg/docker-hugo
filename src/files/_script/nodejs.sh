#!/bin/sh

# This file is triggered inside the _base/Dockerfile-base file.

set -e
set -u

# Variables
NODE_ARCH="x64"
NODE_VERSION="12.18.2"

# Download
wget https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-${NODE_ARCH}.tar.xz \
  -O /node.tar.gz

# Unpack
mkdir /node
tar -xJf "node.tar.gz" -C /node --strip-components=1 --no-same-owner
