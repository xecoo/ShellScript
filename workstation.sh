#!/bin/bash

##A primeira linha diz para o sistema que trata-se de um arquivo shellScript##
## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt-get update ; sudo apt-get upgrade ; 

##Snapd##

sudo apt install snapd -y

##Samba##

sudo apt install samba -y

##Git##

sudo apt-get install git -y

git config --global user.name "<your name>" 

git config --global user.email "<your email>"

##Google Chrome##
sudo wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

##Discord##

sudo wget -c https://discordapp.com/api/download?platform=linux&format=deb-O discord.deb

##Kdenlive##

##Adicione o repositório do programa com este comando##

add-apt-repository ppa:kdenlive/kdenlive-stable

##Agora use o comando abaixo para instalar o programa##

sudo apt-get install kdenlive

##Slack##

sudo wget -c https://downloads.slack-edge.com/linux_releases/slack-desktop-4.7.0-amd64.deb

##MySql##

sudo apt install mysql-server -y

##Postman##

sudo snap install postman

##Skype##

sudo wget -c https://repo.skype.com/latest/skypeforlinux-64.deb

##VsCode##

sudo wget -c https://az764295.vo.msecnd.net/stable/cd9ea6488829f560dc949a8b2fb789f3cdc05f5d/code_1.46.1-1592428892_amd64.deb

##Zoom##

sudo wget -c https://d11yldzmag5yn.cloudfront.net/prod/5.1.422789.0705/zoom_amd64.deb?_x_zm_rtaid=SeZBFTrqSJSnf07gRJGLXA.1594247414889.1c8953361a6e601c07d545b1ddc1af5b&_x_zm_rhtaid=585

##WhatsDesk##

sudo snap install whatsdesk

##Instalar todos os programas terminados em .deb##

sudo dpkg -i *.deb

##Procurando dependencias necessárias para o funcionamento dos arquivos .deb##

sudo apt-get install -f -y

##Finalizando a instalação removendo os arquivos desnecessários##

sudo apt-get autoclean

sudo apt-get autoremove -y
