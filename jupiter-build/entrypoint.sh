#!/bin/sh -l

export DEBIAN_FRONTEND=noninteractive

echo "Setting up docker installation"
apt update
apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt update
apt-get -y install openjdk-${INPUT_JAVA_VERSION}-jdk-headless docker-ce

java -version
docker -v

echo "Starting postgres server"
docker run postgres:10.10 -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=postgres -e POSTGRES_USER=postgres -p 5432:5432  &

echo 'Running gradle build.'

./gradlew --info --rerun-tasks clean flywayClean flywayMigrate build;
