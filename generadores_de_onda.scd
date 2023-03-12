
//SinOsc es un objeto de SuperCollider que representa la onda sinusoidal
{SinOsc}
//Ejemplo

{SinOsc.ar(200, 0, 0.5)}.play;

//para que salga por las dos bocinas usamos el método !2 que indica que agregue un segundo canal
//Luego, el método plot hace una visualización gráfica de la onda que en este caso tiene el parámetro 1 para indicar que queremos visualizar 1 segundo de onda.

{SinOsc.ar(200, 0, 0.5)!2}.plot(1);


