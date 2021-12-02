% REGULA_FALSI  Raices de ecuaciones (didáctica).
% REGULA_FALSI(F, DF, X0, N_1, TOL)
%    [DATOS] = BISECCION(F, DF, X0, N_1, TOL)
%     datos = matriz de resultados 
%     f = funcion a tratar
%     x1 = limite izquierdo
%     x2 = limite derecho
%     n_i = numero de iteraciones
%     tol = tolerancia


function [datos]=regula_falsi(f, x1, x2, n_i = 100, tol = 0.001)
   datos = zeros(2,1);
   i = 0; 
   while (i < n_i)
     xn = (x1*f(x2) - x2*f(x1))/(f(x2) - f(x1));
     error = abs(f(xn));
     datos = [datos [xn; error]];
     if (error < tol)
       i = n_i -1;
     endif
     if (f(x1)*f(xn)<0)
       x2 = xn;
     elseif (f(x2)*f(xn)<0)
       x1 = xn;
     endif
     i ++;
   endwhile
 endfunction
 