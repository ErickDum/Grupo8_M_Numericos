% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 09/12/2021
%
% Descripcion: 
% Implementacion del metodo de guass-laguerre para hallar la aproximada de una integral

clc,clear
syms x

funcion = @(x) sin(x);
n = 6;
lim_inferior = 0;
lim_superior = 6;
try
   [integral_laguerre] = int_laguerre(funcion,n)
   funcion_1 = exp(-x).*funcion;
   integral_real = int(funcion_1,x,lim_inferior,lim_superior)
   error = ((integral_real-integral_laguerre)/integral_real)*100
catch err
  fprintf('Error: %s\n',err.message);
end
