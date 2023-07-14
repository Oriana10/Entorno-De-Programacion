# TP ENTORNO 2023

## ¿Qué hace?

El programa genera y manipula imágenes aleatorias descargadas desde un link otorgado, realiza tareas de comprensión y descompresión de las mismas, recorta las imágenes al tamaño solicitado y organiza los archivos en diferentes directorios.

## ¿Cómo se corre?

sudo docker build -t tp-entorno .
sudo docker run -it -v ./final_images:/app/final_images tp-entorno
