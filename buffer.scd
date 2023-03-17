
//El buffer es un espacio en memoria que reserva S.Collider para guardar archivos de audio

~path = ["\Users\USURIO\Music\para_toda_la_vida"]

b = Buffer.read(s, ~path[0]);
b

SynthDef(\help_PlayBuf, {
	arg bufnum = 0, bus = 0, gain = 0.5;
	var out;

	out = PlayBuf.ar(2, bufnum, BufRateScale.kr(bufnum), doneAction: 2)

	Out.ar(bus, out*gain)

}).send(s)