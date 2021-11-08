#!/bin/bash

## Removendo eventuais impedimentos do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update && 

## Instalando pacotes e programas do repositório deb do Ubuntu ##

sudo apt gnome-boxes -y ;

## Intalando pacotes developer ##

sudo apt install git -y ;
sudo apt install nodejs npm -y ;
sudo apt python3 -y ;
sudo apt install apache2 mysql-server php php-mysql libapache2-mod-php -y ;
sudo apt install phpmyadmin -y ;

## Composer (gerenciador de pacote php) ##
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"


## Instalando pacotes Snap ##

sudo snap install gimp kdenlive handbrake-jz ;
sudo snap install code --classic ;
sudo snap install slack --classic ;

## Instalando configurações de interface gnome ##
sudo apt install gnome-tweak-tool ;

## Softwares que precisam de download externo ##

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb ; 
wget -c https://github.com/shiftkey/desktop/releases/download/release-2.9.3-linux3/GitHubDesktop-linux-2.9.3-linux3.deb ;
sudo dpkg -i *.deb &&

## Atualização do sistema ##

sudo apt update && sudo apt upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Configuração de sistema concluido com sucesso!"
