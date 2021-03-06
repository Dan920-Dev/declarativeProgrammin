% Usamos mcd de aridad 3 ya que  X,Y son 2 numeros enteros
%  y R es el resultado que nos devolvera

mcd(X, Y, R):- % Regla cuando ambos numeros son iguales
    =:=(X, Y),
    is(R, X), !.


mcd(X, Y, R):- % Cuando el residuo es 0 R toma el valor del menor
   is(RESI, mod(X, Y)),
   ==(RESI, 0),
   is(R, Y).

mcd(X, Y, R):- % Cuando el residuo no es 0
    is(RESI, mod(X, Y)),
    \==(RESI, 0),
    is(NX, Y),     % el menor pasa a ser el nuevo mayor
    is(NY, RESI),  % el residuo pasa a ser el nuevo menor
    mcd(NX, NY, R).
