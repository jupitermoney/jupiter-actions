#!/bin/sh -l

pwd

apk add openjdk${INPUT_JAVA_VERSION}-jdk

java -version

echo 'Running gradle build.'

./gradlew --info --rerun-tasks clean flywayClean flywayMigrate build;
