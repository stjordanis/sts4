#!/bin/bash
set -e
export JAVA_HOME=/home/kdvolder/Applications/jdk1.8.0_271
cd ~/git/kdvolder/docker-java
./mvnw clean package -Dmaven.test.skip=true
for f in \
   docker-java-transport/target/docker-java-transport-3.2.6-SNAPSHOT.jar \
   docker-java-transport-zerodep/target/docker-java-transport-zerodep-3.2.6-SNAPSHOT.jar \
   docker-java-core/target/docker-java-core-3.2.6-SNAPSHOT.jar \
   docker-java-api/target/docker-java-api-3.2.6-SNAPSHOT.jar
do
  cp $f ~/git/sts4/eclipse-extensions/org.springframework.ide.eclipse.docker.client/dependency/
done
