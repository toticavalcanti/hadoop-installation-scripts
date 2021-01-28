#!/bin/bash

# change user configuration for /opt
cd /opt
sudo chown -R $USER .

# install openssh to ssh with via port 22
sudo apt install openssh-server openssh-client -y

# Install Java 14 on Ubuntu 20.04.1
sudo apt install openjdk-14-jdk

# Setting up JAVA_HOME
echo "# Set up JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/java-14-openjdk-amd64
export PATH=\$PATH:\$JAVA_HOME/bin

" >> ~/.profile

# shellcheck disable=SC1090
source ~/.profile

echo "$JAVA_HOME"
javac -version