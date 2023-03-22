// MIDI (del inglés "Musical Instrument Digital Interface") es un protocolo de comunicación estándar utilizado en la música electrónica y la producción musical. MIDI permite la comunicación digital entre dispositivos electrónicos como teclados, sintetizadores, computadoras y otros dispositivos de música.
//En lugar de transmitir señales de audio, como lo hacen los cables de audio convencionales, MIDI transmite datos que representan información musical, como notas, duraciones, dinámicas y efectos.

MIDIClient.init;

m = MIDIOut(0);


//Objetos con P~pattern

(
var a,b;
a = Pseq([1, 2, 3], 2); // Repeat twice
b = a.asStream;
7.do({b.next.postln;});
)

// Función midi
(
~note = {
	arg chan, note, vel, dur;

	fork{
		m.noteOn(chan, note, vel);
		dur.wait;
		m.noteOff(chan, note, vel);
	}
}
)

~note.(1,100,110,1)