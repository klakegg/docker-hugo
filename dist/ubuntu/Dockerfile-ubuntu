FROM klakegg/hugo:base AS base



FROM ubuntu:18.04

ENV HUGO_BIND="0.0.0.0" \
    HUGO_DESTINATION="/target" \
    HUGO_ENV="DEV"

COPY --from=base /bin/hugo /bin/hugo
COPY files /

RUN apt update \
 && apt install -y bash-completion \
 && rm -rf /var/lib/apt/lists/* \
 && mkdir -p /etc/bash_completion.d \
 && hugo gen autocomplete > /dev/null

EXPOSE 1313

VOLUME /src /target
WORKDIR /src

ENTRYPOINT ["sh", "/run.sh"]
