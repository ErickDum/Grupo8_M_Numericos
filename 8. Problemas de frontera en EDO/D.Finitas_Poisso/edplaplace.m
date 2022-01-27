


% y=edplaplace(ua,ub,uc,ud,n,m,maxiter,error)
              %ua=lado izquierdo
              %ub=lado derecho
              %uc=lado inferior
              %ud=lado superior
              %n=numero de columnas de los puntos internos
              %m=numero de filas de los puntos internos
              %maxiter=numero maximo de interaciones
              %error=error


%En c�lculo vectorial, la ecuaci�n de Laplace es una ecuaci�n en derivadas parciales de segundo orden de tipo el�ptico, 
%que recibe ese nombre en honor al f�sico y matem�tico Pierre-Simon Laplace. Introducida por las necesidades de la mec�nica 
%newtoniana, la ecuaci�n de Laplace aparece en muchas otras ramas de la f�sica te�rica como la astronom�a, la electrost�tica, 
%la mec�nica de fluidos o la mec�nica cu�ntica.

function y=edplaplace(ua,ub,uc,ud,n,m,maxiter,error)
  
  if maxiter==0 | m==0 | n==0
    error('it no debe ser 0')
  endif
  
  
clear u
for i=1:n+2
 u(i,1)=uc;
 u(i,m+2)=ud;
end
for j=1:m+2
 u(1,j)=ua;
 u(n+2,j)=ub;
end
p=(ua+ub+uc+ud)/4;
for i=2:n+1
 for j=2:m+1
 u(i,j)=p;
 end
end
k=0;
conv=0;
while k<maxiter & conv==0
 k=k+1;
 t=u;
 for i=2:n+1
 for j=2:m+1
 u(i,j)=0.25*(u(i-1,j)+u(i+1,j)+u(i,j+1)+u(i,j-1));
 end
 end
 if norm((u-t),inf)/norm(u,inf)<error
 conv=1;
 end
end
if conv==1
 disp(u)
 disp(k)
 [x,y]=meshgrid(1:m+2,1:n+2);
 surf(x,y,u)
 shading flat
else
 disp('no converge');
end
