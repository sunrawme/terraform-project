#!/bin/bash

apt update -y

apt install openjdk-17-jdk wget unzip -y

wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-25.5.0.107428.zip

unzip sonarqube-*.zip

mv sonarqube-* /opt/sonarqube

useradd sonar

chown -R sonar:sonar /opt/sonarqube

su - sonar -c "/opt/sonarqube/bin/linux-x86-64/sonar.sh start"
