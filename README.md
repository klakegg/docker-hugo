# Hugo

[![](https://images.microbadger.com/badges/image/klakegg/hugo.svg)](https://microbadger.com/images/klakegg/hugo "Get your own image badge on microbadger.com")
[![Build Status](https://travis-ci.org/klakegg/docker-hugo.svg?branch=master)](https://travis-ci.org/klakegg/docker-hugo)
[![Docker Pulls](https://img.shields.io/docker/pulls/klakegg/hugo.svg)](https://store.docker.com/community/images/klakegg/hugo)

Truly minimal Docker images for [Hugo](http://gohugo.io/) with batteries included.
These images sets `destination` during build and `bind` when started as server, otherwise no magic.


## Available tags

Default minimal image based upon [Busybox](https://hub.docker.com/r/_/busybox/):
* Aliases: `latest`, `busybox`, `busybox-onbuild`, `onbuild`
* Hugo 0.57.2: `0.57.2-busybox`, `0.57.2`, `0.57.2-busybox-onbuild`, `0.57.2-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.57.2/dist/busybox/Dockerfile-busybox))
* Hugo 0.57.1: `0.57.1-busybox`, `0.57.1`, `0.57.1-busybox-onbuild`, `0.57.1-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.57.1/dist/busybox/Dockerfile-busybox))
* Hugo 0.56.3: `0.56.3-busybox`, `0.56.3`, `0.56.3-busybox-onbuild`, `0.56.3-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.56.3/dist/busybox/Dockerfile-busybox))
* Hugo 0.56.2: `0.56.2-busybox`, `0.56.2`, `0.56.2-busybox-onbuild`, `0.56.2-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.56.2/dist/busybox/Dockerfile-busybox))
* Hugo 0.55.6: `0.55.6-busybox`, `0.55.6`, `0.55.6-busybox-onbuild`, `0.55.6-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.55.6/dist/busybox/Dockerfile-busybox))
* Hugo 0.55.5: `0.55.5-busybox`, `0.55.5`, `0.55.5-busybox-onbuild`, `0.55.5-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.55.5/dist/busybox/Dockerfile-busybox))

Minimal image based upon [Alpine](https://hub.docker.com/r/_/alpine/):
* Aliases: `alpine`, `alpine-onbuild`, `ext-alpine`, `ext-alpine-onbuild`, `ext-nodejs`
* Hugo 0.57.2: `0.57.2-alpine`, `0.57.2-alpine-onbuild`, `0.57.2-ext-alpine`, `0.57.2-ext-alpine-onbuild`, `0.57.2-ext-nodejs` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.57.2/dist/alpine/Dockerfile-alpine))
* Hugo 0.57.1: `0.57.1-alpine`, `0.57.1-alpine-onbuild`, `0.57.1-ext-alpine`, `0.57.1-ext-alpine-onbuild`, `0.57.1-ext-nodejs` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.57.1/dist/alpine/Dockerfile-alpine))
* Hugo 0.56.3: `0.56.3-alpine`, `0.56.3-alpine-onbuild`, `0.56.3-ext-alpine`, `0.56.3-ext-alpine-onbuild`, `0.56.3-ext-nodejs` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.56.3/dist/alpine/Dockerfile-alpine))
* Hugo 0.56.2: `0.56.2-alpine`, `0.56.2-alpine-onbuild`, `0.56.2-ext-alpine`, `0.56.2-ext-alpine-onbuild`, `0.56.2-ext-nodejs` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.56.2/dist/alpine/Dockerfile-alpine))
* Hugo 0.55.6: `0.55.6-alpine`, `0.55.6-alpine-onbuild`, `0.55.6-ext-alpine`, `0.55.6-ext-alpine-onbuild`, `0.55.6-ext-nodejs` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.55.6/dist/alpine/Dockerfile-alpine))
* Hugo 0.55.5: `0.55.5-alpine`, `0.55.5-alpine-onbuild`, `0.55.5-ext-alpine`, `0.55.5-ext-alpine-onbuild`, `0.55.5-ext-nodejs` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.55.5/dist/alpine/Dockerfile-alpine))

Minimal image based upon [Alpine](https://hub.docker.com/r/_/alpine/) with [Asciidoctor](http://asciidoctor.org/) installed:
* Aliases: `asciidoctor`, `asciidoctor-onbuild`, `ext-asciidoctor`, `ext-asciidoctor-onbuild`
* Hugo 0.57.2: `0.57.2-asciidoctor`, `0.57.2-asciidoctor-onbuild`, `0.57.2-ext-asciidoctor`, `0.57.2-ext-asciidoctor-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.57.2/dist/alpine/Dockerfile-asciidoctor))
* Hugo 0.57.1: `0.57.1-asciidoctor`, `0.57.1-asciidoctor-onbuild`, `0.57.1-ext-asciidoctor`, `0.57.1-ext-asciidoctor-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.57.1/dist/alpine/Dockerfile-asciidoctor))
* Hugo 0.56.3: `0.56.3-asciidoctor`, `0.56.3-asciidoctor-onbuild`, `0.56.3-ext-asciidoctor`, `0.56.3-ext-asciidoctor-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.56.3/dist/alpine/Dockerfile-asciidoctor))
* Hugo 0.56.2: `0.56.2-asciidoctor`, `0.56.2-asciidoctor-onbuild`, `0.56.2-ext-asciidoctor`, `0.56.2-ext-asciidoctor-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.56.2/dist/alpine/Dockerfile-asciidoctor))
* Hugo 0.55.6: `0.55.6-asciidoctor`, `0.55.6-asciidoctor-onbuild`, `0.55.6-ext-asciidoctor`, `0.55.6-ext-asciidoctor-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.55.6/dist/alpine/Dockerfile-asciidoctor))
* Hugo 0.55.5: `0.55.5-asciidoctor`, `0.55.5-asciidoctor-onbuild`, `0.55.5-ext-asciidoctor`, `0.55.5-ext-asciidoctor-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.55.5/dist/alpine/Dockerfile-asciidoctor))

Minimal image based upon [Alpine](https://hub.docker.com/r/_/alpine/) with [Pandoc](https://pandoc.org/) installed:
* Aliases: `pandoc`, `pandoc-onbuild`, `ext-pandoc`, `ext-pandoc-onbuild`
* Hugo 0.57.2: `0.57.2-pandoc`, `0.57.2-pandoc-onbuild`, `0.57.2-ext-pandoc`, `0.57.2-ext-pandoc-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.57.2/dist/alpine/Dockerfile-pandoc))
* Hugo 0.57.1: `0.57.1-pandoc`, `0.57.1-pandoc-onbuild`, `0.57.1-ext-pandoc`, `0.57.1-ext-pandoc-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.57.1/dist/alpine/Dockerfile-pandoc))
* Hugo 0.56.3: `0.56.3-pandoc`, `0.56.3-pandoc-onbuild`, `0.56.3-ext-pandoc`, `0.56.3-ext-pandoc-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.56.3/dist/alpine/Dockerfile-pandoc))
* Hugo 0.56.2: `0.56.2-pandoc`, `0.56.2-pandoc-onbuild`, `0.56.2-ext-pandoc`, `0.56.2-ext-pandoc-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.56.2/dist/alpine/Dockerfile-pandoc))
* Hugo 0.55.6: `0.55.6-pandoc`, `0.55.6-pandoc-onbuild`, `0.55.6-ext-pandoc`, `0.55.6-ext-pandoc-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.55.6/dist/alpine/Dockerfile-pandoc))
* Hugo 0.55.5: `0.55.5-pandoc`, `0.55.5-pandoc-onbuild`, `0.55.5-ext-pandoc`, `0.55.5-ext-pandoc-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.55.5/dist/alpine/Dockerfile-pandoc))

Image based upon [Debian](https://hub.docker.com/r/_/debian/):
* Aliases: `debian`, `debian-onbuild`, `ext`, `latest-ext`, `ext-debian`, `ext-debian-onbuild`, `ext-onbuild`
* Hugo 0.57.2: `0.57.2-debian`, `0.57.2-debian-onbuild`, `0.57.2-ext`, `0.57.2-ext-debian`, `0.57.2-ext-debian-onbuild`, `0.57.2-ext-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.57.2/dist/debian/Dockerfile-debian))
* Hugo 0.57.1: `0.57.1-debian`, `0.57.1-debian-onbuild`, `0.57.1-ext`, `0.57.1-ext-debian`, `0.57.1-ext-debian-onbuild`, `0.57.1-ext-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.57.1/dist/debian/Dockerfile-debian))
* Hugo 0.56.3: `0.56.3-debian`, `0.56.3-debian-onbuild`, `0.56.3-ext`, `0.56.3-ext-debian`, `0.56.3-ext-debian-onbuild`, `0.56.3-ext-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.56.3/dist/debian/Dockerfile-debian))
* Hugo 0.56.2: `0.56.2-debian`, `0.56.2-debian-onbuild`, `0.56.2-ext`, `0.56.2-ext-debian`, `0.56.2-ext-debian-onbuild`, `0.56.2-ext-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.56.2/dist/debian/Dockerfile-debian))
* Hugo 0.55.6: `0.55.6-debian`, `0.55.6-debian-onbuild`, `0.55.6-ext`, `0.55.6-ext-debian`, `0.55.6-ext-debian-onbuild`, `0.55.6-ext-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.55.6/dist/debian/Dockerfile-debian))
* Hugo 0.55.5: `0.55.5-debian`, `0.55.5-debian-onbuild`, `0.55.5-ext`, `0.55.5-ext-debian`, `0.55.5-ext-debian-onbuild`, `0.55.5-ext-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.55.5/dist/debian/Dockerfile-debian))

Image based upon [Ubuntu](https://hub.docker.com/r/_/ubuntu/):
* Aliases: `ubuntu`, `ubuntu-onbuild`, `ext-ubuntu`, `ext-ubuntu-onbuild`
* Hugo 0.57.2: `0.57.2-ubuntu`, `0.57.2-ubuntu-onbuild`, `0.57.2-ext-ubuntu`, `0.57.2-ext-ubuntu-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.57.2/dist/ubuntu/Dockerfile-ubuntu))
* Hugo 0.57.1: `0.57.1-ubuntu`, `0.57.1-ubuntu-onbuild`, `0.57.1-ext-ubuntu`, `0.57.1-ext-ubuntu-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.57.1/dist/ubuntu/Dockerfile-ubuntu))
* Hugo 0.56.3: `0.56.3-ubuntu`, `0.56.3-ubuntu-onbuild`, `0.56.3-ext-ubuntu`, `0.56.3-ext-ubuntu-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.56.3/dist/ubuntu/Dockerfile-ubuntu))
* Hugo 0.56.2: `0.56.2-ubuntu`, `0.56.2-ubuntu-onbuild`, `0.56.2-ext-ubuntu`, `0.56.2-ext-ubuntu-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.56.2/dist/ubuntu/Dockerfile-ubuntu))
* Hugo 0.55.6: `0.55.6-ubuntu`, `0.55.6-ubuntu-onbuild`, `0.55.6-ext-ubuntu`, `0.55.6-ext-ubuntu-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.55.6/dist/ubuntu/Dockerfile-ubuntu))
* Hugo 0.55.5: `0.55.5-ubuntu`, `0.55.5-ubuntu-onbuild`, `0.55.5-ext-ubuntu`, `0.55.5-ext-ubuntu-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.55.5/dist/ubuntu/Dockerfile-ubuntu))

*Looking for older tags? Please see the [complete list of tags](https://github.com/klakegg/docker-hugo/blob/master/doc/tags.md).*


## Using image

This image does not try to do any fancy.
Users may use Hugo just as they are used to.

The good practice of having a separate output folder is part of the image.


### Ordinary use

Normal build:

```shell
docker run --rm -it \
  -v $(pwd):/src \
  -v $(pwd)/output:/target \
  klakegg/hugo:0.57.2
```

Run server:

```shell
docker run --rm -it \
  -v $(pwd):/src \
  -p 1313:1313 \
  klakegg/hugo:0.57.2 \
  server
```


### docker-compose

Normal build:

```yaml
  build:
    image: klakegg/hugo:0.57.2
    volumes:
      - .:/src
      - ./output:/target
```

Run server:

```yaml
  server:
    image: klakegg/hugo:0.57.2
    command: server
    volumes:
      - .:/src
    ports:
      - 1313:1313
```


## Hugo shell

A Hugo shell is made available in the Alpine/Debian/Ubuntu images (including Asciidoctor image).
Hugo shell is bash and Hugo completion.

When Alpine images are used is bash installed as part of initiation to minimize size of Docker image.

To get into a shell for your site:

```shell
docker run --rm -it \
  -v $(pwd):/src \
  klakegg/hugo:0.57.2-alpine \
  shell
```


## Hugo extended edition

Hugo as of version [0.43](https://github.com/gohugoio/hugo/releases/tag/v0.43) contains also an extended edition.

The extended edition is used in those images containing `ext` in the name. Except use of extended edition and additional tools are those images exactly the same as those using the normal edition.

Table of Hugo extention features and the version when images first support the feature:

| Feature       | Alpine | Debian | Ubuntu |
| ------------- | ------ | ------ | ------ |
| Hugo extended | 0.43   | 0.43   | 0.43   |
| PostCSS       | -      | 0.43   | 0.43   |
| NodeJS/Yarn   | 0.54.0 | 0.54.0 | 0.54.0 |
| Git           | 0.56.0 | 0.56.0 | 0.56.0 |
| Autoprefixer  | 0.57.0 | 0.57.0 | 0.57.0 |


## Using an ONBUILD image

The onbuild images adds content of the folder of your Dockerfile into `/src` and builds to the `/onbuild` folder.

Example Dockerfile for your project where the site is made into an nginx image (Docker 17.05-ce or newer):

```Dockerfile
FROM klakegg/hugo:0.57.2-onbuild AS hugo

FROM nginx
COPY --from=hugo /onbuild /usr/share/nginx/html
```


## Using Pandoc

Hugo images with Pandoc support are made available for users wanting to use Pandoc in combination with Hugo.

[Hugo triggers Pandoc](https://gohugo.io/content-management/formats/#additional-formats-through-external-helpers) with `pandoc --mathjax`.
Some users may want to use other arguments, so to accommodate such a need is an alias `pandoc` created with the content of `HUGO_PANDOC` (default: `pandoc-default`) upon initiation.
The normal `pandoc` executable is renamed to `pandoc-default` to allow for later introduction of `pandoc-citeproc` if needed.

Example of explicit setting `pandoc` alias:

```shell
docker run --rm -it \
  -v $(pwd):/src \
  -v $(pwd)/output:/src/public \
  -e HUGO_PANDOC="pandoc-default --strip-empty-paragraphs" \
  klakegg/hugo:0.57.2-pandoc
```


## Overriding entrypoint

Those wanting to override entrypoint in the image may easily do so.

On command line using `--entrypoint`:

```shell
docker run --rm -it \
  -v $(pwd):/src \
  -v $(pwd)/output:/src/public \
  --entrypoint hugo \
  klakegg/hugo:0.57.2
```

In docker-compose using `entrypoint`:

```yaml
  build:
    image: klakegg/hugo:0.57.2
    entrypoint: hugo
    volumes:
      - .:/src
      - ./output:/src/public
```


## Configuration

Environment variables:
* HUGO_BIND - Bind address for server. Default: `0.0.0.0`
* HUGO_DESTINATION - Location of output folder. Default: `/target`
* HUGO_PANDOC - Pandoc command to be triggered. Default: `pandoc-default`
* HUGO_ENV - Selecting environment ("DEV"/"production"). Default: `DEV`

Volumes:
* ```/src``` - Source folder and workdir
* ```/target``` - Target folder

Ports:
* `1313/tcp`
