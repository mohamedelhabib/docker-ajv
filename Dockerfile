FROM node:16.9-alpine3.14

ARG AJV_CLI_VERSION=5.0.0
ARG AJV_FORMATS_VERSION=2.1.1
RUN apk add libcrypto1.1 libssl1.1 \
    && npm install -g npm@7.23.0 \
    && npm --version \
    && npm install -g ajv-cli@${AJV_CLI_VERSION} \
    && npm install -g ajv-formats@${AJV_FORMATS_VERSION}
VOLUME ["/data"]
WORKDIR "/data"

ENTRYPOINT ["/usr/local/bin/ajv"]
