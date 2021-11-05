% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 01/11/2021
%
% Descripcion: 
% Implementacion del metodo de Jacobi 
% para resolver sistemas de ecuaciones lineales.

clear, clc

%PROBLEMA 1
% Un circuito se resuelve mediante analisis de mallas, a partir de ahi se 
% plantean una matriz de R*I=V

fprintf('Corrientes en mallas \n');

figure(1)
imagen1 = imread('circuito1.png');
imshow(imagen1)

try
A = [-2000, 2000; -6000, 8000];
b = [0; 3];

[I, Error, Iteraciones] = jacobi(A, b)
catch err
fprintf('Error: %s\n',err.message)
end

%PROBLEMA 2
% Un circuito se resuelve mediante analisis de mallas, a partir de ahi se 
% plantean una matriz de R*I=V

fprintf('Corrientes en mallas \n');

figure(2)
imagen2 = imread('circuito2.png');
imshow(imagen2)

try
A = [-1, 2, 0; 0, 1, 0; -2000, 0, 8000];
b = [0; 0.002; 3];

[I, Error, Iteraciones] = jacobi(A, b)
catch err
fprintf('Error: %s\n',err.message)
end