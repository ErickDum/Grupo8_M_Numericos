% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 11/10/2021
%
% Descripcion: 
% Implementacion del metodo de Newton-Raphson para hallar las raices 
% en ecuaciones no lineales.

clear, clc, clf;


% Problema 1:


disp("");

f = @(x) x.^(3) - 0.165*x.^(2) + 0.0003993;
df = @(x) 3*x.^(2) - 0.33*x;

figure(1)
fplot(f,[-5, 5])
legend ("f(x)", 'Interpreter', 'latex');
title('Profundidad de bola de inodoro', 'Interpreter', 'latex')
xlabel('X', 'Interpreter', 'latex')
ylabel('Y', 'Interpreter', 'latex')
grid on
hold on

tic;

d = newton(f, df, 0.05, 100);

Tiempo_de_ejecucion = toc

[n,m] = size(d);
fprintf('Iteración\txn\terror\n');

for i=2:m
  plot(d(1,i), 0 , 'o')
  fprintf('%d\t',i-1);
  fprintf('%d\t',d(1,i));
  fprintf('%d\t',d(2,i));
  fprintf('\n');
endfor

hold off
