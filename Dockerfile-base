FROM busybox:1.28 AS fetch-standard

ARG VERSION=0.55.6

ADD https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-64bit.tar.gz /hugo.tar.gz
RUN tar -zxvf hugo.tar.gz
RUN ["/hugo", "version"]



FROM busybox:1.28 AS fetch-extended

ARG VERSION=0.55.6

ADD https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_extended_${VERSION}_Linux-64bit.tar.gz /hugo.tar.gz
RUN tar -zxvf hugo.tar.gz



FROM scratch AS files

COPY --from=fetch-standard /hugo /bin/hugo
COPY --from=fetch-extended /hugo /bin/hugo-extended



FROM scratch

COPY --from=files / /
