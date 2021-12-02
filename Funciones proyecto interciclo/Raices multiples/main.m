% Autores: Mateo Chimbo
%          Erick Dumas
%          Karla Esterilla
%
% Fecha: 25/11/2021
%
% Descripcion: 
% Aplicacion del metodo de muller para encontrar las raices de una ecuacion,
% mismas que pueden ser reales o complejas

%Problema 1:
% Se desea construir una carcel de maxima seguridad, por lo que se necesita
% que en esa ubicacion no exista covertura movil, misma la cual es emitida por
% una antena cercana, por lo que se contruyo otra antena cercana que emite una señal
% tal que cuando estas 2 se chocan las ondas se anulan generando un punto en donde no existe señall
% Determine en donde se encuentra ese punto, si la onda resultante de los choques de onda de las 2 antenas
% viene dada por la funcion : 2x^2-13x+15=0
f = @(x) 2*x.^2 - 13*x + 15;
fplot(f, [-5, 10])
grid on
muller(f,-10,1,10,1e-5)
