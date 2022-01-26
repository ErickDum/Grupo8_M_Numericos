% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 11/10/2021
%
% Descripcion: 
% Implementacion del metodo de diferencias finitas divididas hacia atras 
% para hallar la derivada de una funcion en un rango especifico.

clear, clc, clf;

% PROBLEMA 1
% En un circuito RLC la corriente esta dada por i = 10sen(3t). Hallar 
% el voltaje en el inductor si L = 15.

disp('PROBLEMA 1')

try
  
i = @(t) 10*sin(3*t);
t = linspace(0,10,100);

tic;
[d1, d2] = finitas_atras(i, t);
toc

Vl = 15*d1(2,:);

figure(1)

fplot(i, [0, 10])
hold on
grid on
plot(d1(1,:), Vl)
legend('Corriente', 'Voltaje en inductor')

catch err
fprintf('Error: %s\n',err.message);
end

% PROBLEMA 2
% En un circuito RLC la corriente esta dada por i = 30sen(5t). Hallar 
% el voltaje en el inductor si L = 15.

disp('PROBLEMA 2')

try
  
i = @(t) 30*sin(5*t);
t = linspace(0,10,100);

tic;
[d1, d2] = finitas_atras(i, t);
toc

Vl = 15*d1(2,:);

figure(2)

fplot(i, [0, 10])
hold on
grid on
plot(d1(1,:), Vl)
legend('Corriente', 'Voltaje en inductor')

catch err
fprintf('Error: %s\n',err.message);
end