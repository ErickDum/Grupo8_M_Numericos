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

fprintf('Lanzamiento de bala \n');
f_r = @(x) -0.0241*x.^(2) + x +5.5;      %Funcion original f(x)
f = @(x) (x + 5.5)/(0.0241*x);           %Funcion despejada x = g(x)


try
tic;
[d, i, n_i] = punto_fijo(f, 5);
Tiempo_de_ejecucion = toc

catch err
fprintf('Error: %s\n',err.message);
end

figure(1)
fplot(f_r,[-5, 50])
legend ("f(x)", 'Interpreter', 'latex');
title('Lanzamiento de bala', 'Interpreter', 'latex')
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

hold off;

