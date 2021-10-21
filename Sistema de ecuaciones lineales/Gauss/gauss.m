% GAUSS solucion de sistemas de ecuaciones lineales.
% GAUSS(A, B)
%     [x]= gauss(a, b)
%      x = matriz de resultados
%      a = matriz de coeficientes de variables
%      b = matriz de terminos independientes

function [x]=gauss(a, b)
  n = length(b);
  x = zeros(n,1);
  for i=1:n-1
    for j=i+1:n
      al = -a(j,i)/a(i,i);
      for k=i:n
        a(j,k)=a(j,k)+al*a(i,k);
      endfor
      b(j) = b(j)+al*b(i);
    endfor
  endfor
  for i=n:-1:1
    x(i) = b(i)/a(i,i);
    for j=1:i-1
      b(j) = b(j) - x(i)*a(j,i);
    endfor
  endfor
end
