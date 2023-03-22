#!/bin/bash
#This script is to install git on any operating system
set -e
echo "Check whether git installed or not"
echo "Script to install git"
echo "Installation Begin"
if [ $(uname) == "Linux" ];
then 
    echo "Checking Linux Distribution"
    if [ "$(cat /etc/os-release | grep -i ID_LIKE | cut -d "=" -f 2)" == "debian" ];
    then 
        echo "This is UBUNTU linux"
        apt install git -y
    elif [ "$(cat /etc/os-release | grep -i ID_LIKE | cut -d "=" -f 2)" == "fedora" ];
    then
        echo "This is Debian Linux Distribution"
        yum install git -y
    fi
fi
echo "Git is installed and its version $(git --version)"
echo $#