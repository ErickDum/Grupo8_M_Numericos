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

% Usted trabaja para una compañía que fabrica las esferas flotantes de los    
% inodoros. La esfera flotante tiene una gravedad de específica de 0,6 y 
% tiene un radio de de 5,5 cm. 
% Se le pide que encuentre la profundidad a la que se sumerge la esfera 
% cuando flota en el agua.
% La ecuacion que describe la profundidad en metros a la cual se sumerge la
% bola esta dada por: f(x)=x^3 - 0.165x^2 + 3.993e-4.

disp("Esfera flotante");

f = @(x) 2*x.^(2) - 13*x + 15;
df = @(x) 4*x - 13;

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
toc

[n,m] = size(d);
fprintf('Iteración\txn\t\terror\n');

for i=2:m
  plot(d(1,i), 0 , 'o')
  fprintf('%d\t\t',i-1);
  fprintf('%d\t\t',d(1,i));
  fprintf('%d\t\t\t',d(2,i));
  fprintf('\n');
endfor
%

hold off


% Problema 2
% Suponga el lector que está diseñando un tanque esféricode almacenamiento 
% de agua para un poblado pequeño de un país en desarrollo. El volumen del 
% líquido que puede contener se calcula con V = pi*h^2*(3R-h)/3 .
% Si R = 3m, ¿a qué profundidad debe llenarse el tanque de modo que contenga 
% 30 m3? Haga tres iteraciones del método de Newton-Raphson para determinar 
% la respuesta. Encuentre el error relativo aproximado después de cada iteración. 

disp("Tanque de agua");

g = @(x) (pi*x.^(2)*(9-x))/3 - 30;
dg = @(x) pi*x*(-x+6);

figure(2)
fplot(g,[-5, 5])
legend ("f(x)", 'Interpreter', 'latex');
title('Tanque de agua', 'Interpreter', 'latex')
xlabel('X', 'Interpreter', 'latex')
ylabel('Y', 'Interpreter', 'latex')
grid on
hold on

tic
d = newton(g, dg, 0.5, 3);
toc

[n,m] = size(d);
fprintf('Iteración\txn\terror\n');

for i=2:m
  plot(d(1,i), 0 , 'o')
  fprintf('%d\t',i-1);
  fprintf('%d\t',d(1,i));
  fprintf('%d\t',d(2,i));
  fprintf('\n');
endfor