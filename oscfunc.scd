//OSC (Open Sound Control) es un protocolo de red para la comunicación de datos de control entre aplicaciones, dispositivos y sistemas de audio. OSC se utiliza para enviar mensajes de control entre diferentes aplicaciones de software de música, como DAWs, sintetizadores virtuales, software de mezcla, etc. OSC es un protocolo mucho más flexible y potente que MIDI, ya que permite enviar no solo datos de control, sino también mensajes de texto, comandos personalizados y otros tipos de datos.


// Sintáxis de la función OSC

OSCFunc({ arg msg;
    msg.postln;
}, '/test');

OSCFunc({ arg msg;
    msg.postln;
}, '/example/*');
