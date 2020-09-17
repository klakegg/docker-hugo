FROM scratch as image

COPY --from=base /hugo-extended /
COPY --from=base /pandoc /



FROM base-ubuntu AS main

ENV HUGO_EDITION="extended" \
    HUGO_CACHEDIR="/tmp" \
    NODE_PATH=".:/usr/lib/node_modules" \
    HUGO_PANDOC="pandoc-default"\
    GOROOT="/usr/local/lib/go"

COPY --from=image / /

# Install software
RUN apt update \
 && DEBIAN_FRONTEND=noninteractive apt install -y curl git gnupg apt-transport-https lsb-release \
 #
 # Install NodeJS and tooling
 && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
 && apt install -y nodejs \
 && npm install -g autoprefixer@9.8.6 postcss@7.0.34 postcss-cli@7.1.2 yarn@1.22.5 @babel/cli @babel/core \
 #
 # Install Asciidoctor
 && DEBIAN_FRONTEND=noninteractive apt install -y ruby \
 && gem install asciidoctor coderay --no-document \
 #
 # Cleaning up
 && apt remove -y curl gnupg apt-transport-https lsb-release \
 && apt autoremove -y \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -mindepth 1 -maxdepth 1 | xargs rm -rf \
 && mkdir -p /src /target \
 && chmod a+w /src /target

COPY --from=base /golang /



IMPORT ../_imports/onbuild.df



FROM main