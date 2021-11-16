% Linealizacion de relaciones no lineales-regresion_exponencial.
% regresion_exponencial(x,y)
%       [f]=regresion_exponencial(x,y)
%        f = funcion resultante
%        x = lista de datos para x
%        y = lista de datos para y


function[f]=regresion_exponencial(x,y)
if (size(x)!=size(y))
  error('Tama;o de datos incorrecto')
endif
y=log(y);
X=[x,ones(rows(x),1)];
coef=X\y;
beta=coef(1);
alfa=exp(coef(2));
syms x f
f=alfa*(e^(beta*x));
endfunction