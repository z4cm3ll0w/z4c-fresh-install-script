#!/bin/bash

#creating folders
mkdir ./Scripts
mkdir ./Development
mkdir ./Tools
mkdir ./Git

#updating system
sudo apt update && sudo apt upgrade

#installing software from apt
sudo apt install wireshark -y
sudo apt install nmap -y
sudo apt install firefox -y
sudo apt install keepassxc -y
sudo apt install tilix -y
sudo apt install git -y

#cloning Git repositories
cd ./Git
git clone https://github.com/OWASP/Amass.git
