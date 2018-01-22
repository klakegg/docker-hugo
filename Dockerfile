FROM busybox:1.28 AS fetch

ADD https://github.com/gohugoio/hugo/releases/download/v0.34/hugo_0.34_Linux-64bit.tar.gz /hugo.tar.gz
RUN tar -zxvf hugo.tar.gz



FROM busybox:1.28

COPY --from=fetch /hugo /hugo

EXPOSE 1313

VOLUME /src /target
WORKDIR /src

ENTRYPOINT ["/hugo"]
CMD ["-h"]