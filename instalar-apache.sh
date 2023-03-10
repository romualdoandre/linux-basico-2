#!/bin/bash
echo "Atualizando o servidor"
apt update
apt upgrade -y

echo "Instalando servidor Apache"
apt install apache2 -y
echo "Instalando unzip"
apt install unzip -y
cd /tmp
echo "Baixando a aplicação"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
