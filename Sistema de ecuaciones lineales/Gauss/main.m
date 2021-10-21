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

a = [2, 0, -1; 0, 2, -1; -2, -1, 7];
b = [-8; 8; 0];

[x] = gauss(a,b)


%Problema 2
% Un circuito se resuelve mediante analisis nodal, a partir de ahi se 
% plantean ecuaciones con incognitas voltajes en cada nodo: 
% 3v1-2v2=4, 2v1-7v2+5v3=4, 2v2-3v3=-16

fprintf('Tensiones en nodos \n');

a = [3, -2, 0; 2, -7, 5; 0, 2, -3];
b = [4; 4; -16];

[x] = gauss(a,b)