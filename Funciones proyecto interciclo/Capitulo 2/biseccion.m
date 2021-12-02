% BISECCION  Raices de ecuaciones (didáctica).
% BISECCION(F, DF, X0, N_1, TOL)
%    [DATOS] = BISECCION(F, DF, X0, N_1, TOL)
%     datos = matriz de resultados 
%     f = funcion a tratar
%     xa = limite izquierdo
%     xb = limite derecho
%     n_i = numero de iteraciones
%     tol = tolerancia

function [datos]=biseccion(f, xa, xb, n_i=100, tol=0.001)
  datos = zeros(2,1);
  error = 100;
  xr = 0;
  i = 0;
  while (i < n_i)
    ea = xr; 
    xr = (xa + xb)/2;
    if (f(xa)*f(xr) > 0)
      xa = xr;
    else
      xb = xr;
    endif
    error = abs(((ea-xr)/xr)*100);
    datos = [datos [xr; error]];
    if (error < tol)
       i = n_i -1;
     endif
    i++;
  endwhile
end

