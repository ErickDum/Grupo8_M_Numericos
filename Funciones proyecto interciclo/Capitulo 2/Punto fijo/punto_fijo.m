% PUNTO FIJO Raices de ecuaciones (didáctica).
% PUNTO_FIJO(F,X0,N_I,TOL)
%    [datos]=punto_fijo(f, x0, n_i, tol)
%     datos = matriz de resultados
%     x0 = punto inicial para iniciar las iteraciones
%     n_i = numero de iteraciones 
%     tol = tolerancia

function [datos, i, n_i]=punto_fijo(f, x0, n_i = 100, tol = 0.001)
  datos = zeros(2,1);
  i = 0;
  while i < n_i
    x1 = f(x0);
    ea = abs((x1-x0)/x1)*10000;
    ea = round(ea)/10000;
    datos = [datos [x1; ea]];
    x0 = x1;
    i ++;
    if (ea < tol)
      break;
    endif
  endwhile
endfunction