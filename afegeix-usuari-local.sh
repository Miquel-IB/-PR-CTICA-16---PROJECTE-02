#!/bin/bash
echo "https://github.com/Miquel-IB/-PR-CTICA-16---PROJECTE-02.git"
if [[ "${UID}" -ne 0 ]]
then
   echo 'Ingrese como root.' >&2
   exit 1
fi

read -p 'Indique su nombre de login: ' USUARIO

# Generar contraseña aletoria.

LENGTH=48
PASSWORD=$(date +%s%N${RANDOM}${RANDOM} | sha256sum | head -c ${LENGTH})


# Crear el usuario con la contraseña aleatoria

sudo useradd $USUARIO 
echo {$PASSWORD}
sudo passwd $USUARIO 
echo {$USUARIO}
echo {$PASSWORD}
