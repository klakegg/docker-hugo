## :loudspeaker: Breaking changes

*Nothing*


## :tada: Features

* Hugo Time Machine - Set environment variable `HUGO_VERSION` to automatically fetch a previous version of Hugo. Supports Hugo 0.21 and newer.


## :bug: Fixes

* Adding `--noTimes` to command when container is running in unpriviledged mode. [#24](https://github.com/klakegg/docker-hugo/issues/24)


## :heartbeat: Updates

* Hugo: `0.71.0` => `NEXT`
* Pandoc: `2.9.2` => `2.9.2.1`


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
| `ext-debian-devcontainer`, `ext-devcontainer`, `devcontainer` | `NEXT-ext-debian-devcontainer`, `NEXT-ext-devcontainer` |
| `ubuntu`                     | `NEXT-ubuntu`                            |
| `ubuntu-onbuild`             | `NEXT-ubuntu-onbuild`                    |
| `ext-ubuntu`                 | `NEXT-ext-ubuntu`                        |
| `ext-ubuntu-onbuild`         | `NEXT-ext-ubuntu-onbuild`                |
| `ext-ubuntu-devcontainer`    | `NEXT-ext-ubuntu-devcontainer`           |
