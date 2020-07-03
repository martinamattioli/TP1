
% BASE DE CONOCIMIENTOS


viveEnDreadbury(tiaAgatha).
viveEnDreadbury(elCarnicero).
viveEnDreadbury(charles).

odia(tiaAgatha, charles).
odia(tiaAgatha, tiaAgatha).
odia(charles, elCarnicero).
odia(elCarnicero, charles).
odia(elCarnicero, tiaAgatha).

% Quien no es odiado por el carnicero y vive en la mansion, es mas rico que la tia agatha
esMasRicoQueAgatha(elCarnicero).

% Quien mata es porque odia a su victima y no es mas rico que ella
% Quien mata debe vivir en Dreadbury

matoAAgatha(Persona):-
    viveEnDreadbury(Persona),
    odia(Persona,tiaAgatha),
    not(esMasRicoQueAgatha(Persona)). 


/*

Consultas

1 ?- matoAAgatha(Quien).
Quien = tiaAgatha .

2 ?- odia(_,milhouse).
false.

3 ?- odia(charles,Quien).
Quien = elCarnicero.

4 ?- odia(Quien,tiaAgatha).
Quien = tiaAgatha ;
Quien = elCarnicero.

5 ?- odia(Odiador,Odiado).
Odiador = tiaAgatha,
Odiado = charles ;
Odiador = Odiado, Odiado = tiaAgatha ;
Odiador = charles,
Odiado = elCarnicero ;
Odiador = elCarnicero,
Odiado = charles ;
Odiador = elCarnicero,
Odiado = tiaAgatha.

6 ?- odia(elCarnicero,_).
true .

*/


