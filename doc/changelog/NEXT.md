## :loudspeaker: Breaking changes

*Nothing*


## :tada: Features

* Adding `ci` variants of images with environment variable `HUGO_ENV` to `production` and resetting entrypoint. This is expected to simplify configuration for CI providers like Circle CI.


## :bug: Fixes

*Nothing*


## :heartbeat: Updates

* Hugo: [`0.76.5`](https://github.com/klakegg/docker-hugo/releases/tag/0.76.5) => `NEXT`


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
