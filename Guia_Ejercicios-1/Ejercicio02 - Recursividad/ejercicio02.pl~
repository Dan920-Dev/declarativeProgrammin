
recursion(X, N, T):-        % Tomamos la letra y el numero de veces a repetir
    <(N, T),                % N tiene que ser menor al Total de veces
    writeln(X),             % Escribe la letra
    recursion(X, N+1, T).   % Aumentamosen 1 la N

repertir_letra_n_veces(N):-   % Tomamos la letra del teclado
    read(X),
    recursion(X, 0, N).       % La enviamos la clausula recursiva par que se repita las N veces
