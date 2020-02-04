#!/bin/sh -l

pwd

apt install openjdk${INPUT_JAVA_VERSION}-jdk

java -version

echo 'Running gradle build.'

./gradlew --info --rerun-tasks clean flywayClean flywayMigrate build;
