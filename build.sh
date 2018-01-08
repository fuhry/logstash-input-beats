#!/bin/bash

set -e
./gradlew clean
rake clean
rake vendor
./gradlew assemble
./gradlew generateGemJarRequiresFile

jgem build logstash-input-beats.gemspec
