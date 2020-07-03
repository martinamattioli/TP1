
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


