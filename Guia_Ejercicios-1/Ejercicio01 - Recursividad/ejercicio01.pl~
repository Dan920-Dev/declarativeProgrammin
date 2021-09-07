% caso base
aprox_e(0, 1):- !.

aprox_e(X, Y):-
    >(X, 0),
    factorial(X, Fkt),
    is(X1, -(X,1)),
    is(Rt, /(1, Fkt)),
    aprox_e(X1, Y1),
    is(Y, +(Rt, Y1)).


% Para saber el valor del K!
factorial(1,1):- !.
factorial(0,1):- !.

factorial(X, Y):-
   >(X, 1),
   is(X1, -(X, 1)),
   factorial(X1, Y1),
   is(Y, *(X, Y1)), !.
