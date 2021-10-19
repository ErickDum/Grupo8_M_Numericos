% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 11/10/2021
%
% Descripcion: 
% Implementacion del metodo de Newton-Raphson para hallar las raices 
% en ecuaciones no lineales.

clear
clc
clf
pkg symbolic load 
syms x y



display("Problema 1\n")
#Problema 1
#En un laboratorio se experimenta con bacterias se requiere 
%conocer en que momento la cantidad de bacterias se reproducen para 
%esto tenemos un modelo matematico que aproxima el crecimiento de las 
%funciones respecti al tiempo

secante(x^3-x^2-2,3,5,10,0.0001)


display("Problema 2\n")
#Problema 2
#Para el adecuado funcionamiento de un cuarto de experimento se requiere 
%saber el momento en que la cantidad de CO2 en la habitacion es 0, 
#para esto se tiene la funcion que modela la cantidad de C02 en la habitacion


secante(x^2-3*x-4,3,1,10,0.0001)


x=[-2:0.3:4];

y=x.^3-x.^2-2;
subplot(2,1,1);

plot(x,y);
title('Problema 1');
grid on

x1=[2:0.5:6];
y1=x.^2-3*x-4;
subplot(2,1,2);
plot(x,y1);
title('Problema 2');
grid on



