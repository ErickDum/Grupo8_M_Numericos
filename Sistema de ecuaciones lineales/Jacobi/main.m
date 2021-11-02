% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 27/10/2021
%
% Descripcion: 
% Implementacion del metodo de Jacobi 
% para resolver sistemas de ecuaciones lineales.

clear, clc

%PROBLEMA 1

try
A = [4, 0, -2; 0, 2, -1; -2, -1, 7];
b = [-16; 8; 0];

[x, Error, Iteraciones] = jacobi(A, b)
catch err
fprintf('Error: %s\n',err.message)
end

%PROBLEMA 2