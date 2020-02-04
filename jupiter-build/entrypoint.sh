#!/bin/sh -l

pwd

echo $JAVA_HOME

echo $PATH

java -version

echo 'Running gradle build.'

./gradlew --info --rerun-tasks clean flywayClean flywayMigrate build;
