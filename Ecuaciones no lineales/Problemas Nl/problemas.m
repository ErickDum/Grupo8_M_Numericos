clear, clc, clf;

% Problema 1:
% En el ambito de las ecuaciones diferenciales de orden superior, muchas de estas tienen una solucion de la forma
% y = e^(rx), para hallar esta r se tiene el sistema r^2-6r+8=0, encuentre una solucion para la ecuacion diferencial

f = @(x) x.^(2) - 6*x + 8;
df = @(x) 2*x - 6;

% Problema 2:
% Una cuerda de una guitarra vibra de acuerdo a la funcion x^2+2x=0 formando nodos de cancelacion de onda en las raices de x.
% Encuentre un punto en el que se forma un nodo

f = @(x) x.^(2) + 2*x;
df = @(x) 2*x + 2;

% Problema 3:
% Un altavoz situado paralelamente contra una pared emite una onda hacia la misma, dicha onda se vera reflejada en la pared
% y volvera hacia el altavoz, creando puntos en donde ambas ondas se anulan, provocando que se cancele el sonido.
% La funcion que determina los lugares en donde se crean los nodos viene dada por: x^3-3x^2+2x=0

f = @(x) x.^(3) - 3*x.^(2)+2*x;
df = @(x) 3*x.^(2) - 6*x + 2;