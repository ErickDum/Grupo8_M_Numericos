% Linealizacion de relaciones no lineales-regresion_potencia.
% regresion_potencia(x_datos,y_datos)
%       [X_out Y_out f]=regresion_potencia(x_datos,y_datos)
%        f = funcion resultante
%        X_out = lista de log(x)
%        Y_out f =lista de log(y)
%        x_datos = lista de datos para x
%        y_datos = lista de datos para y


function[X_out Y_out f]=regresion_potencia(x_datos,y_datos)
if (size(x_datos)!=size(y_datos))
  error('Tama;o de datos incorrecto')
endif  
X=[];
Y=[];
for j=1:rows(x_datos)
  X(j)=[log10(x_datos(j))];
  Y(j)=[log10(y_datos(j))];
endfor
X_out=X';
Y_out=Y';


X=[X_out,ones(rows(x_datos),1)];
coef=X\Y_out;
alfa=10^coef(2);
beta=coef(1);

syms x f
f=alfa*(x^beta);

endfunction


