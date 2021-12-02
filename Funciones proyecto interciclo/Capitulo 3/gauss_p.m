% gauss_p(a, b)
%     [x]= gauss_p(a, b)
%      x = matriz de resultados
%      a = matriz de coeficientes de variables
%      b = matriz de terminos independientes
function [x]=gauss_p(a,b)
n = length(b);
  [f, c] = size(a);
  if (f!=c | f!=n | c!=n)
    error('Matriz de tamaño incorrecto')
  endif
ab = [a,b];
[R, C] = size(ab);
for j = 1:R - 1
  if (ab(j,j) == 0)
    for k = j + l:R
      if (ab(k,j) -= 0)
        abTemp = ab(j,:);
        ab(j,:) = ab(k,:);
        ab (k,:) = abTemp;
        break
      end
    end
  end
  for i = j + 1:R
    ab(i,j :C) = ab(i,j:C) - ab(i,j)/ab(j,j)*ab(j,j:C);
  end
end
x = zeros(R,1);
x(R) = ab(R,C)/ab(R,R);
for i = R - 1:-1:1
  x(i) = (ab(i,C) - ab(i,i + 1:R)*x(i + 1:R))/ab(i,i);
end