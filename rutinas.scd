// Rutina

(
r = Routine {
	199.yield;
	189.yield;
	Routine {
		100.do{|i| i.yield}
	}.idle(6);
	190.yield;
	180.yield;

};

fork {
	loop{
		r.value.postln;
		1.wait;
	}
}
);

r.value



//-------------------------------------------------------------------------------------------------------------------------------------------------

//.rand me da un número aleatorio desde 0 hasta el número que le pida
//rrand(5,10) me da un número aleatorio desde el primer número que pido hasta el segundo.

(
r = Routine {
	rrand(1,10).yield;
	rrand(100,150).yield;
	rrand(300,500).yield;
}
)

r.value


//-------------------------------------------------------------------------------------------------------------------------------------------------

//Arrays

a = (2)!3 // El número entre paréntesís es copiado la cantidad de veces que el número posterior al signo !

a = {rrand(0,5)}!5 // En este caso se guardan en un array 5 números aleatorios entre el 0 y el 5

(
~rand_array = {
	arg min, max, size;
	var out;
	out = {rrand(min, max)}!size;
}
)

~rand_array.(100, 101.0,20)
