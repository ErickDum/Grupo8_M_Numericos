% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 13/10/2021
%
% Descripcion: 
% Implementacion del metodo de punto fijo para hallar raices 
% de ecuaciones no lineales.

clear, clc

% PROBLEMA 1

fprintf('Problema 1 \n');
f_r = f = @(x) e.^(-x) - x; %Funcion original f(x)
f = @(x) e.^(-x);           %Funcion despejada x = g(x)

d = punto_fijo(f, 5, 5);

figure(1)
fplot(f_r,[-10, 10])
legend ("f(x)", 'Interpreter', 'latex');
title('PROBLEMA 1', 'Interpreter', 'latex')
xlabel('X', 'Interpreter', 'latex')
ylabel('Y', 'Interpreter', 'latex')
grid on
hold on

pause(1);
[n, m] = size(d);
fprintf('Iteración\t xn\t\t error\n');
for i=2:m
  plot(d(1,i), 0 , 'o')
  pause(0.5);
  fprintf('%.0f\t\t', i-1)
  fprintf('%.4f\t\t', d(1,i))
  fprintf('%.4f\t\t', d(2,i))
  fprintf('\n');
endfor

hold off


%PROBLEMA 2


fprintf('Problema 2 \n');
g_r = f = @(x) cos(x) - x; %Funcion original f(x)
g = @(x) cos(x);           %Funcion despejada x = g(x)

d = punto_fijo(g, 5, 10);

figure(2)
fplot(g_r,[-10, 10])
legend ("f(x)", 'Interpreter', 'latex');
title('PROBLEMA 2', 'Interpreter', 'latex')
xlabel('X', 'Interpreter', 'latex')
ylabel('Y', 'Interpreter', 'latex')
grid on
hold on

pause(1);
[n, m] = size(d);
fprintf('Iteración\t xn\t\t error\n');
for i=2:m
  plot(d(1,i), 0 , 'o')
  pause(0.5);
  fprintf('%.0f\t\t', i-1)
  fprintf('%.4f\t\t', d(1,i))
  fprintf('%.4f\t\t', d(2,i))
  fprintf('\n');
endfor