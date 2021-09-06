% Personas.
persona(maria).
persona(miguel).
persona(sara).
persona(alex).
persona(luis).
persona(jairo).
persona(ernesto).
persona(lucia).
persona(marta).
persona(karla).


% Relacion ama
ama_a(maria, ernesto).
ama_a(ernesto, maria).
ama_a(luis, marta).
ama_a(marta, jairo).
ama_a(jairo, sara).
ama_a(sara, jairo).
ama_a(miguel, luis).



%Relacion Sexo
sexo(maria,femenino).
sexo(sara,femenino).
sexo(lucia,femenino).
sexo(marta,femenino).
sexo(karla,femenino).
sexo(carlos,masculino).
sexo(miguel,masculino).
sexo(jairo,masculino).
sexo(ernesto,masculino).
sexo(luis,masculino).

se_pueden_casar(X, Y) :-
    !,
    ama_a(X, Y), ama_a(Y, X), !,
    sexo(X, femenino), sexo(Y, masculino), !;
    sexo(X, masculino), sexo(Y, femenino), !.





