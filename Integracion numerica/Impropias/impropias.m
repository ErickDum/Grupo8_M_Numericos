% IMPROPIAS caculo de la integral definida de una funcion.
%    [I]=impropias(f, li, lr, h)
%     I = Resultado de la integral
%     f = Funcion a integrar
%     li = Limite infinito, 'i' para infinito positivo e '-i' para infinito negativo
%     lr = Limite real
%     h = Amplitud entre secciones

function [I]=impropias(f, li, lr, h)
    if (li != 'i' | li != '-i')
      error('Error de syntaxis en limite infinito')
    endif
    g = @(x) 1/(x.^2) * f(1/x);
    if (li == '-i')
      a = 1/lr;
      b = 0;
    else
      a = 0;
      b = 1/lr;
    endif
    x = [];
    i = a;
    while (i <= b)
      x = [x [i]];
      i = i+h;
    endwhile
    S = 0;
    for j=1:numel(x)-1
      xi = ((x(j+1)-x(j))/2) + x(j);
      S = S + g(xi);
    endfor
    I = S * h;
end