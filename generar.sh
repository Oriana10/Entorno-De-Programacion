
#!/bin/bash

#lista_nombres = ("Juan" "María" "Pedro" "Laura" "Carlos")

#echo "Ingrese cantidad de imagenes a descargar"
#read cantidad_imagenes

for i in $(seq 0 $(($1 - 1 )))
do
    nombre=$(sed -n"$RANDOM"p array)
    echo $nombre
    curl -L https://source.unsplash.com/random/900%C3%97700/?person --output $RANDOM
    sleep 1
done


