#!/bin/bash

source /var/scripts/funcoes.sh

menu


while [ $OPCAO -ne 0 ]; do


case $OPCAO in
  1)
    validauser
    case $RC in
      0)
        echo "Usuário já existe"
        ;;
      *)
        criauser
        ;;
    esac
    ;;
  2)
    validauser
    case $RC in
      0)
        alterasenha
        ;;
      *)
        echo "Usuario não cadastrado"
        ;;
    esac
    ;;
  3)
    validauser
    case $RC in
      0)
        deletauser
        ;;
      *)
        echo "Usuario não cadastrado"
        ;;
    esac
    ;;
  *)
    echo "Opção invalida"
    ;;
esac

sleep 3
clear
menu

done
