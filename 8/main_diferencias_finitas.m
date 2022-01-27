% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 10/11/2021
%Descripcion; este metodo sirve para hallar los puntos de la respuesta a una ecuacion diferencial 
%desde un intervalo a hasta un intervalo b 






clc
clear all
clf
pkg load symbolic
warning('off','all');

disp("PROBLEMA1\n")
%Un circuito de segundo orden es modelado por la siguiente ecuacion diferecial
%v''-2v'+5=0, se decea sabar cual es el comportamiento del circuito desde el tiempo 
%0 hasta el segundo 1 

syms x y d2_y d_y a b c xi
x0=0;
xf=1;
y0=0;
yf=2;
h=0.2;


f=d2_y-2*d_y+5;

try
  
[y]=diferencias_finitas(x0,y0,xf,yf,h,f)


catch err
fprintf('Error: %s\n',err.message);
end



figure(1)
plot(x0,y0,"o");
hold on
plot(xf,yf,"o");

x=0.2:0.2:0.8;
plot(x,y,"o");

x=-1:0.01:2.3;
[y]=(-0.15652*exp(2*x)/2)+(5/2)*x+0.0782588;
plot(x,y);


disp("PROBLEMA2\n")
%%Tenemos un circuito suavisador de onda modelado por v''-2v'-5=0 
%se requiere saber su comportamiento desde el segundo 2.165 y el segundo 2.79

x0=2.165;
y0=-0.456;
xf=2.799;
yf=-14.053;
h=0.1;

try
  
[y]=diferencias_finitas(x0,y0,xf,yf,h,f)

catch err
fprintf('Error: %s\n',err.message);
end


figure(2)
plot(x0,y0,"o");
hold on
plot(xf,yf,"o");
x=x0+h:h:xf-h;
plot(x,y,"o");
x=2:0.01:3.4;
[y]=(-0.15652*exp(2*x)/2)+(5/2)*x+0.0782588;
plot(x,y);