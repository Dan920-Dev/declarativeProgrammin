enemigo(made, fati).
enemigo(fati, made).
enemigo(dir, fati).
enemigo(fati, dir).
enemigo(thanos, capi).
enemigo(thanos, ironman).
enemigo(ironman, thanos).
enemigo(capi, thanos).
enemigo(thanos, fati).
enemigo(fati, thanos).


aliado(X,Y,Z):-
    enemigo(X,Y),
    enemigo(Y,X),
    enemigo(Z,Y),
    not(enemigo(X,Z)),
    not(enemigo(Z,X)),
    \==(Z,X).

% Posible caso aliado(made, fati, Z).
