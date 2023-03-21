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