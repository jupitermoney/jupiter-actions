#!/bin/sh -l

export DEBIAN_FRONTEND=noninteractive

apk add openjdk${INPUT_JAVA_VERSION} postgresql-client

echo "Starting postgres server"
docker run -d -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=postgres -e POSTGRES_USER=postgres -p 5432:5432 postgres:10.10

docker ps -a

ifconfig
export PGPASSWORD='password'; psql -U postgres -d postgres -h 172.17.0.2 -p 5432

echo 'Running gradle build.'
# ./gradlew --info --rerun-tasks clean flywayClean flywayMigrate build;
