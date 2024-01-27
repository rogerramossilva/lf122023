#!/bin/bash

source /var/scripts/funcoes.sh

menu


while [ $OPCAO -ne 0 ]; do

if [ $OPCAO -eq 1 ]; then
  validauser
  if [ $RC -eq 0 ]; then
    echo "Usuário já existe"
  else
    criauser
  fi
elif [ $OPCAO -eq 2 ]; then
  validauser
  if [ $RC -eq 0 ]; then
    alterasenha
  else
    echo "Usuario não existe"
  fi
elif [ $OPCAO -eq 3 ]; then
  validauser
  case $RC in
    0)
      deletauser
      ;;
    *)
      echo "Usuario não existe"
      ;;
  esac
else
  echo "Opção escolhida invalida, escolha uma opção valida"
fi



sleep 3
clear
menu

done
