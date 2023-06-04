% Hechos: Personas, signos y meses

nacio(nacho, bsas, 26, 5, 1989).
nacio(tito, bsas, 20, 6, 2000).
nacio(tita, bsas, 10, 6, 2000).
nacio(lola, bsas, 1, 1, 2001).
nacio(federico, bsas, 30, 04, 2002).

signoPdeP(funcional, 28, 3, 12, 4).
signoPdeP(funcional, 12, 4, 29, 5).
signoPdeP(logico, 30, 5, 13, 6).
signoPdeP(logico, 13, 6, 18, 7).
signoPdeP(objetos, 22, 8, 26, 9).
signoPdeP(objetos, 26, 9, 31, 10).
signoPdeP(objetos, 31, 10, 28,11).

mes(1, 31).
mes(2, 28).
mes(2, 29).
mes(3, 31).
mes(4, 30).
mes(5, 31).
mes(6, 30).
mes(7, 31).
mes(8, 31).
mes(9, 30).
mes(10, 31).
mes(11, 30).
mes(12, 31).

% Regla: De qué signo es una persona?

horoscopoPdep(Nombre, Signo) :- 
    nacio(Nombre, _, DiaDeNac, MesDeNac, _),
    signoPdeP(Signo, DiaInico, MesInicio, DiaFinal, MesFinal),
    (
        (MesDeNac = MesInicio, mes(MesDeNac, CantDias), DiaDeNac >= DiaInico, DiaDeNac =< CantDias) ;
        (MesDeNac = MesFinal, DiaDeNac =< DiaFinal)
    ).
