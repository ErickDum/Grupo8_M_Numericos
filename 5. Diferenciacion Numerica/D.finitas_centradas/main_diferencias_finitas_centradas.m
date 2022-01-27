% Autores: Mateo Chimbo
%           Erick Dumas
%           Karla Esterilla
%
% Fecha: 10/11/2021
%
% Descripcion:
% Implementa la diferenciacion finita centrada para hallar la derivadas
%en un punto




clear
clc

pkg symbolic load 


warning('off','all');





%Ploblema 1
%#Problema 1
%En un laboratorio se realiza un experimento, un cultivo de bacterias son sometidas a condiciones extremas y
%Por medio de un sotfware de control se registra un modelo matematico que muestra numero de bacterias y tiempo
% f(t)=( t^4/4 - t^3/3 -2t ) Se nececita saber si en el tiempo 0.5 la pendiente es 0
display("Problema 1---------------------")
try
x=0.5;
h=0.2;
f=x.^3-x.^2-2;
  
[d error]=d_centradas(h,x)

catch err
fprintf('Error: %s\n',err.message);
end
%Ploblema 2
%demuestre que el error dismunuye al reducir el paso 
display("Problema 2-------------------------")

try
  
x=0.5;
h=0.2;
f=x.^3-x.^2-2;

for i=1:12
h=h-0.01;
[d error]=d_centradas(h,x);

y(i,1)=[double(error)];
endfor
y
p=[0:11];
plot(p,y);
catch err
fprintf('Error: %s\n',err.message);
end
