#!/bin/sh -l

pwd

echo 'Running gradle build.'

./gradlew --info --rerun-tasks clean flywayClean flywayMigrate build;
