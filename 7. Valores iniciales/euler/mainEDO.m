% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 09/12/2021
%
% Descripcion: 
% Implementacion del metodo de euler para resolver 
% ecuaciones diferenciales de primer orden
clear;clc;
disp("Elemplo1")
try
a = 0 ; b = 2.5 ; h = 0.1 ; y_i = 3 ;
est = -1.2
[x, y, err] = odeEULER(@deriv1,a,b,h,y_i);
xp = a:0.1:b;
yp=70/9*exp(-0.3*xp)-43/9*exp(-1.2*xp);
figure
plot(x,y,'--r' ,xp,yp)
xlabel ( 'x' ) ; ylabel ( 'y ' )
fprintf('Estabilidad:\n')
if h > 2/est 
  fprintf("Metodo de euler condicionalmente estable\n")
else
  fprintf("Metodo de euler mal condicionado\n")
endif
catch err
fprintf('Error: %s\n',err.message);
end


disp("Elemplo2")
try
a = 0 ; b = 2 ; h = 0.1 ; y_i = 0 ;
est = -2
[x, y, err] = odeEULER2(@deriv2,a,b,h,y_i);
xp = a:0.1:b;
yp=-3/4*exp(-2*xp)+(3/2)*xp+3/4;
figure
plot(x,y,'--r' ,xp,yp)
xlabel ( 'x' ) ; ylabel ( 'y ' )
fprintf('Estabilidad:\n')
if h > 2/est 
  fprintf("Metodo de euler condicionalmente estable\n")
else
  fprintf("Metodo de euler mal condicionado\n")
endif
catch err
fprintf('Error: %s\n',err.message);
end


