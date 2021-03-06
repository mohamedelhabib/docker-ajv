FROM node:16.2.0-alpine3.13

ARG AJV_CLI_VERSION=5.0.0
RUN apk add libcrypto1.1 libssl1.1 && npm install -g ajv-cli@${AJV_CLI_VERSION}

VOLUME ["/data"]
WORKDIR "/data"

ENTRYPOINT ["/usr/local/bin/ajv"]
