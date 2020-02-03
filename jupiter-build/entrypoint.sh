#!/bin/sh -l

echo "Hello 1 ${JAVA_VERSION}"

apk add openjdk${JAVA_VERSION}
