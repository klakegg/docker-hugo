# Hugo

[![](https://images.microbadger.com/badges/image/klakegg/hugo.svg)](https://microbadger.com/images/klakegg/hugo "Get your own image badge on microbadger.com")

Truly minimal Docker images for [Hugo](http://gohugo.io/) with batteries included.
These images sets `destination` during build and `bind` when started as server, otherwise no magic.


## Available tags

Default minimal image based upon [Busybox](https://hub.docker.com/r/_/busybox/):
* Hugo 0.43: `0.43-busybox`, `busybox`, `0.43`, `latest`, `0.43-busybox-onbuild`, `0.43-onbuild`, `busybox-onbuild`, `onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.43/busybox/Dockerfile-busybox))
* Hugo 0.42.2: `0.42.2-busybox`, `0.42.2`, `0.42.2-busybox-onbuild`, `0.42.2-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.42.2/busybox/Dockerfile-busybox))
* Hugo 0.42.1: `0.42.1-busybox`, `0.42.1`, `0.42.1-busybox-onbuild`, `0.42.1-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.42.1/busybox/Dockerfile-busybox))
* Hugo 0.42: `0.42-busybox`, `0.42`, `0.42-busybox-onbuild`, `0.42-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.42/busybox/Dockerfile-busybox))
* Hugo 0.41: `0.41-busybox`, `0.41`, `0.41-busybox-onbuild`, `0.41-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.41/busybox/Dockerfile-busybox))

Minimal image based upon [Alpine](https://hub.docker.com/r/_/alpine/):
* Hugo 0.43: `0.43-alpine`, `alpine`, `0.43-alpine-onbuild`, `alpine-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.43/alpine/Dockerfile-alpine))
* Hugo 0.42.2: `0.42.2-alpine`, `0.42.2-alpine-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.42.2/alpine/Dockerfile-alpine))
* Hugo 0.42.1: `0.42.1-alpine`, `0.42.1-alpine-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.42.1/alpine/Dockerfile-alpine))
* Hugo 0.42: `0.42-alpine`, `0.42-alpine-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.42/alpine/Dockerfile-alpine))
* Hugo 0.41: `0.41-alpine`, `0.41-alpine-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.41/alpine/Dockerfile-alpine))

Minimal image based upon [Alpine](https://hub.docker.com/r/_/alpine/) with [Asciidoctor](http://asciidoctor.org/) installed:
* Hugo 0.43: `0.43-asciidoctor`, `asciidoctor`, `0.43-asciidoctor-onbuild`, `asciidoctor-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.43/alpine/Dockerfile-asciidoctor))
* Hugo 0.42.2: `0.42.2-asciidoctor`, `0.42.2-asciidoctor-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.42.2/alpine/Dockerfile-asciidoctor))
* Hugo 0.42.1: `0.42.1-asciidoctor`, `0.42.1-asciidoctor-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.42.1/alpine/Dockerfile-asciidoctor))
* Hugo 0.42: `0.42-asciidoctor`, `0.42-asciidoctor-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.42/alpine/Dockerfile-asciidoctor))
* Hugo 0.41: `0.41-asciidoctor`, `0.41-asciidoctor-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.41/alpine/Dockerfile-asciidoctor))

Looking for older tags? Please see the [complete list of tags](https://github.com/klakegg/docker-hugo/blob/master/tags.md).


## Using image

This image does not try to do any fancy.
Users may use Hugo just as they are used to.

The good practice of having a separate output folder is part of the image.


### Ordinary use

Normal build:

```
docker run --rm -it -v $(pwd):/src -v $(pwd)/output:/target klakegg/hugo:0.43
```

Run server:

```
docker run --rm -it -v $(pwd):/src -p 1313:1313 klakegg/hugo:0.43 server
```


### docker-compose

Normal build:

```yaml
  build:
    image: klakegg/hugo:0.43
    volumes:
      - .:/src
      - ./output:/target
```

Run server:

```yaml
  server:
    image: klakegg/hugo:0.43
    command: server
    volumes:
      - .:/src
    ports:
      - 1313:1313
```


## Hugo shell (new as of 0.41)

A Hugo shell is made available in the Alpine images (including Asciidoctor image).
Initiating the shell will trigger installation of bash and configuration of autocompletion with Hugo support.

To get into a shell for your site:

```
docker run --rm -it -v $(pwd):/src klakegg/hugo:0.43-alpine shell
```


## Using an ONBUILD image

The onbuild images adds content of the folder of your Dockerfile into `/src` and builds to the `/onbuild` folder.

Example Dockerfile for your project where the site is made into an nginx image (Docker 17.05-ce or newer):

```Dockerfile
FROM klakegg/hugo:0.43-onbuild AS hugo

FROM nginx
COPY --from=hugo /onbuild /usr/share/nginx/html
```


## Overriding entrypoint

Those wanting to override entrypoint in the image may easily do so.

On command line using `--entrypoint`:

```
docker run --rm -it -v $(pwd):/src -v $(pwd)/output:/src/public --entrypoint hugo klakegg/hugo:0.43
```

In docker-compose using `entrypoint`:

```yaml
  build:
    image: klakegg/hugo:0.43
    entrypoint: hugo
    volumes:
      - .:/src
      - ./output:/src/public
```


## Configuration

Environment variables:
* HUGO_BIND - Bind address for server. Default: `0.0.0.0`
* HUGO_DESTINATION - Location of output folder. Default: `/target`

Volumes:
* ```/src``` - Source folder and workdir
* ```/target``` - Target folder

Ports:
* 1313/tcp
