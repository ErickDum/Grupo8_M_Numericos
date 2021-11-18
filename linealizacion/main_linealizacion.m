% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 10/11/2021
%
% Descripcion: 
%Cuando tienes una lista de datos que necesitas modelar con una funcion 
%una buena opcion es usar estos metodos



clear
clc
clf

pkg load symbolic

x=[2.5;3.5;5;6;7.5;10;12.5;15;17.5;20];
y=[13;11;8.5;8.2;7;6.2;5.2;4.8;4.6;4.3];

%Problema 1
% En un concurso de ciencias tenemos 2 modelos matematicos que han datado diferentes datos
%El objetivo del concurso es que el modelo ganador tiene llegar lo mas cercano a 100 cuando x igual a 100
%el subcidio se lo llevara el mejor modelo

display("Problema 1")

try


[X_out Y_out f]=regresion_potencia(x,y);

warning('off','all');
subplot(2,2,1),plot(x,y,'o'),hold on,ezplot(f,[2.5,24]),title('P1 modelo a');

X_out;
Y_out;


display("La funcion por regresion_potencia");
f
r=double(subs(f,100))

catch err
fprintf('Error: %s\n',err.message);
end
%
x_datos=[17.6;40.4;67.7;90.1];
y_datos=[0;900;1800;2700];


try
subplot(2,2,2),plot(x_datos,y_datos,"o"),hold on

f=razon_de_cambio(x_datos,y_datos);

display("la funcion por razon de cambio es")
f
r=double(subs(f,100))

ezplot(f,[x_datos(1),x_datos(rows(x_datos))]),title('P1 modelo b');
catch err
fprintf('Error: %s\n',err.message);
end




%Problema 2
% Tenemos 2 estrategias para que 2 canales de youtube suban su numero de subscriptores se
%toomaron los datos de los primeros 5 meses
%Se decea averiguar cual de las 2 estrategias tiene un mejor pronostico para el primer a;o de


display("Problema 2")



x_datos=[0;1;2;3;4];
y_datos=[400;100;25;10;1.5625];
subplot(2,2,4),plot(x_datos,y_datos,"o"),hold on

try
h=regresion_exponencial(x_datos,y_datos);

display("la funcion por regresion_exponencial es")
h
r=double(subs(h,12))

ezplot(h,[-2,5]),title('P2 modelo a');
  
catch err
fprintf('Error: %s\n',err.message);
  
end
%


x_datos=[0;1.5;3;4.5;6];
y_datos=[-1.5;0;2.5;4;1.5];

try
  
subplot(2,2,3),plot(x_datos,y_datos,"o"),hold on

n=3;
  
f=Regresion_polinomial(x_datos,y_datos,n);
display("la funcion por regresion_polinomial es")
f
display("-96.0622")

ezplot(f,[0,10]),title('P2 modelo b');



catch err
fprintf('Error: %s\n',err.message);
end
%
