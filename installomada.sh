#!/bin/bash

echo "Installing Omada Cloud by Arclem"

echo "Updating apt package"
sudo apt-get --yes --force-yes update 

echo "installing mongodb"
sudo apt-get --yes --force-yes install mongodb

echo "installling jsvc"
sudo apt-get --yes --force-yes install jsvc

echo "installing openjdk-8-jdk"
sudo apt-get --yes --force-yes install openjdk-8-jdk

echo "this will update config java. please select 2"
sudo update-alternatives --config java

echo "installing gdebi-core"
sudo apt-get --yes --force-yes install gdebi-core

echo "downloading omada sdn controller"
cd
sudo wget https://static.tp-link.com/upload/software/2023/202301/20230130/Omada_SDN_Controller_v5.8.4_Linux_x64.deb

echo "now installing sdn controller"
cd
sudo -i gdebi Omada_SDN_Controller_v5.8.4_Linux_x64.deb






