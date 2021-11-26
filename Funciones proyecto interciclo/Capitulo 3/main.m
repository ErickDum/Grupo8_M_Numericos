% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 25/11/2021
%
% Descripcion: 
% Implementacion del metodo de Gauss, Eliminación de Gauss con pivote, 
% Gauss-Jordan, Jacobi, y Gauss-Seidel para la resolucion de sistemas
% lineales.

clear, clc

% Problema 1
% Un circuito se resuelve mediante analisis nodal, a partir de ahi se 
% plantean ecuaciones con incognitas voltajes en cada nodo:
% 2v1-v3=-8, 2v2-v3=8, 7v3-v2-2v1=0

display('Problema 1')

fprintf('Tensiones en nodos \n');

figure(1)
imagen1 = imread('circuito1.png');
imshow(imagen1);

try
a = [3, -1; -3, 5];
b = [20;60];

tic;
[c] = gauss(a,b);
tiempo_gauss = toc;
error_gauss = 0;

tic;
[d] = gauss_p(a,b);
tiempo_gauss_p = toc;
error_gauss_p = 0;

tic;
[e] = gauss_jordan(a,b);
tiempo_gauss_jordan = toc;
error_gauss_jordan = 0;

tic;
[f, error_jacobi] = jacobi(a,b);
tiempo_jacobi= toc;

tic;
[f, error_gauss_seidel] = gauss_seidel(a,b);
tiempo_gauss_seidel= toc;

fprintf('Método\t\t T.Ejecución\t error\n');
%Gauss
fprintf('E.Gauss\t\t %.4f\t\t %.4f\t\t', tiempo_gauss, error_gauss);
fprintf('\n');

%Gauss_p
fprintf('E.Gauss Pivote\t %.4f\t\t %.4f\t\t', tiempo_gauss_p, error_gauss_p);
fprintf('\n');

%Gauss_Jordan
fprintf('Gauss-Jordan\t %.4f\t\t %.4f\t\t', tiempo_gauss_jordan, error_gauss_jordan);
fprintf('\n');

%Jacobi
fprintf('Jacobi\t\t %.4f\t\t %.4f\t\t', tiempo_jacobi, error_jacobi);
fprintf('\n');

%Gauss_Seidel
fprintf('Gauss-Seidel\t %.4f\t\t %.4f\t\t', tiempo_gauss_seidel, error_gauss_seidel);
fprintf('\n\n');

catch err
fprintf('Error: %s\n',err.message)
end


% Problema 2
% Un circuito se resuelve mediante analisis nodal, a partir de ahi se 
% plantean ecuaciones con incognitas voltajes en cada nodo: 
% 3v1-2v2=4, 2v1-7v2+5v3=4, 2v2-3v3=-16

display('Problema 2')

fprintf('Tensiones en nodos \n');

figure(2)
imagen2 = imread('circuito2.png');
imshow(imagen2);

try
a = [3, -2, -1; -4, 7, -1; 2, -3, 1];
b = [12; 0; 0];

tic;
[c] = gauss(a,b);
tiempo_gauss = toc;
error_gauss = 0;

tic;
[d] = gauss_p(a,b);
tiempo_gauss_p = toc;
error_gauss_p = 0;

tic;
[e] = gauss_jordan(a,b);
tiempo_gauss_jordan = toc;
error_gauss_jordan = 0;

tic;
[f, error_jacobi] = jacobi(a,b);
tiempo_jacobi= toc;

tic;
[f, error_gauss_seidel] = gauss_seidel(a,b);
tiempo_gauss_seidel= toc;

fprintf('Método\t\t T.Ejecución\t error\n');
%Gauss
fprintf('E.Gauss\t\t %.4f\t\t %.4f\t\t', tiempo_gauss, error_gauss);
fprintf('\n');

%Gauss_p
fprintf('E.Gauss Pivote\t %.4f\t\t %.4f\t\t', tiempo_gauss_p, error_gauss_p);
fprintf('\n');

%Gauss_Jordan
fprintf('Gauss-Jordan\t %.4f\t\t %.4f\t\t', tiempo_gauss_jordan, error_gauss_jordan);
fprintf('\n');

%Jacobi
fprintf('Jacobi\t\t %.4f\t\t %.4f\t\t', tiempo_jacobi, error_jacobi);
fprintf('\n');

%Gauss_Seidel
fprintf('Gauss-Seidel\t %.4f\t\t %.4f\t\t', tiempo_gauss_seidel, error_gauss_seidel);
fprintf('\n\n');

catch err
fprintf('Error: %s\n',err.message)
end


% Problema 3
% Un circuito se resuelve mediante analisis de mallas, a partir de ahi se 
% plantean una matriz de R*I=V

display('Problema 3')

fprintf('Corrientes de mallas \n');

figure(3)
imagen3 = imread('circuito3.png');
imshow(imagen3);

try
a = [1, 0, 0, 0; 1, 1, -1, 0; 0, 1000, 3000, -2000; 0, 1000, 1000, -2000];
b = [0.004; 0; 8; 12];

tic;
[c] = gauss(a,b);
tiempo_gauss = toc;
error_gauss = 0;

tic;
[d] = gauss_p(a,b);
tiempo_gauss_p = toc;
error_gauss_p = 0;

tic;
[e] = gauss_jordan(a,b);
tiempo_gauss_jordan = toc;
error_gauss_jordan = 0;

tic;
[f, error_jacobi] = jacobi(a,b);
tiempo_jacobi= toc;

tic;
[f, error_gauss_seidel] = gauss_seidel(a,b);
tiempo_gauss_seidel= toc;

fprintf('Método\t\t T.Ejecución\t error\n');
%Gauss
fprintf('E.Gauss\t\t %.4f\t\t %.4f\t\t', tiempo_gauss, error_gauss);
fprintf('\n');

%Gauss_p
fprintf('E.Gauss Pivote\t %.4f\t\t %.4f\t\t', tiempo_gauss_p, error_gauss_p);
fprintf('\n');

%Gauss_Jordan
fprintf('Gauss-Jordan\t %.4f\t\t %.4f\t\t', tiempo_gauss_jordan, error_gauss_jordan);
fprintf('\n');

%Jacobi
fprintf('Jacobi\t\t %.4f\t\t %.4f\t\t', tiempo_jacobi, error_jacobi);
fprintf('\n');

%Gauss_Seidel
fprintf('Gauss-Seidel\t %.4f\t\t %.4f\t\t', tiempo_gauss_seidel, error_gauss_seidel);
fprintf('\n\n');

catch err
fprintf('Error: %s\n',err.message)
end


% Problema 4
% Un circuito se resuelve mediante analisis de mallas, a partir de ahi se 
% plantean una matriz de R*I=V

display('Problema 4')

fprintf('Corrientes de mallas \n');

figure(4)
imagen4 = imread('circuito4.png');
imshow(imagen4);

try
a = [-1, 2, 0; 0, 1, 0; -2000, 0, 8000];
b = [0; 0.002; 3];

tic;
[c] = gauss(a,b);
tiempo_gauss = toc;
error_gauss = 0;

tic;
[d] = gauss_p(a,b);
tiempo_gauss_p = toc;
error_gauss_p = 0;

tic;
[e] = gauss_jordan(a,b);
tiempo_gauss_jordan = toc;
error_gauss_jordan = 0;

tic;
[f, error_jacobi] = jacobi(a,b);
tiempo_jacobi= toc;

tic;
[f, error_gauss_seidel] = gauss_seidel(a,b);
tiempo_gauss_seidel= toc;

fprintf('Método\t\t T.Ejecución\t error\n');
%Gauss
fprintf('E.Gauss\t\t %.4f\t\t %.4f\t\t', tiempo_gauss, error_gauss);
fprintf('\n');

%Gauss_p
fprintf('E.Gauss Pivote\t %.4f\t\t %.4f\t\t', tiempo_gauss_p, error_gauss_p);
fprintf('\n');

%Gauss_Jordan
fprintf('Gauss-Jordan\t %.4f\t\t %.4f\t\t', tiempo_gauss_jordan, error_gauss_jordan);
fprintf('\n');

%Jacobi
fprintf('Jacobi\t\t %.4f\t\t %.4f\t\t', tiempo_jacobi, error_jacobi);
fprintf('\n');

%Gauss_Seidel
fprintf('Gauss-Seidel\t %.4f\t\t %.4f\t\t', tiempo_gauss_seidel, error_gauss_seidel);
fprintf('\n');

catch err
fprintf('Error: %s\n',err.message)
end