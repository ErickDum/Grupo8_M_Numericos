% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 27/10/2021
%
% Descripcion: 
% Implementacion del metodo de descomposicion LU 
% para resolver sistemas de ecuaciones lineales.

clear, clc

% PROBLEMA 1
% Un circuito se resuelve mediante analisis nodal, a partir de ahi se 
% plantean una matriz de G*V=I

fprintf('Tensiones en nodos \n');

imagen1 = imread('circuito1.png');
imshow(imagen1)

try
a = [3, -2, -1; -4, 7, -1; 2, -3, 1];
b = [12; 0; 0];

[L, U]=lu(a);

y = sustitucion_progresiva(L, b);
x = sustitucion_regresiva(U, y)

catch err
fprintf('Error: %s\n',err.message)
end
