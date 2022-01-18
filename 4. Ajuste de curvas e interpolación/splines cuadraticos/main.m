% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 08/11/2021
%
% Descripcion: 
% Implementacion del metodo de interpolacion spline con trazadores cuadraticos 
% para encontrar yy, los valores de la función subyacente y en los puntos 
% del vector xx. El vector x especifica los puntos en los que se dan los datos y.

clear, clc 

% Problema 1:
% Se requiere un pronostico de demanda haciendo uso de la información 
% histórica de venta de un producto determinado durante los últimos 
% 12 trimestres (3 años).

disp('PROBLEMA 1')

try
x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]; % Meses
y = [600; 1550; 1500; 1500; 2400; 3100; 2600; 2900; 3800; 4500; 4000; 4900]; %Ventas
xx = linspace(x(1),x(length(x)));

[yy, dy] = natspline(x, y, xx);

figure(1)
subplot(2,1,1)
plot(x, y, 'o', xx, yy)
title('Pronóstico de Demanda')
legend('Datos','Y interpolada')
grid on
subplot(2,1,2)
plot(xx, dy)
title('dy/dx')
grid on

catch err
fprintf('Error: %s\n',err.message);
end

% Problema 2:
% Los siguientes datos definen la concentración de oxígeno (o) disuelto a 
% nivel del mar para agua dulce como función de la temperatura. Estime o(27).


disp('PROBLEMA 2')

try

T = [0, 8, 16, 24, 32, 40];
o = [14.621, 11.843, 9.870, 8.418, 7.305, 6.413]
TT = linspace(T(1),T(length(T)));

[oo, d1o] = natspline(T, o, TT);

figure(2)
subplot(2,1,1)
plot(T, o, 'o', TT, oo)
title('Oxigeno disuelto')
legend('Datos','Y interpolada')
grid on
subplot(2,1,2)
plot(TT, d1o)
title('dy/dx')
grid on

catch err
fprintf('Error: %s\n',err.message);
end
