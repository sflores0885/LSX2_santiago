#!/bin/bash


ERRORLOG="$0.err"
# La salida estandar de error estara redireccionada al archivo if-then.sh.err

if cp /tmp/archivo1.txt archivo1.txt.bck 2> $ERRORLOG
then

	echo "El archivo1.txt fue correctamente respaldado"
	echo "Eliminando archivo original"
	if rm -f /tmp/archivo1.txt 2>> $ERRORLOG
	then
		echo "El Archivo origianl fue eliminado correctamente"
	else
		echo " no se pudo elminar el archivo, revisar  $ERRORLOG"
	fi
else
	echo "El archivo1.txt no pudo ser respaldado, verifique el log :$ERRORLOG"
fi




