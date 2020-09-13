FROM scratch as image

COPY --from=base /busybox /
COPY --from=base /hugo-standard /
COPY --from=base /certs /



FROM busybox:1.32 AS main

ARG HUGO_VERSION_ARG=0.0.0

ENV HUGO_BIND="0.0.0.0" \
    HUGO_DESTINATION="public" \
    HUGO_ENV="DEV" \
    HUGO_EDITION="standard" \
    HUGO_VERSION=${HUGO_VERSION_ARG} \
    HOME="/tmp"

COPY --from=image / /

RUN mkdir -p /src /target \
 && chmod a+w /src /target

EXPOSE 1313

WORKDIR /src

ENTRYPOINT ["hugo"]


IMPORT ../_imports/onbuild.df


FROM main