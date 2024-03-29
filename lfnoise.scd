// Moduladores basados en audio}

// Función LFNoise se utiliza  en la síntesis de sonido y se utiliza para generar formas de onda de ruido de baja frecuencia.

// LFNoise0: Genera un ruido blanco constante, no lineal.

//Como salida de audio
{LFNoise0.ar(6)}.play

//Como controlador
{SinOsc.ar(LFNoise0.kr(20).range(400,800),0,0.5)!2}.play

// LFNoise1: Genera una rampa lineal ascendente y descendente. No es una función polinomial.

//Como salida de audio
{LFNoise1.ar(500)}.play

//Como controlador
{SinOsc.ar(LFNoise1.kr(20).range(400,800),0,0.5)!2}.play

//LFNoise2: Genera una onda triangular. Es una función polinomial cuadrática de grado 2.

//Como salida de audio
{LFNoise2.ar(6000)}.play

//Como controlador
{SinOsc.ar(LFNoise2.kr(20).range(400,800),0,0.5)!2}.play


//LFDNoise

//LFDNoise0

//Como salida de audio
{LFDNoise0.ar(6)}.play

//Como controlador
{SinOsc.ar(LFDNoise0.kr(20).range(400,800),0,0.5)!2}.play

//LFDNoise1

//Como salida de audio
{LFDNoise1.ar(6)}.play

//Como controlador
{SinOsc.ar(LFDNoise1.kr(20).range(400,800),0,0.5)!2}.play

//LFDNoise3

//Como salida de audio
{LFDNoise3.ar(6)}.play

//Como controlador
{SinOsc.ar(LFDNoise3.kr(20).range(400,800),0,0.5)!2}.play