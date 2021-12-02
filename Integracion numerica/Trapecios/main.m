% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 02/12/2021
%
% Descripcion: 
% Implementacion del metodo de areas trapezoidales para hallar un area aproximada de una funcion

clear, clc;

% Problema 1:
% La velocidad de un coche viene dada por la funcion f(x)= 5x^2-2x+3 calcule la distancia
% que recorrio entre las 2 y 3 horas de viaje

Fun = @(x) 5*(x).^(2)-2*x+3;
disp("Problema 1")
Distancia = trapezoidal(Fun,2,3,5)

%Problema 2 
% La corriente en un circuito electrico esta dada por 3x^2+3
% Determine la cantidad de carga entre los intervalos 5 y 6 

Fun2 = @(x) 3*(x).^(2)+3;
disp("Problema2 2")
Carga = trapezoidal(Fun2,5,6,5)