#!/bin/sh -l

export DEBIAN_FRONTEND=noninteractive

apt update
apt-get -y install openjdk-${INPUT_JAVA_VERSION}-jdk

java -version

echo 'Running gradle build.'

./gradlew --info --rerun-tasks clean flywayClean flywayMigrate build;
