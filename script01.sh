#!/bin/bash

#Script para demonstração de criação de variáveis de ambiente

#Declarando variáveis estáticas

TMP=/var/tmp
SERVICO=cron
TEXTO="Aula de Linux"
USUARIO=$USER
DATE=$(date)
DIRATUAL=`pwd`

cd $TMP

systemctl restart $SERVICO

echo $DATE
