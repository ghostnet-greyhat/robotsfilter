#!/bin/bash

# Preguntar al usuario qué tipo de elementos desea filtrar (allow o disallow)
read -p "¿Qué elementos desea filtrar? Ingrese allow o disallow: " filter

# Verificar que el filtro ingresado sea válido
if [[ $filter != "allow" && $filter != "disallow" ]]; then
    echo "Filtro inválido. Debe ingresar 'allow' o 'disallow'."
    exit 1
fi

# Preguntar al usuario la ruta del archivo robots.txt
read -p "Ingrese la ruta del archivo robots.txt: " file

# Verificar que el archivo exista y sea legible
if [[ ! -f $file ]]; then
    echo "El archivo no existe o no es legible."
    exit 1
fi

# Filtrar por allow o disallow según lo indicado por el usuario
grep "$filter" $file
