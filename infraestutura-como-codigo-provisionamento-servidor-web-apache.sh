#!/bin/bash


echo "Atualizando Servidor..."

apt-get update
apt-get upgrade -y


echo "Instalando Apache e Unzipe..."

apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando Aplicação no Diretótio /tmp..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main


echo "Copiando Aplicação para o Diretório Padrão do Apache..."

cp -R * /var/www/html/


echo "Finalizado!"
