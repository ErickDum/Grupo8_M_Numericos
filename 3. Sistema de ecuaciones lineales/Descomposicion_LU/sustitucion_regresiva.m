% SUSTITUCION REGRESIVA solucion de matrices triangulares superiores.
% SUSTITUCION_REGRESIVA(A,B)
%      [x]=sustitucion_regresiva(a, b)
%       x = matriz de soluciones 
%       a = matriz triangular superior de coeficientes de variables
%       b = matriz de terminos independientes

function [x]=sustitucion_regresiva(a, b)
   n = length(b);
   x = zeros(n,1);
   for i=n:-1:1
     x(i) = b(i)/a(i,i);
     for j=1:i-1
       b(j) = b(j) - x(i)*a(j,i);
     endfor
   endfor
endfunction