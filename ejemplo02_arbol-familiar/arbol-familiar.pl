madre(josefina, mario).
madre(josefina, ligia).
madre(silvia, marina).
madre(silvia, jaime).
madre(silvia, carlos).
madre(ligia, regina).
madre(ligia, jacinta).

padre(manuel, mario).
padre(manuel, ligia).
padre(mario, marina).
padre(mario, jaime).
padre(mario, carlos).
padre(julio, regina).
padre(julio, jacinta).

sexo(josefina, femenino).
sexo(marina, femenino).
sexo(silvia, femenino).
sexo(ligia, femenino).
sexo(regina, femenino).
sexo(josefina, femenino).
sexo(jacinta, femenino).

sexo(manuel, masculino).
sexo(mario, masculino).
sexo(jaime, masculino).
sexo(carlos, masculino).
sexo(julio, masculino).




% Regla de abuelo materno y paterno
abuelo(X, Y) :- padre(X, P), padre(P, Y).
abuelo(X, Y) :- padre(X, M), madre(M, Y).

% Regla de abuela materna y paterna
abuela(X, Y) :- madre(X, P), madre(P, Y).
abuela(X, Y) :- madre(X, M), padre(M, Y).

% Regla de abuelos en general
abuelos(X, Y) :- abuelo(X, Y) ; abuela(X, Y).

% Regla de hermano
hermano(X, Y) :- padre(P, X) , padre(P, Y) ,
    madre(M, X), madre(M, Y), \==(X, Y),
    sexo(X, masculino).

% Regla de hermana
hermana(X, Y) :- padre(P, X) , padre(P, Y) ,
    madre(M, X), madre(M, Y), \==(X, Y),
    sexo(X, femenino).

% Regla de Tios y Tias
tio(X, Y) :- padre(P, Y), hermano(X, P).
tio(X, Y) :- madre(M, Y), hermano(X, M).

tia(X, W) :- madre(M, W), hermana(X ,M).
tia(X, W) :- padre(P, W), hermana(X, P).

% Regla de Primos y Primas
primo(X, Y) :- padre(P, X), tio(P, Y),
    sexo(X,masculino).
primo(X, Y) :- madre(M, X),  tia(M, Y),
    sexo(X, masculino).

prima(X, Y) :- padre(P, X), tio(P, Y),
    sexo(X, femenino).
prima(X, Y) :- madre(M, X),  tia(M, Y),
    sexo(X, femenino).

