% Notar que los hechos se han colocado en desorden
% para demostrar que Prolog realiza la busqueda
% de acuerdo a lo que se le indica.

% indicamos cada fase como un hecho
fase(renacuajo_con_cuatro_patas).% fase 5
fase(embrion).                   % fase 2
fase(renacuajo_con_dos_patas).   % fase 4
fase(rana_de_cola_corta).        % fase 6
fase(huevo).                     % fase 1
fase(rana_adulta).               % fase 7
fase(renacuajo).                 % fase 3

% indicamos cuando una fase se transaforma a otra en relaciones/2
se_transforma_en(renacuajo, renacuajo_con_dos_patas).
se_transforma_en(huevo, embrion).
se_transforma_en(embrion, renacuajo).
se_transforma_en(renacuajo_con_cuatro_patas, rana_de_cola_corta).
se_transforma_en(rana_de_cola_corta, rana_adulta).
se_transforma_en(renacuajo_con_dos_patas, renacuajo_con_cuatro_patas).


fases_metamorfosis_rana:-  % es de aridad cero
    fases_metam_r(_, _).   % invoca a otra que si cuenta con los argumentos

fases_metam_r(X, Y):-         % de una fase anterior a posterior X,Y
    buscar_primera_fase(X),   % buscamos la primera fase X
    mostrar_fases(X, Y).

buscar_primera_fase(X):-
    fase(X),                      % la primera fase sera X
    not(se_transforma_en(_, X)),  % esta es la condicion para saber cual es la primera fase ya que no tiene fase anterior
    writeln(X), !.                % escribe la fase y termina de buscar coincidencias

mostrar_fases(X, _):-
    not(se_transforma_en(X, _)), !. % se detiene cuando la fase anterior no tiene fase posterior

mostrar_fases(X, _):-        % para mostrar las fases
    se_transforma_en(X, Y),  % sabemos que  X es fase anterior y Y fase posterior
                             % asi que solo buscamos cada "se_transforma_en"
    writeln(Y),              % escribimos la fase posterior
    mostrar_fases(Y, _).     % enviamos esa fase posterior y pasa a ser la anterior para seguir buscando la siguiente




