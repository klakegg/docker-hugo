FROM busybox:latest

MAINTAINER Erlend Klakegg Bergheim

EXPOSE 1313

ADD . /srv/build
ADD https://github.com/spf13/hugo/releases/download/v0.15/hugo_0.15_linux_amd64.tar.gz /hugo.tar.gz

RUN sh /srv/build/install.sh

WORKDIR /srv/src

VOLUME /srv/src /srv/target

ENTRYPOINT ["sh", "/srv/build/run.sh"]
