#!/bin/bash



case $1 in 
	start)
		echo "Serviço iniciado"
		;;
	stop)
		echo "Serviço parado"
		;;
	*)
		echo "Os parametros são start e stop"
		;;
esac

