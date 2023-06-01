% Hechos:

nacio(nacho, bsas, 26, 5, 1989).
nacio(tito, bsas, 26, 4, 2000).
nacio(tita, bsas, 27, 4, 2000).
nacio(lola, bsas, 1, 1, 2001).

signoPdeP(funcional, 28, 3, 29, 5).
signoPdeP(logico, 30, 5, 1, 8).
signoPdeP(objetos, 22, 8, 28, 11).

% Reglas:

esMenor(PrimerNumero, CotaInferior) :-
    CotaInferior >= PrimerNumero.

esMayor(PrimerNumero, CotaSuperior) :- 
    CotaSuperior =< PrimerNumero.

estaEnElRango(Numero, CotaInferior, CotaSuperior) :-
    esMenor(Numero, CotaInferior), esMayor(Numero, CotaSuperior).

horoscopoPdep(Nombre, Signo) :- 
    nacio(Nombre, _, DiaDeNac, MesDeNac, _),
    signoPdeP(Signo, DiaDeInc, MesDeInc, DiaFinal, MesFinal),
    estaEnElRango(DiaDeNac, DiaDeInc, DiaFinal), estaEnElRango(MesDeNac, MesDeInc, MesFinal).
