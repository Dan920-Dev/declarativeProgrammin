contarParImpar(X, P, I):-
    <(X, 10),
    is(RES, mod(X,2)),
    =:=(RES, 0),
    is(P, 1),
    is(I, 0), !;
    <(X, 10),
    is(RES, mod(X,2)),
    \==(RES, 0),
    is(P, 0),
    is(I, 1), !.

contarParImpar(X, P, I):-

    >=(X, 10),
    is(DIV, /(X, 10)),
    is(VFLOOR, floor(X/10)),
    is(V, -(DIV, VFLOOR)),
    is(NUMt, *(V, 10)),
    is(NUM, round(NUMt)),
    is(RES, mod(NUM,2)),
    =:=(RES, 0),

    is(CONT, 1),
    is(CONT2, 0),
    contarParImpar(VFLOOR, P1, I1),
    is(P, +(P1, CONT)),
    is(I, +(I1, CONT2)), !;

    >=(X, 10),
    is(DIV, /(X, 10)),
    is(VFLOOR, floor(X/10)),
    is(V, -(DIV, VFLOOR)),
    is(NUMt, *(V, 10)),
    is(NUM, round(NUMt)),
    is(RES, mod(NUM,2)),
    \==(RES, 0),
    is(CONT, 1),
    is(CONT2, 0),
    contarParImpar(VFLOOR, P1, I1),
    is(I, +(I1, CONT)),
    is(P, +(P1, CONT2)), !.


