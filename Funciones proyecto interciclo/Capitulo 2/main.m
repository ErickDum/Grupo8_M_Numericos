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
% En un circuito la corrite esta dada por i = -5t + exp(-x). Hallar el valor 
% de t para i = 6.

disp('Problema 2')

f = @(x) -5*x + e.^(-x) -6;
f_r = @(x) (6-e.^(-x))/-5;
df = @(x) -(5*e.^x+1)/e.^x;

figure(1)
fplot(f,[-10, 5])
legend ("f(x)");
title('Corriente en un circuito')
xlabel('X')
ylabel('Y')
grid on

try 

tic;
d = newton(f, df, 1);
tiempo_newton = toc;
[n,m] = size(d);
i_newton = m -1;
error_newton = d(n,m);
xn_newton = d(n-1,m);

tic;
e = punto_fijo(f_r, 2);
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

g = @(x) -5*x + exp(-x) - 6;
tic;
g = regula_falsi(g, -5, 5);
tiempo_regula_falsi = toc;
[n,m] = size(g);
i_regula_falsi = m -1;
error_regula_falsi = g(n,m);
xn_regula_falsi = g(n-1,m);

fprintf('Método\t\t T.Ejecución\t N.Iteraciones\t xn\t\t error\n');
%Newton-Raphson
fprintf('Newton-Raphson\t %.4f\t\t %.0f\t\t %.4f\t %.4f\t\t', tiempo_newton, i_newton, xn_newton, error_newton);
fprintf('\n');

%Punto fijo
fprintf('Punto Fijo\t %.4f\t\t %.0f\t\t %.4f\t %.4f\t\t', tiempo_punto_fijo, i_punto_fijo, xn_punto_fijo, error_punto_fijo);
fprintf('\n');

%Secante
fprintf('Secante\t\t %.4f\t\t %.0f\t\t %.4f\t %.4f\t\t', tiempo_secante, i_secante, xn_secante, error_secante);
fprintf('\n');

%Regula Falsi
fprintf('Regula Falsi\t %.4f\t\t %.0f\t\t %.4f\t %.4f\t\t', tiempo_regula_falsi, i_regula_falsi, xn_regula_falsi, error_regula_falsi);
fprintf('\n\n');

catch err
fprintf('Error: %s\n',err.message);
end


% Problema 2
% Una cuerda de una guitarra vibra de acuerdo a la funcion sen(x)-x=1 formando
% nodos de cancelacion de onda en las raices de x. Encuentre el punto donde se 
% forma un nodo.

disp('Problema 2')

f = @(x) sin(x)-x+1;
f_r = @(x) sin(x)+1;
df = @(x) cos(x)-1;

figure(2)
fplot(f,[-15, 5])
legend ("f(x)");
title('Nodos de cancelacion')
xlabel('X')
ylabel('Y')
grid on

try 

tic;
d = newton(f, df, 1);
tiempo_newton = toc;
[n,m] = size(d);
i_newton = m -1;
error_newton = d(n,m);
xn_newton = d(n-1,m);

tic;
e = punto_fijo(f_r, 0);
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

g = @(x) sin(x)-x+1;
tic;
g = regula_falsi(g, -5, 5);
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
fprintf('\n\n');

catch err
fprintf('Error: %s\n',err.message);
end


% Problema 3
% Un altavoz situado paralelamente contra una pared emite una onda hacia la
% misma, dicha onda de vera reflejada en la pared y volvera hacia el altavoz,
% creando puntos en donde ambas ondas se anulan, provocando que se cancele
% el sonido. La funcion que determina los lugares en donde se crean los nodos
% viene dada por: cos(x)- x/e

disp('Problema 3')

f = @(x) cos(x) - (1/2)*x;
f_r = @(x) 2*cos(x);
df = @(x) -sin(x) - 1/2;

figure(3)
fplot(f,[-15, 5])
legend ("f(x)");
title('Nodos de cancelacion')
xlabel('X')
ylabel('Y')
grid on

try 

tic;
d = newton(f, df, 1);
tiempo_newton = toc;
[n,m] = size(d);
i_newton = m -1;
error_newton = d(n,m);
xn_newton = d(n-1,m);

tic;
e = punto_fijo(f_r, 1.5);
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

g = @(x) cos(x) - (1/2)*x;
tic;
g = regula_falsi(g, -5, 5);
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
fprintf('\n\n');

catch err
fprintf('Error: %s\n',err.message);
end


% Problema 4 :
% Se desea construir una carcel de maxima seguridad, por lo que se 
% necesita que en esa ubicaion no exista covertura movil,
% misma la cual es emitida por una antena cercana, por lo que se construyo 
% otra antena que cuando su señal choque con la otra.
% Estas se anulen, la funciones de las antenas mezcladas es : 2x^2-13x+15=0

disp('Problema 4')

f = @(x) 2*x.^(2) - 13*x + 15;
f_r = @(x) (2*x.^(2)+15)/13;
df = @(x) 4*x - 13;

figure(4)
fplot(f,[-15, 5])
legend ("f(x)");
title('Señal de antenas')
xlabel('X')
ylabel('Y')
grid on

try 

tic;
d = newton(f, df, 1);
tiempo_newton = toc;
[n,m] = size(d);
i_newton = m -1;
error_newton = d(n,m);
xn_newton = d(n-1,m);

tic;
e = punto_fijo(f_r, 1);
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

g = @(x) 2*x.^(2) - 13*x + 15;
tic;
g = regula_falsi(g, -5, 5);
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
fprintf('\n\n');

catch err
fprintf('Error: %s\n',err.message);
end
