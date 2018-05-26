# Hugo

[![](https://images.microbadger.com/badges/image/klakegg/hugo.svg)](https://microbadger.com/images/klakegg/hugo "Get your own image badge on microbadger.com")

Minimal docker image for [Hugo](http://gohugo.io/). This image sets `destination` during build and `bind` when started as server, otherwise no magic.


## Available tags

Default minimal image based upon [Busybox](https://hub.docker.com/r/_/busybox/):
* Hugo 0.41: `0.41-busybox`, `busybox`, `0.41`, `latest`, `0.41-busybox-onbuild`, `0.41-onbuild`, `busybox-onbuild`, `onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.41/Dockerfile-busybox))
* Hugo 0.40.3: `0.40.3-busybox`, `0.40.3` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.40.3/Dockerfile))
* Hugo 0.40.2: `0.40.2-busybox`, `0.40.2` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.40.2/Dockerfile))
* Hugo 0.40.1: `0.40.1-busybox`, `0.40.1` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.40.1/Dockerfile))
* Hugo 0.40: `0.40-busybox`, `0.40` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.40/Dockerfile))

Minimal image based upon [Alpine](https://hub.docker.com/r/_/alpine/):
* Hugo 0.41: `0.41-alpine`, `alpine`, `0.41-alpine-onbuild`, `alpine-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.41/Dockerfile-alpine))
* Hugo 0.40.3: `0.40.3-alpine` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.40.3/Dockerfile-alpine))
* Hugo 0.40.2: `0.40.2-alpine` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.40.2/Dockerfile-alpine))
* Hugo 0.40.1: `0.40.1-alpine` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.40.1/Dockerfile-alpine))
* Hugo 0.40: `0.40-alpine` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.40/Dockerfile-alpine))

Minimal image based upon [Alpine](https://hub.docker.com/r/_/alpine/) with [Asciidoctor](http://asciidoctor.org/) installed:
* Hugo 0.41: `0.41-asciidoctor`, `asciidoctor`, `0.41-asciidoctor-onbuild`, `asciidoctor-onbuild` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.41/Dockerfile-asciidoctor))
* Hugo 0.40.3: `0.40.3-asciidoctor` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.40.3/Dockerfile-asciidoctor))
* Hugo 0.40.2: `0.40.2-asciidoctor` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.40.2/Dockerfile-asciidoctor))
* Hugo 0.40.1: `0.40.1-asciidoctor` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.40.1/Dockerfile-asciidoctor))
* Hugo 0.40: `0.40-asciidoctor` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.40/Dockerfile-asciidoctor))

Looking for older tags? Please see the [complete list of tags](https://github.com/klakegg/docker-hugo/blob/master/tags.md).


## Using image

This image does not try to do any fancy. Users may use Hugo just as they are used to.

The good practice of having a separate output folder is part of the image.


### Ordinary use

Normal build:

```docker run --rm -it -v $(pwd):/src -v $(pwd)/output:/target klakegg/hugo:0.41```

Run server:

```docker run --rm -it -v $(pwd):/src -p 1313:1313 klakegg/hugo:0.41 server```


### docker-compose

Normal build:

```
  build:
    image: klakegg/hugo:0.41
    volumes:
      - .:/src
      - ./output:/target
```

Run server:

```
  server:
    image: klakegg/hugo:0.41
    command: server
    volumes:
      - .:/src
    ports:
      - 1313:1313
```


## Using a ONBUILD image

The onbuild images adds content of the folder of your Dockerfile into `/src` and builds to the `/onbuild` folder.

Example Dockerfile for your project where the site is made into a nginx image (Docker 17.05-ce or newer):

```
FROM klakegg/hugo:onbuild AS hugo

FROM nginx
COPY --from=hugo /onbuild /usr/share/nginx/html
```


## Overriding entrypoint

Those wanting to override entrypoint in the image may easily do so.

On command line using `--entrypoint`:

```docker run --rm -it -v $(pwd):/src -v $(pwd)/output:/src/public --entrypoint hugo klakegg/hugo:0.41```

In docker-compose using `entrypoint`:

```
  build:
    image: klakegg/hugo:0.41
    entrypoint: hugo
    volumes:
      - .:/src
      - ./output:/src/public
```


## Configuration

Environment variables:
* HUGO_BIND - Bind address for server. Default: `0.0.0.0`
* HUGO_DESTINATION - Location of output folder. Default: `/target`

Folders:
* ```/src``` - Source folder and workdir
* ```/target``` - Target folder

Ports:
* Port 1313
