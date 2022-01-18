% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 12/12/2021
%
% Descripcion: 
% Implementacion del metodo de punto medio para resolucion de ecuaciones 
% diferenciales de la forma dy/dx = F(x,y) y comparacion de graficas.

clear, clc, clf

% Problema 1
% Un objeto que pesa 48 libras es liberado desde el reposo desde lo alto
% de un plano inclinado que tiene 30o de inclinaci´on con la horizontal. 
% La resistencia del aire, en libras es igual a v/2 [ft/s], y el coeficiente 
% de friccion es 1/4. Cual es la velocidad del objeto 2s luego de ser liberado?

display("Problema 1")

try
f = @(t, v) 16 - v/3 - 4*sqrt(3);

%Condicion inicial
x0 = 0;
y0 = 0;
tol = 2;

tic;
[t1, v1] = heun(f, 0, 5, x0, y0, 0.5, tol);
toc

%Grafica
figure(1)
plot(t1,v1)
grid on
hold on
t_r = 0:0.1:5;
v_r = (48 - 12*sqrt(3))*(1 - exp(-t_r/3));
plot(t_r, v_r)
legend('V. del metodo', 'V. real')

catch err
fprintf('Error: %s\n',err.message);
end


% Problema 2
% En un tanque el cual el tanque tiene 300 galones de una solucion salina. 
% La solucion que ingresa al tanque lo hace a una velocidad de 3gal/min, 
% en el tanque se mezcla y sale la mezcla homogenizada a la misma velocidad
% Rsalida = x/300lb/gal*3gal/min = x/100lb/min. La concentraci´on de sal en 
% la mezcla entrante es de 2lb/gal, por lo tanto la cantidad de sal que 
% ingresa al tanque es de Rentrada = 2lb/gal*3gal/min = 6lb/min. Si 
% inicialmente hab´?an 50lbs de sal disueltas en los 300 galones del tanque, 
% cuanta sal habr´a en el tanque luego de un largo tiempo?

display("Problema 2")

try
  
f = @(t, v) 6 - t/100;

%Condicion inicial
x0 = 0;
y0 = 50;
tol = 2;

tic;
[t1, v1] = heun(f, 0, 10, x0, y0, 0.5, tol);
toc

%Grafica
figure(2)
plot(t1,v1)
grid on
hold on
t_r = 0:0.1:10;
v_r = 600 -550*exp(-t_r/100);
plot(t_r, v_r)
legend('Y. del metodo', 'Y. real')

catch err
fprintf('Error: %s\n',err.message);
end
