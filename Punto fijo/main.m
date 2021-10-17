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
% Un lanzador de peso puede ser modelado usando la ecuación y = -0.0241x^2+x+5.5,
% donde x es la distancia recorrida (en pies) y 'y' es la altura (en pies).
% ¿Que tan largo es el tiro?

fprintf('Lanzamiento de bala \n');
f_r = @(x) -0.0241*x.^(2) + x +5.5;      %Funcion original f(x)
f = @(x) (x + 5.5)/(0.0241*x);           %Funcion despejada x = g(x)

[d, msg] = punto_fijo(f, 5);


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

disp(msg)
hold off;


% PROBLEMA 2
% Se describe un corriente que oscila en un corcuito electrico, descrita por
% I = 9*e^(-t)*sin(2*pi*t), donde t esta en segundos.
% Encontrar t cuando I = 3.5. 
% Obtenido de: Applied Numerical Methods Steven C. Chapra 6.18

fprintf('Corrinte electrica\n');
g_r = @(x) 9*exp(-x)*sin(2*pi*x);       %Funcion original f(x)
g = @(x) -log(3.5/(18*pi*x));           %Funcion despejada x = g(x)

[d, msg] = punto_fijo(g, -3, 10);

figure(2)
fplot(g_r,[-10, 10])
legend ("f(x)", 'Interpreter', 'latex');
title('Corrinte electrica', 'Interpreter', 'latex')
xlabel('t', 'Interpreter', 'latex')
ylabel('I', 'Interpreter', 'latex')
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
disp(msg)