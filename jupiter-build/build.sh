#!/bin/bash

echo $PATH
echo $JAVA_HOME
java -version

./gradlew --info --rerun-tasks clean flywayClean flywayMigrate build;
