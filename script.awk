#! /bin/awk -f

function suma(num1, num2){
	return num1 + num2
}

BEGIN{
	print suma(10, 1)
}

# print $0 | "grep amarillo"
