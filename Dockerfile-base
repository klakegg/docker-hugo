FROM busybox:1.30 AS fetch-standard

ARG VERSION=0.62.1

ADD https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-64bit.tar.gz /
ADD https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_checksums.txt /
RUN grep hugo_${VERSION}_Linux-64bit.tar.gz hugo_${VERSION}_checksums.txt | sha256sum -c
RUN tar -zxvf hugo_${VERSION}_Linux-64bit.tar.gz
RUN ["/hugo", "version"]
RUN mkdir /etc/bash_completion.d  \
 && /hugo gen autocomplete > /dev/null



FROM busybox:1.30 AS fetch-extended

ARG VERSION=0.62.1

ADD https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_extended_${VERSION}_Linux-64bit.tar.gz /
ADD https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_checksums.txt /
RUN grep hugo_extended_${VERSION}_Linux-64bit.tar.gz hugo_${VERSION}_checksums.txt | sha256sum -c
RUN tar -zxvf hugo_extended_${VERSION}_Linux-64bit.tar.gz



FROM busybox:1.30 AS files

COPY --from=fetch-standard /hugo /files/hugo-standard/bin/hugo-official
COPY --from=fetch-standard /etc/bash_completion.d/hugo.sh /files/hugo-standard/etc/bash_completion.d/hugo.sh
COPY --from=fetch-extended /hugo /files/hugo-extended/bin/hugo-official
COPY --from=fetch-standard /etc/bash_completion.d/hugo.sh /files/hugo-extended/etc/bash_completion.d/hugo.sh

ADD dist/alpine/files /files/alpine
ADD dist/busybox/files /files/busybox
ADD dist/debian/files /files/debian
ADD dist/ubuntu/files /files/ubuntu

RUN chmod a+x /files/*/bin/* && find /files -type f


FROM scratch

COPY --from=files /files /
