//"SynthDef" es una abreviatura de "Synthesizer Definition", lo que se traduciría al español como "Definición de sintetizador". Un SynthDef es una definición de un sintetizador en SuperCollider que especifica cómo se produce un sonido a partir de los objetos de audio disponibles.

//Un SynthDef contiene una descripción detallada de los componentes del sintetizador, como los osciladores, los filtros, los envolventes, etc. También puede incluir parámetros que pueden ser modificados en tiempo real para cambiar la forma en que se produce el sonido.

//Ejemplo de modulación de frecuencia usando sinusoidal por medio de SynthDef

(
SynthDef(\modAmp,
	{
		arg freq_mod=10, min=100, max=300, gain=0.6;
		var mod, synth;

		mod = SinOsc.kr(freq_mod).range(min,max);
		synth = SinOsc.ar(mod,0,gain);
		//Out.ar(0,synth) salida 1
		//Out.ar(1,synth) salida 2
		Out.ar([0,1],synth)
	}
).send
)

a = Synth(\modAmp, [\freq_mod,2,190,3000,0.9]) //Se coloca solo Synth porque ahora estamos llamando a la función. SynthDef es para definirla.
b = Synth(\modAmp, [\freq_mod,5,100,300,0.9])
c = Synth(\modAmp, [\freq_mod,7,250,400,0.9])

c.set(\gain,0.1)
a.set(\freq_mod,7)

a.free
c.free
b.free


// La función mod en SynthDef

(
SynthDef(\mod,{
	arg freqX = 3, min_X= 100, max_X= 300, freqY= 5, min_Y= 100, max_Y= 200, out= 0, pan_freq= 1, gain= 0.5;
	var freq_mod, amp_mod, signal, pan_kr,pan;

	//moduladores
	freq_mod = Saw.kr(freqY).range(min_X, max_X);
	amp_mod = LFPulse.kr(freqY).range(min_Y, max_Y);

	//señal audio
	signal = Saw.ar(freq_mod, amp_mod);
	pan_kr = SinOsc.kr(pan_freq).range(-1,1);
	pan = Pan2.ar(signal, pan_kr, gain);
	Out.ar([0,1], pan);
}).send(s)
)

a = Synth(\mod)


