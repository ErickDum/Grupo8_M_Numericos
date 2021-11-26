% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 25/11/2021
%
% Descripcion: 
% Implementacion del metodo de  bisección, Newton-Raphson, secante, 
% punto fijo, y regula falsi, para la resolucion de ecuaciones 
% no lineales.

clear, clc

% Problema 1
% En el ambito de las ecuaciones diferenciales de orden superior, muchas de
% estas tienen una solucion de la forma y = e^rx. Hallar r del sistema 
% r^2 - 6r + 8 = 0, ecuentre una solucion para la ecuacion diferencial.

disp('Problema 1')

f = @(x) x.^2 - 6*x + 8;
f_r = @(x) (6*x - 8)/x;
df = @(x) 2*x - 6;

figure(1)
fplot(f,[-3, 8])
legend ("f(x)");
title('Solucion para una ecuacion diferencial')
xlabel('X')
ylabel('Y')
grid on

try 

tic;
d = newton(f, df, 1, 100);
tiempo_newton = toc;
[n,m] = size(d);
i_newton = m -1;
error_newton = d(n,m);
xn_newton = d(n-1,m);

tic;
e = punto_fijo(f_r, 2.5);
tiempo_punto_fijo = toc;
[n,m] = size(e);
i_punto_fijo = m -1;
error_punto_fijo = e(n,m);
xn_punto_fijo = e(n-1,m);

tic;
f = secante(f, 1, 3);
tiempo_secante = toc;
[n,m] = size(f);
i_secante = m -1;
error_secante = f(n,m);
xn_secante = f(n-1,m);

f = @(x) x.^2 - 6*x + 8;
tic;
g = regula_falsi(f, 1, 3);
tiempo_regula_falsi = toc;
[n,m] = size(g);
i_regula_falsi = m -1;
error_regula_falsi = g(n,m);
xn_regula_falsi = g(n-1,m);

fprintf('Método\t\t T.Ejecución\t N.Iteraciones\t xn\t\t error\n');
%Newton-Raphson
fprintf('Newton-Raphson\t %.4f\t\t %.0f\t\t %.4f\t\t %.4f\t\t', tiempo_newton, i_newton, xn_newton, error_newton);
fprintf('\n');

%Punto fijo
fprintf('Punto Fijo\t %.4f\t\t %.0f\t\t %.4f\t\t %.4f\t\t', tiempo_punto_fijo, i_punto_fijo, xn_punto_fijo, error_punto_fijo);
fprintf('\n');

%Secante
fprintf('Secante\t\t %.4f\t\t %.0f\t\t %.4f\t\t %.4f\t\t', tiempo_secante, i_secante, xn_secante, error_secante);
fprintf('\n');

%Regula Falsi
fprintf('Regula Falsi\t %.4f\t\t %.0f\t\t %.4f\t\t %.4f\t\t', tiempo_regula_falsi, i_regula_falsi, xn_regula_falsi, error_regula_falsi);
fprintf('\n');

catch err
fprintf('Error: %s\n',err.message);
end