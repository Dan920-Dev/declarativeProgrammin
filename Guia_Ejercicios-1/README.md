# Hoja de ejercicios #1

1. Escriba las siguientes expresiones aritméticas en forma prefija, evalúelas y pruebe,
en el intérprete de Prolog si se obtienen los resultados correctos:
![EX](/Src/ejercicio_1.PNG)

2. ¿Cuál es el resultado de realizar las consultas siguientes?
* ?- =(+(3, X), C), =(W, X), =(W, 8).
* ?- is(X, max(10, 12)), is(Y, mod(12, 10)), =(W, tan(X + Y)).
* ?- =(g(h(Q)), W), =(Q, sin(0) + cos(0)).

3. Pepito se escapó de su casa y se fue con sus amigos al centro comercial. Estando
allí se da cuenta de que sus papas también han ido de compras. Elabore una base
de conocimiento que le ayude a Pepito a no “encontrarse” con sus papás en ningún
lugar del centro comercial, es decir, la base de conocimiento debe conocer los
locales y decirle a Pepito en qué lugares del centro comercial podrá estar sin ser
visto. En muchas ocasiones su papá y su mamá deciden separarse e ir a locales
distintos para terminar las compras más rápido. Elabore una regla de aridad tres a
la que se le indique por medio de dos argumentos en cuál local está su mamá y en
cuál está su papá. En el tercer argumento de la cláusula se devuelven los locales
en los que Pepito puede estar.

4. Javito, Pepito y Rodri se entretienen mucho jugando juegos de video. Entre los
tres acumulan y comparten montañas de juegos. Un día se le ocurre a Javito ir a
conseguir más juegos al centro comercial. Pero como no van sus amigos, necesita
que usted le programe una base de conocimiento la cual él pueda consultar para
verificar si sus amigos ya cuentan con determinado juego. Elabore la regla
comprar_juego/1, la cual recibe como argumento el nombre del juego que Javito
desea comprar. Este juego debe estar a la venta en la tienda, si ninguno de sus
amigos lo tiene, la cláusula le responde afirmativamente, pero si alguno de sus
amigos, o él, ya lo tienen, la cláusula le responderá negativamente. Además de la
regla que se le pide, la base de conocimiento contará con los hechos: juego/1,
tiene/2. Elabore y haga pruebas de funcionamiento del ejercicio.

5. Elabore la regla se_pueden_casar/2, la cual recibirá como argumentos los nombres
de dos personas y responderá afirmativa o negativamente. La cláusula también
podrá recibir solo uno de los argumentos y responder, con el otro, las posibilidades
que tiene la persona para la que se hace la consulta. Entre las consideraciones a
tomar debe incluirse que ambas sean de sexo distinto, y que tanto ame la primera
a la segunda, como la segunda a la primera. Elabore también otros hechos y
relaciones que considere necesarios.

6. El enemigo de mi enemigo, es mi amigo. La historia de la humanidad está plagada
de guerras. Reyes, presidentes, conquistadores y estrategas de las batallas han
debido conseguir, cuando es necesario, aliados para vencer a su oponente. Elabore
la regla aliado/3 en la que el primer argumento es alguien que quiere vencer a la
persona indicada en el segundo argumento. El tercer argumento es el posible
aliado del primero. La cláusula debe verificar si los primeros dos son enemigos
mutuos y luego verificar si el tercer argumento es enemigo del segundo. Elabore la
relación enemigo/2 para varios individuos y pruebe la regla elaborada.

7. Un restaurante quiere mostrar a sus clientes información nutricional sobre la
comida que ofrece en el menú. Para completar un poco la información que
tenemos sobre las comidas del restaurante vamos a mirar la lista de las calorías
que aporta cada plato:
* Una ración de paella aporta 200 calorías
* na ración de gazpacho aporta 150 calorías
* na ración de consomé aporta 300 calorías
* a ración de filete de cerdo aporta 400 calorías
* a ración de pollo asado aporta 280 calorías
*  ración de trucha aporta 160 calorías
* a ración de bacalao aporta 300 calorías
* a ración de flan aporta 200 calorías
* a ración de nueces con miel aporta 500 calorías
* a ración de naranja aporta 50 calorías

Se le pide definir:
- Defina la relación calorias/2 que indicará que una ración de cada
alimentotiene de los de la lista tiene determinadas calorías.
- La regla valor_calorico(X, Y, Z, V) que indicará que las porciones X, Y y
Z de la comida suma en total V calorías.
- Definir la cláusula comida_equilibrada(X, Y, Z) que indicará si la comida
supera o no las 800 calorías.

## Resolver, por medio de reglas recursivas, los siguientes problemas:

1. El valor de e (base de los logaritmos naturales), se puede aproximar por la
sumatoria que se muestra abajo. Elabore la regla aprox_e/2 que calcule una
aproximación del valor de e para una cantidad, n, determinada de términos. En el
primer argumento se coloca el valor de n y en el segundo se recibe el valor
calculado.

![EX](/Src/ejercicio_1b.PNG)

2. Dado como argumento un número N, elabore una cláusula recursiva que imprima
en pantalla una letra leída desde teclado esa cantidad de veces.

3. Escriba una regla para adivinar un número secreto en el rango de 1 a 100,que
debe ser generado aleatoriamente por el programa. Debe indicar, para cada
intento del usuario, si el número secreto es mayor, si es menor o se ha acertado.
Al final, también desplegar la cantidad de intentos realizados. Investigue el
funcionamiento del predicado predefinido random/1.

4. Resuelva el problema de calcular el máximo común divisor de dos números
enteros aplicando el algoritmo de Euclides, un famoso matemático griego de la
antigüedad. Este consiste en hacer la división entera del mayor de los números
entre el menor. Si el residuo es cero, el mcd está en la variable que contiene al
menor. Pero si el residuo no es cero se realiza el siguiente intercambio: el menor
pasa a ser el nuevo mayor y el residuo pasa a ser el nuevo menor; luego se
repite la división.

5. Conversiones entre distintas bases numéricas. Elabore cláusulas para convertir
número enteros en base diez a surepresentación en:
i. Binario.
ii. Octal.
iii. Hexadecimal.

## Resuelva los siguientes problemas:
1. Dado el conjunto de hechos que se muestra, escriba la regla proxima_etapa/1, a la
que se le pasa un valor de tipo entero. El propósito de esta cláusula es mostrar en
pantalla los nombres de todas las etapas de fabricación faltantes a partir de una
cuyo valor se le ha pasado como parámetro. Nota: los nombres a desplegar los
debe tomar de la base de hechos.
paso(1, medicion).
paso(2, corte).
paso(3, moldeado).
paso(4, pulido).
paso(5, montaje).
paso(6, empacado).
paso(7, almacenaje).
Ejemplos:

![EX](/Src/ejercicio_1c.PNG)


2. En la siguiente figura puede ver cinco eras geológicas de la tierra. A estas eras les
pertenecen un total de quince períodos, por ejemplo, a la era Precámbrica le
pertenecen los períodos Algónquico y Arcaico; a la era Mesozoica le pertenecen los
períodos Jurásico, Cretácico y Triásico; etc. Tanto las eras, como los períodos se
encuentran ordenados cronológicamente, de izquierda a derecha en la figura. En
base a esto, se le pide:

* Elabore una cláusula que, dado un período, indique todos los períodos que
están antes de él.Elabore una cláusula que, dado un período, indique todos los
períodos que están después de él. Para este literal y el anterior utilice
relaciones del tipo le_sigue(<periodo anterior>, <periodo posterior>).
  
* Elabore una cláusula que indique, dada una era geológica, cuales períodos le
pertenecen. Para resolver esta cláusula utilice relaciones le_pertenece(<era>,
<periodo>).
  
![EX](/Src/ejercicio_2c.PNG)
