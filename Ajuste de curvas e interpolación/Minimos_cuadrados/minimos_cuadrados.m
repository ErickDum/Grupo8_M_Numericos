% MINIMOS CUADRADOS regresion lineal (didáctica).
% MINIMOS_CUADRADOS(X, Y)
%       [Sr, a0, a1]=minimos_cuadrados(x, y)
%        Sr = suma de los cuadrados de los residuos
%        a0 = parametro para econtrar la aproximacion lineal
%        a1 = parametro para econtrar la aproximacion lineal
%        x = vector de filas con los valores de x
%        y = vector de columnas con los valores de y

function [Sr, a0, a1]=minimos_cuadrados(x, y)
  if (numel(x)!=numel(y))
    error('Matrices de tamaños incorrectos')
  endif
  n = numel(x);
  ym = sum(y)/n;
  xm = sum(x)/n;
  a1 = (n*(x*y)-sum(x)*sum(y))/(n*sum(x.^2)-sum(x).^2);
  a0 = ym - a1*xm;
  Sr = 0;
  for i=1:n
    Sr = Sr + (y(i)-a0-a1*x(i)).^2;
  endfor
end
