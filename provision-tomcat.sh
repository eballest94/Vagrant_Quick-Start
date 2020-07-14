#!/bin/bash
export LC_ALL=C
apt-get update -y
apt-get upgrade -y
apt-get install -y nano git openjdk-7-jdk openjdk-7-jre-headless
apt-get install -y apache2
