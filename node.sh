#!/bin/bash
echo Nodes NodePI:
echo Instalação Nodes...
if ! npm install node-red-contrib-mqtt-broker node-red-contrib-telegrambot node-red-dashboard node-red-node-snmp node-red-node-twitter  node-red-contrib-dht-sensor node-red-contrib-hangouts node-red-contrib-pid 
then
    echo "Não foi possível instalar o pacote"
    exit 1
fi

if ! npm install node-red-node-serialport
then
    echo "Não foi possível instalar o pacote hue"
    exit 1
fi

if ! npm install node-red-contrib-hue node-red-contrib-hueplus
then
    echo "Não foi possível instalar o pacote hue"
    exit 1
fi

if ! npm install node-red-contrib-hue node-red-contrib-hueplus
then
    echo "Não foi possível instalar o pacote hue"
    exit 1
fi

if ! npm install node-red-contrib-xbee
then
    echo "Não foi possível instalar o pacote xbee"
    exit 1
fi

if ! npm install node-red-contrib-bluetooth-serial node-red-contrib-bluetooth
then
    echo "Não foi possível instalar o pacote bluetooth"
    exit 1
fi

if ! npm install node-red-contrib-net-ping node-red-ping
then
    echo "Não foi possível instalar o pacote ping"
    exit 1
fi
