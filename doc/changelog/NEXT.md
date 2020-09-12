## :loudspeaker: Breaking changes

*Nothing*

<!-- 0.75.0 or later:
* Tag aliases `ext-nodejs` and `[version]-ext-nodejs` are not longer created as they as simply aliases pointing to `ext-alpine` and `[version]-ext-alpine`.
-->


## :tada: Features

* Environment variable `HUGO_VERSION` is added to all images.


## :bug: Fixes

*Nothing*


## :heartbeat: Updates

* Hugo: [`0.74.3`](https://github.com/klakegg/docker-hugo/releases/tag/0.74.3) => `NEXT`
* Alpine: `3.11` => `3.12`
* Busybox: `1.31` => `1.32`
* Debian: `10.3` => `10.4`
* Go: `1.14.4` => `1.15.1`
* NodeJS: `12.18.2` => `12.18.3`
* Pandoc: `2.10` => `2.10.1`
<!-- * Ubuntu: `18.04` => `20.04` -->
* Yarn: `1.22.4` => `1.22.5`


## Docker images

This release is available from Docker Hub as project `klakegg/hugo` with the following tags:

| Alias tags                   | Version specific tags                      |
| ---------------------------- | ------------------------------------------ |
| `busybox`, `latest`          | `NEXT-busybox`, `NEXT`                 |
| `busybox-onbuild`, `onbuild` | `NEXT-busybox-onbuild`, `NEXT-onbuild` |
| `alpine`                     | `NEXT-alpine`                            |
| `alpine-onbuild`             | `NEXT-alpine-onbuild`                    |
| `asciidoctor`                | `NEXT-asciidoctor`                       |
| `asciidoctor-onbuild`        | `NEXT-asciidoctor-onbuild`               |
| `pandoc`                     | `NEXT-pandoc`                            |
| `pandoc-onbuild`             | `NEXT-pandoc-onbuild`                    |
| `ext-alpine`                 | `NEXT-ext-alpine`                        |
| `ext-alpine-onbuild`         | `NEXT-ext-alpine-onbuild`                |
| `ext-asciidoctor`            | `NEXT-ext-asciidoctor`                   |
| `ext-asciidoctor-onbuild`    | `NEXT-ext-asciidoctor-onbuild`           |
| `ext-pandoc`                 | `NEXT-ext-pandoc`                        |
| `ext-pandoc-onbuild`         | `NEXT-ext-pandoc-onbuild`                |
| `debian`                     | `NEXT-debian`                            |
| `debian-onbuild`             | `NEXT-debian-onbuild`                    |
| `ext-debian`, `ext`, `latest-ext` | `NEXT-ext-debian`, `NEXT-ext`     |
| `ext-debian-onbuild`, `ext-onbuild` | `NEXT-ext-debian-onbuild`, `NEXT-ext-onbuild` |
| `ubuntu`                     | `NEXT-ubuntu`                            |
| `ubuntu-onbuild`             | `NEXT-ubuntu-onbuild`                    |
| `ext-ubuntu`                 | `NEXT-ext-ubuntu`                        |
| `ext-ubuntu-onbuild`         | `NEXT-ext-ubuntu-onbuild`                |
