#!/bin/bash

##A primeira linha diz para o sistema que trata-se de um arquivo shellScript##
## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt-get update ; sudo apt-get upgrade ; 

##Snapd##

sudo apt install snapd

##Samba##

sudo apt install samba

##Git##

sudo apt-get install git

git config --global user.name "Bruno Pacheco" 

git config --global user.email "bruno_spacheco@yahoo.com"

##Download de programas externos##

mkdir /home/$USER/Downloads/programas

cd /home/$USER/Downloads/programas

##Google Chrome##
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

##Discord##

wget -c "https://discordapp.com/api/download?platform=linux&format=deb" -O discord.deb

##Kdenlive##

sudo add-apt-repository ppa:sunab/kdenlive-release

sudo apt-get install kdenlive

##Slack##

wget -c https://downloads.slack-edge.com/linux_releases/slack-desktop-4.7.0-amd64.deb


##Firefox##

wget -c https://download-installer.cdn.mozilla.net/pub/firefox/releases/78.0.1/linux-x86_64/en-US/firefox-78.0.1.tar.bz2

##MySql##

sudo apt install mysql-server

##Postman##

sudo snap install postman

##Skype##

wget -c https://repo.skype.com/latest/skypeforlinux-64.deb

##VsCode##

wget -c https://az764295.vo.msecnd.net/stable/cd9ea6488829f560dc949a8b2fb789f3cdc05f5d/code_1.46.1-1592428892_amd64.deb

##Zoom##

wget -c https://d11yldzmag5yn.cloudfront.net/prod/5.1.422789.0705/zoom_amd64.deb?_x_zm_rtaid=SeZBFTrqSJSnf07gRJGLXA.1594247414889.1c8953361a6e601c07d545b1ddc1af5b&_x_zm_rhtaid=585

##WhatsDesk##

sudo snap install whatsdesk

##Instalar todos os programas terminados em .deb##

sudo dpgk -i *.deb

