FROM alpine

ARG JAVA_VERSION=${INPUT_JAVA_VERSION}
ENV JAVA_VERSION=${JAVA_VERSION}

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
