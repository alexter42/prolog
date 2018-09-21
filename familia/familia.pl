% Definicion de mi familia:


progenitor(hugo,hugo_jr).
progenitor(hugo,gabriela).
progenitor(hugo,laura).
progenitor(hugo,alejandra).
progenitor(paz,hugo_jr).
progenitor(paz,gabriela).
progenitor(paz,laura).
progenitor(paz,alejandra).

hombre(hugo).
hombre(hugo_jr).

mujer(paz).
mujer(gabriela).
mujer(laura).
mujer(alejandra).

padres(X,Y,Z) :- (padre(X,Z), madre(Y,Z)); (padre(Y,Z), madre(X,Z)).

madre(X,Y) :- progenitor(X,Y), mujer(X).
padre(X,Y) :- progenitor(X,Y), hombre(X).

hijo(X,Y) :- hombre(X), progenitor(Y,X).
hija(X,Y) :- mujer(X),  progenitor(Y,X).

hermana(X,Y) :- mujer(X), progenitor(Nombre,X), progenitor(Nombre,Y), X \= Y.
hermano(X,Y) :- hombre(X), progenitor(Nombre,X), progenitor(Nombre,Y), X \= Y.