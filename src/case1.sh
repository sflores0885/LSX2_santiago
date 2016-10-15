#!/bin/bash

# ejemplo de case, determinsa si la distro esta soportada

shopt -s nocasematch 

DISTRO=$1


case "$DISTRO" in 
	Ubuntu)
		echo "Distribucion $DISTRO Soportada"
	;;
	Centos)
		echo "Distribucion $DISTRO Soportada"
	;;
	Fedora)					
		echo "Distribucion $DISTRO Soportada"
	;;
	*)
		echo "Distro no soportada"
esac
