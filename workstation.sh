#!/bin/bash

##A primeira linha diz para o sistema que trata-se de um arquivo shellScript##

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update && 

