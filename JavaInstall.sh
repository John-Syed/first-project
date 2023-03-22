#!/bin/bash
set -x
set -e
set -o pipefail
apt update
#This Script is for installing java
#Check whether java is installed or not
echo "Checking whether Java installed or not....."
do_install() {
 
    wget https://download.oracle.com/java/17/archive/jdk-17.0.6_linux-x64_bin.tar.gz
    tar -xvzf jdk-17.0.6_linux-x64_bin.tar.gz -C /opt
    rm jdk-17.0.6_linux-x64_bin.tar.gz
    sudo update-alternatives --install /usr/bin/java java /opt/jdk-17.0.6/bin/java 1
    sudo update-alternatives --install /usr/bin/javac javac /opt/jdk-17.0.6/bin/javac 1
    sudo update-alternatives --set java /opt/jdk-17.0.6/bin/java
    sudo update-alternatives --set javac /opt/jdk-17.0.6/bin/javac
    export JAVA_HOME=/opt/jdk-17.0.6
    export PATH=$JAVA_HOME/bin:$PATH
    echo "Java is installed"
    java --version
}
do_install