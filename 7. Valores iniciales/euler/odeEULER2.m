function [x, y, error_t, estabilidad] = odeEULER(ED,a,b,h,y_i)
% Funcion para resolver ecuaciones diferenciales de primer orden
% utilizando el metodo de euler
% Variables de entrada:
% Funcion que calcula la derivada de una funcion
% ED : ecuacion diferencial de primer orden
% a: Primer valor de x
% b: Ultimo valor de x
% h; distancia entre puntos
% y_i: valor inicial
% Variables de salida:
% x: Vector con las cordenadas de la funcion solucion en x
% y: Vector con las cordenadas de la funcion solucion en y
% err: Error de truncamiento
x(1) = a; y(1) = y_i;
if (b<a)
  error('El limite superior debe ser mayor que el inferior')
endif
N = (b - a)/h;
error_t = 0;
for i = 1:N
x(i + 1) = x(i) + h;
y(i + 1) = y(i) + deriv2(x(i) ,y(i))*h;
error_t = error_t + (h^2)*deriv2(x(i) ,y(i))
end