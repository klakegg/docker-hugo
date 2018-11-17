FROM klakegg/hugo:base AS base



FROM scratch as image

COPY files /files
COPY --from=base /bin/hugo /files/bin/hugo



FROM debian:9.6-slim

ENV HUGO_BIND="0.0.0.0" \
    HUGO_DESTINATION="/target" \
    HUGO_ENV="DEV"

COPY --from=image /files /

RUN apt update \
 && apt install -y bash-completion \
 && rm -rf /var/lib/apt/lists/* \
 && hugo gen autocomplete > /dev/null

EXPOSE 1313

VOLUME /src /target
WORKDIR /src

ENTRYPOINT ["sh", "/run.sh"]
