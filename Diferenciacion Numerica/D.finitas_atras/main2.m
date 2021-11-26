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
% La posicion de una particula esta dada por e = 5t^3. Hallar la velocidad en t=15

disp('PROBLEMA 1')

try
  
i = @(t) 2*sin(7*t);
t = linspace(0,5,100);

[d1, d2] = finitas_adelante(i, t);

Vl = 15*d1(2,:);

figure(1)

fplot(i, [0, 10])
hold on
grid on
plot(d1(1,:), Vl)
legend('Posicion', 'Velocidad')

catch err
fprintf('Error: %s\n',err.message);
end

% PROBLEMA 2
% La velocidad de una particula esta dada por e = 5cos(t). Halle la velocidad de la particula en t=15

disp('PROBLEMA 2')

try
  
i = @(t) 5*cos(t);
t = linspace(0,10,100);

[d1, d2] = finitas_adelante(i, t);

Vl = 15*d1(2,:);

figure(2)

fplot(i, [0, 10])
hold on
grid on
plot(d1(1,:), Vl)
legend('Velocidad', 'Aceleracion')

catch err
fprintf('Error: %s\n',err.message);
end