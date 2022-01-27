% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 10/11/2021





clc
clear all
clf

disp("PROBLEMA 1")
%Resolver la ecuación de la Onda de una cuerda vibrante cuyas condiciones iniciales
%son f(x)=sen(pi*x)+sen(2pi*x) para x entre 0 y 1 y g(x)=0 x entre 0 y 1
% sus condiciones frontera son u(0,t)=0; u(1,t)=0 para t entre 0 y 0.5  

f = @(x) sin(pi*x)+sin(2*pi*x);
g = @(x) 0;


try
  
U = diffinitaOnda(f,g,1,0.5,2,11,11)

catch err
fprintf('Error: %s\n',err.message);
end



disp("PROBLEMA 2")
%Resolver la ecuación de la Onda de una cuerda vibrante cuyas condiciones iniciales
%son f = @(x) cos(2*x) + sin(x) para x entre 0 y 1 y g(x)=0 x entre 0 y 1
% sus condiciones frontera son u(0,t)=0; u(1,t)=0 para t entre 0 y 0.5  

f = @(x) cos(2*x) + sin(x);
g = @(x) 0;

try

figure 2
 
U = diffinitaOnda(f,g,1,0.5,2,11,11)

catch err
fprintf('Error: %s\n',err.message);
end