
//SinOsc es un objeto de SuperCollider que representa la onda sinusoidal
{SinOsc}
//Ejemplo

{SinOsc.ar(200, 0, 0.5)}.play;

//para que salga por las dos bocinas usamos el método !2 que indica que agregue un segundo canal
//Luego, el método plot hace una visualización gráfica de la onda que en este caso tiene el parámetro 1 para indicar que queremos visualizar 1 segundo de onda.

{SinOsc.ar(200, 0, 0.5)!2}.plot(1);


// Por debajo de los 20 Hz--- LFO (Low Frequency Oscillator)

//Modulación de frecuencia (con el objeto MouseX se puede intervenir con el mouse por el eje X para modificar la frecuencia en el rango establecido por parámetro. Por el eje Y se puede realizar con MouseY)

{SinOsc.ar(MouseX.kr(100,1000), 0, 0.5)}.play;

//Modulación de amplitud

{SinOsc.ar(300, 0, MouseX.kr(0.1, 1))}.play;

//Combinación de modulación de frecuencia y amplitud

{SinOsc.ar(MouseX.kr(100,1000), 0, MouseY.kr(0.1, 1))}.play;

