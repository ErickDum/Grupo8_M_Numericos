% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 12/12/2021
%
% Descripcion: 
% Implementacion del metodo para solucion de integrales imporpias.

clear, clc

% Problema 1
% Se requiere calcular el volumen de la Trompeta de Gabriel, solido en 
% revolucion que se genera al girar alrededor del eje x la superficie limitada 
% por la curva y = 1/x.

disp('Problema 1')

f = @(x) 1/(x.^2) ;

try
tic;
[I] = impropias(f, 'i', 1, 1/8)
toc

V = I*pi
catch err
fprintf('Error: %s\n',err.message);
end

% Grafica 
u=(-2:0.1:2)'; 
v=0:0.1:2*pi; 
X=exp(u)*cos(v); 
Y=u*ones(size(v)); 
Z=exp(u)*sin(v); 
surf(X,Y,Z) 
legend('Trompeta de Gabriel')
xlabel('v');ylabel('u');zlabel('z')


% Problema 2
% La distribución normal acumulativa es una fórmula importante en estadística
% determine N(1) en forma numérica.

disp('Problema 2')

f = @(x) exp(-x.^2/2);

try
li = '-i';
lr = -2;
[I1] = impropias(f, li, lr, 1/8);

a = -2;
b = 1;
[I2, ea2] = simpson_1_3(f, a, b, 6);

I = I1 + I2;

N1 = (1/sqrt(2*pi)) * I

catch err
fprintf('Error: %s\n',err.message);
end