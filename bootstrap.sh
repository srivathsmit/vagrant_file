#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
apt-get install vim
apt-get -y install python-software-properties
apt-get install -y r-core

add-apt-repository -y ppa:webupd8team/java
apt-get -q -y update

echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
 
apt-get -y install oracle-java7-installer
 
echo -e "\n\nJAVA_HOME=/usr/lib/jvm/java-7-oracle" >> /etc/environment;
export JAVA_HOME=/usr/lib/jvm/java-7-oracle/
