#!/bin/bash
set -eu
trap 'kill $(jobs -pr)' SIGINT SIGTERM EXIT
mvn -B compile
mvn -B exec:java -Dexec.mainClass=fi.solita.cd.Hello &
mvn -B failsafe:integration-test