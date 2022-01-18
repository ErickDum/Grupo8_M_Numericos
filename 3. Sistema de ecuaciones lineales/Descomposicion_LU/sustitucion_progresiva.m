% SUSTITUCION PROGRESIVA solucion de matrices triangulares inferiores.
% SUSTITUCION_PROGRESIVA(A,B)
%        [x]=sustitucion_progresiva(a, b)
%         x = matriz de soluciones
%         a = matriz triangular inferior de coeficientes de variables
%         b = matriz de terminos independientes

function [x]=sustitucion_progresiva(a, b)
   n = length(b);
   x = zeros(n,1);
   for i=1:n
     x(i)=b(i)/a(i,i);
     for j=i+1:n
       b(j)=b(j)-x(i)*a(j,i);
     endfor
   endfor
endfunction