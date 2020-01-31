#!/bin/sh -l

echo "Hello $INPUT_JAVA_VERSION"

apk add openjdk$INPUT_JAVA_VERSION
