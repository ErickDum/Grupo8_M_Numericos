% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 08/11/2021
%
% Descripcion: 
% Implementacion del metodo ajuste por minimos cuadrados para
% una regresion lineal.

clear, clc

% Problema 1:
% La directora de salubridad de Chapel Hill esta interesada en saber
% la relacion que existe entre la antiguedad  de un camion de basura
% y los gastos anuales de reparacion. Con este fin la directora a 
% reunido la informacion de cuatro camiones:

disp('PROBLEMA 1')

try
x = [5, 3 ,3, 1]; %Antiguedad (años)
y = [7; 7; 6; 4]; %Costos de reparacion

tic;
[Sr, a0, a1] = minimos_cuadrados(x, y)
toc

fprintf('Suma de los cuadrados de los residuos: \n')
fprintf('%.4f', Sr)
fprintf('\n')

y_modelo = @(x) a0 + a1*x;

figure(1)
fplot(y_modelo,[0, 10])
legend ("y_modelo", 'Interpreter', 'latex');
title('Relacion entre antiguedad y costos de reparacion', 'Interpreter', 'latex')
xlabel('X', 'Interpreter', 'latex')
ylabel('Y', 'Interpreter', 'latex')
grid on
hold on

for i=1:numel(x)
  plot(x(i), y(i), 'o')
endfor

catch err
fprintf('Error: %s\n',err.message);
end

hold off;

% Problema 2:
% Se requiere un pronostico de demanda haciendo uso de la información 
% histórica de venta de un producto determinado durante los últimos 
% 12 trimestres (3 años).

disp('PROBLEMA 2')

try
x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]; % Meses
y = [600; 1550; 1500; 1500; 2400; 3100; 2600; 2900; 3800; 4500; 4000; 4900]; %Ventas

tic;
[Sr, a0, a1] = minimos_cuadrados(x, y)
toc

fprintf('Suma de los cuadrados de los residuos: \n')
fprintf('%.4f', Sr)
fprintf('\n')

y_modelo = @(x) a0 + a1*x;

figure(2)
fplot(y_modelo,[0, 15])
legend ("y_modelo", 'Interpreter', 'latex');
title('Pronóstico de Demanda', 'Interpreter', 'latex')
xlabel('X', 'Interpreter', 'latex')
ylabel('Y', 'Interpreter', 'latex')
grid on
hold on

for i=1:numel(x)
  plot(x(i), y(i), 'o')
endfor

catch err
fprintf('Error: %s\n',err.message);
end

hold off;