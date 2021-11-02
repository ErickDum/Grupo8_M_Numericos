function [x, error, i]=jacobi(A, b, n_i = 100, tol = 0.001)
  [n,n] = size(A);
  x0 = zeros(n,1);
  D = diag(diag(A));
  D1 = inv(D);
  E = -tril(A, -1);
  F = -triu(A, +1);
  res = norm(A*x0 - b);
  error = res/norm(b);
  i = 0;
  while i < n_i && error > tol
    x = D1*(E+F)*x0+D1*b;
    res = norm(A*x0 - b);
    error = res/norm(b);
    x0 = x;
    i = i + 1;
  endwhile
  if (i==n_i)
    error ('Gran n�mero de iteraciones, posiblemente el m�todo divergi�')
  endif
end
