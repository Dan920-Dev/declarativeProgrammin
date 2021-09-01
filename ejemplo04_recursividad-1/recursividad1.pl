% Recursividad
% Conteo de 1 a n.

% En recursionn de cola:

contar(N, N):-  % Se repite la clausula para que no de un false al terminar la recursion
    writeln(N), !.

contar(A, N):-
    <(A, N), % verificamos si A es menor a N.
    writeln(A), % escribimos A.
    is(A2, +(A, 1)), % le asignamos el valor de A+1 a A2
    contar(A2, N). % Llamada recursiva



% En recursion por posposicion:
% Notar que el conteo se hace de mayor a menor.

contar2(A, N):- % Se repite la clausula para que no de un false al terminar la recursion
    =:=(A, N),
    writeln(A), !.

contar2(A, N):-
    <(A, N),          % verificamos si A es menor a N.
    is(A2, +(A, 1)),  % le asignamos el valor de A+1 a A2
    contar2(A2, N),   % llamada recursiva
    writeln(A).       % se escribe A

% contar de 1 a N en recursion por posposicion

contar3(1):-
   %  =:=(N,1),
    writeln(1), !.


contar3(N):-
    >(N,1),         % verificamos si N es mayor a 1
    is(N2, +(N,1)), % Asignamos el valor N+1 a N2
    contar3(N2),    % llamda recursiva
    writeln(N).     % se escribe A





