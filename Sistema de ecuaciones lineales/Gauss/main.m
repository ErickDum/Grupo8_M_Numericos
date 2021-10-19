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


%Problema 1

a = [1, -1, 0, 3; 2, 1, -1, 1; 3, -1, -1, 2; -1, 2, 3, -1];
b = [0;1;-3;4];

[at, bt] = gauss(a,b);

n = length(b);
x = zeros(n,1);

for i=n:-1:1
  x(i)= bt(i)/at(i,i);
  for j=1:i-1
    bt(j) = bt(j)- x(i)*at(j,i);
  endfor
endfor

x