#!/bin/sh -l

export DEBIAN_FRONTEND=noninteractive

apt update
apt-get -y install openjdk-${INPUT_JAVA_VERSION}-jdk-headless postgresql-11

java -version

echo "Starting postgres server"
pg_ctlcluster 11 main start &

echo 'Running gradle build.'

./gradlew --info --rerun-tasks clean flywayClean flywayMigrate build;
