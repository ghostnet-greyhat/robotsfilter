#!/bin/bash

# Mostrar cuadro de diálogo para que el usuario seleccione "allow" o "disallow"
selection=$(zenity --list --title "Seleccionar opción" --column "Opción" "allow" "disallow" --height=150 --width=200)

# Verificar si el usuario ha seleccionado "allow" o "disallow"
if [ "$selection" == "allow" ]; then
    grep "Allow:" robots.txt
elif [ "$selection" == "disallow" ]; then
    grep "Disallow:" robots.txt
else
    zenity --error --text "Debe seleccionar 'allow' o 'disallow'"
fi
