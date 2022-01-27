%Método de diferencias finitas para la ecuación de onda
%U = diffinitaCalor(f,c1,c2,a,b,c,n,m)
                  %f=funcion
                  %c1=condicion de contorno
                  %c2=condicion de contorno
                  %a=variacion en x
                  %b=variacion en y
                  %n=columnas
                  %m=filas

%La ecuación del calor es una importante ecuación diferencial en derivadas parciales del tipo 
%parabólica que describe la distribución del calor (o variaciones de la temperatura) en una 
%región a lo largo del transcurso del tiempo.

function U = diffinitaCalor(f,c1,c2,a,b,c,n,m)
  if n==0 | m==0
    error('a tiene que ser diferente de b')
  endif
  h = a / ( n - 1 );
  k = b / ( m - 1 );
  r = c^2*( k / h^2);
  s = 1 - 2*r;
  U = zeros(n,m);
  U(1,1:m)=0;
  U(n,1:m) = 0;
  U(2:n-1,1) = f(h:h:(n - 2)*h)';
  for j = 2:m
    for i = 2:n-1
      U(i,j) = s *U(i,j-1) + r*(U(i-1 , j-1) + U(i+1, j-1));
    endfor
  endfor
  U = U';
  surf(U);
