function [ceros,pesos] = zeros_laguerre(n)
% Metodo de gauss-laguerre para hallar la integral aproximada de una funcion
% Funcion para determinar los ceros y pesos que utilizaremos
% para posteriormente aplicar el metodo de gauss-laguerre y obtener la integral aproximada
% Parametros de entrada: 
% n : numero de abscisas
% Parametros de salida:
% ceros: Ceros que se tendran en la matriz
% pesos: Pesos que tendra nuestro polinomio
  p(1,1)=1;
  p(2,1:2)=[-1 1]; 
  if n == 0;
     error('Error: valor del numero de puntos incorrecto')
  endif 
  for k=2:n
     p(k+1,1:k+1)=((2*(k-2)*[0 p(k,1:k)]+3*[0 p(k,1:k)]-[p(k,1:k) 0]-(k-1).^2*[0 0 p(k-1,1:k-1)]));
  end
  coeficientes_polinomio=p(n+1,:);
  pesos = roots(coeficientes_polinomio);
  for i=1:n
    derivada_polinomio(i)=coeficientes_polinomio(i)*(n+1-i);
  endfor
  for i=1:n
    x = pesos(i);
    suma = 0;
    for j=1:n
      suma = suma + derivada_polinomio(j)*(x.^(n-j));
    endfor
    ceros(i,1)=(factorial(n).^2)/(pesos(i)*(suma.^2));
  endfor
endfunction