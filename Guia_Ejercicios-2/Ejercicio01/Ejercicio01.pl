invierte_digitos(X,_):-  % Si el numero es menor a 10 solo escribira el mismo numero
    <(X, 10),
    write(X).

invierte_digitos(X,_):-
    ( >=(X, 10) ->
    is(VFLOOR, floor(X/10)),
    is(RES, mod(X,10)),
    write(RES),
    invierte_digitos(VFLOOR,_),!).
