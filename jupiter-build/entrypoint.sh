#!/bin/sh -l

echo "Hello ${INPUT_JAVA-VERSION}"

apk add openjdk$1
