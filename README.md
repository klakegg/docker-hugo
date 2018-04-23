# Hugo

[![](https://images.microbadger.com/badges/image/klakegg/hugo.svg)](https://microbadger.com/images/klakegg/hugo "Get your own image badge on microbadger.com")

Minimal docker image for [Hugo](http://gohugo.io/). This image sets `destination` during build and `bind` when started as server, otherwise no magic.


## Available tags

Default minimal image based upon [Busybox](https://hub.docker.com/r/_/busybox/):
* Hugo 0.40: `0.40-busybox`, `busybox`, `0.40`, `latest` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.40/Dockerfile))
* Hugo 0.39: `0.39-busybox`, `0.39` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.39/Dockerfile))
* Hugo 0.38.2: `0.38.2-busybox`, `0.38.2` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.38.2/Dockerfile))
* Hugo 0.38.1: `0.38.1-busybox`, `0.38.1` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.38.1/Dockerfile))
* Hugo 0.38: `0.38-busybox`, `0.38` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.38/Dockerfile))
* Hugo 0.37.1: `0.37.1-busybox`, `0.37.1` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.37.1/Dockerfile))
* Hugo 0.37: `0.37-busybox`, `0.37` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.37/Dockerfile))
* Hugo 0.36.1: `0.36.1-busybox`, `0.36.1` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.36.1/Dockerfile))
* Hugo 0.36: `0.36-busybox`, `0.36` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.36/Dockerfile))
* Hugo 0.35: `0.35-busybox`, `0.35` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.35/Dockerfile))
* Hugo 0.34: `0.34-busybox`, `0.34` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.34/Dockerfile))

Minimal image based upon [Alpine](https://hub.docker.com/r/_/alpine/):
* Hugo 0.40: `0.40-alpine`, `alpine` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.40/Dockerfile-alpine))
* Hugo 0.39: `0.39-alpine` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.39/Dockerfile-alpine))
* Hugo 0.38.2: `0.38.2-alpine` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.38.2/Dockerfile-alpine))
* Hugo 0.38.1: `0.38.1-alpine` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.38.1/Dockerfile-alpine))
* Hugo 0.38: `0.38-alpine` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.38/Dockerfile-alpine))
* Hugo 0.37.1: `0.37.1-alpine` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.37.1/Dockerfile-alpine))
* Hugo 0.37: `0.37-alpine` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.37/Dockerfile-alpine))
* Hugo 0.36.1: `0.36.1-alpine` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.36.1/Dockerfile-alpine))
* Hugo 0.36: `0.36-alpine` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.36/Dockerfile-alpine))
* Hugo 0.35: `0.35-alpine` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.35/Dockerfile-alpine))
* Hugo 0.34: `0.34-alpine` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.34/Dockerfile-alpine))

Minimal image based upon [Alpine](https://hub.docker.com/r/_/alpine/) with [Asciidoctor](http://asciidoctor.org/) installed:
* Hugo 0.40: `0.40-asciidoctor`, `asciidoctor` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.40/Dockerfile-asciidoctor))
* Hugo 0.39: `0.39-asciidoctor` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.39/Dockerfile-asciidoctor))
* Hugo 0.38.2: `0.38.2-asciidoctor` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.38.2/Dockerfile-asciidoctor))
* Hugo 0.38.1: `0.38.1-asciidoctor` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.38.1/Dockerfile-asciidoctor))
* Hugo 0.38: `0.38-asciidoctor` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.38/Dockerfile-asciidoctor))
* Hugo 0.37.1: `0.37.1-asciidoctor` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.37.1/Dockerfile-asciidoctor))
* Hugo 0.37: `0.37-asciidoctor` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.37/Dockerfile-asciidoctor))
* Hugo 0.36.1: `0.36.1-asciidoctor` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.36.1/Dockerfile-asciidoctor))
* Hugo 0.36: `0.36-asciidoctor` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.36/Dockerfile-asciidoctor))
* Hugo 0.35: `0.35-asciidoctor` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.35/Dockerfile-asciidoctor))
* Hugo 0.34: `0.34-asciidoctor` ([Dockerfile](https://github.com/klakegg/docker-hugo/blob/0.34/Dockerfile-asciidoctor))


## Using image

This image does not try to do any fancy. Users may use Hugo just as they are used to.

The good practice of having a separate output folder is part of the image.


### Ordinary use

Normal build:

```docker run --rm -it -v $(pwd):/src -v $(pwd)/output:/target klakegg/hugo:0.40```

Run server:

```docker run --rm -it -v $(pwd):/src -p 1313:1313 klakegg/hugo:0.40 server```


### docker-compose

Normal build:

```
  build:
    image: klakegg/hugo:0.40
    volumes:
      - .:/src
      - ./output:/target
```

Run server:

```
  server:
    image: klakegg/hugo:0.40
    command: server
    volumes:
      - .:/src
    ports:
      - 1313:1313
```


## Overriding entrypoint

Those wanting to override entrypoint in the image may easily do so.

On command line using `--entrypoint`:

```docker run --rm -it -v $(pwd):/src -v $(pwd)/output:/target --entrypoint hugo klakegg/hugo:0.40```

In docker-compose using `entrypoint`:

```
  build:
    image: klakegg/hugo:0.40
    entrypoint: hugo
    volumes:
      - .:/src
      - ./output:/target
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
