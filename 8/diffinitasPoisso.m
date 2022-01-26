
%M�todo de diferencias finitas para ecuaciones de Laplace y Poisson
%diffinitasPoisso(a,b,c,d,m,n,tol,it,f,g1,g2,g3,g4)
                %a=Intervalo inferior para x
                %b=Intervalo supeior para x
                %c=Intervalo inferior para y
                %d=Intervalo superior para y
                %m=particiones
                %n=particiones
                %tol=tolerancia
                %it=numero de iteraciones
                %f=funcion
                %g1=condiciones 
                %g2=Condiciones frontera
                %g3=Condiciones frontera
                %g4=condiciones




%En matem�tica y f�sica, la ecuaci�n de Poisson es una ecuaci�n en derivadas parciales 
%con un amplio uso en electrost�tica, ingenier�a mec�nica y f�sica te�rica.





function diffinitasPoisso(a,b,c,d,m,n,tol,it,f,g1,g2,g3,g4)

  if it==0 | m==0 | n==0
    error('it no debe ser 0')
  endif
  
  
fprintf('  i  j   x(i)  y(j)    w(i,j)  \n\n' )
h=(b-a)/(n);
k=(d-c)/(m);
for i=1:n-1
   x(i)=a+i*h;
end
for j=1:m-1
   y(j)=c+j*k;
end
for i=1:n-1
   for j=1:m-1
   w(i,j)=0;
   end
end
lam=(h*h)/(k*k);
u=2*(1+lam);
l=1;
while l<=it
   z=(-(h^2)*f(x(1),y(m-1))+g4(a,y(m-1))+lam*g3(x(1),d)+lam*w(1,m-2)+w(2,m-1))/u;
   norma=abs(z-w(1,m-1));
   w(1,m-1)=z;
   for i=2:n-2
      z=(-(h^2)*f(x(i),y(m-1))+lam*g3(x(i),d)+w(i-1,m-1)+w(i+1,m-1)+lam*w(i,m-2))/u;
      if abs(w(i,m-1)-z)>norma
         norma=abs(w(i,m-1)-z);
      end
      w(i,m-1)=z;
   end
   z=(-(h^2)*f(x(n-1),y(m-1))+g2(b,y(m-1))+lam*g3(x(n-1),d)+w(n-2,m-1)+lam*w(n-1,m-2))/u;
   if abs(w(n-1,m-1)-z)>norma
      norma=abs(w(n-1,m-1)-z);
   end
   w(n-1,m-1)=z;
   for j=m-2:-1:2
      z=((-h^2)*f(x(1),y(j))+g4(a,y(j))+lam*w(1,j+1)+lam*w(1,j-1)+w(2,j))/u;
      if abs(w(1,j)-z)>norma
         norma=abs(w(1,j)-z);
      end
      w(1,j)=z;   
   
   for i=2:n-2
      z=((-h^2)*f(x(i),y(j))+w(i-1,j)+lam*w(i,j+1)+w(i+1,j)+lam*w(i,j-1))/u;
      if abs(w(i,j)-z)>norma
         norma=abs(w(i,j)-z);
      end
      w(i,j)=z;   
   end
   z=((-h^2)*f(x(n-1),y(j))+g2(b,y(j))+w(n-2,j)+lam*w(n-1,j+1)+lam*w(n-1,j-1))/u;
   if abs(w(n-1,j)-z)>norma
      norma=abs(w(n-1,j)-z);
   end
   w(n-1,j)=z;
   end
   z=((-h^2)*f(x(1),y(1))+g4(a,y(1))+lam*g1(x(1),c)+lam*w(1,2)+w(2,1))/u;
   if abs(w(1,1)-z)>norma
      norma=abs(w(1,1)-z);
   end
   w(1,1)=z; 
   for i=2:n-2
      z=((-h^2)*f(x(i),y(1))+lam*g1(x(i),c)+w(i-1,1)+lam*w(i,2)+w(i+1,1))/u;
      if abs(w(i,1)-z)>norma
         norma=abs(w(i,1)-z);
      end
      w(i,1)=z;
   end
   z=((-h^2)*f(x(n-1),y(1))+g2(b,y(1))+lam*g1(x(n-1),c)+w(n-2,1)+lam*w(n-1,2))/u;
   if abs(w(n-1,1)-z)>norma
      norma=abs(w(n-1,1)-z);
   end
   w(n-1,1)=z;
   l=l+1;
   s=l;
   if norma <= tol
   l=it+1; 
   end      
end
for i=1:n-1
   for j=1:m-1
      fprintf(' %2.0f %2.0f %4.4f %2.4f  %2.8f  \n' ,i,j,x(i), y(j),w(i,j));
         
   end
end
surf(w);