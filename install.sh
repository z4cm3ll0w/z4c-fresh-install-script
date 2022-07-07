#!/bin/bash

echo "creating folders"
mkdir ~/Configs
mkdir ~/Scripts
mkdir ~/Development
mkdir ~/Tools
mkdir ~/Git
mkdir ~/Tmp

#-------------------------------------------------------------------------------------------------------------------------------------

echo "adding PGP-Keys"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg

#-------------------------------------------------------------------------------------------------------------------------------------

echo "adding repositories"
#sublime-text
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

#-------------------------------------------------------------------------------------------------------------------------------------

echo "updating system"
sudo apt update && sudo apt upgrade

#-------------------------------------------------------------------------------------------------------------------------------------

echo "installing software from apt"
software="nano vim wireshark nmap firefox keepassxc tilix git openvpn telegram-desktop gnome-tweaks gnome-shell-extension-manager sublime-text"

sudo apt install $software -y


#-------------------------------------------------------------------------------------------------------------------------------------

echo "cloning Git repositories"
cd ~/Git
git clone https://github.com/OWASP/Amass.git
