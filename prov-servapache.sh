#!/bin/bash

echo "baixando e atualizando pacotes"
apt-get update -y
apt-get upgrade -y
apt-get install unzip -y
apt-get install apache2 -y

echo "configuração de arquivos da aplicação web"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "Fim da configuração do servidor web com Apache"
