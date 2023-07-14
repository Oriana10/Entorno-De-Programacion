#!/bin/bash

#procesar.sh: Se deberán recortar las imágenes a una resolución de
#512*512 con alguna utilidad como imagemagick. Solamente deben procesarse aquellas 
#imágenes que tengan nombres de personas válidos. Entiéndase por nombres de personas válidos 
#a cualquier combinación de palabras que empiecen con un letra mayúscula y sigan por minúsculas.

archivos=()
DIRECTORIO="../imagenesRecortadas/"

# Recorro los archivos del directorio "../images"
for archivo in "../images"/*; do
    if [ -f "$archivo" ]; then
        archivos+=("$(basename "$archivo")")
    fi
done

# Creo el directorio "imagenesRecortadas" si no existe
if [ ! -d "$DIRECTORIO" ]; then
    mkdir "$DIRECTORIO"
fi

# Itero sobre los archivos encontrados
for archivo in "${archivos[@]}"; do
    # Valido nombres de las imagenes
    nombre_apellido=$archivo
    primeras_letras=$(echo "$nombre_apellido" | sed -E 's/(\b\w)/\U\1/g')
    if [[ "$nombre_apellido" == "$primeras_letras" ]]; then
        echo "Archivo válido: " $archivo
        # Recorto imágenes validadas con imagemagick
        convert "$archivo" -gravity center -resize 512x512+0+0 -extent 512x512 "$DIRECTORIO/salida.jpg"
    fi
done

total_archivos=${#archivos[@]}
echo -----------------
echo "Total de archivos: $total_archivos"
echo "${archivos[@]}"