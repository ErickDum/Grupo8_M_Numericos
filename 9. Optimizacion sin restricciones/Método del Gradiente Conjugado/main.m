% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 17/1/2022
%
% Descripcion: Resolucion de un sistema lineal de matrices convirtiendo el 
% sistema a su forma cuadratica y minimizando dicha funcion. 

clear, clc


% Problema 1
% Resolver el sistema lineal. 

disp('Problema 1')

A = [7, 4; 4, 7];
b = [2; 2];
x0 = [0; 0];
try
tic;
[x, iteraciones] = conj_grad(A, b, x0)
toc

catch err
  fprintf('Error: %s\n',err.message);
end

% Plotting
xi = -2:.1:2;

quadform = zeros(length(xi));

for i=1:length(xi)
  for j=1:length(xi)
    w = [xi(i) xi(j)]';
    quadform(i, j) = w'*A*w;
  endfor
endfor

figure(1)
title('Forma cuadratica')
surf(xi, xi, quadform')
hold on
plot(x(1), x(2), 'o')

figure(2)
contour(xi, xi, quadform')
hold on
plot(x(1), x(2), 'o')

fprintf('\n')


% Problema 2

disp('Problema 2')

A = [2, -1, 0, 0; -1, 2, -1, 0; 0, -1, 2, -1; 0, 0, -1, 2];
b = [-3; 2; 2; -3];
x0 = [0; 0; 0; 0];

try
tic;
[x, iteraciones] = conj_grad(A, b, x0)
toc;

catch err
  fprintf('Error: %s\n',err.message);
end
