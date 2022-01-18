% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 09/12/2021
%
% Descripcion: 
% Implementacion del metodo de guass-chebyshev para hallar la aproximada de una integral

syms x
%Dada la funcion y el numero de puntos encuentre la integral mediante el metodo de gauss-chebysehv
funcion = @(x) x^4;
n = 3;
extremo_inferior = -1;
extremo_superior = 1;

try
   [integral_cheby] = g_chebyshev(funcion,n)
   fprintf('Cálculo del error y el valor de la integral real \n')
   funcion_1 = @(x) ((1-x^2)^(-1/2))*funcion;
   integral_real = int(funcion_1,x,-1,1)
   error = ((integral_real-integral_cheby)/integral_real)*100
catch err
  fprintf('Error: %s\n',err.message);
end
