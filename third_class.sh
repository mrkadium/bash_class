#! /bin/bash

#sustitucion
texto="Texto"
echo -e "$texto\nSalto de linea"

#ejecutar comando con echo
echo `ls -l`
echo $(ls -l) #comandos van con ()

$var
unset var
var="Preparada"
unset var
echo ${var:-"No preparada"} #si var es unset, muestra el mensaje
echo ${var:="Seteada"} #si var esta vacia, asigna el mensaje
echo $var
unset var
#echo ${var:?"Error si la variable no seteada"}



#redireccion
#sudo cat /var/log/messages > log.txt
#wc -l < log.txt

#cat log.txt | grep 2021 >$1 #mandar a stdout, $2 para error



#funciones
sum(){
	return `expr $1 + $2`
}
sum 4 5
echo "Result: $?"


#hacer ping con ip clase c, mandarla como input
#mostrar solo resultado de las que responden al ping
#usar recursividad
#solo las ips en el output


text="Mario"
echo "${text:2:4}"
