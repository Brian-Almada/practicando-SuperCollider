

(
~escala = {
	arg cal;
	var x;

	x = case
	   {cal < 5.9}{\NA}
	   {(cal > 6) && (cal <= 7.5)}{\S}
	   {(cal > 7.5) && (cal <= 8.9)}{\B}
	   {cal > 9}{\MB};

	postln("la calificación final es "++x)
}
)

~escala.(7.4)