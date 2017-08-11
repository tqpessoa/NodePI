#!/bin/bash
echo Nodes NodePI:
echo Instalação Nodes...
if ! npm install node-red-contrib-hue node-red-contrib-mqtt-broker node-red-contrib-telegrambot node-red-dashboard node-red-contrib-net-ping node-red-node-snmp node-red-node-twitter node-red-contrib-xbee node-red-contrib-dht-sensor node-red-contrib-hangouts node-red-contrib-pid node-red-contrib-bluetooth
then
    echo "Não foi possível instalar o pacote"
    exit 1
fi
