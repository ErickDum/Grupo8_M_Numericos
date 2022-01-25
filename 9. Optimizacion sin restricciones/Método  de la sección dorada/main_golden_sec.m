% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 07/01/2022  
%
% Descripcion:
% Implementacion de la seccion dorada para encontrar el maximo y minimo
% de una funcion en un intervalo seleccionado
clear all,clc, close all 

%EJEMPLO 1
f=inline('x^2-4*x+3'); 
a=-1;
b=5;  
iter=50;
error=0.000001; 
try
fprintf("EJEMPLO 1:\n")
golden_sec(f,a,b,iter,error,1)    
catch e
fprintf("Error: %s\n",e.message)
end
%Grafica 1
figure(1)
x= a:0.1:b;
y=x.^2-4*x+3;
plot(x,y)
hold on


%EJEMPLO 2
f=inline('(x-2)*(x+5)');
a=-4;
b=2;  
iter=50;
error=0.01; 
try
fprintf("EJEMPLO 2:\n")
golden_sec(f,a,b,iter,error,2)    
catch e
fprintf("Error: %s\n",e.message)
end
%Grafica 2
figure(2)
x= a:0.1:b;
y=(x-2).*(x+5);
plot(x,y)
hold on





