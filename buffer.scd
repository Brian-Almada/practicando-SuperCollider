
//El buffer es un espacio en memoria que reserva S.Collider para guardar archivos de audio

~path = ["C:/Users/USURIO/practicando-supercollider/pot-gong.wav", "C:/Users/USURIO/practicando-supercollider/pianito.aiff"]

b = Buffer.read(s, ~path[0]);
c = Buffer.read(s, ~path[1]);

SynthDef(\player, {
	arg bufnum = 0, bus = 0, gain = 0.5;
	var out;

	out = PlayBuf.ar(2, bufnum, BufRateScale.kr(bufnum), doneAction: 2);

	Out.ar(bus, out*gain)

}).send(s)

a = Synth(\player,[c.bufnum])



