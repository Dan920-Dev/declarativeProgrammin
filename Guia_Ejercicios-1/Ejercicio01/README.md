   a) 
   
   
   ~~~prolog
   =(X, +( *( 8  , /( 8 , **(4,2)  ) )  , 6 )).   Resultado: X = 8*(8/4**2)+6.
   
   is(X, +( *( 8  , /( 8 , **(4,2)  ) )  , 6 )).  Resultado: X = 10.0.
   ~~~
   
   b) 
   
   ~~~prolog
   is(Y, +(sin(30), /(**(2,3), sqrt(+(**(9,2), 10 ))) )).  Resultado: Y = -0.14940375471532719.
   ~~~
   
   c)
   
   ~~~prolog
   is(Z, +(sin(6.45), /(**(2,3), sqrt(+(**(9,2), 10 ))) )). Resultado: Z = 1.004669975242492.
   ~~~
   
   d) 
   
   ~~~prolog
   is(P, /(*(-(/(25,5),log(1)),sin(2.8)), sqrt( **(5,2)))). Resultado: P = 0.3349881501559051.
   ~~~
   
   e) 
   
   ~~~prolog
   is(W,  -(   /(  -( *(4 ,  tan(25) )  , 3)  ,  sqrt(  -(   /( 9, 2)  , sin(15 ) )  )  )    ,  *(  10 , log10(43)  ))). 
   Resultado: W = -18.135898897356206.
   
   =(W,  -(   /(  -( *(4 ,  tan(25) )  , 3)  ,  sqrt(  -(   /( 9, 2)  , sin(15 ) )  )  )    ,  *(  10 , log10(43)  ))).
   Resultado: W =  (4*tan(25)-3)/sqrt(9/2-sin(15))-10*log10(43).
   ~~~
   
   
