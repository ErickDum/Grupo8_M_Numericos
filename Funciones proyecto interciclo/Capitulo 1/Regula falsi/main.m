% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 21/10/2021
%
% Descripcion: 
% Implementacion del metodo de Newton-Raphson para hallar las raices 
% en ecuaciones no lineales.

clear, clc 


%Problema 1:


fprintf("ejemplo 2 \n")
f =@(x) x.^(2)-5;
tol = 10^-5;
max = 20;
LL = 1;
RL = 5;

fprintf ("la raiz encontrada por el metodo es: \n")
try
tic;
[r,iteraciones] = regula_falsi(LL, RL, f, tol,max)
Tiempo_de_ejecucion = toc
catch e
fprintf("Error: %s\n",e.message)
end

%Grafica
o=LL:0.001:RL;
p=o.^(2) -5;
figure(1)
plot(o,p)
text(r,0,'raiz de la funcion');
legend("f(x) EJEMPLO1");
ylabel("f(x)");
xlabel("x");

