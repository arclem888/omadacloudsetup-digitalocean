#!/bin/bash

echo "Installing Omada Cloud by Arclem"

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

#sudo wget -O omada_v5.12.7_linux_x64_20230905160956_1695177653350.deb "https://firebasestorage.googleapis.com/v0/b/arclemwifipublic/o/omada_v5.12.7_linux_x64_20230905160956_1695177653350.deb?alt=media&token=ed0d8236-07b7-48cd-9210-34b8c704f43d"

sudo wget https://static.tp-link.com/upload/software/2023/202301/20230130/Omada_SDN_Controller_v5.8.4_Linux_x64.deb


echo "now installing sdn controller"
cd
#sudo -i gdebi -n omada_v5.12.7_linux_x64_20230905160956_1695177653350.deb

sudo -i gdebi -n Omada_SDN_Controller_v5.8.4_Linux_x64.deb


