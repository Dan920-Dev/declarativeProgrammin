# Realización de consultas

Las consultas son las preguntas que le realizamos a la base de conocimientos para que
nos responda con cierto o falso (true o false en inglés). Podemos pensar en las consultas como preguntas que le hacemos a nivel de la línea de
comandos.

En la base de conocimientos de seres marinos, podríamos preguntar:

|                       Preguntas                                         |    Consulta                        |
|-------------------------------------------------------------------------|------------------------------------|
|  ¿Qué ser marino conoces? / ¿Quién es unser marino?                     |  ?- ser_marino(X).                 |
|  ¿Quién es amigo de quién?                                              |  ?- amigo(X, Y).                   |
|  ¿De quién es amigo Bob? / ¿De quién seconsidera amigo Bob?             |  ?- amigo(bob, Y).                 |
|  ¿Es Bob amigo de Paticio? / ¿Seconsidera Bob amigo de Patricio?        |  ?- amigo(bob, patricio).          |
|  ¿Quién es amigo de Marlin? / ¿Quién seconsidera amigo de Marlin?       |  ?- amigo(Z, marlin).              |
|  ¿De quién es amigo Calamardo? / ¿Dequién se considera amigo Calamardo? |  ?- amigo(calamardo, W).           |
|  ¿Qué pasatiempo tiene Bob?                                             |  ?- pasatiempo(bob, Q).            |
|  ¿Quién tiene como pasatiempo pescar medusas?                           |  ?- pasatiempo(R, pescar_medusas). |
