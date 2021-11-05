% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 01/11/2021
%
% Descripcion: 
% Implementacion del metodo de Gauss-Seidel 
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
A = [1, 0, 0, 0; 1, 1, -1, 0; 0, 1000, 3000, -2000; 0, 1000, 1000, -2000];
b = [0.004; 0; 8; 12];

[I, Error, Iteraciones] = gauss_seidel(A, b)
catch err
fprintf('Error: %s\n',err.message)
end

fprintf('\n')
%PROBLEMA 2
% Un circuito se resuelve mediante analisis de mallas, a partir de ahi se 
% plantean una matriz de R*I=V

fprintf('Corrientes en mallas \n');

figure(2)
imagen2 = imread('circuito2.png');
imshow(imagen2)

try
A = [3, -1, 0, -1, 0, 0; 
-1, 2, 0, 0, -1, 0;
0, 0, 1, 0, -2, 2;
-3, 0, 0, 1, 0, 0;
2, -1, 0, 0, 2, -1; 
0, 0, 0, 0, -3, 5];

b = [0; 0.006; 0; 0.012; 0; 0];

[I, Error, Iteraciones] = gauss_seidel(A, b)
catch err
fprintf('Error: %s\n',err.message)
end