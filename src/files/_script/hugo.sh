#!/bin/sh

# This file is triggered inside the _base/Dockerfile-base file.

set -e
set -u

# Variables
HUGO_ARCH="64bit"
# HUGO_VERSION is edited in Dockerfile.

# Download binaries from release
wget https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-${HUGO_ARCH}.tar.gz
wget https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_extended_${VERSION}_Linux-${HUGO_ARCH}.tar.gz
wget https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_checksums.txt

# Verify checksums
grep Linux-${HUGO_ARCH}.tar.gz hugo_${VERSION}_checksums.txt | sha256sum -c

# Prepare folders
mkdir -p /hugo-standard/usr/lib/hugo
mkdir -p /hugo-extended/usr/lib/hugo

# Unpack downloaded content
tar -zxf hugo_${VERSION}_Linux-${HUGO_ARCH}.tar.gz -C /hugo-standard/usr/lib/hugo
tar -zxf hugo_extended_${VERSION}_Linux-${HUGO_ARCH}.tar.gz -C /hugo-extended/usr/lib/hugo

# Verify executable
/hugo-standard/usr/lib/hugo/hugo version

# Create autocompletion script
mkdir /etc/bash_completion.d
/hugo-standard/usr/lib/hugo/hugo gen autocomplete > /dev/null
mkdir -p /hugo-standard/etc/bash_completion.d
mkdir -p /hugo-extended/etc/bash_completion.d
cp /etc/bash_completion.d/hugo.sh /hugo-standard/etc/bash_completion.d/hugo.sh
cp /etc/bash_completion.d/hugo.sh /hugo-extended/etc/bash_completion.d/hugo.sh

# Create version file
echo -n "$VERSION" > /hugo-standard/etc/hugo-release
echo -n "$VERSION" > /hugo-extended/etc/hugo-release
