FROM alpine

ARG JAVA_VERSION="8${INPUT_JAVA_VERSION}"
ENV JAVA_VERSION=${JAVA_VERSION}

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
