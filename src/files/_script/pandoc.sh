#!/bin/sh

# This file is triggered inside the _base/Dockerfile-base file.

set -e
set -u

# Variables
PANDOC_ARCH="amd64"
PANDOC_VERSION="2.10"

# Download
wget https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-linux-${PANDOC_ARCH}.tar.gz \
  -O /pandoc.tar.gz

# Unpack
tar -zxvf pandoc.tar.gz

# Prepare for image
mkdir -p /files/pandoc/bin
mv /pandoc-${PANDOC_VERSION}/bin/pandoc /files/pandoc/bin/pandoc-default

mkdir -p /files/pandoc-citeproc/bin
mv /pandoc-${PANDOC_VERSION}/bin/pandoc-citeproc /files/pandoc-citeproc/bin/

/files/pandoc/bin/pandoc-default -v
