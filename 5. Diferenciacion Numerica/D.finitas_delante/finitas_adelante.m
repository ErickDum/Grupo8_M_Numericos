% [d1, d2] = finitas_adelante(f, x)
% ENTRADAS:
% f = funcion a derivar
% x = vector de variable independiente
% SALIDAS:
% d1 = matriz con puntos en x e y de la primera derivada
% d2 = matriz con puntos en x e y de la segunda derivada

function [d1, d2] = finitas_adelante(f, x)
  n = numel(x);
  if (n==1)
    error('El vector con valores independientes debe contener mas de un valor')
  endif
  d1 = zeros(2, n-2);
  d2 = zeros(2, n-3);
  h = (x(n)-x(1)+1)/n;
  for i=3:n
    d1(1, i-2) = x(i);
    d1(2, i-2) = (-3*f(x(i)) + 4*f(x(i-1)) - f(x(i-2)))/2*h;
  endfor
  for i=4:n
    d2(1,i-3) = x(i);
    d2(2,i-3) = (-2*f(x(i)) + 5*f(x(i-1)) - 4*f(x(i-2)) + f(x(i-3)))/h^2;
  endfor
end