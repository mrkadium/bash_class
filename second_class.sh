# arreglos/listas
arr2=(4 5 6) #separados por espacios

# uno por uno
arr[0]=1
arr[1]=2
arr[2]=3

echo ${arr2[0]}
echo ${arr[2]}

# ambos muestran todos los valores del arreglo
echo ${arr[@]} #una lista de parametros
echo ${arr2[*]} #todos los valores en uno solo

# operaciones aritmeticas
suma=`expr 2 + 2`
resta=`expr 2 - 2`
multiplicacion=`expr 2*2`
division=`expr 2/2`
mod=`expr 2%2`
igual=`expr 2 != 2`

echo $igual


# comparaciones
#espacio despues del corchete de apertura, y antes del corchete de cierre
# [ 2 -eq 2 ] #equal: igual
# [ 2 -ne 2 ] #not equal: no es igual
# [ 2 -lt 2 ] #less than: menor que
# [ 2 -gt 2 ] #greater than: mayor que
# [ 2 -le 2 ] #less or equal to: mayor o igual que
# [ 2 -ge 2 ] #greater or equal to: mayor o igual que
# ! #falso

# comparaciones de string
# =
# !=
# -z :si es 0; [ -z $a ]
# -n :si no es 0 [ -n $a ]
# str :no es un operador, es para chequear si esta vacio el string [ $a ]

# -eq no es lo mismo que =
# -equ es para aritmetica, = es para strings

# comparaciones en archivos
# [ -f $a ] verifica si es un archivo
# [ -d $a ] verifica si es un directorio

# if
var='Mario'
if [ $var ]
then
	echo 'No vacia'
else
	echo 'Vacia'
fi

num=4
if [ $num -eq 3 ]
then
	echo 'Es 3'
elif [ $num -gt 3 ]
then
	echo 'Es mayor a 3'
else
	echo 'Es menor a 3'
fi



# case
carro='Bentley'
case $carro in
'Mercedes' )
	echo 'Es Mercedes';;
'BMW' )
	echo 'Es BMW';;
* )
	echo 'No es ninguno de esos';;
esac




#bucles/loops
# while
limite=10
var=1
while [ $limite -gt $var ] #mientras que limite sea mayor a var
do
	var=`expr $var + 1` #aumento var
	echo 'Todavia no termina'
done
echo 'Termino'


# until
var=1
until [ $limite -eq $var ] #hasta que var sea igual a limite
do
	var=`expr $var + 1` #aumento var
	echo 'Todavia no termina'
done
echo 'Termino'


# for (se usa para listas, como un forEach en JS)
for i in {0..3} #rango de 0 a 3
do
	echo $i
done

#con el for podemos iterar el resultado de una funcion
#usa el espacio como separador por defecto
#se debe cambiar la variable de entorno IFS
#IFS=\n para definir salto de linea como separador
#IFS=, para separar por comas
for i in `ls`
do
	echo $i
done



select opcion in suma resta continuar salir
do
case $opcion in
suma)
	echo 'Suma';;
resta)
	echo 'Resta';;
continuar)
	continue;;
salir)
	break;;
*)
	echo 'No valido';;
esac
done



#entrada de usuario
read entrada
echo $entrada


# TAREA
# Hacer una calculadora
# Un script que pida al usuario un valor, luego una funcion aritmetica, luego otro valor
# ejemplo: ./calc valor1 suma valor2, y que luego muestre el valor
