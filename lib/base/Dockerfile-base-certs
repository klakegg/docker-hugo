FROM alpine:3.9 AS source

RUN apk --no-cache add ca-certificates



FROM scratch

COPY --from=source /etc/ssl/certs /files/etc/ssl/certs
