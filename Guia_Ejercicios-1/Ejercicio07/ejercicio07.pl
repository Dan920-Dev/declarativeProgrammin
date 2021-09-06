calorias(pollo, 200).
calorias(gazpacho, 150).
calorias(consome, 300).
calorias(filetecerdo, 400).
calorias(polloasado, 280).
calorias(trucha, 160).
calorias(bacalao, 300).
calorias(flan, 200).
calorias(nueces, 500).
calorias(naranja, 50).

valor_calorico(X, Y, Z, V):-
  calorias(X, X1),
  calorias(Y, X2),
  calorias(Z, X3),
  is(V, +(X1, +(X2, X3) )).


comida_equilibrada(X, Y, Z):-
  calorias(X, X1),
  calorias(Y, X2),
  calorias(Z, X3),
  is(V, +(X1, +(X2, X3) )),
  <(V, 800),
  writeln("La comida no supera las 800 calorías"),!.


comida_equilibrada(X, Y, Z):-
  calorias(X, X1),
  calorias(Y, X2),
  calorias(Z, X3),
  is(V, +(X1, +(X2, X3) )),
  >=(V, 800),
  writeln("La comida supera las 800 calorías"),!.
