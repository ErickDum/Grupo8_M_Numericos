function [a, b]=gauss(a, b)
  n = length(b);
  for i=1:n-1
    for j=i+1:n
      al = -a(j,i)/a(i,i);
      for k=i:n
        a(j,k)=a(j,k)+al*a(i,k);
      endfor
      b(j) = b(j)+al*b(i);
    endfor
  endfor
end
