
% Regresion_polinomial
% Regresion_polinomial(x_datos,y_datos,n)
%       [f]=Regresion_polinomial(x_datos,y_datos,n)
%        f = funcion resultante
%        x_datos = lista de datos para x
%        y_datos = lista de datos para y
%        n=grado del polinomio


function [f]=Regresion_polinomial(x_datos,y_datos,n)
if (size(x_datos)!=size(y_datos))
  error('Tama;o de datos incorrecto')
endif 

  A=eye(n+1,n+1);
B=rand(n+1,1);
x=0;


for fila=1:n+1
  
  for colum=1:n+1
    A(fila,colum)=sum(x_datos.^x);
    x=x+1;
  endfor
  x=x-n;  
endfor
A(1,1)=rows(x_datos);
A;
x=0;
for i=1:n+1
  B(i,1)=sum(x_datos.^x.*y_datos);
  x=x+1;
 
endfor
B;

coeficientes=gauss_jordan([A B]);
syms x f 
f=polyout(flip(coeficientes),'x');
