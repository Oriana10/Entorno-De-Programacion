#!/bin/bash

mostrar_menu() {
    clear
    echo "Seleccione una opción:"
    echo "1. Ejecutar script generar.sh"
    echo "2. Ejecutar script descomprimir.sh"
    echo "3. Ejecutar script procesar.sh"
    echo "4. Ejecutar script comprimir.sh"
    echo "5. Salir"
    echo
}

opcion_invalida() {
    echo "Opción inválida. Por favor, seleccione una opción válida."
}

while true; do
    mostrar_menu
    read -p "Elige una opción: " opcion
    
    case $opcion in
        1)
            echo "Has elegido la Opción 1"
            read -p "Presiona Enter para continuar..."
            ;;
        2)
            echo "Has elegido la Opción 2"
            read -p "Presiona Enter para continuar..."
            ;;
        3)
            echo "Has elegido la Opción 3"
            read -p "Presiona Enter para continuar..."
            ;;
        4)
            echo "Has elegido la Opción 4"
            read -p "Presiona Enter para continuar..."
            ;;
        5)
            echo "Saliendo del programa..."
            exit 0
            ;;
        *)
            echo "Opción inválida. Por favor, elige una opción válida."
            read -p "Presiona Enter para continuar..."
            opcion_invalida
            ;;
    esac
done