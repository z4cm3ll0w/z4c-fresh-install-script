#!/bin/bash

#creating folders
mkdir ~/Configs
mkdir ~/Scripts
mkdir ~/Development
mkdir ~/Tools
mkdir ~/Git

#updating system
sudo apt update && sudo apt upgrade

#installing software from apt
software="wireshark nmap firefox keepassxc tilix git openvpn"

sudo apt install $software -y


#cloning Git repositories
cd ./Git
git clone https://github.com/OWASP/Amass.git
