% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 10/11/2021
%
%Descripcion:
%La integraci€n num»rica es una herramienta de gran utilidad para obtener valores
%aproximados de integrales definidas que no pueden calcularse analÃticamente, ya sea porque el
%integrando no tiene primitiva expresable analÃticamente, o bien porque dicho integrando no se
%conoce en forma analÃtica sino en forma discreta (tabulada) Òpor ejemplo, datos procedentes
%de un experimento

clc
clear all
warning('off','all');
format short
%pkg symbolic load;


%La funcion muestra la grafica del trafico sobre un proveedor de servicio de internet en linea de datos
%T1 desde las 0 horas hasta las 1am, corresponde a los datos trasmitidos
%Estime la cantidad total de datos trasmitidos


f=@(x) 0.2+25*x-200*x.^2+675*x.^3-900*x.^4+400*x.^5;

a=0;
b=1;
b=1;
puntos=2;


try
  
[error R]=cuadratura_de_gauss(f,a,b,puntos);

display("\n\nProblema1\n")

display("Los datos trasmitidos son")
R
display("El error es")
double(error)

catch err
fprintf('Error: %s\n',err.message);
end

%Se decea encontrar la velocidad desde el tiempo 0 hasta 1.18 de el auto el espacio vs el tiempo recorrido 
%esta representado por la funcion y=-x/sqrt(x^2+1) 
f=@(x) x/sqrt(x.^2+1);
a=0;
b=1.18;
b=1.18;
puntos=3;


try
  
[error R]=cuadratura_de_gauss(f,a,b,puntos);
display("\n\nProblema2\n")
display("La velocidad es")
R
display("El error es")
double(error)
catch err
fprintf('Error: %s\n',err.message);
end





