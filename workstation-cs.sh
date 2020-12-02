#!/bin/bash 
##A primeira linha diz para o sistema que trata-se de um arquivo shellScript##

## Atualizando o repositório ##
sudo apt-get update ; sudo apt-get upgrade ; 

##Cria uma pasta para realizar o download dos arquivos externos##
mkdir /home/$USER/Downloads/programas
cd /Downloads/programas

##Google Chrome##
sudo wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

##Discord##
sudo wget -c https://discordapp.com/api/download?platform=linux&format=deb-O discord.deb

##Postman##
sudo snap install postman

##VsCode##
sudo wget -c https://az764295.vo.msecnd.net/stable/cd9ea6488829f560dc949a8b2fb789f3cdc05f5d/code_1.46.1-1592428892_amd64.deb

##Zoom##
sudo wget -c https://d11yldzmag5yn.cloudfront.net/prod/5.1.422789.0705/zoom_amd64.deb?_x_zm_rtaid=SeZBFTrqSJSnf07gRJGLXA.1594247414889.1c8953361a6e601c07d545b1ddc1af5b&_x_zm_rhtaid=585

##Instalar todos os programas terminados em .deb##
sudo dpkg -i *.deb

##Procurando dependencias necessárias para o funcionamento dos arquivos .deb##
sudo apt-get install -f -y

##Instalação do Docker no Ubuntu 18.04##
    ##removendo versões antigas do docker##
    sudo apt-get remove docker docker-engine docker.io containerd runc

    ##Atualização dos pacotes e instalação utilizando o repositório docs.docker##
    sudo apt-get update

    sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

    ##Chave GPG Oficial do Docker##
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

    ##Adicionar o repositório estável##
    sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

    ##Instalar a Engine do Docker##
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io

##Instalar docker-compose 1.27.4 no ubuntu 18.04##
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    ##Autorizar permissões de alteração no arquivo##
    sudo chmod +x /usr/local/bin/docker-compose

    

##Finalizando a instalação removendo os arquivos desnecessários##
sudo apt-get autoclean
sudo apt-get autoremove -y

##Deletando diretório dos arquivos baixados##
cd ..
rmdir -r programas -i