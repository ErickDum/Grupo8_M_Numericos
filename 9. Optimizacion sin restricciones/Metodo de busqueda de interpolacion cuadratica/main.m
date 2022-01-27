% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 10/01/2022
%
% Descripcion: 
  % Implementacion del metodo de interpolacion cuadratica para hallar
  % el minimo de una funcion.

clear, clc, clf;

%Problema 1

disp('Problema 1')

try
f = @(x) exp(-2*x) + x.^(2);
x1 = -5;
x3 = 5;

tic;
[x, y, Iteraciones]=quadratic_interpol(f, x1, x3)
toc;

figure(1)
fplot(f, [-1, 1])
hold on
grid on
plot(x, y, 'o')
legend('Funcion', 'Minimo')
xlabel('X')
ylabel('Y')

catch err
  fprintf('Error: %s\n',err.message);
end

fprintf('\n')


%Problema 2

disp('Problema 2')

try
f = @(x) 3*exp(x) - x.^(3) + 4*x;
x1 = -3;
x3 = 3;

tic;
[x, y, Iteraciones]=quadratic_interpol(f, x1, x3)
toc

figure(2)
fplot(f, [-3, 3])
hold on
grid on
plot(x, y, 'o')
legend('Funcion', 'Minimo')
xlabel('X')
ylabel('Y')

catch err
  fprintf('Error: %s\n',err.message);
end
