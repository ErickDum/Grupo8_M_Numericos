% HEUN resolucion de ecuaciones diferenciales de primer orden de la
% forma dy/dx = F(x,y).
%      [x, y]=heun(f, a, b, x0, y0, h, tol)
%      x = valores de x de la solucion
%      y = valores de y de la solucion
%      f = F(x,y)
%      a = limite izquierdo
%      b = limite derecho
%      x0 = x inicial
%      y0 = y inicial
%      h = tamaño de paso
%      tol = toleracia

function [x, y]=heun(f, a, b, x0, y0, h, tol)
  if (a > b)
    error ('Error de limites')
  endif
  if (x0 != 0)
    error ('El problema debe ser de valor inicial')
  endif
  x = [x0];
  y = [y0];
  y_p = [y0+h*f(x0, y0)];
  for i=2:((b-a)/h)+1
    xi = x(i-1) + h;
    yi_i = y(i-1) + (f(x(i-1), y(i-1)) + f(xi, y_p(i-1)))*h/2; %Primera correccion
    ea = 100;
    %Iteraciones del corrector
    while (ea > tol) 
      yi_i2 = y(i-1) + (f(x(i-1), y(i-1)) + f(xi, yi_i))*h/2;
      ea = abs((yi_i2-yi_i)/yi_i2)*100;
      yi_i = yi_i2;
    endwhile
    y_pi = yi_i + h*(f(xi, yi_i)); % Y prima
    x = [x [xi]];
    y = [y [yi_i]];
    y_p = [y_p [y_pi]];
  endfor
end