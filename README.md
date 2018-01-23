# Hugo

Minimal docker image for [Hugo](http://gohugo.io/). 
The image sets `destination` during build and `bind` when started as server, otherwise no magic.


## Using image

This image does not try to do any fancy. Users may use Hugo just as they are used to.

The good practice of having a separate output folder is part of the image.


### Ordinary use

Normal build:

```docker run --rm -it -v $(pwd):/src -v $(pwd)/output:/target klakegg/hugo:0.34```

Run server:

```docker run --rm -it -v $(pwd):/src -p 1313:1313 klakegg/hugo:0.34 server```


### docker-compose

Normal build:

```
  build:
    image: klakegg/hugo:0.34
    volumes:
      - .:/src
      - ./output:/target
```

Run server:

```
  server:
    image: klakegg/hugo:0.34
    command: server
    volumes:
      - .:/src
    ports:
      - 1313:1313
```


## Overriding entrypoint

Those wanting to override entrypoint in the image may easily do so.

On command line using `--entrypoint`:

```docker run --rm -it -v $(pwd):/src -v $(pwd)/output:/target --entrypoint hugo klakegg/hugo:0.34```

In docker-compose using `entrypoint`:

```
  build:
    image: klakegg/hugo:0.34
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


