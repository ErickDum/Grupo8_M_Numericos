% [d error] = d_centradas (pasos, punto)
% ENTRADAS:
% pasos=h
% x = punto en el que se quiere evaluar
% SALIDAS:
% d = derivada
% error = error de calculo

function [d error]=d_centradas(pasos,punto)

syms f(x) real(x)


if (pasos==0)
  error('h no puede ser 0')
endif 



f=x.^3-x.^2-2;
f(x)=f;


real(x)=diff(f(x),x);

x=punto;
h=pasos;




d=(f(x+h)-f(x-h))/(2*h);
real(x);
error=abs((real(x)-d)/real(x));
