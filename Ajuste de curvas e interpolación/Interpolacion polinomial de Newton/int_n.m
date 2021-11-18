% Se implementa el metodo de interpolacion polinomial de newton para determinar
% el valor interpolado en un punto, usando los polinomios de newton
% Variables de entrada:
% x: Un vector con las coordenadas de los puntos en x
% y; Un vector con las coordenadas de ,os puntos en y
% Xint: La coordenada del punto que vamos a interpolar
% Variables de salida:
% Yint; El valor del punto interpolado

clear, clc

x = [1, 4, 6, 5];
y = [0, 1.38, 1.79, 1.60];

function b = int_n(x,y)
  n = numel(x) -1;
  b = zeros(n);
  b0 = y(1)
  for i=1:n
    b(i, 1) = (y(i+1) - y(i))/(x(i+1) - x(i));
  endfor
end

b = int_n(x, y)