% INTERPOLACION CUADRATICA Minimos de una funcion (didáctica).
% [x, y]=quadratic_interpol(f, x1, x3, tol=0.001, iter=100)
%     x = valor de x donde esta el minimo
%     y = valor de y donde esta el minimo
%     k = numero de iteraciones
%     f = funcion a evaluar
%     x1 = limite derecho
%     x3 = limite izquiero
%     tol = tolerancia
%     iter = numero de iteraciones maximo

function [x, y, k]=quadratic_interpol(f, x1, x3, tol=0.001, iter=100)
  if x1 > x3
    error('Limites incorrectos, x1 debe ser menor a x3.')
  endif
  x2 = (x1 + x3)/2;
  f1 = f(x1);
  f2 = f(x2);
  f3 = f(x3);
  x0 = 10^99;
  
  for k=0:iter
    x = ((x2^2-x3^2)*f1 + (x3^2-x1^2)*f2 + (x1^2-x2^2)*f3)/(2*((x2-x3)*f1 + (x3-x1)*f2 + (x1-x2)*f3));
    y = f(x);
    %Reducir espacio entre x1 y x3
    if (x1 < x && x < x2) 
      if y <= f2
        x3 = x2; f3 = f2;
        x2 = x; f2 = y;
      else
        if y > f2
          x1 = x; f1 = y;
        endif
      endif
    endif
    
    if (x2 < x && x < x3)
      if y <= f2
        x1 = x2; f1 = f2;
        x2 = x; f2 = y;
      else
        if y > f2
          x3 = x; f3 = y;
        endif
      endif
    endif
    if (abs(x - x0) < tol)
      break
    endif
    x0 = x;
  endfor
end
