FROM node:15.4.0-alpine3.12

ARG AJV_CLI_VERSION=3.3.0
RUN apk add libcrypto1.1=1.1.1i-r0 libssl1.1=1.1.1i-r0 && npm install -g ajv-cli@${AJV_CLI_VERSION}

VOLUME ["/data"]
WORKDIR "/data"

ENTRYPOINT ["/usr/local/bin/ajv"]
