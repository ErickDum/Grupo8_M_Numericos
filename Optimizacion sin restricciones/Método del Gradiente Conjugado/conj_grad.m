% GRADIENTE CONJUGADO resolucion de sistemas lineales.
% [x, i] = conj_grad(A,b,x0)
%     x = vector con las soluciones del sistema
%     i = numero de iteraciones finales
%     A = matriz de coeficientes
%     b = matriz de terminos independientes
%     x0 = matriz con valores iniciales

function [x, i] = conj_grad(A,b,x0)
  x = x0;
  r = b - A*x; %Residuo
  d = r'*r;
  tol = sqrt(eps)*norm(b); %Tolerancia mediante norma euclidiana
  i = 0;
  while sqrt(d) > tol
    v = A*r;
    alpha = d/(r'*v);
    x = x + alpha*r;
    r = r - alpha*v;
    d = r'*r;
    i = i + 1;
  endwhile
endfunction
