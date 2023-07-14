#!/bin/bash

IMAGES=$1
CHECK_SUM=$2
NAME_CHECK_SUM="${CHECK_SUM##*/}"   

[[ "$NAME_CHECK_SUM" != "checksum.txt" ]] && echo "Primero debes generar las imagenes" && exit 1
[[ ! -f $IMAGES || ! -f $CHECK_SUM ]] && echo "Debes ingresar dos archivos." && exit 1  


CORRECT_SUM=$(cat $CHECK_SUM)
SUM=$(md5sum $IMAGES | awk '{print $1}')
[[ "$CORRECT_SUM" == "$SUM" ]] && echo "Suma de verificación realizada correctamente!" || { echo "Archivo a descomprimir incorrecto"; exit 1; }


tar -xvf $IMAGES -C ../

echo "Descompresion de imagenes realizada correctamente!"
rm $IMAGES $CHECK_SUM
