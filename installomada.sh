#!/bin/bash

echo "Installing Omada Cloud by dhads"

echo "Updating apt package"
sudo apt-get -y update 

echo "installing mongodb"
sudo apt-get -y install mongodb

echo "installling jsvc"
sudo apt-get -y install jsvc

echo "installing openjdk-8-jdk"
sudo apt-get -y install openjdk-8-jdk

echo "this will update config java. please select 2"
sudo update-alternatives --config java

echo "installing gdebi-core"
sudo apt-get -y install gdebi-core

echo "downloading omada sdn controller"
cd
sudo wget https://www.tp-link.com/ph/support/download/omada-software-controller/Omada_SDN_Controller_v5.12.7_Linux_x64.deb

echo "now installing sdn controller"
cd
sudo -i gdebi -n Omada_SDN_Controller_v5.12.7_Linux_x64.deb






