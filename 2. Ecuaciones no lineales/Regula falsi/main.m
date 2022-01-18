% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 21/10/2021
%
% Descripcion: 
% Implementacion del metodo de Newton-Raphson para hallar las raices 
% en ecuaciones no lineales.

clc %Limpiar e inicializar el programa
clear 
tol = 10^-5;
max = 20;

%Problema 1:
#Para el adecuado funcionamiento de un cuarto de experimento se requiere 
%saber el momento en que la cantidad de CO2 en la habitacion es 0, 
#para esto se tiene la funcion que modela la cantidad de C02 en la habitacion 
%f(x)=x^(2)-5

fprintf("ejemplo 2 \n")
f =@(x) x.^(2)-5;
LL = 1;
RL = 5;
fprintf ("la raiz encontrada por el metodo es: \n")
try
[r,iteraciones] = regula_falsi(LL, RL, f, tol,max)
catch e
fprintf("Error: %s\n",e.message)
end
%Grafica
subplot(1,2,1)
o=LL:0.001:RL;
p=o.^(2) -5 ;
plot(o,p)
text(r,0,'raiz de la funcion');
legend("f(x) EJEMPLO1");
ylabel("f(x)");
xlabel("x");

% Problema 2:
% Usted trabaja para una compañía que fabrica las esferas flotantes de los    
% inodoros. La esfera flotante tiene una gravedad de específica de 0,6 y 
% tiene un radio de de 5,5 cm. 
% Se le pide que encuentre la profundidad a la que se sumerge la esfera 
% cuando flota en el agua.
% La ecuacion que describe la profundidad en metros a la cual se sumerge la
% bola esta dada por: f(x)=x^3 - 0.165x^2 + 3.993e-4.
fprintf ( "metodo de regula falsi para ecuaciones no lineales \n")
fprintf("ejemplo 1 \n")
f = @(x) x.^(3) - 0.165*x.^(2) + 0.0003993;
LL = -4;
RL = 4;
fprintf ("la raiz encontrada por el metodo es: \n")
try
[r,iteraciones] = regula_falsi(LL, RL, f, tol,max)
catch e
fprintf("Error: %s\n",e.message)
end
%Grafica
subplot(1,2,2)
m=LL:0.001:RL;
n=m.^(3) - 0.165*m.^(2) + 0.0003993;
plot(m,n)
text(r,0,'raiz de la funcion');
legend("f(x) EJEMPLO2");
ylabel("f(x)");
xlabel("x");



