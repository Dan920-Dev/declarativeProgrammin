eliminar_digito(X, Y,_):-

    >=(X, 10),
    is(DIV, /(X, 10)),
    is(VFLOOR, floor(X/10)),
    is(V, -(DIV, VFLOOR)),
    is(NUMt, *(V, 10)),
    is(NUM, round(NUMt)),
    is(NUMR, NUM),
    =\=(NUMR, Y),
    eliminar_digito(VFLOOR, Y,_),
    write(NUMR), !;

    >=(X, 10),
    is(DIV, /(X, 10)),
    is(VFLOOR, floor(X/10)),
    is(V, -(DIV, VFLOOR)),
    is(NUMt, *(V, 10)),
    is(NUM, round(NUMt)),
    is(NUMR, NUM),
    =:=(NUMR, Y),
    eliminar_digito(VFLOOR, Y,_),
    write(""), !.
