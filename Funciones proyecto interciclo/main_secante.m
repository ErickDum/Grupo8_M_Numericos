% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 11/10/2021
%
% Descripcion: 
% Implementacion del metodo de Newton-Raphson para hallar las raices 
% en ecuaciones no lineales.

clear
clc
clf




display("Problema 1\n")


#Problema 1
%En un laboratorio se realiza un experimento, un cultivo de bacterias son sometidas a condiciones extremas y
%Por medio de un sotfware de control se registra un modelo matematico que muestra numero de bacterias y tiempo
% f(t)=( t^4/4 - t^3/3 -2t ) Se nececita saber el punto maximo al que llega el crecimiento de bacterias 
%Tenemos que ver donde la pendiente es 0 para esto se deriva y se iguala a 0

tic;
try
pkg symbolic load
syms x y
iteraciones=10    %NUMERO DE ITERACIONES*********
funcion=x^3-x^2-2;  %FUNCION INPUT
c1=3;   
c=5;
[raiz convergencia]=secante(funcion,c1,c,iteraciones,0.0001);

convergencia %Convergencia********
raiz         %raiz de la funcion

y=zeros(rows(convergencia),1);
plot(convergencia,y,"o"),grid on,hold on,ezplot(funcion)


catch err
fprintf('Error: %s\n',err.message);
end

%
toc;
tiempo_de_ejecucion=toc;  %TIEMPO DE EJECUCION*********









