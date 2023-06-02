% Hechos: Personas y signos

nacio(nacho, bsas, 26, 5, 1989).
nacio(tito, bsas, 26, 4, 2000).
nacio(tita, bsas, 27, 4, 2000).
nacio(lola, bsas, 1, 1, 2001).

signoPdeP(funcional, 28, 3, 12, 4).
signoPdeP(funcional, 12, 4, 29, 5).
signoPdeP(logico, 30, 5, 13, 6).
signoPdeP(logico, 13, 6, 18, 7).
signoPdeP(objetos, 22, 8, 26, 9).
signoPdeP(objetos, 26, 9, 31, 10).
signoPdeP(objetos, 31, 10, 28,11).

% Regla: De qué signo es una persona?

horoscopoPdep(Nombre, Signo) :- 
    nacio(Nombre, _, DiaDeNac, MesDeNac, _),
    signoPdeP(Signo, DiaInico, MesInicio, DiaFinal, MesFinal),
    (
        (MesDeNac = MesInicio, DiaDeNac >= DiaInico) ;
        (MesDeNac = MesFinal, DiaDeNac =< DiaFinal)
    ).
