#!/bin/sh -l

export DEBIAN_FRONTEND=noninteractive

echo "Setting up docker installation"
apt update
apt-get -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common iptables
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
bash -c 'echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu disco stable" > /etc/apt/sources.list.d/docker-ce.list'

apt update
apt-get -y install openjdk-${INPUT_JAVA_VERSION}-jdk-headless docker-ce postgresql-client

java -version
docker -v

echo "Starting postgres server"
docker run -d -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=postgres -e POSTGRES_USER=postgres -p 5432:5432 postgres:10.10

docker ps -a
iptables -L

# export PGPASSWORD='password'; psql -U postgres -d postgres -h localhost -p 5432

echo 'Running gradle build.'
# ./gradlew --info --rerun-tasks clean flywayClean flywayMigrate build;
