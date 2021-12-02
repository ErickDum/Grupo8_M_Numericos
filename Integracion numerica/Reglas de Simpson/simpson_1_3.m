% SIMPSON_1_3 caculo de la integral definida de una funcion.
%    [I, ea] = simpson_1_3(f, a, b)
%     I = Integral calculada
%     ea = error estimado
%     f = funcion a integrar
%     a = limite inferior de la integral
%     b = limite superior de la integral
%     n = numero de segmentos 

function [I, ea]=simpson_1_3(f, a, b, n)
  if (a>b)
    error('Limites incorrectos')
  endif
  h = (b-a)/n;
  x = [];
  i = a;
  while (i <= b)
    x = [x [i]];
    i = i+h;
  endwhile
  S4 = 0;
  S2 = 0;
  for j=2:numel(x)-1
    if (rem(j, 2)==0)
      S4 = S4 + f(x(j));
    else
      S2 = S2 + f(x(j));
    endif
  endfor
  I = (b-a)*((f(x(1)) + 4*S4 + 2*S2 + f(x(numel(x))))/(3*n));
  dx4 = diff(f(a:0.001:b), 4)/0.001^4;
  ea = -((b-a).^5/(180*n.^4))*mean(dx4);
end
