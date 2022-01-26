%Método de diferencias finitas para la ecuación de conducción de calor

%U = diffinitaOnda(f,g,a,b,c,n,m)
                %f=función
                %g=condicion frontera
                %a=extremo 0<= x <= a
                %b= extremo 0<= t <= b
                %n= cantidad de particiones en la matriz (columnas)
                %m=filas

                
%La ecuación de onda básica es una ecuación diferencial lineal la cual establece 
%que la amplitud de las dos ondas que interactúan es simplemente la suma de las 
%ondas. Esto también significa que el comportamiento de una onda se puede analizar 
%al dividir la onda en sus componentes.


function U = diffinitaOnda(f,g,a,b,c,n,m)
  if n==0 | m==0
    error('a tiene que ser diferente de b')
  endif
  h=a/(n-1);
  k=b/(m-1);
  r= c*k/h;
  r2=r^2;
  r22=r^2/2;
  s1= 1 - r^2;
  s2 = 2 - 2*r^2;
  U = zeros(n,m);
  for i=2:n-1
    U(i,1)=f(h*(i-1));
    U(i,2)=s1*f(h*(i-1))+k*g(h*(i-1))+r22*(f(h*i)+f(h*(i-2)));
  end
  
  for j=3:m
    for i=2:(n-1)
      U(i,j) = s2*U(i,j-1) + r2 * (U(i-1,j-1) + U(i+1,j-1)) - U(i,j-2);
    end
  endfor
  U=U';
  surf(U);
  
