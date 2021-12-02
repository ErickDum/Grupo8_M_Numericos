function A = trapezoidal(Fun,a,b,N)
% Integracion numerica usando areas trapezoidales. 
% Variables de entrada:
% F: funcion de la que se rpetende hallar el area
% a: limite inferior de integracion
% b: limite superior de integracion
% N: Numero de intervalos para crear los trapecios
% Variables de salida:
% I: Valor de la integral
h = (b-a)/N;
x = a:h:b;
F = Fun(x);

A=h* (F (1) + F (N+ 1)) /2 + h*sum(F (2 :N));