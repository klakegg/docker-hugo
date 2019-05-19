FROM klakegg/hugo:base AS base

FROM klakegg/hugo:base-certs as certs



FROM scratch as image

COPY files /files
COPY --from=base /bin/hugo /files/bin/hugo
COPY --from=certs /files /files



FROM busybox:1.30

ENV HUGO_BIND="0.0.0.0" \
    HUGO_DESTINATION="/target" \
    HUGO_ENV="DEV"

COPY --from=image /files /

EXPOSE 1313

VOLUME /src /target
WORKDIR /src

ENTRYPOINT ["sh", "/run.sh"]
