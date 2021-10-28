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

figure(1)
imagen1 = imread('circuito1.png');
imshow(imagen1)

try
a = [4, 0, -2; 0, 2, -1; -2, -1, 7];
b = [-16; 8; 0];

[L, U]=lu(a);

y = sustitucion_progresiva(L, b);
V = sustitucion_regresiva(U, y)

catch err
fprintf('Error: %s\n',err.message)
end


% PROBLEMA 2
% Un circuito se resuelve mediante analisis de mallas, a partir de ahi se 
% plantean una matriz de G*V=I

fprintf('Tensiones en nodos \n');

figure(2)
imagen1 = imread('circuito2.png');
imshow(imagen1)

try
a = [11, -5, -6; -5, 19, -2; -1, -1, 2];
b = [12; 0; 0];

[L, U]=lu(a);

y = sustitucion_progresiva(L, b);
I = sustitucion_regresiva(U, y)

catch err
fprintf('Error: %s\n',err.message)
end
