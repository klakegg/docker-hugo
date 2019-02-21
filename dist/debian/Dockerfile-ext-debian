FROM klakegg/hugo:base AS base



FROM scratch as image

COPY files /files
COPY --from=base /bin/hugo-extended /files/bin/hugo



FROM debian:9.4-slim

ENV HUGO_BIND="0.0.0.0" \
    HUGO_DESTINATION="/target" \
    HUGO_ENV="DEV"

COPY --from=image /files /

RUN apt update \
 && apt install -y curl gnupg bash-completion \
 && curl -sL https://deb.nodesource.com/setup_11.x | bash - \
 && apt install -y nodejs \
 && npm install -g postcss-cli \
 && npm install -g yarn \
 && apt remove -y curl gnupg apt-transport-https lsb-release \
 && apt autoremove -y \
 && rm -rf /var/lib/apt/lists/* \
 && hugo gen autocomplete > /dev/null

EXPOSE 1313

VOLUME /src /target
WORKDIR /src

ENTRYPOINT ["sh", "/run.sh"]
