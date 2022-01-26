% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 10/11/2021
%





clc
clear all
clf

disp("PROBLEMA1")
% Resolver la ecuacion del calor para 0<x<1 y 0<t<0.2 con las siguientes condiciones 
% iniciales 4x-4x^2 para t=0 y 0<=x<=1 y las condiciones de entorno u(0,t)=0 para
% x=0 y 0<t<0.2 y u(1,t)=0 para x=1 y t entre 0 y 0.2
c1=0;
c2=0;
f=@(x) 4*x-4*x.^2;

try
  
U = diffinitaCalor(f,c1,c2,1,0.2,1,6,11)

catch err
fprintf('Error: %s\n',err.message);
end


disp("PROBLEMA2")
% Resolver la ecuacion del calor para 0<x<1 y 0<t<0.2 con las siguientes condiciones 
% iniciales x^2-5 para t=0 y 0<=x<=1 y las condiciones de entorno u(0,t)=0 para
% x=0 y 0<t<0.2 y u(1,t)=0 para x=1 y t entre 0 y 0.2
c1=0;
c2=0;
f = @(x) x.^2-5;
try
figure 2 
U = diffinitaCalor(f,c1,c2,1,0.2,1,6,11)

catch err
fprintf('Error: %s\n',err.message);
end