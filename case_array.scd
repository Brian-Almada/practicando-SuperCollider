

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



(
var i, x, z;
z = [0, 1, 1.1, 1.3, 1.5, 2];
i = z.choose;
i.postln;
x = case
   {i == 1} {\no}
   {i == 1.1} {\wrong}
   {i == 1.3} {\wrongX}
   {i == 1.5} {\medium}
   {i == 2} {\wrongY}
   {i == 0} {\true};
x.postln;
)


//iteración... contador (i)

5.do({'a'.postln;})

(
10.do({
	arg i;
	('a'++i).postln;
})
)



(
~array_inc = {
	arg size;
	var out;

	out = List();
	size.do({
		arg i;
		out.add(i);
	});
	out;
}
)

~array_inc.(6)