FROM busybox:1.30 AS fetch

ARG NODE_VERSION=11.10.0
ARG ARCH=x64

ADD https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-${ARCH}.tar.xz /node.tar.gz
RUN mkdir /node
RUN tar -xJf "node.tar.gz" -C /node --strip-components=1 --no-same-owner



FROM scratch

COPY --from=fetch /node /files
