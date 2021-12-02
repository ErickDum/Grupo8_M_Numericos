% SIMPSON_3_8 caculo de la integral definida de una funcion.
%    [I, ea] = simpson_3_8(f, a, b)
%     I = Integral calculada
%     ea = error estimado
%     f = funcion a integrar
%     a = limite inferior de la integral
%     b = limite superior de la integral

function [I, ea] = simpson_3_8(f, a, b)
  if (a>b)
    error('Limites incorrectos')
  endif
  h = (b-a)/3;
  x = [];
  i = a;
  while (i <= b)
    x = [x [i]];
    i = i+h;
  endwhile
  I = (b-a)*((f(x(1)) + 3*f(x(2)) + 3*f(x(3)) + f(x(4)))/8);
  dx4 = diff(f(a:0.001:b), 4)/0.001^4;
  ea = -((b-a).^5/(6480))*mean(dx4);
end
