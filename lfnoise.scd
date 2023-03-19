// Moduladores basados en audio}

// Función LFNoise se utiliza  en la síntesis de sonido y se utiliza para generar formas de onda de ruido de baja frecuencia.

// LFNoise0: Genera un ruido blanco constante, no lineal.

//Como salida de audio
{LFNoise0.ar(6)}.play

//Como controlador
{SinOsc.ar(LFNoise0.kr(20).range(400,800),0,0.5)!2}.play