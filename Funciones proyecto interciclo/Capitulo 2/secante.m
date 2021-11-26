% SECANTE  Raices de ecuaciones (didáctica).
% SECANTE(F, DF, X0, N_1, TOL)
%    [DATOS] = SECANTE(F, DF, X0, N_1, TOL)
%     datos = matriz de resultados 
%     f = funcion a tratar
%     x1 = 
%     x2 = 
%     n_i = numero de iteraciones
%     tol = tolerancia

function [datos]=secante(f, x1, x2, n_i=100, tol=0.001)
  datos = zeros(2,1);
  ea = 100;
  i = 0;
  while (i < n_i)
    xi=x2-(f(x2)*(x1-x2))/(f(x1)-f(x2));
    ea=abs(((xi-x2)/xi)*100);
    datos = [datos [xi; ea]];
    if (ea < tol)
      i = n_i -1;
    endif
    x1=x2;
    x2=xi;
    i=i+1;
  endwhile
end
