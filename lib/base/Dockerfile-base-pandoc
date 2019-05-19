FROM busybox:1.30 AS fetch

ARG PANDOC_VERSION=2.7.2

ADD https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-linux.tar.gz /pandoc.tar.gz
RUN tar -zxvf pandoc.tar.gz
RUN mv /pandoc-${PANDOC_VERSION}/bin/pandoc /pandoc
RUN mv /pandoc-${PANDOC_VERSION}/bin/pandoc-citeproc /pandoc-citeproc
RUN ["/pandoc", "-v"]



FROM scratch

COPY --from=fetch /pandoc /bin/pandoc-default
COPY --from=fetch /pandoc-citeproc /bin/pandoc-citeproc
