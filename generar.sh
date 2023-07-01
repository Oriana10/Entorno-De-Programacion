
#!/bin/bash

#AGREGAR FUNCION PARA CONSEGUIR EL NOMBRE Y METERLO ADENTRO DEL FOR
#CREAR Y GUARDAR LAS IMAGENES EN LA CARPETA IMAGENES EN LA LINEA DEL CURL
#IGNORAR EL CSV Y TRABAJARLO DESCARGANDOLO. VALIDAR QUE EXISTA O NO EL ARCHIVO

TOTAL_LINES=$(wc -l < ./dict.csv)
RANDOM_LINE=$((RANDOM%$TOTAL_LINES+ 1))

i=0
while read line; do
        i=$(( i + 1 ))
	case $i in $RANDOM_LINE)break; esac
done < "./dict.csv"


NOMBRE=$(echo $line | cut -d , -f 1)
echo $NOMBRE

for i in $(seq 0 $(($1 - 1 )))
do
    curl -L https://source.unsplash.com/random/900%C3%97700/?person --output "$NOMBRE"
    sleep 1
done


