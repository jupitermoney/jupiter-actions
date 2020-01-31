#!/bin/sh -l

echo "Hello ${JAVA_VERSION}"

apk add openjdk$1
