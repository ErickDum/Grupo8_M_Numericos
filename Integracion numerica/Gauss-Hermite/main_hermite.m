% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 09/12/2021
%
% Descripcion: 
% Implementacion del metodo de guass-hermite para hallar la aproximada de una integral

%Dada la funcion y el numero de puntos encuentre la integral mediante el metodo de gauss-hermite
clear;clc;
a=-1;
b=1;
n=3;
f_1=@(t)exp(t.^2)./(1+t.^4);

try
integral_hermite = g_hermite(f_1,a,b,n)
funcion_1 = @(x) e.^((-x).^2).*f_1;
syms x;
integral_real = int(funcion_1,x,-1,1)
error = ((integral_real-integral_hermite)/integral_real)*100
catch err
 fprintf('Error: %s\n',err.message);
end


