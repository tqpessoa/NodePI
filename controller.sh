#!/bin/bash
echo Firewall NodePI:
echo Atualizando repositórios..
if ! apt-get update
then
    echo "Não foi possível atualizar os repositórios. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi
echo "Atualização feita com sucesso"

echo "Atualizando pacotes já instalados"


if ! apt-get install pypy -y
then
    echo "Não foi possível atualizar pacotes."
    exit 1
fi
echo "Atualização de pacotes feita com sucesso"


echo download pox
if ! git clone http://github.com/noxrepo/pox
then
    echo "Não foi possível instalar o pacote"
    exit 1
fi
