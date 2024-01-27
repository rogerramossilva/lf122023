#!/bin/bash

echo "Digite o nome do usuário"
read NOME

id $NOME 2> /dev/null

case $? in
	0)
		echo "usuário $NOME Já existe"
		;;
	1)
		echo "criando usuário $NOME"
		;;
	*)
		echo "criando usuário $NOME"
		;;
esac
