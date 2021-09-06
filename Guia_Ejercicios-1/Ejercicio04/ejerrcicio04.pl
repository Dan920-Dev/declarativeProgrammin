% Juegos

juego(juego1).
juego(juego2).
juego(juego3).
juego(juego4).

% Quien teiene c/juego

tiene(javito,juego2).
tiene(javito,juego2).
tiene(rodri,juego3).
tiene(rodri,juego1).
tiene(pepito,juego3).
tiene(pepito,juego2).

comprar_juego(X):-
   not(juego(X)), % Se verifica si el juegoexiste
   writeln("No está en tienda"), !.

comprar_juego(X):-

    juego(X), % Si el juego existe, verificamos si alguien mas lo tiene
    (tiene(rodri, X); tiene(pepito, X); tiene(javito, X)),
    writeln("No puede comprar"), !.


comprar_juego(X):-  % si nadie lo tiene y el juego existe enla tienda si se puede comprar
    juego(X),
    not(tiene(javito,X)),
    not(tiene(rodri,X)),
    not(tiene(pepito,X)),
    writeln("Se puede comprar"), !.
