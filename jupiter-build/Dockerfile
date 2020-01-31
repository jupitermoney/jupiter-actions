FROM alpine

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT export JAVA_VERSION="$INPUT_JAVA_VERSION"; /entrypoint.sh
