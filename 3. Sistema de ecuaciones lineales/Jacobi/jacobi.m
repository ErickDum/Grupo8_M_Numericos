% JACOBI resuelve un sistema lineal mediante iteraciones.
% JACOBI(A, B, N_I, TOL)
%      [x, error, i]=jacobi(A, b, n_i = 100, tol = 0.001)
%       x = Soluciones del sistema.
%       error = Error de la solucion.
%       i = Numero de iteraciones para llegar a la solucion.
%       A = Matriz de coeficientes de variables.
%       b = Matriz de terminos independientes.
%       n_i = Numero maximo de iteraciones.
%       tol = Tolerancia   


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
    error ('Gran número de iteraciones, posiblemente el método divergió')
  endif
end
