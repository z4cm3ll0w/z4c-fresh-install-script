  GNU nano 6.2                           Scripts/install.sh                                    
#!/bin/bash

echo "creating folders"
mkdir ~/Configs
mkdir ~/Scripts
mkdir ~/Development
mkdir ~/Tools
mkdir ~/Git

echo "updating system"
sudo apt update && sudo apt upgrade

echo "installing software from apt"
software="wireshark nmap firefox keepassxc tilix git openvpn"

sudo apt install $software -y

#sudo apt install wireshark -y
#sudo apt install nmap -y
#sudo apt install firefox -y
#sudo apt install keepassxc -y
#sudo apt install tilix -y
#sudo apt install git -y
#sudo apt install openvpn -y



echo "cloning Git repositories"
cd ~/Git
git clone https://github.com/OWASP/Amass.git

