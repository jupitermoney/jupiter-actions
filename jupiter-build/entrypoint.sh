#!/bin/sh -l

export DEBIAN_FRONTEND=noninteractive

apt update
apt-get -y install openjdk-${INPUT_JAVA_VERSION}-jdk-headless docker-ce-cli

java -version
docker -v

echo "Starting postgres server"
docker run postgres:10.10 -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=postgres -e POSTGRES_USER=postgres -p 5432:5432  &

echo 'Running gradle build.'

./gradlew --info --rerun-tasks clean flywayClean flywayMigrate build;
