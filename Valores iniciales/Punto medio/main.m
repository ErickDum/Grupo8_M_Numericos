% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 12/12/2021
%
% Descripcion: 
% Implementacion del metodo de punto medio para resolucion de ecuaciones 
% diferenciales de la forma dy/dx = F(x,y) y comparacion de graficas.

clear, clc, clf

% Problema 1

f = @(x, y) -2*x.^3 + 12*x.^2 -20*x + 8.5;
a = 0;
b = 4;
h = 0.25;

tic;
[x, y] = punto_medio(f, a, b, 0, 1, h);
toc

t = 0:0.1:4;
g = -0.5*t.^4 + 4*t.^3 -10*t.^2 + 8.5*t + 1;
figure(1)
plot(t, g)
hold on 
grid on
plot(x, y)
legend('Original', 'Punto medio')

