#!/bin/bash

#SCRIPT QUE FAZ O UPDATE ,VERIFICA SE HÁ ATUALIZAÇÃO E INSTALA OS PROGRAMAS QUE EU MAIS UTILIZO

sudo apt update && sudo apt upgrade && sudo apt install ubuntu-restricted-extras ffmpeg vlc python3-pip python-pip python3-tk python3-virtualenv python3-venv clang wget curl git gparted broadcom-sta-common broadcom-sta-dkms bluez-* pulseaudio-module-bluetooth blueman nautilus-dropbox synapse synaptic musescore3 qelectrotech

#Para instalação ubuntu foi incluido no apt install o synapse synaptic qelectrotech e o musescore3

#Entra no diretório de Download
cd ~/Downloads

#Faz o download do arquivo .deb Visual code
wget -c https://go.microsoft.com/fwlink/?LinkID=760868 -O visual_code.deb

#Faz a instalação do pacote
sudo dpkg -i visual_code.deb

#Faz a inclusão de um item no blacklist do módulo wifi
sudo echo "bcm43xx" | sudo tee -a /etc/modprobe.d/blacklist-broadcom-wireless.conf

#Faz a instalação do fondo via comando flatpak
#flatpak install flathub com.github.calo001.fondo
