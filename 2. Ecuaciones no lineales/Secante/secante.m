clear
clc
pkg symbolic load  

function secante(funcion,c1,c,iteraciones=10,tolerancia=0.00001)
n=0;
A=[0 0 0 0];
syms f(x)

while true
  
  error=double((c1-c)/c1);
  
  if abs(error)<tolerancia
    break;
  endif
  
  f(x)=funcion;
  y=(((f(c1)-f(c))/(c1-c))*(x-c))+f(c);
  c2=solve(y==0,x);
  
  if (abs(c-c2))>(abs(c1-c2))  
    c=c1;  
  else
    c=c;   
  endif
  
  c1=c2;
  
  if n==iteraciones
    break;
  endif

  raiz=double(c2);
  
  n=n+1;

  A(n,4)=error;
  A(n,3)=n;
  A(n,2)=double(c);
  A(n,1)=double(c1);
  
endwhile
funcion
raiz

display(A)
display("       C1           C        Iteraciones  Tolerancia")
return 
endfunction