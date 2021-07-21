#! /bin/bash

# 2021-06-22

# awk

# awk -f awk-script file-to-read

#ARGC : cantidad de argumentos

#awk '{ print "Cantidad de argumentos: %s", ARGC;}' uno dos tres

#awk 'BEGIN{ print ENVIRON["USER"]}'

#awk 'END { print FILENAME }' file

#awk -F'|' { print $1 }' file #usa | como separador
#print NF (cantidad de campos en la linea)
#print NR file1 file2 (numero de linea incluyendo todos los archivos)
#print FNR file1 file2 (numero de linea por archivo)

#awk 'BEGIN { num = rand(); printf "%f", num }'


#STRING

awk 'BEGIN { arr[0] = "cero"; arr[1] = "uno"; arr[2] = "dos";
	for (i in arr){ print arr[i]; }
	asort(arr);
 	for (i in arr){ print arr[i]; }	
	}'


#gsub(original, substitucion, string); #cambia la palabra dentro del string
#index(string, palabra) #devuelve el indice
#match(string, regex) #devuelve el indice del match mas largo de la regex
#split(string a separar, arreglo donde se guardara (no declarado), regex con separador) #separar por regex
#split("uno,dos,tres", arr, ",") #devuelve un arreglo con tres elementos
#strtonum("123") #decimal
#strtonum("0123") #octal
#strtonum("0x123") #hexa
#substr(string, index inicial, cantidad de caracteres)
#toupper(string)
#tolower(string)

#TIEMPO
#systime() #fecha y hora de la compu (hasta segundos)
#mktime("1970 01 01 00 00 00") #time to epoch
#strftime(string con patron de tiempo, epoch/timestamp) #patron de %
awk 'BEGIN{
	print strftime("%d de %m de %Y", systime());
	}'

#delete arr[n] #borra elemento de array


#CONTROL DE FLUJO
#next
#nextfile
