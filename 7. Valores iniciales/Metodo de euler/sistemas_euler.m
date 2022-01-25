function u = sistemas_euler(f,x,u0)
% Funcion para resolver sistemas de ecuaciones diferenciales de primer orden
% utilizando el metodo de euler
% Variables de entrada:
% f: funcion representada por f(x,u) de la cual se pretende hallar solucion
% x:  es un vector de tamaño(n+1) que representa el dato de paso
% u0: es un vector de tamaño m que representa los valores iniciales para cada ecuacion
% Variables de salida:
% u: matriz de tamaño (m x n+1) en donde se encuentra los vectores solucion en cada columna
if (x(1) > x(end))
  error('El limite superior debe ser mayor que el inferior')
endif
u(:,1) = u0;
h = x(2) - x(1); 
n = length(x);
for i = 1:n-1
 u(:,i+1) = u(:,i)+h*f(x(i),u(:,i));
end
u(:,[1 :length(x)])
end