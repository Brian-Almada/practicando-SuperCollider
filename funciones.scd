//Funciones

(
~suma = {
	arg num1, num2;
	var resultado;
	resultado = num1 + num2
};

~concat = {
	arg str1, str2, str3;
	var out;
	out = str1++str2++str3
}
)

~suma.(3,100) //Primero está el nombre de la variable que almacena la función y luego un punto para ejecutar dicha función. Luego los paréntesis contienen los argumentos.
~concat.('My name ','is ','Brian')

