   a) 
   
   ~~~prolog
   =(+(3, X), C), =(W, X), =(W, 8)  Resultado: X = W, W = 8, C = 3+8.
   ~~~
   
   b) 
   
   ~~~prolog
   is(X, max(10, 12)), is(Y, mod(12, 10)), =(W, tan(X + Y)).
   Resultado: X = 12, Y = 2, W = tan(12+2).
   ~~~
   
   c) 
   
   ~~~prolog
   =(g(h(Q)), W), =(Q, sin(0) + cos(0)).
   Resultado: Q = sin(0)+cos(0), W = g(h(sin(0)+cos(0))).
   ~~~
   
  
   
   
