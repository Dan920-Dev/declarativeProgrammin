contar_ocurrencias(X, Y, Z):-

    <(X, 10),
    =:=(X, Y), !,
    is(Z, 1);

    <(X, 10),
    \==(X, Y),
    is(Z, 0), !.

contar_ocurrencias(X, Y, Z):-

    >=(X, 10),
    is(DIV, /(X, 10)),
    is(VFLOOR, floor(X/10)),
    is(V, -(DIV, VFLOOR)),
    is(NUMt, *(V, 10)),
    is(NUM, round(NUMt)),
    =:=(NUM, Y),

    is(CONT, 1),
    contar_ocurrencias(VFLOOR, Y, Z1),
    is(Z, +(Z1, CONT));

    >=(X, 10),
    is(DIV, /(X, 10)),
    is(VFLOOR, floor(X/10)),
    is(V, -(DIV, VFLOOR)),
    is(NUMt, *(V, 10)),
    is(NUM, round(NUMt)),
    =\=(NUM, Y),

    is(CONT, 0),
    contar_ocurrencias(VFLOOR, Y, Z1),
    is(Z, +(Z1, CONT)).
