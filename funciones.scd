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



(
~population = {
	arg init_, final_;
	var out;
	out = (final_/ init_) * 100;
	if(out>100,{
		out = (out - 100) / 100;
		postln('el porsentaje de crecimiento es '++out)
	    });
	if(out<100,{
		out = (100 - out)/100;
		postln('el porsentaje de decrecimiento es '++out)
	    });
	if(out==100,{
		out = out / 100;
		postln('hubo crecimiento nulo de '++out)
	});
}
)

x = ~population.(130000, 50000)