FROM node:22.9.0-alpine3.20

ARG AJV_CLI_VERSION=5.0.0
ARG AJV_FORMATS_VERSION=3.0.1
RUN npm install -g ajv-cli@${AJV_CLI_VERSION} \
    && npm install -g ajv-formats@${AJV_FORMATS_VERSION}
VOLUME ["/data"]
WORKDIR "/data"

ENTRYPOINT ["/usr/local/bin/ajv"]
