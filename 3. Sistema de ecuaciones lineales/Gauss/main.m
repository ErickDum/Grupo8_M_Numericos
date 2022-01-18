% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 18/10/2021
%
% Descripcion: 
% Implementacion del metodo de Gauss para resolver un sistema de 
% ecuaciones lineales.

clear, clc


% Problema 1
% Un circuito se resuelve mediante analisis nodal, a partir de ahi se 
% plantean ecuaciones con incognitas voltajes en cada nodo:
% 2v1-v3=-8, 2v2-v3=8, 7v3-v2-2v1=0

fprintf('Tensiones en nodos \n');

figure(1)
imagen1 = imread('circuito1.png');
imshow(imagen1);

try
a = [3, -1; -3, 5];
b = [20;60];

[x] = gauss(a,b)

catch err
fprintf('Error: %s\n',err.message)
end


%Problema 2
% Un circuito se resuelve mediante analisis nodal, a partir de ahi se 
% plantean ecuaciones con incognitas voltajes en cada nodo: 
% 3v1-2v2=4, 2v1-7v2+5v3=4, 2v2-3v3=-16

fprintf('Tensiones en nodos \n');

figure(2)
imagen2 = imread('circuito2.png');
imshow(imagen2);

try
a = [3, -2, -1; -4, 7, -1; 2, -3, 1];
b = [12; 0; 0];

[x] = gauss(a,b)
catch err
fprintf('Error: %s\n',err.message)
end