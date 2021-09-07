% Decimal a binario

% Caso base
dec_bin(0,0).
dec_bin(1,1).


dec_bin(N, B):-
    N>1,                      % evaluamos que el numero sea mayor a 1
    is(X, mod(N,2)),          % X sera el residuo de numero entre 2(base)
    is(Y, //(N, 2)),          % Y es el resultado de dividir la parte entera del nuemro entre 2
    dec_bin(Y, B1),           % Enviamos nuestros nuevos valores
    atom_concat(B1, X, B), !. % En B1 concatenamos el resultado de X y B

% Decimal a Octal

dec_oct(A, B):-
    A<8,           % Evaluamos que A sea menor a 8(base)
    is(B, A),      % entonces B sera igual a A
    writeln(B).    % Escribimos B

dec_oct(A, B):-
    A>8,                % Si A es mayor a 8
    is(C, //(A, 8)),    % C sera el resultado de la division entera de A entre 8
    is(X, mod(A, 8)),   % X sera el residuo de A entre 8
    writeln(X),         % Escribimos X
    dec_oct(C, B), !.   % Se llama a la funcion con los valores de C y B

% Decimal a Hexadecimal

dec_hexa(X,R):-            % X sera nuestro decimal y R el resultado
    >(X,16),               % si X es mayor a 16
    is(RESI,mod(X,16)),    % Encontramos el residuo del numero entre 16(Base)
    hex_value(RESI,Y),     %
    atom_concat(Y,R,RR),
    is(COCI,//(X,16)),
    dec_hexa(COCI,RR);

    <(X,16),
    hex_value(X,Y),
    atom_concat(Y,R,RR),
    writeln(RR),!.

dec_to_hexa(X):-
    dec_hexa(X,'').


hex_value(X,Y):-
    <(X,10),
    is(Y,X).

% definimos que estos numeros se representan en las siguientes letras
hex_value(10,a).
hex_value(11,b).
hex_value(12,c).
hex_value(13,d).
hex_value(14,e).
hex_value(15,f).

