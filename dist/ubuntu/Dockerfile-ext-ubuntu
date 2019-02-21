FROM klakegg/hugo:base AS base



FROM ubuntu:18.04

ENV HUGO_BIND="0.0.0.0" \
    HUGO_DESTINATION="/target" \
    HUGO_ENV="DEV"

COPY --from=base /bin/hugo-extended /bin/hugo
COPY files /

RUN apt update \
 && apt install -y curl gnupg bash-completion \
 && curl -sL https://deb.nodesource.com/setup_11.x | bash - \
 && apt install -y nodejs \
 && npm install -g postcss-cli \
 && npm install -g yarn \
 && apt remove -y curl gnupg apt-transport-https lsb-release \
 && apt autoremove -y \
 && rm -rf /var/lib/apt/lists/* \
 && mkdir -p /etc/bash_completion.d \
 && hugo gen autocomplete > /dev/null

EXPOSE 1313

VOLUME /src /target
WORKDIR /src

ENTRYPOINT ["sh", "/run.sh"]
