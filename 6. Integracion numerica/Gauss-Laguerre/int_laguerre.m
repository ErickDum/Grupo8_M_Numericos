function [integral_laguerre] = int_laguerre(funcion,n)
% Metodo de gauss-laguerre para hallar la integral aproximada de una funcion
% Parametros de entrada:
% funcion: Funcion de la cual se quiere hallar la integral
% n: numero de abscisas
% Parametros de salida:
% integral_laguerre: Integral aproximada usando el metodo de gauss-laguerre
[ceros,pesos]=zeros_laguerre(n) 
tam = size(ceros,1);    
integral_laguerre = 0;   
for i=1:tam,
  x = pesos(i);
  integral_laguerre = integral_laguerre + ceros(i)*funcion(pesos(i));
end;

