#!/bin/sh

# This file is triggered inside the _base/Dockerfile-base file.

set -e
set -u

# Variables
SASS_EMBEDDED_VERSION="1.0.0-beta.11"

# Download
wget https://github.com/sass/dart-sass-embedded/releases/download/${SASS_EMBEDDED_VERSION}/sass_embedded-${SASS_EMBEDDED_VERSION}-linux-x64.tar.gz \
  -O /sass-embedded.tar.gz

# Unpack
mkdir -p /files/usr/local/lib /files/usr/local/bin
tar -zxvf sass-embedded.tar.gz -C /files/usr/local/lib

# Create symlink
ln -s /usr/local/lib/sass_embedded/dart-sass-embedded /files/usr/local/bin/dart-sass-embedded
