% LU factoriza una matriz en dos matrices:
% una triangular superior y otra triangular inferior.
% LU(A)
% [L,U]=lu(A)
%     L = Matriz triangular inferior
%     U = Matriz triangular superior
%     A = Matriz ha factorizar

function [L,U]=lu(A)
  [m, n]=size(A);
  if (n!=m)
    error('Matriz de tamaño incorrecto')
  endif
  L=eye(m);
  for k=1:n
    for i=k+1:m
      L(i,k) = A(i,k)/A(k,k);
      for j=k+1:n
        A(i,j)=A(i,j) - L(i,k)*A(k,j);
      endfor
    endfor
  endfor
  U=triu(A);
endfunction