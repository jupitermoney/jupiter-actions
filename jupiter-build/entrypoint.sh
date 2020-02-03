#!/bin/sh -l

echo "Hello 1 ${INPUT_JAVAVERSION}"

apk add openjdk${INPUT_JAVAVERSION}
