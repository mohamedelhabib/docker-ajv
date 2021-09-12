FROM node:16.9-alpine3.14

ARG AJV_CLI_VERSION=5.0.0
RUN apk add libcrypto1.1 libssl1.1 && npm install -g ajv-cli@${AJV_CLI_VERSION}

VOLUME ["/data"]
WORKDIR "/data"

ENTRYPOINT ["/usr/local/bin/ajv"]
