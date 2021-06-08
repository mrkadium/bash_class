#! /bin/bash

bar=1234
robar=5678

# para hacer solo lectura
readonly robar
echo 'Read-only bar:'$robar

# para quitar valor
echo 'bar: '$bar
unset bar
echo 'Unset for $bar:' $bar

# variables especiales
# PID (Process ID)
echo 'PID:' $$

# nombre del script
echo 'Filename:' $0

# argumentos
# $n (n = numero cualquiera del argumento)
echo 'First argument:' $1
echo 'Second argument:' $2

# numero de argumentos
echo 'Argument count:' $#

# codigo de status del ultimo script,
# como codigos de salida
# $?

# if
if [[ $# -gt 1 ]]
then
	echo 'There is more than one argument'
else
	echo 'One or none arguments'
fi
