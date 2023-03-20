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