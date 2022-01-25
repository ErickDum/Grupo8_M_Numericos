% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 14/01/2022  
%
% Descripcion:
% Implementacion del metodo de newton para encontrar el maximo y minimo
% de una funcion en un intervalo seleccionado

clear all,clc, close all
syms x
%Ejemplo 1
f1 = x^2 -4*x +3;
x0 = -3;
tol = 0.0001;
try
fprintf("EJEMPLO 1:\n")
opt_newt(f1,x0,tol)   
catch e
fprintf("Error: %s\n",e.message)
end

figure(1)
x= -1:0.1:5;
y=x.^2-4*x+3;
plot(x,y)
hold on

%Ejemplo 2
f1 = (x-2).*(x+5);
x0 = 0;
tol = 0.01;
try
fprintf("EJEMPLO 2:\n")
opt_newt(f1,x0,tol)   
catch e
fprintf("Error: %s\n",e.message)
end

figure(2)
x= -4:0.1:2;
y=(x-2).*(x+5);
plot(x,y)
hold on