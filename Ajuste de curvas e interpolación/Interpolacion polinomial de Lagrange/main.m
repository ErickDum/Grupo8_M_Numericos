% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 15/11/2021
%
% Descripcion: 
% Implementacion del metodo interpolacion polinomial de newton en diferencias divididas

clear, clc

% Problema 1:
% La directora de salubridad de Chapel Hill esta interesada en saber
% la relacion que existe entre la antiguedad  de un camion de basura
% y los gastos anuales de reparacion. Con este fin la directora a 
% reunido la informacion de cuatro camiones:

disp('PROBLEMA 1')
try
x = [1 2 4 5 7];
y = [52 5 -5 -40 10] ;
fprintf('Valor interpolado: \n')
Yinterpolated = int_l(x,y,3)
catch err
fprintf('Error: %s\n',err.message);
end

figure(1)
p = linspace(0,10,100);
yp = [];
 for i = 1: length(p)
   yp = [yp,int_l(x,y,p(i))];
 endfor
 plot(x,y,'*'), hold on
 plot(p,yp)

% Problema 2:
% Se requiere un pronostico de demanda haciendo uso de la información 
% histórica de venta de un producto determinado durante los últimos 
% 12 trimestres (3 años).

disp('PROBLEMA 2')
try
x = [0 1 2 3 4];
y = [-50 10 90 250 550] ;
fprintf('Valor interpolado: \n')
Yinterpolated = int_l(x,y,3)
catch err
fprintf('Error: %s\n',err.message);
end

figure(2)
p = linspace(0,10,100);
yp = [];
 for i = 1: length(p)
   yp = [yp,int_l(x,y,p(i))];
 endfor
 plot(x,y,'*'), hold on
 plot(p,yp)