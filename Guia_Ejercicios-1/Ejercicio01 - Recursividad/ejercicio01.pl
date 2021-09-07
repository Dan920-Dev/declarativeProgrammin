% caso base
aprox_e(0, 1):- !.     % Cuando n es 0 directamente 'e' es igual a 1

aprox_e(X, Y):-              %
    >(X, 0),                 % Evaluamos si X es mayor a 0
    factorial(X, Fkt),       % Obtenemos el valor de K!
    is(X1, -(X,1)),          % Ahora disminuimos el valor de X que es nuestra N
    is(Rt, /(1, Fkt)),       % Rt es nuestro resultado parcial de 1 entre K!
    aprox_e(X1, Y1),         % Enviamos nuevos valores, ya que al llegar al caso base Y1 sera igual a 1
    is(Y, +(Rt, Y1)).        % Se hacen la sumatoria respectiva para obtener nuestro resultado final


% Para saber el valor del K!
factorial(1,1):- !.
factorial(0,1):- !.

factorial(X, Y):-
   >(X, 1),
   is(X1, -(X, 1)),
   factorial(X1, Y1),
   is(Y, *(X, Y1)), !.
