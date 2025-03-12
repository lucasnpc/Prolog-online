come(urso, peixe).
come(peixe, peixinho).
come(peixinho, alga).
come(guaxinim, peixe).
come(urso, guaxinim).
come(urso, raposa).
come(raposa, coelho).
come(coelho, grama).
come(urso, veado).
come(veado, grama).
come(lince, veado).

animal(urso).
animal(peixe).
animal(peixinho).
animal(guaxinim).
animal(raposa).
animal(coelho).
animal(veado).
animal(lince).

planta(grama).
planta(alga).

presa(X) :- come(_, X), animal(X).
herbivoro(X) :- come(X, Y), planta(Y).

nacadeiaalimentar(X, Y) :- come(X, Y).
nacadeiaalimentar(X, Y) :- come(X, Z), nacadeiaalimentar(Z, Y).

?-presa(_).
?-herbivoro(_).
?-nacadeiaalimentar(_, _).
