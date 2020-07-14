#!/bin/bash
export LC_ALL=C
apt-get update -y
apt-get upgrade -y
apt-get install -y nano git openjdk-7-jdk openjdk-7-jre-headless
apt-get install -y apache2

cd /usr/local
wget https://downloads.apache.org/tomcat/tomcat-7/v7.0.105/bin/apache-tomcat-7.0.105.tar.gz
tar -xzvf apache-tomcat-7.0.105.tar.gz
ln -s apache-tomcat-7.0.105 tomcat

cp /vagrant/tomcat8 /home/vagrant/tomcat8
chmod 755 /home/vagrant/tomcat8
update-rc.d tomcat8 defaults
service tomcat8 start
