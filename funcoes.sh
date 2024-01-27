#!/bin/bash

menu(){
	echo "Digite 1 para criar usuário"
	echo "Digite 2 para alterar senha"
	echo "Digite 3 para deletar usuário"
  echo "Digite 0 para sair"
	read OPCAO
}
validauser(){
	echo "Digite o nome do usuário"
	read NOME

	id $NOME 1> /dev/null 2> /dev/null

	RC=$?
}
criauser(){
	echo "Criando usuário $NOME"
	useradd -m $NOME
	echo "Usuŕio Criado com sucesso"
}
alterasenha(){
	echo "Alterando senha do usuário"
	passwd $NOME
	echo "Senha do usuário alterada com sucesso"
}
deletauser(){
	echo "Removendo usuário"
	userdel -r $NOME
	echo "Usuário removido com Sucesso"
}

