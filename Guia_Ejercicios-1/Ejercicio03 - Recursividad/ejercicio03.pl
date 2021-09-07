numero_secreto(X):- % Se ingresa el numero y se determina el N random
    writeln('Ingresar un n�mero del 1 al 100'), nl,
    read(N),nl,              % Se lee desde teclado el numero del usuario
    random(1, 100, R), nl,   % Se genera el numero aleatorio
    writeln('# random'), nl,
    writeln(R),
    writeln(X),
    mayor_menor(N, R, X).   % Se envian el numero, random y X que es nuestro contador

mayor_menor(N, R, X):-   % Regla para saber si N es menor al numero aleatorio
   is(X1, +(X,1)),       % Para determinar valor de contador
   <(N,R),
   writeln('El n�mero ingresado es menor al n�mero secreto'),
   umero_secreto(X1).

mayor_menor(N, R, X):-   % Regla para saber si N es menor al numero aleatorio
   is(X1, +(X,1)),       % Para determinar valor de contador
   >(N,R),
   writeln('El n�mero ingresado es mayor al n�mero secreto'),
   numero_secreto(X1).

mayor_menor(N, R, X):-   % Regla para saber cuando a adivinado el numero
   =:=(N,R),
   writeln('Adivino el  n�mero secreto'), % Confirmacion de que adivino
   write('Numero de Intentos: '),
   writeln(X),!.                          % Muestra el numero de intentos



