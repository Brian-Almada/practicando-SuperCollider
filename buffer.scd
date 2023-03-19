
//El buffer es un espacio en memoria que reserva S.Collider para guardar archivos de audio

~path = ["C:/Users/USURIO/practicando-supercollider/pot-gong.wav", "C:/Users/USURIO/practicando-supercollider/dun.wav"]

~b1 = Buffer.read(s, ~path[0]);
~b2 = Buffer.read(s, ~path[1]);

SynthDef(\player, {
	arg bufnum = 0, bus = 0, gain = 0.5, rate = 1;
	var out;

	out = PlayBuf.ar(2,
		bufnum,
		BufRateScale.kr(bufnum)*rate,
		doneAction: 2);

	Out.ar(bus, out*gain)

}).send(s)

a = Synth(\player, [bufnum: ~b1.bufnum]);

d = Synth(\player, [bufnum: ~b2.bufnum]);
a.set(\gain,1.5)
d.set(\rate,0)
