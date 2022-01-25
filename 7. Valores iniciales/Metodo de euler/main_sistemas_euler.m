% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 20/12/2021
%
% Descripcion: 
% Implementacion del metodo de euler para resolver 
% sistemas de ecuaciones diferenciales de primer orden

clear;clc;
fprintf('Sistemas de ecuaciones diferenciales de primer orden con el método de Euler\n')
fprintf('Ejemplo 1 \n');

f = @(x,u)([u(2);u(3);(u(3)+5*u(2)+3*u(1)+exp(-x/2))/3]);
t0=0;
tf=1;
h=0.1
x0=0;
y1=-1;
y2=1;
x=[t0:h:tf];
u0=[x0;y1;y2];
try
u = sistemas_euler(f,x,u0);
catch e
fprintf("Error: %s\n",e.message)
end 
figure
    subplot(3, 1, 1); scatter(x, u(1,[1 :length(x)]), "x"); title("Ecuacion 1");
    hold on 
    plot(x, u(1,[1 :length(x)])); legend("Valores calculados", "Funcion obtenida"); grid on; 
    xlabel("X"); ylabel("Y");
    hold off

    subplot(3, 1, 2); scatter(x, u(2,[1 :length(x)]), "x"); title("Ecuacion 2");
    hold on 
    plot(x, u(2,[1 :length(x)])); legend("Valores calculados", "Funcion obtenida"); grid on; 
    xlabel("X"); ylabel("Y");
    hold off

    subplot(3, 1, 3); scatter(x, u(3,[1 :length(x)]), "x"); title("Ecuacion 3");
    hold on 
    plot(x, u(3,[1 :length(x)])); legend("Valores calculados", "Funcion obtenida"); grid on; 
    xlabel("X"); ylabel("Y");
    hold off
    
fprintf('Ejemplo 2 \n')
f = @(x,u)([-0.5*u(1);(4-0.3*u(2)-0.1*u(1))]);
t0=0;
tf=2;
h=0.1;
x0=0;
y1=4;
y2=6;
x=[t0:h:tf];
u0=[y1;y2];
try
u = sistemas_euler(f,x,u0);
catch e
fprintf("Error: %s\n",e.message)
end
figure
    subplot(2, 1, 1); scatter(x, u(1,[1 :length(x)]), "x"); title("Ecuación 1");
    hold on 
    plot(x, u(1,[1 :length(x)])); legend("Valores calculados", "Funcion obtenida"); grid on; 
    xlabel("X"); ylabel("Y");
    hold off

    subplot(2, 1, 2); scatter(x, u(2,[1 :length(x)]), "x"); title("Ecuacion 2");
    hold on 
    plot(x, u(2,[1 :length(x)])); legend("Valores calculados", "Funcion obtenida"); grid on; 
    xlabel("X"); ylabel("Y");
    hold off