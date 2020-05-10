## :tada: Features

* [Babel](https://gohugo.io/hugo-pipes/babel/) installed globally (`@babel/cli` and `@babel/core`) in images with Hugo extended edition (`ext`) to support JavaScript transpiling.
* Asciidoctor is now available in `ext-debian` and `ext-ubuntu` images.


## :bug: Fixes

* Folders `/src` and `/target` are now writable for all to support using non-root user.


## :heartbeat: Updates

* Hugo: `0.70.0` => `NEXT`
* Go: `1.14.1` => `1.14.2`
* NodeJS: `12.16.1` => `12.16.3`


## Docker images

This release is available from Docker Hub as project `klakegg/hugo` with the following tags:

| Alias tags                   | Version specific tags                      |
| ---------------------------- | ------------------------------------------ |
| `latest`, `busybox`          | `NEXT-busybox`, `NEXT`                 |
| `busybox-onbuild`, `onbuild` | `NEXT-busybox-onbuild`, `NEXT-onbuild` |
| `alpine`                     | `NEXT-alpine`                            |
| `alpine-onbuild`             | `NEXT-alpine-onbuild`                    |
| `ext-alpine`, `ext-nodejs`   | `NEXT-ext-alpine`, `NEXT-ext-nodejs`   |
| `ext-alpine-onbuild`         | `NEXT-ext-alpine-onbuild`                |
| `asciidoctor`                | `NEXT-asciidoctor`                       |
| `asciidoctor-onbuild`        | `NEXT-asciidoctor-onbuild`               |
| `ext-asciidoctor`            | `NEXT-ext-asciidoctor`                   |
| `ext-asciidoctor-onbuild`    | `NEXT-ext-asciidoctor-onbuild`           |
| `pandoc`                     | `NEXT-pandoc`                            |
| `pandoc-onbuild`             | `NEXT-pandoc-onbuild`                    |
| `ext-pandoc`                 | `NEXT-ext-pandoc`                        |
| `ext-pandoc-onbuild`         | `NEXT-ext-pandoc-onbuild`                |
| `debian`                     | `NEXT-debian`                            |
| `debian-onbuild`             | `NEXT-debian-onbuild`                    |
| `ext`, `latest-ext`, `ext-debian` | `NEXT-ext`, `NEXT-ext-debian`     |
| `ext-debian-onbuild`, `ext-onbuild` | `NEXT-ext-debian-onbuild`, `NEXT-ext-onbuild` |
| `ubuntu`                     | `NEXT-ubuntu`                            |
| `ubuntu-onbuild`             | `NEXT-ubuntu-onbuild`                    |
| `ext-ubuntu`                 | `NEXT-ext-ubuntu`                        |
| `ext-ubuntu-onbuild`         | `NEXT-ext-ubuntu-onbuild`                |