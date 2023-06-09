#!/bin/sh
sudo apt install default-jdk -y
java --version
wget -c https://services.gradle.org/distributions/gradle-7.4.2-bin.zip -P /tmp
ls /tmp
sudo apt install unzip
sudo unzip -d /opt/gradle /tmp/gradle-7.4.2-bin.zip
ls /opt/gradle
sudo nano /etc/profile.d/gradle.sh
export GRADLE_HOME=/opt/gradle/gradle-7.4.2
export PATH=${GRADLE_HOME}/bin:${PATH}
sudo chmod +x /etc/profile.d/gradle.sh
source /etc/profile.d/gradle.sh
gradle --version
