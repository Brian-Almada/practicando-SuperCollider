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