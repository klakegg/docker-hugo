FROM scratch as image

COPY --from=base--hugo--extended / /
COPY --from=base--pandoc / /
COPY --from=base--sass-embedded / /
#COPY --from=base--nodejs--glibc / /



FROM base-debian AS main

ENV HUGO_EDITION="extended" \
    HUGO_CACHEDIR="/tmp" \
    NODE_PATH=".:/usr/lib/node_modules" \
    #NODE_PATH=".:/usr/local/node/lib/node_modules" \
    #PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/node/bin" \
    GOROOT="/usr/local/lib/go"

COPY --from=image / /

RUN true \
 #
 # Install software
 && apt update \
 && DEBIAN_FRONTEND=noninteractive apt install -y curl git gnupg apt-transport-https lsb-release \
 #
 # Install Python 3 and rst2html
 && DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends python3-minimal python3-pip python3-setuptools python3-wheel \
 && pip install rst2html \
 #
 # Install NodeJS and tooling
 && curl -sL https://deb.nodesource.com/setup_18.x | bash - \
 && apt install -y nodejs \
 && npm install -g autoprefixer@10.2.4 postcss@8.2.6 postcss-cli@8.3.1 yarn@1.22.10 @babel/cli @babel/core \
 #
 # Install Asciidoctor
 && DEBIAN_FRONTEND=noninteractive apt install -y ruby \
 && gem install asciidoctor coderay asciidoctor-rouge --no-document \
 #
 # Cleaning up
 && apt remove -y curl gnupg apt-transport-https lsb-release python3-pip python3-setuptools python3-wheel \
 && apt autoremove -y \
 && rm -rf /var/lib/apt/lists/* \
 && find /tmp -mindepth 1 -maxdepth 1 | xargs rm -rf \
 && mkdir -p /src /target \
 && chmod a+w /src /target

COPY --from=base--golang / /



IMPORT ../_imports/ci.df

IMPORT ../_imports/onbuild.df



FROM main