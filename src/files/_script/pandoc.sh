#!/bin/sh

# This file is triggered inside the _base/Dockerfile-base-pandoc file.

set -e
set -u

# Variables
PANDOC_ARCH="amd64"
PANDOC_VERSION="2.10"

# Download
wget https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-linux-${PANDOC_ARCH}.tar.gz \
  -O /pandoc.tar.gz

tar -zxvf pandoc.tar.gz
mv /pandoc-${PANDOC_VERSION}/bin/pandoc /pandoc
mv /pandoc-${PANDOC_VERSION}/bin/pandoc-citeproc /pandoc-citeproc

/pandoc -v
