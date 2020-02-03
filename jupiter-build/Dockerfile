FROM alpine

ARG JAVA_VERSION=$1
ENV JAVA_VERSION=${JAVA_VERSION}

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
