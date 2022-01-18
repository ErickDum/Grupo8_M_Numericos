function Yint = int_l(x,y,Xint)
% Se implementa el metodo de interpolacion polinomial de Lagrange para determinar
% el valor interpolado en un punto, usando los polinomios de newton
% Variables de entrada:
% x: Un vector con las coordenadas de los puntos en x
% y; Un vector con las coordenadas de ,os puntos en y
% Xint: La coordenada del punto que vamos a interpolar
% Variables de salida:
% Yint; El valor del punto interpolado

n = length(x) ;
if (numel(x)!=numel(y))
  error('Matrices de tamaños incorrectos')
endif
for i = 1 :n
  L(i) =1;
  for j = 1:n
    if j ~= i
      L(i)= L(i)*(Xint-x(j))/(x(i)-x(j));
    endif
  endfor
endfor
Yint = sum(y .*L);