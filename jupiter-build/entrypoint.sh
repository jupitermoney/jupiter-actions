#!/bin/sh -l

echo "Hello 1 ${INPUT_JAVA_VERSION}"

apk add openjdk${INPUT_JAVA_VERSION}
