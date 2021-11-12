function Yint = int_n(x,y,Xint)
% Se implementa el metodo de interpolacion polinomial de newton para determinar
% el valor interpolado en un punto, usando los polinomios de newton
% Variables de entrada:
% x: Un vector con las coordenadas de los puntos en x
% y; Un vector con las coordenadas de ,os puntos en y
% Xint: La coordenada del punto que vamos a interpolar
% Variables de salida:
% Yint; El valor del punto interpolado

n = length (x) ;
a (1)= y (1);
if (numel(x)!=numel(y))
  error('Matrices de tamaños incorrectos')
end
for i = 1:n - 1
  divDIF(i,1)=(y(i+1)-y(i))/(x(i+ 1)-x(i));
end
for j = 2 :n - 1
  for i = 1:n - j
    divDIF(i,j)=(divDIF(i+1,j-1) -divDIF(i,j-1))/(x(j+i)-x(i));
  end
end
for j = 2 :n
  a(j) = divDIF(1,j - 1);
end
Yint =a (1);
xn = 1;
for k = 2:n
  xn = xn* (Xint - x (k - 1)) ;
  Yint = Yint + a (k) *xn;
end
