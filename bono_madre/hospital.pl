% Hechos
madre(ana, [alex, joel , lux]).
madre(susan, [dean, diana , flof]).
madre(alex, [manu, luis]).


% Predicados
bono(Nombre) :-
    numero_hijos(Nombre, NH),
    NH >= 3.

numero_hijos(Nombre, NH) :-
    madre(Nombre, Numero_Hijos),
    length(Numero_Hijos, NH).

