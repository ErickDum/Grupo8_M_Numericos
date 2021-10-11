% NEWTON RAPSON  Raices de ecuaciones (didáctica).
% NEWTON(F, DF, X0, N_1, TOL)
%    [DATOS] = NEWTON(F, DF, X0, N_1, TOL)
%     datos = matriz de resultados 
%     f = funcion a tratar
%     df = derivada de la funcion a tratar
%     x0 = punto inicial del cual parten las interaciones
%     n_i = numero de iteraciones
%     tol = tolerancia

function [datos]=newton(f, df, x0, n_i = 100, tol = 0.001)
   datos = zeros(3,1);
   if (df(x0)==0)
     error('No es posible hallar la raiz')
   endif
   i = 0; 
   while (i < n_i)
     x1 = x0 - (f(x0)/df(x0));
     error = abs((x1-x0)/x1)*1000;
     error = round(error)/1000;
     datos = [datos [i; x1; error]];
     if (error < tol)
       i = n_i -1;
     endif
     x0 = x1;
     i ++;
   endwhile
 endfunction