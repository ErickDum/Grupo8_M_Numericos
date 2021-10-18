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
% Empezó a caer nieve al mediodía de un domingo. La cantidad de nieve 
% en el suelo en cierto lugar en el tiempo t está dada por la función
% h(t) = 11.6*t - 12.41*t^2 + 6.2*t^3 - 1.58*t^4 + 0.2*t^5 - 0.01*t^6
% ¿En que dia desaparecio la nieve completamente?


fprintf('Altura de nieve\n');
g_r = @(x) 11.6*x - 12.41*x.^(2) + 6.2*x.^(3) - 1.58*x.^(4) + 0.2*x.^(5) - 0.01*x.^(6); %Funcion original f(x)
g = @(x) (11.6*x + 6.2*x.^(3) - 1.58*x.^(4) + 0.2*x.^(5) - 0.01*x.^(6))/(12.41*x);     %Funcion despejada x = g(x)

[d, msg] = punto_fijo(g, 5);

figure(2)
fplot(g_r,[0, 15])
legend ("f(x)", 'Interpreter', 'latex');
title('Altura de nieve')
xlabel('t (dias)')
ylabel('h (in)')
grid on
hold on

pause(1);
[n, m] = size(d);
fprintf('Iteración\t xn\t\t error\n');
for i=2:m
  plot(d(1,i), 0 , 'o')
  pause(0.1);
  fprintf('%.0f\t\t', i-1)
  fprintf('%.4f\t\t', d(1,i))
  fprintf('%.4f\t\t', d(2,i))
  fprintf('\n');
endfor
disp(msg)