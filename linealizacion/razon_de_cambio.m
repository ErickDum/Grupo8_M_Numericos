% Linealizacion de relaciones no lineales-Razon de cambio.
% razon_de_cambio(x, y)
%       [f]=razon_de_cambio(x, y)
%        f = funcion resultante
%        x = lista de datos para x
%        y = lista de datos para y


function[f]=razon_de_cambio(x,y)
if (size(x)!=size(y))
  error('Tama;o de datos incorrecto')
endif

x=[x,ones(rows(x),1)];
coef=x\y;

syms x f
f=(coef(1)*x)+coef(2);


endfunction
