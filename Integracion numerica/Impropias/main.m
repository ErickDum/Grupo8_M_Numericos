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
[I] = impropias(f, 'i', 1, 1/8);
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


%Problema 2

f = @(x) exp(-x.^2/2);
li = '-i';
lr = -2;

impropias(f, li, lr, 1/8)