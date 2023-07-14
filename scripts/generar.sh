
#!/bin/bash

#AGREGAR FUNCION PARA CONSEGUIR EL NOMBRE Y METERLO ADENTRO DEL FOR
#CREAR Y GUARDAR LAS IMAGENES EN LA CARPETA IMAGENES EN LA LINEA DEL CURL
#IGNORAR EL CSV Y TRABAJARLO DESCARGANDOLO. VALIDAR QUE EXISTA O NO EL ARCHIVO

[[ $# -ne 1 ]] && echo "Debes ingresar un solo argumento" && exit 1
[[ ! $1  =~ ^[0-9]+$ ]] && echo "El argumento debe ser un numero" && exit 1

cd ..
mkdir -p images 
cd ./images

for i in $(seq 0 $(($1 - 1 )))
do
	LINE=$(shuf -n 1 ../dict.csv) 

	NOMBRE=$(echo $LINE | cut -d , -f 1)
    	curl -L https://source.unsplash.com/random/900%C3%97700/?person --output "$NOMBRE"
    	sleep 1
done

cd ..

tar zcvf images.tar.gz images
# Calcula el checksum MD5 del archivo comprimido
checksum=$(md5sum images.tar.gz | awk '{print $1}')

# Genera el archivo con el checksum
echo "$checksum" > checksum.txt

echo "Generación y compresion de imágenes completada."

rm -r images
