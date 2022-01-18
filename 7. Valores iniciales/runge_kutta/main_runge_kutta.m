clc
clear all


% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 10/11/2021
%Descripcion: runge_kutta es un metodo que ayuda a resolver ecuaciones diferenciales que no se
%pueden resolver de manera analitica 


display("\n Problema 1\n")
display("\n Para el dise'o de un juguete a control remoto se tiene  la velocidad del juguete, respecto al tiempo ahora se quiere saber la trayectoria que se debe tener juguete y la posicion en x=1.6 \n")

try

df=@(x,y) x*sqrt(y)
#1 calculamos el numero de iteraciones
x=1;
y=4;

xob=1.6
h=0.2;

orden=2;


y=runge_kutta(df,x,y,xob,h,orden)


catch err
fprintf('Error: %s\n',err.message);
end
%


display("\n Problema 2\n")
display("\n Se tiene el registro de la velocidad de un juguete coete a por el tiempo se requiere saber la pocicion del coche despues de 1.2metros\n")

try
df=@(x,y) e^(x+y)
x=1;
y=0;

h=0.1;
xob=1.2;

orden=3


y= runge_kutta(df,x,y,xob,h,orden)


catch err
fprintf('Error: %s\n',err.message);
end