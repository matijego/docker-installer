#!/bin/bash
chmod ugo+x instalador-docker.sh


#Instala docker
echo "Instalando docker..."
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker pi

#Instala docker-compose 
echo "Instalando docker compose..."
sudo apt-get install -y python3-pip
sudo pip3 install docker-compose

echo "Reiniciando sistema"
sudo reboot
