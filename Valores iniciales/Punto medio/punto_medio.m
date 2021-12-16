% PUNTO_MEDIO resolucion de ecuaciones diferenciales de primer orden de la
% forma dy/dx = F(x,y).
%      [x, y]=punto_medio(f, a, b, x0, y0, h)
%      x = valores de x de la solucion
%      y = valores de y de la solucion
%      f = F(x,y)
%      a = limite izquierdo
%      b = limite derecho
%      x0 = x inicial
%      y0 = y inicial
%      h = tamaño de paso

function [x, y]=punto_medio(f, a, b, x0, y0, h)
  x = [];
  y = [y0];
  i = a;
  % Calculo de x
  while (i <= b) 
    x = [x [i]];
    i = i+h;
  endwhile
  % Calculo de y 
  for j=2:numel(x) 
    yi = y(j-1) + (f(x(j-1) + h/2, y(j-1) + h/2)*h);
    y = [y [yi]];
  endfor
end