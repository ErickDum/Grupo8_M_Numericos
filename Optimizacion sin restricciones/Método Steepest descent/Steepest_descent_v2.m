%Metodo de Steepest descent
%Este metodo sirve para encontrar el punto minimo de una funcion
%[X]=Steepest_descent(f,iteraciones,tolerancia,x0,y0)
%                  [X]=puntos de aproximacion al minimo de la funcion
%                  f=funcion la cual queremos hallar su minimo
%                  iteraciones=Cuantas iteraciones (para aproximar el minimo)
%                  tolerancia=
%                  x0=Punto de partida en x (cualesquiera)
%                  y0=Punto de partida en y (cualesquiera)


function[X]=Steepest_descent_v2(f,iteraciones,tolerancia,x0,y0)
pkg symbolic load
warning('off','all');

syms x y d

dfdx=-diff(f,x);

dfdy=-diff(f,y);

X=[x0 y0];
i=2;

tol=1;

while i<iteraciones
   
  if tol<tolerancia
    break
  endif
   
  i=i+1;
  
  s1=subs(subs(dfdx, x, x0), y, y0);
  s2=subs(subs(dfdy, x, x0), y, y0);

  xd= @(d) x0+d*s1;
  yd= @(d) y0+d*s2;


  bd=(subs(subs(f, x, xd), y, yd));

  min=double(solve(diff(bd,d)==0));
 
 
  x0=double(subs(xd,d,min));

  y0=double(subs(yd,d,min));
  X(i-1,:)=[x0 y0];
  
  
  tol=sqrt(  (  (X(rows(X),1)) - (X(rows(X)-1,1)) )^2   +  (  (X(rows(X),2)) -  (X(rows(X)-1,2))  )^2    ); 
  
endwhile