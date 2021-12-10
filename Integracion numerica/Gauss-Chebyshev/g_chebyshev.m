function [integral_cheby] = g_chebyshev(funcion,n)
    format long;
% Metodo de gauss-chebyshev para hallar la integral aproximada de una funcion
% Parametros de entrada:
% funcion: funcion de la que se planea hallar la integral
% n: Numero de puntos
% Parametros de salida:
% integral_cheby: Valor aproximado de la integral por el metodo de gauss-chebyshev
    
if n<0 || n>6
  error('Error: número de puntos (n) incorrecto')
endif
Ai = pi/(n+1);
suma = 0;
     
for i = 0:n
xi = cos(((2*i+1)*pi)/(2*n+2));
suma = suma + funcion(xi);
endfor
integral_cheby = Ai * suma;
     
endfunction