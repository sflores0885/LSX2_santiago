#!/bin/bash



##### Primero revisamos que el numero de parametros sea el correto 
#---------------------------------------------------
# Revision de argumentos

# Son tres argumentos 
ARGS=3

if [ $# -ne  $ARGS ]
then
	echo "Error:"
	echo "Uso $0 <op1> <op2> <op3>"
	exit 1
fi
#---------------------------------------------------

# Quiero ver cuales fueron los argumentos 


echo "los parametros del script fueron:"
echo " "
VAR1=1
## Diferencia entre $0 (es un arreglo) y $* (que es un string)

for PARAM in $0
do
	echo "El parametro $VAR1 es: $PARAM"
	let "VAR1=$VAR1+1"
	echo "VAR1 es :$VAR1"
done

