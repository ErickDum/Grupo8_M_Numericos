% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 10/11/2021




clc
clear all
clf



disp("Problema 2\n")
%Un trozo de metal de 4 lados se calienta a diferentes temperaturas en cada
%uno de sus lados en el lazo izquierdo vertical se calienta a 60 grados, el lado
%derecho vertical tambien serian 60 grados el lado horizontal inferior son 50 grados
%la parte superior seria 70 grados)


try
figure 1
edplaplace(60,60,50,70,10,10,100,0.001);
  
catch err
fprintf('Error: %s\n',err.message);
end 



disp("Problema 1\n")
f=@(x,y) x.*exp(y);
g1=@(x,y) x;
g2=@(x,y) 2*exp(+y);
g3=@(x,y) x*exp(1);
g4=@(x,y) x;

%Resolver la siguiente ecuacion mediante el algoritmo de Poissonsegunda 
%parcial respecto a x mas la segunda parcial respecto a y 
% igual a x*e^y para x entre 0 y 2, y Y entre 0 y 1 
try
  
figure 2
diffinitasPoisso(0,2,0,1,5,6,10^(-10),100,f,g1,g2,g3,g4);

catch err
fprintf('Error: %s\n',err.message);
end
