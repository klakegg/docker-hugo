FROM alpine:3.12 AS hugo

ARG VERSION=0.75.0

ADD _script/hugo.sh hugo.sh
RUN sh hugo.sh



FROM alpine:3.12 AS certs

RUN apk --no-cache add ca-certificates



FROM alpine:3.12 AS golang

ADD _script/golang.sh golang.sh
RUN sh golang.sh



FROM alpine:3.12 AS nodejs

ADD _script/nodejs.sh nodejs.sh
RUN sh nodejs.sh



FROM alpine:3.12 AS pandoc

ADD _script/pandoc.sh pandoc.sh
RUN sh pandoc.sh



FROM alpine:3.12 AS files

# Copy content of files folder to populate base image
ADD . /files
RUN rm -rf /files/_script

# Copy Hugo files
COPY --from=hugo /hugo-standard /files/hugo-standard
COPY --from=hugo /hugo-extended /files/hugo-extended

# Copy only TLS certificates
COPY --from=certs /etc/ssl/certs /files/certs/etc/ssl/certs

# Golang
COPY --from=golang /files /files/golang

# NodeJS
COPY --from=nodejs /node /files/nodejs

# Pandoc
COPY --from=pandoc /files /files

RUN chmod a+x /files/**/bin/*

RUN ls /files



FROM scratch

# Copy prepared files to root of base image
COPY --from=files /files /
