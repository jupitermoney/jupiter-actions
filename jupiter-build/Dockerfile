FROM alpine

COPY entrypoint.sh ${GITHUB_WORKSPACE}/entrypoint.sh
COPY build.sh ${GITHUB_WORKSPACE}/build.sh

RUN pwd

ENTRYPOINT entrypoint.sh
