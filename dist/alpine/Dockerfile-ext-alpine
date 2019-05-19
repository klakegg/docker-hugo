FROM klakegg/hugo:base AS base

FROM klakegg/hugo:base-certs as certs

FROM ubuntu:18.04 AS ubuntu

FROM klakegg/hugo:base-nodejs as node



FROM scratch as image

COPY files /files
COPY --from=base /bin/hugo-extended /files/bin/hugo
COPY --from=certs /files /files
COPY --from=ubuntu /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.25 /files/usr/lib/libstdc++.so.6
COPY --from=node /files /files



FROM frolvlad/alpine-glibc:alpine-3.9

ENV HUGO_BIND="0.0.0.0" \
    HUGO_DESTINATION="/target" \
    HUGO_ENV="DEV"

RUN apk add --no-cache libstdc++ busybox-suid bash bash-completion

COPY --from=image /files /

RUN mkdir /etc/bash_completion.d \
 && hugo gen autocomplete > /dev/null \
 && npm install -g yarn postcss-cli

EXPOSE 1313

VOLUME /src /target
WORKDIR /src

ENTRYPOINT ["sh", "/run.sh"]
