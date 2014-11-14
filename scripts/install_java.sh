#!/bin/bash

set -xv

java -version 2>&1 | head -n 1 | grep -q -v "1.7.0" 
JAVA7_INSTALLED=$?

if [ "$JAVA7_INSTALLED" == "0" ]
then
	# install jdk7 (ubuntu only)
	# http://www.webupd8.org/2012/01/install-oracle-java-jdk-7-in-ubuntu-via.html
	apt-get -q -y update
	apt-get -q -y install python-software-properties
	echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
	add-apt-repository -y ppa:webupd8team/java
	apt-get -q -y update
	apt-get -q -y install oracle-java7-installer
	update-java-alternatives -s java-7-oracle
fi
