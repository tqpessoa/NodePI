#!/bin/bash
echo Gateway NodePI:
echo Atualizando repositórios..
if ! apt-get update
then
    echo "Não foi possível atualizar os repositórios. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi
echo "Atualização feita com sucesso"

echo "Atualizando pacotes já instalados"


if ! apt-get dist-upgrade -y
then
    echo "Não foi possível atualizar pacotes."
    exit 1
fi
echo "Atualização de pacotes feita com sucesso"


echo Instalação SNMP...
if ! apt-get install -y snmp snmpd
then
    echo "Não foi possível instalar o pacote"
    exit 1
fi


echo Instalação NodeJS...
if ! apt-get install -y nodejs-legacy npm
then
    echo "Não foi possível instalar o pacote"
    exit 1
fi
echo "Instalação PM2 - PM2 é um gerenciador de processo para Node.js"

if ! npm install -g pm2
then
    echo "Não foi possível instalar o pacote"
    exit 1
fi

echo Instalação NodeRED...
if ! npm install -g --unsafe-perm node-red node-red-admin
then
    echo "Não foi possível instalar o pacote"
    exit 1
fi

echo Porta NodeRED...

ufw allow 1880


echo Instalação Broken - Mosquitto...
if ! apt-get install -y mosquitto
then
    echo "Não foi possível instalar o pacote"
    exit 1
fi



echo "Instalação finalizada"






