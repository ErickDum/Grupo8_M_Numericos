% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 13/1/2022
%
% Descripcion: Encontrar en punto minimo de una funcion 


clc
clear all
clf



disp("Problema 1/n")
%Una empresa esta trabajando en la optimización de sus productos y se necesita 
%encontrar el minimo de la funcion f=3x^2+y^2 

f=@(x,y) 3*x.^2+y.^2

x0=4;
y0=4;

iteraciones=15;
tolerancia=0.005;

try 
  
[X]=Steepest_descent_v2(f,iteraciones,tolerancia,x0,y0)

figure 1
ezcontour(f)

hold on

for i=1:rows(X)
  
  plot(X(i,1),X(i,2),"o")

endfor

figure 2

ezmesh(f)
hold on

for i=1:rows(X)
  
  plot3(X(i,1),X(i,2),0,"o")
  hold on
endfor


catch err
  fprintf("Error: %s\n",e.message)  
end
%


disp("/n Problema 2 /n")
%Para una aplicacion de procesamiento de imagenes se necesita encontrar el 
%minimo de la siguiente funcion f=(x-15)^2+3y^2

f=@(x,y) (x-15).^2 + 3*y.^2

x0=2;
y0=2;

iteraciones=30;
tolerancia=0.005;

try 
  
[X]=Steepest_descent_v2(f,iteraciones,tolerancia,x0,y0)

figure 4

ezcontour(f,[8,20,-6,6])
hold on

for i=1:rows(X)
  
  plot(X(i,1),X(i,2),"o")
  hold on
endfor

figure 5
ezmesh(f)

hold on

for i=1:rows(X)
  
  plot3(X(i,1),X(i,2),0,"o")

endfor

catch err
  fprintf("Error: %s\n",e.message)  
end
